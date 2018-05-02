#!/usr/bin/env bash

rm -rf ../*.retry

ansible-playbook -i ./azure_rm.py ../configure_bastion_vm.yml