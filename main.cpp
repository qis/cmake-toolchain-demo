#include "main.hpp"

int main(int argc, char* argv[]) {
  if (argc < 2) {
    std::fprintf(stderr, "usage: %s CMakeCache.txt\n", argv[0]);
    return EXIT_FAILURE;
  }
  try {
    std::ifstream is{ argv[1], std::ios::binary };
    if (!is) {
      throw std::system_error(std::error_code{ errno, std::generic_category() }, argv[1]);
    }
    is.exceptions(std::ifstream::badbit);

    std::vector<std::string> names;
    names.push_back("CMAKE_C_FLAGS");
    names.push_back("CMAKE_CXX_FLAGS");
    names.push_back("CMAKE_STATIC_LINKER_FLAGS");
    names.push_back("CMAKE_SHARED_LINKER_FLAGS");
    names.push_back("CMAKE_MODULE_LINKER_FLAGS");
    names.push_back("CMAKE_EXE_LINKER_FLAGS");
    names.push_back("CMAKE_C_STANDARD_LIBRARIES");
    names.push_back("CMAKE_CXX_STANDARD_LIBRARIES");
    names.push_back("CMAKE_ASM_MASM_FLAGS");
    names.push_back("CMAKE_RC_FLAGS");

    std::map<std::string, std::string> variables;
    std::regex re{ R"(([^:]+):STRING=(.*))", std::regex::ECMAScript | std::regex::optimize };
    for (std::string line; std::getline(is, line);) {
      for (const auto& name : names) {
        if (line.find(name) != 0
          //|| line.find("_DEBUG") != std::string::npos
          //|| line.find("_RELEASE") != std::string::npos
          //|| line.find("_MINSIZEREL") != std::string::npos
          //|| line.find("_RELWITHDEBINFO") != std::string::npos
        ) {
          continue;
        }
        const auto pos = line.find_last_not_of(" \t\r\n");
        if (pos != std::string::npos) {
          line.erase(pos + 1);
        }
        std::smatch sm;
        if (std::regex_match(line, sm, re)) {
          variables[sm[1].str()] = sm[2].str();
        }
      }
    }

    for (const auto& name : names) {
      for (const auto variable : variables) {
        if (variable.first.find(name) == 0) {
          std::printf("set(%s \"%s\")\n", variable.first.data(), variable.second.data());
        }
      }
    }
  }
  catch (const std::exception& e) {
    std::fprintf(stderr, "error: %s\n", e.what());
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}
