cmake_minimum_required(VERSION 3.16.3)

project(cmake_build_template
        VERSION 0.0.1
        DESCRIPTION "cmake build tempalte"
        HOMEPAGE_URL https://github.com/KOR-DYLAN/cmake_build_template
)

include("scripts/default_options.cmake")

scan_config()

add_compile_definitions(${glob_defines})
add_compile_options(${default_include_path})

add_subdirectory(lib)
add_subdirectory(app)
