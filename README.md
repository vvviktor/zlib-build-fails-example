# Building Zlib with Bazel using MINGW toolchain for Windows.

By 03.03.2024 this command `bazel build @zlib//:zlib` fails with:
```
INFO: Analyzed target @@zlib~1.3.1//:zlib (68 packages loaded, 340 targets configured).
ERROR: C:/Users/HYPERPC/_bazel_hyperpc/srkcxlz7/external/zlib~1.3.1/BUILD.bazel:72:11: Compiling gzlib.c failed: (Exit 1): g++ failed: error executing CppCompile command (from target @@zlib~1.3.1//:zlib) C:\msys64\ucrt64\bin\g++ -Wextra -Wall -MD -MF bazel-out/x64_windows-fastbuild/bin/external/zlib~1.3.1/_objs/zlib/gzlib.d ... (remaining 13 arguments skipped)
external/zlib~1.3.1/gzlib.c: In function 'gzFile_s* gz_open(const void*, int, const char*)':
external/zlib~1.3.1/gzlib.c:183:30: error: invalid conversion from 'const void*' to 'const wchar_t*' [-fpermissive]
  183 |         len = wcstombs(NULL, path, 0);
      |                              ^~~~
      |                              |
      |                              const void*
In file included from C:/msys64/ucrt64/include/c++/13.2.0/cstdlib:79,
                 from C:/msys64/ucrt64/include/c++/13.2.0/stdlib.h:36,
                 from external/zlib~1.3.1/gzguts.h:24,
                 from external/zlib~1.3.1/gzlib.c:6:
C:/msys64/ucrt64/include/stdlib.h:531:82: note:   initializing argument 2 of 'size_t wcstombs(char*, const wchar_t*, size_t)'
  531 |   size_t __cdecl wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;
      |                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
external/zlib~1.3.1/gzlib.c:198:35: error: invalid conversion from 'const void*' to 'const wchar_t*' [-fpermissive]
  198 |             wcstombs(state->path, path, len + 1);
      |                                   ^~~~
      |                                   |
      |                                   const void*
C:/msys64/ucrt64/include/stdlib.h:531:82: note:   initializing argument 2 of 'size_t wcstombs(char*, const wchar_t*, size_t)'
  531 |   size_t __cdecl wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;
      |                                                     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
external/zlib~1.3.1/gzlib.c:233:27: error: invalid conversion from 'const void*' to 'const wchar_t*' [-fpermissive]
  233 |         fd == -2 ? _wopen(path, oflag, 0666) :
      |                           ^~~~
      |                           |
      |                           const void*
In file included from C:/msys64/ucrt64/include/fcntl.h:8,
                 from external/zlib~1.3.1/gzguts.h:31:
C:/msys64/ucrt64/include/io.h:316:45: note:   initializing argument 1 of 'int _wopen(const wchar_t*, int, ...)'
  316 |   _CRTIMP int __cdecl _wopen(const wchar_t *_Filename,int _OpenFlag,...) __MINGW_ATTRIB_DEPRECATED_SEC_WARN;
      |                              ~~~~~~~~~~~~~~~^~~~~~~~~
Target @@zlib~1.3.1//:zlib failed to build
Use --verbose_failures to see the command lines of failed build steps.
INFO: Elapsed time: 0.811s, Critical Path: 0.26s
INFO: 17 processes: 11 internal, 6 local.
ERROR: Build did NOT complete successfully
```