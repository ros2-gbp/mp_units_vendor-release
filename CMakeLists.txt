cmake_minimum_required(VERSION 3.18)
project(mp_units_vendor)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(ament_cmake REQUIRED)
find_package(ament_cmake_vendor_package REQUIRED)

ament_vendor(${PROJECT_NAME}
  VCS_URL https://github.com/mpusz/mp-units.git
  VCS_VERSION v2.4.0
  VCS_TYPE git
  SOURCE_SUBDIR src
  CMAKE_ARGS
    -DCMAKE_CXX_STANDARD=20
    -DMP_UNITS_API_CONTRACTS=NONE
)

# When this package is found, make sure to find mp-units
ament_package(
  CONFIG_EXTRAS "mp_units_vendor-extras.cmake"
)
