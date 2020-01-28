# CMake Toolchain Demo
This project can be used to experiment with CMake toolchain variables.

## Usage
1. Modify [toolchain.cmake](toolchain.cmake) and [CMakeLists.txt](CMakeLists.txt).
2. Enter project directory in `cmd.exe`.
3. Execute `make run` command.

## Templates
The following files can be used as toolchain templates that are portable across CMake versions.

* [toolchain-linux.cmake](toolchain-linux.cmake)
* [toolchain-windows-msvc.cmake](toolchain-windows-msvc.cmake)
* [toolchain-windows-llvm.cmake](toolchain-windows-llvm.cmake)
