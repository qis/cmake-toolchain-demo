all:
	@cmake -E remove_directory build
	@cmake -E echo "Configuring..."
	@cmake -GNinja \
	  -DCMAKE_TOOLCHAIN_FILE="toolchain.cmake" \
	  -DCMAKE_VERBOSE_MAKEFILE=ON \
	  -DCMAKE_BUILD_TYPE=Debug \
	  -B build
	@cmake -E echo "Building..."
	@cmake --build build
	@cmake -E echo "Running..."
	@build\cmake-toolchain-demo.exe build\CMakeCache.txt
