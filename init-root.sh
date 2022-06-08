#!/bin/sh -e

tar -xjf busybox-1.35.0.tar.bz2
ln -s busybox-1.35.0 busybox

cp busybox.config busybox/.config

mkdir root
cd root

cat <<EOT >> init
#!/bin/sh
mount -t proc none /proc
mount -t sysfs none /sys
cat <<!
boot took $(cut -d' ' -f1 /proc/uptime) seconds
Welcome to padcom-vm
!
exec /bin/sh
EOT
chmod +x init

cd ..

./build-root.sh
