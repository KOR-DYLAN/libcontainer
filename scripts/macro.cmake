# update prefix
string(REPLACE "${PROJECT_SOURCE_DIR}/" "" prefix ${CMAKE_CURRENT_SOURCE_DIR})

macro(pushd name)
    if(${ARGN} STREQUAL "y")
        add_subdirectory(${name})
    endif()
endmacro()

macro(obj name)
    if(${ARGN} STREQUAL "y")
        set(obj "${obj};${prefix}/${name}" PARENT_SCOPE)
        set(obj "${obj};${name}")
    endif()
endmacro()
