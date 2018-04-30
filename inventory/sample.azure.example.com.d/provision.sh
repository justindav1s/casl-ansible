#!/usr/bin/env bash

rm -rf ~/casl-ansible/playbooks/openshift/*.retry

ansible-playbook -v \
    -i inventory \
    ../../playbooks/openshift/end-to-end.yml \
    -e@./inventory/group_vars/all.yml \
    --extra-vars "operation=deploy"


#/etc/origin/cloudprovider/azure.conf