#!/bin/sh

cd busybox-1.35.0
make menuconfig
make -j $(nproc)
make install

cd ../root

mkdir -p dev etc proc sys

cp -a ../busybox-1.35.0/_install/* .
rm ../initramfs.cpio.gz
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz

cd ..
