#!/usr/bin/env bash

. ~/bin/deloitteenv.sh

ansible-playbook -i ../inventory/hosts ../bastion_vm.yml