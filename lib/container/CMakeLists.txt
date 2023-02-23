include("${CMAKE_SOURCE_DIR}/scripts/macro.cmake")

cmake_minimum_required(VERSION 3.16.3)

project(container
        VERSION 0.0.1
        DESCRIPTION "sample library"
        LANGUAGES C
)

pushd(queue "y")
obj(container.c "y")

add_library(${PROJECT_NAME} STATIC ${obj})
