project(cpptemplate)
cmake_minimum_required(VERSION 3.15)

### COMPILEOPTIONS
include(cmake/compile-options.cmake)

### BINARY
add_executable(prog)
target_link_libraries(prog PUBLIC compile-options)
include_directories(include)

add_subdirectory(src)

### TESTING
option(BUILD_TESTING "Build unittests" ON)
if(BUILD_TESTING)
  enable_testing()
  add_subdirectory(test)
endif()

### SANITIZERS
option(ENABLE_SANITIZERS "Enable address and undefined snitizers" OFF)
if(ENABLE_SANITIZERS MATCHES ON)
  target_link_libraries(prog PUBLIC -fsanitize=address,undefined)
  target_compile_options(prog PUBLIC -fsanitize=address,undefined)
endif()
