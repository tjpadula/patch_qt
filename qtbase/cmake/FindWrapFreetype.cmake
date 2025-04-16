if(IOS)
    set(FINDWRAP_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../../qtbase/cmake")
    get_filename_component(FINDWRAP_DIR_ABSOLUTE ${FINDWRAP_DIR} ABSOLUTE)
    #message (STATUS "FINDWRAP_DIR_ABSOLUTE: ${FINDWRAP_DIR_ABSOLUTE}")
    include("${FINDWRAP_DIR_ABSOLUTE}/QtFindWrapHelper.cmake" NO_POLICY_SCOPE)
else(IOS)
    include(QtFindWrapHelper NO_POLICY_SCOPE)
endif(IOS)

qt_find_package_system_or_bundled(wrap_freetype
    FRIENDLY_PACKAGE_NAME "Freetype"
    WRAP_PACKAGE_TARGET "WrapFreetype::WrapFreetype"
    WRAP_PACKAGE_FOUND_VAR_NAME "WrapFreetype_FOUND"
    BUNDLED_PACKAGE_NAME "BundledFreetype"
    BUNDLED_PACKAGE_TARGET "BundledFreetype"
    SYSTEM_PACKAGE_NAME "WrapSystemFreetype"
    SYSTEM_PACKAGE_TARGET "WrapSystemFreetype::WrapSystemFreetype"
)
