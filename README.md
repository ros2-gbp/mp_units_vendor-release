# mp_units_vendor

Vendor package for the [mp-units](https://mpusz.github.io/mp-units/2.4) library.

## Usage

### package.xml

```xml
<build_depend>mp_units_vendor</build_depend>
```

### CMakeLists.txt

```cmake
find_package(mp_units_vendor REQUIRED)

target_link_libraries(my_target
  mp-units::mp-units
)
```

## C++ Code Example

```c++
#include <mp_units/mp_units.hpp>

using namespace mp_units::si::unit_symbols;

auto velocity = 50 km / h;
```
