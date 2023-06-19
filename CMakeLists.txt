cmake_minimum_required(VERSION 3.22)
project(cpptemplate VERSION 0.1.0)

### COMPILEOPTIONS
include(cmake/compile-options.cmake)
include(cmake/enable-sanitizers.cmake)

### BINARY
add_executable(prog)
target_link_libraries(prog PUBLIC compile-options)
include_directories(include)
add_sanitizer_options(prog)

add_subdirectory(src)

option(BUILD_TESTING "Build unittests" OFF)
if(BUILD_TESTING)
    enable_testing()
    add_subdirectory(test)
endif()

option(BUILD_DOCS "Build doxygen docs" OFF)
if (BUILD_DOCS)
    add_subdirectory(doc)
endif()

