# Point to the mp_units_vendor include directory
set (mp_units_vendor_INCLUDE_DIRS "${mp_units_vendor_DIR}/../../../opt/mp_units_vendor/include")

# Set the path to find mp-units CMake files
list(APPEND CMAKE_PREFIX_PATH "${mp_units_vendor_DIR}/../../../opt/mp_units_vendor/lib/cmake")

# Find the mp-units package when others find mp_units_vendor
find_package(mp-units REQUIRED)
