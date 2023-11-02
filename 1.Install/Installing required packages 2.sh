#!/usr/bin/env bash
# Installing  required  packages 2.sh
# ref YT Yogesh Mehta KVM LAB Details & Pre-Requs for KVM installation

set -euo pipefail

# After the host reboot, check libvirtd started successfully
systemctl status libvirtd

# ensure the kernel modules for KVM are loaded
# modinfo kvm_intel
modinfo kvm_amd >/dev/null || echo $'\nmodule kvm_amd not loaded'
modinfo kvm >/dev/null || echo $'\nmodule kvm not loaded'
modinfo kvm_arm >/dev/null || echo $'\nmodule kvm not loaded'
