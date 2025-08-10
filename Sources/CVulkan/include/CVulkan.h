/*
 * CVulkan.h
 * CVulkan
 *
 * Created by Hunter Baker on 4/15/2025
 * Copyright (C) 2025-2025, by Hunter Baker hunterbaker@me.com
 */
#pragma once

#include <stdint.h>

#if !__has_include("vulkan/vulkan_core.h")
#  error "Ignite, CVulkan: Can't find the vulkan headers"
#endif

// Clang doesn't like that vulkan includes things inside extern "C" blocks, so we just tell it not to.
// I already included the stdint.h header above, so this won't cause any problems.
#define VK_NO_STDINT_H

#include "vulkan/vk_platform.h"
#include "vulkan/vulkan_core.h"


// BEGIN_GENERATE_PLATFORM_DEFINES
// Generated using header version: 325
#ifdef EnableProvisional
#  define VK_ENABLE_BETA_EXTENSIONS
#endif
#ifdef PlatformAndroid
#  define VK_USE_PLATFORM_ANDROID_KHR
#endif
#ifdef PlatformDirectfb
#  define VK_USE_PLATFORM_DIRECTFB_EXT
#endif
#ifdef PlatformFuchsia
#  define VK_USE_PLATFORM_FUCHSIA
#endif
#ifdef PlatformGgp
#  define VK_USE_PLATFORM_GGP
#endif
#ifdef PlatformMetal
#  define VK_USE_PLATFORM_METAL_EXT
#endif
#ifdef PlatformOhos
#  define VK_USE_PLATFORM_OHOS
#endif
#ifdef PlatformSci
#  define VK_USE_PLATFORM_SCI
#endif
#ifdef PlatformScreen
#  define VK_USE_PLATFORM_SCREEN_QNX
#endif
#ifdef PlatformVi
#  define VK_USE_PLATFORM_VI_NN
#endif
#ifdef PlatformWayland
#  define VK_USE_PLATFORM_WAYLAND_KHR
#endif
#ifdef PlatformWin32
#  define VK_USE_PLATFORM_WIN32_KHR
#endif
#ifdef PlatformXcb
#  define VK_USE_PLATFORM_XCB_KHR
#endif
#ifdef PlatformXlib
#  define VK_USE_PLATFORM_XLIB_KHR
#endif
#ifdef PlatformXlibXrandr
#  define VK_USE_PLATFORM_XLIB_XRANDR_EXT
#endif
// END_GENERATE_PLATFORM_DEFINES

// This is directly copied and modified from the Vulkan meta loader volk.
/* Instead of directly including vulkan.h, we include platform-specific parts of the SDK manually
 * This is necessary to avoid including platform headers in some cases (which vulkan.h does unconditionally)
 * and replace them with forward declarations, which makes build times faster and avoids macro conflicts.
 *
 * Note that we only replace platform-specific headers when the headers are known to be problematic: very large
 * or slow to compile (Windows), or introducing unprefixed macros which can cause conflicts (Windows, Xlib).
 */
#if !defined(VULKAN_H_)
#  ifdef VK_USE_PLATFORM_ANDROID_KHR
#    include "vulkan/vulkan_android.h"
#  endif
#  ifdef VK_USE_PLATFORM_METAL_EXT
#    include "vulkan/vulkan_metal.h"
#  endif
#  ifdef VK_USE_PLATFORM_WAYLAND_KHR
#    include "vulkan/vulkan_wayland.h"
#  endif
#  ifdef VK_USE_PLATFORM_WIN32_KHR
    typedef unsigned long DWORD;
    typedef const wchar_t *LPCWSTR;
    typedef void *HANDLE;
    typedef struct HINSTANCE__ *HINSTANCE;
    typedef struct HWND__ *HWND;
    typedef struct HMONITOR__ *HMONITOR;
    typedef struct _SECURITY_ATTRIBUTES SECURITY_ATTRIBUTES;
    #include "vulkan/vulkan_win32.h"
#  endif
#  ifdef VK_USE_PLATFORM_XLIB_KHR
    typedef struct _XDisplay Display;
    typedef unsigned long Window;
    typedef unsigned long VisualID;
    #include "vulkan/vulkan_xlib.h
#  endif

// BEGIN_GENERATE_PLATFORM_INCLUDES
// Generated using header version: 325
#ifdef VK_ENABLE_BETA_EXTENSIONS
#include "vulkan_beta.h"
#endif
#ifdef VK_USE_PLATFORM_DIRECTFB_EXT
#include <directfb.h>
#include "vulkan_directfb.h"
#endif
#ifdef VK_USE_PLATFORM_FUCHSIA
#include <zircon/types.h>
#include "vulkan_fuchsia.h"
#endif
#ifdef VK_USE_PLATFORM_GGP
#include <ggp_c/vulkan_types.h>
#include "vulkan_ggp.h"
#endif
#ifdef VK_USE_PLATFORM_OHOS
#include "vulkan_ohos.h"
#endif
#ifdef VK_USE_PLATFORM_SCI
#include <nvscisync.h>
#include <nvscibuf.h>
#include "vulkan_sci.h"
#endif
#ifdef VK_USE_PLATFORM_SCREEN_QNX
#include <screen/screen.h>
#include "vulkan_screen.h"
#endif
#ifdef VK_USE_PLATFORM_VI_NN
#include "vulkan_vi.h"
#endif
#ifdef VK_USE_PLATFORM_XCB_KHR
#include <xcb/xcb.h>
#include "vulkan_xcb.h"
#endif
#ifdef VK_USE_PLATFORM_XLIB_XRANDR_EXT
#include <X11/Xlib.h>
#include <X11/extensions/Xrandr.h>
#include "vulkan_xlib_xrandr.h"
#endif
// END_GENERATE_PLATFORM_INCLUDES

#endif

#include "vk_mem_alloc.h"

#define INLINE static inline __attribute__((__always_inline__))

#ifdef __cplusplus
extern "C" {
#endif

    /// Constructs a Vulkan API version number
    /// These macros don't seem to appear in swift.
    INLINE uint32_t makeVkAPIVersion(uint32_t variant, uint32_t major, uint32_t minor, uint32_t patch) {
        return VK_MAKE_API_VERSION(variant, major, minor, patch);
    }
    /// Extracts the Vulkan API variant number from a packed version number
    /// These macros don't seem to appear in swift.
    INLINE uint32_t getVkAPIVersionVariant(uint32_t version) {
        return VK_API_VERSION_VARIANT(version);
    }
    /// Extracts the Vulkan API major number from a packed version number
    /// These macros don't seem to appear in swift.
    INLINE uint32_t getVkAPIVersionMajor(uint32_t version) {
        return VK_API_VERSION_MAJOR(version);
    }
    /// Extracts the Vulkan API minor number from a packed version number
    /// These macros don't seem to appear in swift.
    INLINE uint32_t getVkAPIVersionMinor(uint32_t version) {
        return VK_API_VERSION_MINOR(version);
    }
    /// Extracts the Vulkan API patch number from a packed version number
    /// These macros don't seem to appear in swift.
    INLINE uint32_t getVkAPIVersionPatch(uint32_t version) {
        return VK_API_VERSION_PATCH(version);
    }

#ifdef __cplusplus
}
#endif
