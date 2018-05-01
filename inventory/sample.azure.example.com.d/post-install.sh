#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -vvvv \
    -i inventory \
    ../../playbooks/openshift/post-install.yml \
    --module-path=/root/casl-ansible/galaxy/openshift-ansible/roles/lib_utils/library \
    -e@./inventory/group_vars/all.yml