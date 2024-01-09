project "glfw"

dofile(_BUILD_DIR .. "/static_library.lua")

configuration { "*" }

uuid "11119b90-6c6e-4493-9860-86f7c2b581dc"

files {
  "src/internal.h",
  "src/mappings.h",
  "include/GLFW/glfw3.h",
  "include/GLFW/glfw3native.h",
  "src/context.c",
  "src/init.c",
  "src/input.c",
  "src/monitor.c",
  "src/vulkan.c",
  "src/window.c",
}

includedirs {
  "include/GLFW",
}

if (_PLATFORM_LINUX) then

  defines {
    "_GLFW_X11",
  }

  files {
    "src/x11_platform.h",
    "src/xkb_unicode.h",
    "src/posix_time.h",
    "src/posix_thread.h",
    "src/glx_context.h",
    "src/egl_context.h",
    "src/osmesa_context.h",
    "src/linux_joystick.h",
    "src/x11_init.c",
    "src/x11_monitor.c",
    "src/x11_window.c",
    "src/xkb_unicode.c",
    "src/posix_time.c",
    "src/posix_thread.c",
    "src/glx_context.c",
    "src/egl_context.c",
    "src/osmesa_context.c",
    "src/linux_joystick.c",
  }

end

if (_PLATFORM_MACOS) then

  defines {
    "_GLFW_COCOA",
  }

  files {
    "src/cocoa_platform.h",
    "src/cocoa_joystick.h",
    "src/posix_thread.h",
    "src/nsgl_context.h",
    "src/egl_context.h",
    "src/osmesa_context.h",
    "src/cocoa_init.m",
    "src/cocoa_joystick.m",
    "src/cocoa_monitor.m",
    "src/cocoa_window.m",
    "src/cocoa_time.c",
    "src/posix_thread.c",
    "src/nsgl_context.m",
    "src/egl_context.c",
    "src/osmesa_context.c",
  }

end

if (_PLATFORM_WINDOWS) then

  defines {
    "_GLFW_WIN32",
  }

  files {
    "src/win32_platform.h",
    "src/win32_joystick.h",
    "src/wgl_context.h",
    "src/egl_context.h",
    "src/osmesa_context.h",
    "src/win32_init.c",
    "src/win32_joystick.c",
    "src/win32_monitor.c",
    "src/win32_time.c",
    "src/win32_thread.c",
    "src/win32_window.c",
    "src/wgl_context.c",
    "src/egl_context.c",
    "src/osmesa_context.c",
  }

end
