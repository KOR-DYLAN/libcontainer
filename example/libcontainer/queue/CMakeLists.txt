include("${CMAKE_SOURCE_DIR}/scripts/macro.cmake")

cmake_minimum_required(VERSION 3.16.3)

project(libcontainer_queue_example
        VERSION 0.0.1
        DESCRIPTION "sample application"
        LANGUAGES C
)

obj(main.c "y")

list(APPEND link_libraries container)

add_executable(${PROJECT_NAME} ${obj})
target_link_libraries(${PROJECT_NAME} ${link_libraries})
