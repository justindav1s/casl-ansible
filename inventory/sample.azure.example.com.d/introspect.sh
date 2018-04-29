#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -vvvv \
    -i inventory \
    ./introspect.yml \
    -e@./inventory/group_vars/all.yml