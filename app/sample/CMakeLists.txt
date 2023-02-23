include("${CMAKE_SOURCE_DIR}/scripts/macro.cmake")

cmake_minimum_required(VERSION 3.16.3)

project(sample_app
        VERSION 0.0.1
        DESCRIPTION "sample application"
        LANGUAGES C
)

obj(main.c "y")

add_executable(${PROJECT_NAME} ${obj})
