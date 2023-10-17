#!/usr/bin/env bash

set -euo pipefail

mkdir -p new_project/
cd new_project || exit 1
touch Vagrantfile
mkdir -p ansible/
cd ansible || exit 1
touch playbook.yml
mkdir -p roles/
cd roles || exit 1
for i in 1 2; do
    mkdir -p role$i/{files,handlers,meta,templates,tasks,vars,defaults}
done
cd ..
mkdir inventories
cd inventories || exit 1
mkdir -p {production,staging}/group_vars
touch {production,staging}/hosts
cd ../..
mkdir molecule
cd molecule
mkdir -p {default,another_scenario}/tests
touch {default,another_scenario}/{molecule.yml,playbook.yml}
cd ../..
