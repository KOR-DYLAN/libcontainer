#
macro(scan_config)
    get_cmake_property(var_names VARIABLES)
    list (SORT var_names)
    foreach (it ${var_names})
        if(it MATCHES "^CONFIG_*")
            if(${${it}} MATCHES "y")
                list(APPEND glob_defines "${it}=1")
            elseif(${${it}} MATCHES "n")
                list(APPEND glob_defines "${it}=0")
            else()
                list(APPEND glob_defines "${it}=${${it}}")
            endif()
        endif()
    endforeach()
endmacro()

#
list(APPEND default_include_path -Iinclude)
