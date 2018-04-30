#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -v \
    -i inventory \
    ../../playbooks/openshift/azure/post-install.yml \
    -e@./inventory/group_vars/all.yml