#!/bin/sh

cd busybox
make menuconfig
make -j $(nproc)
make install

cd ../target

mkdir -p dev etc proc sys

cp -a ../busybox/_install/* .
rm ../initramfs.cpio.gz
find . -print0 | cpio --null -ov --format=newc | bzip2 > ../initramfs.cpio.bz2

cd ..
