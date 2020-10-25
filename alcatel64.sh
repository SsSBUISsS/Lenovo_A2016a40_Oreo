#!/bin/bash
clear
rm -rf completed/ build.log out/
echo "Start compilating"
sleep 1
clear
echo "3"
sleep 1
clear
echo "2"
sleep 1
clear
echo "1"
sleep 1
clear
echo "START"
sleep 1
clear
export ARCH=arm64
export CROSS_COMPILE=$PWD/gcc/bin/aarch64-linux-gnu-
export KBUILD_BUILD_USER=SsSBUISsS
export KBUILD_BUILD_HOST=4pda
make O=out oreo_a2010_64_defconfig
make O=out -j8 | tee build log
clear
mkdir completed/
mv out/arch/arm64/boot/Image.gz-dtb completed/
rm -rf out/
echo "Completed. The new kernel in the completed folder."
