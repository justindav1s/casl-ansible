#!/usr/bin/env bash

rm -rf ~/github/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -vvvv \
    -i inventory \
    ../../playbooks/openshift/end-to-end.yml \
    -e@./inventory/group_vars/all.yml \
    --extra-vars "operation=absent"