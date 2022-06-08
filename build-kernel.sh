#!/bin/sh

cd linux
make clean
make menuconfig
make -j $(nproc)
cd ..
