if( NOT cmake_build_type_tolower STREQUAL "release" )
  add_definitions(-DDEBUG)
endif()

if (MSVC)
  if (MSVC_VERSION LESS 1900)
        message(FATAL_ERROR "Requires Microsoft Visual Studio Compiler version 14.0 or above.")
  endif()

  # remove exceptions from default args
  add_definitions(-D_HAS_EXCEPTIONS=0)
  # disable secure CRT warnings
  add_definitions(-D_CRT_SECURE_NO_WARNINGS)
  add_definitions(-D_SCL_SECURE_NO_WARNINGS)
endif()

set (CMAKE_CXX_STANDARD 11)
