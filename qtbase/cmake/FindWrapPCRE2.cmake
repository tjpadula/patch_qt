if(IOS OR MACOS)
    set(FINDWRAP_DIR "${CMAKE_CURRENT_LIST_DIR}/../../qtbase/cmake")
    get_filename_component(FINDWRAP_DIR_ABSOLUTE ${FINDWRAP_DIR} ABSOLUTE)
    message (STATUS "CMAKE_CURRENT_LIST_DIR: ${CMAKE_CURRENT_LIST_DIR}")
    message (STATUS "FINDWRAP_DIR: ${FINDWRAP_DIR}")
    message (STATUS "FINDWRAP_DIR_ABSOLUTE: ${FINDWRAP_DIR_ABSOLUTE}")
    include_directories("${FINDWRAP_DIR_ABSOLUTE}")
    
    if(EXISTS "${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake")
        include("${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake" NO_POLICY_SCOPE)
    endif()
    
    set(FINDWRAP_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../../qtbase/cmake")
    get_filename_component(FINDWRAP_DIR_ABSOLUTE ${FINDWRAP_DIR} ABSOLUTE)
    message (STATUS "FINDWRAP_DIR: ${FINDWRAP_DIR}")
    message (STATUS "FINDWRAP_DIR_ABSOLUTE: ${FINDWRAP_DIR_ABSOLUTE}")
    include_directories("${FINDWRAP_DIR_ABSOLUTE}")

    if(EXISTS "${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake")
        include("${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake" NO_POLICY_SCOPE)
    endif()
    
else(IOS OR MACOS)
    include(QtFindWrapHelper NO_POLICY_SCOPE)
endif(IOS OR MACOS)

qt_find_package_system_or_bundled(wrap_pcre2
    FRIENDLY_PACKAGE_NAME "PCRE2"
    WRAP_PACKAGE_TARGET "WrapPCRE2::WrapPCRE2"
    WRAP_PACKAGE_FOUND_VAR_NAME "WrapPCRE2_FOUND"
    BUNDLED_PACKAGE_NAME "BundledPcre2"
    BUNDLED_PACKAGE_TARGET "BundledPcre2"
    SYSTEM_PACKAGE_NAME "WrapSystemPCRE2"
    SYSTEM_PACKAGE_TARGET "WrapSystemPCRE2::WrapSystemPCRE2"
)
