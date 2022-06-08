#!/bin/sh

cd linux
make menuconfig
make -j $(nproc)
cd ..
