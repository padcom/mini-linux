#!/bin/sh -e

rm -f linux
rm -rf linux-5.18.2

wget -c https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.18.2.tar.xz

tar -xf linux-5.18.2.tar.xz
ln -s linux-5.18.2 linux

cd linux
make allnoconfig
cd ..
git apply kernel-5.18.2.config.patch

./build-kernel.sh
