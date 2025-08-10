'''
update_headers.py
Ignite

Created by Hunter Baker on 8/10/2025
Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
'''
import os
import re
import shutil
import subprocess

os.system('pushd "$(dirname "$0")" > /dev/null')

git_commands = '''
mkdir -p submodules
if [ -d submodules/Vulkan ]; then
 echo "Updating Vulkan-Headers..."
 git -C submodules/Vulkan fetch
 git -C submodules/Vulkan -c advice.detachedHead=false checkout origin/main --progress
else
 echo "Cloning Vulkan-Headers..."
 git clone --progress https://github.com/KhronosGroup/Vulkan-Headers.git submodules/Vulkan
fi
if [ -d submodules/vma ]; then
 echo "Updating VulkanMemoryAllocator..."
 git -C submodules/vma fetch
 git -C submodules/vma -c advice.detachedHead=false checkout origin/master --progress
else
 echo "Cloning VulkanMemoryAllocator..."
 git clone --progress https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator.git submodules/vma
fi
'''
subprocess.check_output(git_commands, shell=True)

print('Fixing headers...')

# Searches for matches of the provided regex in the file and replaces them by calling repl and passing the match
def modifyFile(path, regex, repl):
    with open(path, 'r') as file:
        contents = file.read()
    contents = re.sub(regex, repl, contents)
    with open(path, 'w') as file:
        file.write(contents)

# Adds multiple annotations to a file to make it easier to use in swift using interop.
#  1. If doFlags is true, it will replace any typedef that maps to VkFlags with its corresponding *FlagBits type.
#     It will then mark the FlagBits enum as the same size as the Flags type used to be so nothing breaks.
#     These only happen when CVULKAN_IMPLEMENTATION is undefined.
#  2. It will add an enum_extensibility to all enum declarations and the flag_enum attribute to any with Bits in the name.
#     This lets swift see the enums properly and Bits as an OptionSet.
#  3. It will fix any obj-c classes by making all uses of them __unsafe_unretained.
#     Swift thinks they aren't trivial types otherwise and won't import them.
def addSwiftAnnotations(path, doFlags=False):
    with open(path, 'r') as file:
        contents = file.read()

    if doFlags:
        # Get all the FlagBits types
        flag_types = {}
        for line in contents.split('\n'):
            match = re.search(r'typedef\s+enum\s+([A-Z][a-zA-Z0-9]*Bits[A-Z0-9]*[a-zA-Z0-9]*)', line)
            if match:
                flag_types[match.group(1)] = None

        # A function to generate the replacement when there is a matching Flags typedef
        def fixFlagType(match):
            # The name of the corresponding Flags type
            flags = match.group(2) + 'Flags' + match.group(3)
            # The name of the corresponding FlagBits type
            flagBits = match.group(2) + 'FlagBits' + match.group(3)
            # If there is a FlagBits type defined for that type, fix the typedef. Otherwise add a new empty enum for the same semantics.
            if flagBits in flag_types:
                flag_types[flagBits] = match.group(1)
                return f'''#ifndef CVULKAN_IMPLEMENTATION
typedef {flagBits} {flags}
#else
{match.group(0)}
#endif
'''
            else:
                return f'''#ifndef CVULKAN_IMPLEMENTATION
typedef enum {flags} : {match.group(1)} {{ {flags}_NONE __attribute__((deprecated)) = 0 }}{flags}
#else
{match.group(0)}
#endif
'''
        contents = re.sub(
            r'typedef\s+(VkFlags[0-9]*)\s+([A-Z][a-zA-Z0-9]*)Flags([a-zA-Z0-9]*)',
            fixFlagType,
            contents
        )
        
        for typeName, flagType in flag_types.items():
            contents = re.sub(
                r'typedef\s+enum\s+' + typeName,
                lambda match: f'''#ifndef CVULKAN_IMPLEMENTATION
typedef enum {typeName} : {flagType}
#else
{match.group(0)}
#endif
''',
                contents,
                count=1
            )

    # Flag all c-style enums that have Bits in the name to make them act like swift enums and conform to OptionSet
    contents = re.sub(
        r'typedef\s+enum\s+([A-Z][a-zA-Z0-9]*(Bits|Flags)[A-Z]*[a-zA-Z0-9]*)',
        lambda match: f'typedef enum __attribute__((enum_extensibility(open),flag_enum)) {match.group(1)}',
        contents
    )
    # Flag all c-style enums that are left unfixed to make them act like swift enums, but not as an OptionSet
    contents = re.sub(
        r'typedef\s+enum\s+([A-Z][a-zA-Z0-9]*)',
        lambda match: f'typedef enum __attribute__((enum_extensibility(open))) {match.group(1)}',
        contents
    )

    # Add typedefs for all objc classes and use them instead
    objcClasses = []
    for line in contents.split('\n'):
        match = re.search(r'\@class\s+([a-zA-z]+)', line)
        if match:
            objcClasses.append(match.group(1))
    for objcClass in objcClasses:
        contents = re.sub(
            f'{objcClass}' + r'\s*\*',
            lambda _: f'__unsafe_unretained {objcClass}*',
            contents
        )

    with open(path, 'w') as file:
        file.write(contents)

os.system('cp -r submodules/Vulkan/include/ submodules/Vulkan/temp_include/')
os.system('find submodules/Vulkan/temp_include -type f ! -iname "*.h" -delete')
for root, dirs, files in os.walk('submodules/Vulkan/temp_include'):
    for filename in files:
        path = os.path.join(root, filename)
        addSwiftAnnotations(path, doFlags=True)
os.system('cp -r submodules/Vulkan/temp_include/* Sources/CVulkan/include/')

os.system('cp submodules/vma/include/vk_mem_alloc.h Sources/CVulkan/include/vk_mem_alloc.h')
addSwiftAnnotations('Sources/CVulkan/include/vk_mem_alloc.h', doFlags=True)
