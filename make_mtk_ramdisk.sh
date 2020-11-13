#!/bin/bash -x

rm ramdisk.mtk.cpio.gz

mtk_mkimage.sh ROOTFS ramdisk.cpio.gz ramdisk.mtk.cpio.gz
