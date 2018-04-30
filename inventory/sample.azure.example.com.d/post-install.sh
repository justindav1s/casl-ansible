#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -v \
    -i inventory \
    ../../playbooks/openshift/post-install.yml \
    --module-path=~/casl-ansible \
    -e@./inventory/group_vars/all.yml