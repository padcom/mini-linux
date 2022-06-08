#!/bin/sh -e

wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.18.2.tar.xz
tar -xf linux-5.18.2.tar.xz
ln -s linux-5.18.2 linux

cp kernel.config linux/.config

./build-kernel.sh
