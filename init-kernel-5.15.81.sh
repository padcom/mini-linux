#!/bin/sh -e

rm -f linux
rm -rf linux-5.15.81

wget -c https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.81.tar.xz

tar -xf linux-5.15.81.tar.xz
ln -s linux-5.15.81 linux

cd linux
make allnoconfig
cd ..
git apply kernel-5.15.81.config.patch

./build-kernel.sh
