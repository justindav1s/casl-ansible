#!/usr/bin/env bash

DEBUG=

ansible-playbook $DEBUG \
    -i inventory \
    ../../playbooks/openshift/phase1_vms_os.yml \
    -e@./inventory/group_vars/all.yml \
    --extra-vars "operation=deploy"
