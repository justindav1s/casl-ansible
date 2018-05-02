#!/usr/bin/env bash

rm -rf ../*.retry

ansible-playbook -i ../inventory/hosts ../delete_bastion_rg.yml