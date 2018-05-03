#!/usr/bin/env bash

DEBUG=

ansible-playbook $DEBUG \
    -i inventory \
    ../../playbooks/openshift/end-to-end.yml \
    -e@./inventory/group_vars/all.yml \
    --extra-vars "operation=deploy"
