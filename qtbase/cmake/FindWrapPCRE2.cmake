if(IOS)
    set(FINDWRAP_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../../qtbase/cmake")
    get_filename_component(FINDWRAP_DIR_ABSOLUTE ${FINDWRAP_DIR} ABSOLUTE)
    #message (STATUS "FINDWRAP_DIR_ABSOLUTE: ${FINDWRAP_DIR_ABSOLUTE}")
    include("${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake" NO_POLICY_SCOPE)
else(IOS)
    include(QtFindWrapHelper NO_POLICY_SCOPE)
endif(IOS)

qt_find_package_system_or_bundled(wrap_pcre2
    FRIENDLY_PACKAGE_NAME "PCRE2"
    WRAP_PACKAGE_TARGET "WrapPCRE2::WrapPCRE2"
    WRAP_PACKAGE_FOUND_VAR_NAME "WrapPCRE2_FOUND"
    BUNDLED_PACKAGE_NAME "BundledPcre2"
    BUNDLED_PACKAGE_TARGET "BundledPcre2"
    SYSTEM_PACKAGE_NAME "WrapSystemPCRE2"
    SYSTEM_PACKAGE_TARGET "WrapSystemPCRE2::WrapSystemPCRE2"
)
