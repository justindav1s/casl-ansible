#!/usr/bin/env bash

rm -rf ../*.retry

ansible-playbook -i ../inventory/hosts ../bastion_rg.yml