#!/bin/sh


DEV=/dev/mmcblk0p3
TARGET=/root
set -e
set -u

cryptsetup open $DEV crypt-data
mount -t btrfs -o compress-force=zstd:15 /dev/mapper/crypt-data /root
