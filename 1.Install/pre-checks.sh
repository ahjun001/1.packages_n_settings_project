#!/usr/bin/env bash
# pre-checks.sh
# ref YT Yogesh Mehta KVM LAB Details & Pre-Requs for KVM installation

set -euo pipefail

# Processor's virtualisation extensions are enable
grep -E 'svm|vmx' /proc/cpuinfo | grep -q svm && echo echo extensions enabled on AMD
grep -E 'svm|vmx' /proc/cpuinfo | grep -q vmx && echo echo extensions enabled on Intel

# Kernel is greater than 2.6.20
KER=$(uname -r)
if [[ $(echo KER | awk -F. '{print $1"."$2}') > 2.6.20 ]]; then
    echo "Kernel version is $KER -- greater than 2.6.20, can run KVM"
else
    echo "Kernel version is $KER, not greater than 2.6.20, can't run KVM"
fi
