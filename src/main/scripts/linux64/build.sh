#!/usr/bin/env bash

cmake . \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_COLOR_MAKEFILE=on \
    -DLIBRARY_OUTPUT_PATH="../../../../target/classes/linux64" \
    -DPHYSFS_INCLUDE_DIR="physicsfs/linux64/include" \
    -G "Unix Makefiles"

make
r1=$?

cp physicsfs/linux64/libyildizphysfs.so     ../../../../target/classes/linux64
cp ogre3d/linux64/bin/OgreMain.so ../../../../target/classes/linux64
cp ogre3d/linux64/bin/OgreOverlay.so ../../../../target/classes/linux64
cp ogre3d/linux64/bin/Plugin_ParticleFX.so ../../../../target/classes/linux64
cp ogre3d/linux64/bin/RenderSystem_GL.so ../../../../target/classes/linux64

exit $r1


