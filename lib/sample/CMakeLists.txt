include("${CMAKE_SOURCE_DIR}/scripts/macro.cmake")

cmake_minimum_required(VERSION 3.16.3)

project(sample
        VERSION 0.0.1
        DESCRIPTION "sample library"
        LANGUAGES C
)

pushd("dir1" "n")
pushd("dir2" "y")
obj(sample.c "y")

message("obj: ${obj}")

add_library(${PROJECT_NAME} STATIC ${obj})
