#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -v \
    -i inventory \
    ~/casl-ansible/galaxy/openshift-ansible/playbooks/adhoc/uninstall.yml \
    -e@./inventory/group_vars/all.yml