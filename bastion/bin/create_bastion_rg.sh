#!/usr/bin/env bash

. ~/bin/deloitteenv.sh

az account set --subscription="75cbd83f-191b-4305-8863-d826e9d20774"

env

ansible-playbook -vv -i ../inventory/hosts ../bastion_rg.yml