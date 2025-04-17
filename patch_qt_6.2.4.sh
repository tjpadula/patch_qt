#!/usr/bin/env bash

# Script for copying the changes we need to Qt 6.2.4. The sole parameter is the
# directory for the qt6 installation to be patched, e.g., ~/Code/qt6_complete.

if [[ -z $1 ]];
then 
    echo "No parameter passed."
    exit 0
fi

LOCAL_DIR=$(dirname "$0")
TARGET_DIR=$1

echo "Patching Qt installation in: $TARGET_DIR"

cp $LOCAL_DIR/qtbase/cmake/FindWrapFreetype.cmake $TARGET_DIR/qtbase/cmake/FindWrapFreetype.cmake
cp $LOCAL_DIR/qtbase/cmake/FindWrapHarfbuzz.cmake $TARGET_DIR/qtbase/cmake/FindWrapHarfbuzz.cmake
cp $LOCAL_DIR/qtbase/cmake/FindWrapOpenGL.cmake $TARGET_DIR/qtbase/cmake/FindWrapOpenGL.cmake
cp $LOCAL_DIR/qtbase/cmake/FindWrapPCRE2.cmake $TARGET_DIR/qtbase/cmake/FindWrapPCRE2.cmake
cp $LOCAL_DIR/qtbase/cmake/FindWrapPNG.cmake $TARGET_DIR/qtbase/cmake/FindWrapPNG.cmake

cp $LOCAL_DIR/qtbase/src/corelib/Qt6CoreMacros.cmake $TARGET_DIR/qtbase/src/corelib/Qt6CoreMacros.cmake
cp $LOCAL_DIR/qtbase/src/corelib/global/qglobal.cpp $TARGET_DIR/qtbase/src/corelib/global/qglobal.cpp
cp $LOCAL_DIR/qtbase/src/gui/accessible/qaccessible.cpp $TARGET_DIR/qtbase/src/gui/accessible/qaccessible.cpp
cp $LOCAL_DIR/qtmultimedia/src/multimedia/platform/darwin/camera/avfcamerautility.mm $TARGET_DIR/qtmultimedia/src/multimedia/platform/darwin/camera/avfcamerautility.mm

cp $LOCAL_DIR/qtbase/src/3rdparty/libpng/pngpriv.h $TARGET_DIR/qtbase/src/3rdparty/libpng/pngpriv.h
