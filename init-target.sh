#!/bin/sh -e

rm -f busybox
rm -rf busybox-1.13.0

wget -c https://busybox.net/downloads/busybox-1.35.0.tar.bz2
tar -xjf busybox-1.35.0.tar.bz2
ln -s busybox-1.35.0 busybox

cp busybox.config busybox/.config

mkdir target
cp -a root/* target/

./build-target.sh
