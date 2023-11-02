#!/usr/bin/env bash
# Installing  required  packages 1.sh
# ref YT Yogesh Mehta KVM LAB Details & Pre-Requs for KVM installation

set -euo pipefail

# install the packages
# qemu-system-x86  is qemu-kvm on fedora
# virtinst is virt-install on fedora
# virtinsta is virt-install on fedora \
sudo apt install \
    qemu-system-x86 \
    libvirt-daemon-system \
    libguestfs-tools \
    virtinst \
    virt-manager \
    libvirt-dev \
    -y # qemu-kvm on fedora \

pip3 install libvirt-python

sudo systemctl enable libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd

# reboot
echo $'\nreboot\n'
