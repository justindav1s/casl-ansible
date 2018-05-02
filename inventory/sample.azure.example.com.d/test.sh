#!/usr/bin/env bash

inventory/azure_rm.py --list


ansible-playbook \
    -i inventory \
    ./test.yml \
    -e@./inventory/group_vars/all.yml