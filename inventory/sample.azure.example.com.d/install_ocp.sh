#!/usr/bin/env bash

DEBUG=

ansible-playbook $DEBUG \
    -f 20 \
    -i inventory \
    /usr/share/ansible/openshift-ansible/playbooks/prerequisites.yml \
    -e@./inventory/group_vars/all.yml

ansible-playbook $DEBUG \
    -f 20 \
    -i inventory/hosts \
    /usr/share/ansible/openshift-ansible/playbooks/deploy_cluster.yml \
    -e@./inventory/group_vars/all.yml
