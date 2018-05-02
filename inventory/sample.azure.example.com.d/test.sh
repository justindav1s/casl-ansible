#!/usr/bin/env bash

ansible-playbook \
    -i inventory \
    ./test.yml \
    -e@./inventory/group_vars/all.yml