#!/bin/bash -ex

if [ $(basename $PWD) != "linux" ]; then
    echo "Please run from the linux source tree with arch/arm/boot/zImage"
    exit 1
fi

cat arch/arm/boot/zImage arch/arm/boot/dts/mt6589-fairphone-fp1.dtb > ../zImage-dtb

rm -f ../zImage-dtb.mtk
mtk_mkimage.sh KERNEL ../zImage-dtb ../zImage-dtb.mtk

cd ..
./make_bootimg.sh

#fastboot boot out/mainline-boot.img
