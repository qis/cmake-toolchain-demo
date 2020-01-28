# Set executables.
set(CMAKE_C_COMPILER "cl" CACHE STRING "")
set(CMAKE_CXX_COMPILER "cl" CACHE STRING "")
set(CMAKE_LINKER "link" CACHE STRING "")
set(CMAKE_RC_COMPILER "rc" CACHE STRING "")
set(CMAKE_ASM_MASM_COMPILER "ml64" CACHE STRING "")

# Set C standard.
set(CMAKE_C_STANDARD 11 CACHE STRING "")
set(CMAKE_C_STANDARD_REQUIRED ON CACHE STRING "")
set(CMAKE_C_EXTENSIONS OFF CACHE STRING "")

# Set C++ standard.
set(CMAKE_CXX_STANDARD 17 CACHE STRING "")
set(CMAKE_CXX_STANDARD_REQUIRED ON CACHE STRING "")
set(CMAKE_CXX_EXTENSIONS OFF CACHE STRING "")

# Set MSVC runtime library.
set(CMAKE_MSVC_RUNTIME_LIBRARY "" CACHE STRING "")
set(VCPKG_CRT_FLAG "/MT")

# Set interprocedural optimizations.
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION OFF CACHE STRING "")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_DEBUG OFF CACHE STRING "")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE OFF CACHE STRING "")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_MINSIZEREL OFF CACHE STRING "")
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELWITHDEBINFO OFF CACHE STRING "")

# Set compiler flags.
set(CMAKE_C_FLAGS "/DWIN32 /D_WINDOWS" CACHE STRING "")
set(CMAKE_C_FLAGS_DEBUG "/Zi /Ob0 /Od /RTC1 ${VCPKG_CRT_FLAG}d" CACHE STRING "")
set(CMAKE_C_FLAGS_RELEASE "/O2 /Ob2 /DNDEBUG ${VCPKG_CRT_FLAG}" CACHE STRING "")
set(CMAKE_C_FLAGS_MINSIZEREL "/O1 /Ob1 /DNDEBUG ${VCPKG_CRT_FLAG}" CACHE STRING "")
set(CMAKE_C_FLAGS_RELWITHDEBINFO "/Zi /O2 /Ob1 /DNDEBUG ${VCPKG_CRT_FLAG}" CACHE STRING "")

set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} /GR /EHsc" CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_MINSIZEREL "${CMAKE_C_FLAGS_MINSIZEREL}" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO}" CACHE STRING "")

# Set linker flags.
set(CMAKE_STATIC_LINKER_FLAGS "/MACHINE:X64" CACHE STRING "")
set(CMAKE_STATIC_LINKER_FLAGS_DEBUG "" CACHE STRING "")
set(CMAKE_STATIC_LINKER_FLAGS_RELEASE "" CACHE STRING "")
set(CMAKE_STATIC_LINKER_FLAGS_MINSIZEREL "" CACHE STRING "")
set(CMAKE_STATIC_LINKER_FLAGS_RELWITHDEBINFO "" CACHE STRING "")

set(CMAKE_SHARED_LINKER_FLAGS "/MACHINE:X64" CACHE STRING "")
set(CMAKE_SHARED_LINKER_FLAGS_DEBUG "/DEBUG /INCREMENTAL" CACHE STRING "")
set(CMAKE_SHARED_LINKER_FLAGS_RELEASE "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_SHARED_LINKER_FLAGS_MINSIZEREL "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_SHARED_LINKER_FLAGS_RELWITHDEBINFO "/DEBUG /INCREMENTAL" CACHE STRING "")

set(CMAKE_MODULE_LINKER_FLAGS "/MACHINE:X64" CACHE STRING "")
set(CMAKE_MODULE_LINKER_FLAGS_DEBUG "/DEBUG /INCREMENTAL" CACHE STRING "")
set(CMAKE_MODULE_LINKER_FLAGS_RELEASE "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_MODULE_LINKER_FLAGS_MINSIZEREL "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_MODULE_LINKER_FLAGS_RELWITHDEBINFO "/DEBUG /INCREMENTAL" CACHE STRING "")

set(CMAKE_EXE_LINKER_FLAGS "/MACHINE:X64" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS_DEBUG "/DEBUG /INCREMENTAL" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS_MINSIZEREL "/INCREMENTAL:NO" CACHE STRING "")
set(CMAKE_EXE_LINKER_FLAGS_RELWITHDEBINFO "/DEBUG /INCREMENTAL" CACHE STRING "")

# Disable logo for compiler and linker.
set(CMAKE_CL_NOLOGO "/nologo" CACHE STRING "")

# Set assembler flags.
set(CMAKE_ASM_MASM_FLAGS_INIT "/nologo")

# Set resource compiler flags.
set(CMAKE_RC_FLAGS_INIT "/nologo /c65001 /DWIN32")
set(CMAKE_RC_FLAGS_DEBUG_INIT "/D_DEBUG")