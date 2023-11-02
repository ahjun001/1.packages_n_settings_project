#!/usr/bin/env bash
virsh net-start vagrant-libvirt
virsh net-start vagrant-private-dhcp
virt-manager
