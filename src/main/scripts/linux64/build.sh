mkdir $PWD/build
cd build

cmake ../ -DCMAKE_BUILD_TYPE=Release -DCMAKE_COLOR_MAKEFILE=on -DLIBRARY_OUTPUT_PATH="../../../../../target/classes/linux64" -G "Unix Makefiles"

make
r1=$?

cd ..
cp physicsfs/win64/bin/libphysfs.dll ../../../../target/classes/linux64
cp ogre3d/win64/bin/OgreMain.dll ../../../../target/classes/linux64
cp ogre3d/win64/bin/OgreOverlay.dll ../../../../target/classes/linux64
cp ogre3d/win64/bin/Plugin_ParticleFX.dll ../../../../target/classes/linux64
cp ogre3d/win64/bin/RenderSystem_GL.dll ../../../../target/classes/linux64
rm -r build
rm -r boost
rm -r physicsfs
rm -r ogre3d
rm -r java
rm -r ../../includes
rm -r ../../c++

return $r1


