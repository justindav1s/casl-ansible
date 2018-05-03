#!/usr/bin/env bash

. ~/bin/deloitteenv.sh

ansible-playbook -i ./azure_rm.py ../configure_bastion_vm.yml