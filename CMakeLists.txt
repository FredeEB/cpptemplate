project(cpptemplate)
cmake_minimum_required(VERSION 3.15)

### COMPILEOPTIONS
include(cmake/compile-options.cmake)
include(cmake/enable-sanitizers.cmake)

### BINARY
add_executable(prog)
target_link_libraries(prog PUBLIC compile-options)
include_directories(include)
add_sanitizer_options(prog)

add_subdirectory(src)

### TESTING
option(BUILD_TESTING "Build unittests" ON)
if(BUILD_TESTING)
  enable_testing()
  add_subdirectory(test)
endif()

