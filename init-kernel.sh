#!/bin/sh -e

tar -xf linux-5.18.2.tar.xz

cp kernel.config linux-5.18.2/.config

./build-kernel.sh
