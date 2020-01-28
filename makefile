system = linux
toolchain = toolchain.cmake

all: all/$(system)

run: run/$(system)

all/linux:
	@cmake -E remove_directory build
	@cmake -E echo "Configuring..."
	@cmake -GNinja \
	  -DCMAKE_TOOLCHAIN_FILE="$(toolchain)" \
	  -DCMAKE_VERBOSE_MAKEFILE=ON \
	  -DCMAKE_BUILD_TYPE=Debug \
	  -B build
	@cmake -E echo "Building..."
	@cmake -E time cmake --build build

run/linux: all/linux
	@cmake -E echo "Running..."
	@build/cmake-toolchain-demo build/CMakeCache.txt

all/windows:
	@cmake -E remove_directory build
	@cmake -E echo "Configuring..."
	@cmake -GNinja \
	  -DCMAKE_TOOLCHAIN_FILE="$(toolchain)" \
	  -DCMAKE_VERBOSE_MAKEFILE=ON \
	  -DCMAKE_BUILD_TYPE=Debug \
	  -B build
	@cmake -E echo "Building..."
	@cmake -E time cmake --build build

run/windows: all/windows
	@cmake -E echo "Running..."
	@build\cmake-toolchain-demo.exe build\CMakeCache.txt
