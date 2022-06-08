#!/bin/sh -e

tar -xf linux-5.18.2.tar.xz
ln -s linux-5.18.2 linux

cp kernel.config linux/.config

./build-kernel.sh
