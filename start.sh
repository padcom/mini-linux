#!/bin/sh

qemu-system-x86_64 \
  -kernel linux/arch/x86_64/boot/bzImage \
  -initrd initramfs.cpio.bz2 \
  -append "init=/bin/sh console=ttyS0" \
  -nographic \
  -enable-kvm \
  -device e1000,netdev=net0 \
  -netdev user,id=net0,hostfwd=tcp::5555-:22
