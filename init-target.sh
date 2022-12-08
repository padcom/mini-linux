#!/bin/sh -e

rm -rf target
rm -f busybox
rm -rf busybox-1.13.0

wget -c https://busybox.net/downloads/busybox-1.35.0.tar.bz2
tar -xjf busybox-1.35.0.tar.bz2
ln -s busybox-1.35.0 busybox

cp busybox.config busybox/.config
touch busybox/.config

mkdir -p target
cp -a root/* target/
cd target
ln -s sbin/init init
cd ..

./build-target.sh
