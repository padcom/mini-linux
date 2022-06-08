#!/bin/sh

cd linux-5.18.2
make clean
make menuconfig
make -j $(nproc)
cd ..
