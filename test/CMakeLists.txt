find_package(Catch2)
add_library(catch-main catch_main.cpp)
target_link_libraries(catch-main Catch2::Catch2 compile-options)

add_executable(tests main.cpp)

add_sanitizer_options(tests)
target_link_libraries(tests PUBLIC catch-main)
include(CTest)
include(Catch)

catch_discover_tests(tests)

add_custom_target(
  check COMMAND ${CMAKE_CTEST_COMMAND} --output-on-failure
  DEPENDS tests
)
