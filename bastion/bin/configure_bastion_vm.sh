#!/usr/bin/env bash

. ~/bin/deloitteenv.sh

env

ansible-playbook -i ./azure_rm.py ../configure_bastion_vm.yml