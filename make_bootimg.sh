#!/bin/bash -x

rm out/*

mkbootimg \
    --base 0x10000000 \
    --pagesize 2048 \
    --kernel_offset 0x00008000 \
    --ramdisk_offset 0x01000000 \
    --second_offset 0x00f00000 \
    --tags_offset 0x00000100 \
    --cmdline "" \
    --kernel zImage-dtb.mtk \
    --ramdisk ramdisk.mtk.cpio.gz \
    -o out/mainline-boot.img
