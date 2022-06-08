#!/bin/sh -e

wget https://busybox.net/downloads/busybox-1.35.0.tar.bz2
tar -xjf busybox-1.35.0.tar.bz2
ln -s busybox-1.35.0 busybox

cp busybox.config busybox/.config

mkdir target
cp -a root/* target/

./build-target.sh
