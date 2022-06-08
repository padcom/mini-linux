#!/bin/sh

qemu-system-x86_64 \
  -kernel linux-5.18.2/arch/x86_64/boot/bzImage \
  -initrd initramfs.cpio.gz \
  -append "init=/bin/sh console=ttyS0" \
  -nographic
