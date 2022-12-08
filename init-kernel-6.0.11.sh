#!/bin/sh -e

rm -f linux
rm -rf linux-6.0.11

wget -c https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.0.11.tar.xz

tar -xf linux-6.0.11.tar.xz
ln -s linux-6.0.11 linux

cd linux
make allnoconfig
cd ..
git apply kernel-6.0.11.config.patch
git apply kernel-6.0.11.config.net.patch

./build-kernel.sh
