add_library(compile-options INTERFACE)
target_compile_options(
  compile-options
  INTERFACE
  -Wall
  -Wextra
  -Wshadow
  -Wnon-virtual-dtor
  -Wold-style-cast
  -Wcast-align
  -Wunused
  -Woverloaded-virtual
  -Wpedantic
  -Wconversion
  -Wsign-conversion
  -Wmisleading-indentation
  -Wduplicated-cond
  -Wduplicated-branches
  -Wlogical-op
  -Wnull-dereference
  -Wuseless-cast
  -Wdouble-promotion
  -Wformat=2
)

target_compile_options(
    compile-options
    INTERFACE
    -fdiagnostics-color=always
    )

target_compile_features(
  compile-options
  INTERFACE
  cxx_std_20
)
