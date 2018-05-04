#!/usr/bin/env bash


DEBUG=

ansible-playbook $DEBUG \
    -i inventory \
    /usr/share/ansible/openshift-ansible/playbooks/openshift-master/redeploy-master-certificates.yml \
    -e@./inventory/group_vars/all.yml
