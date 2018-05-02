#!/usr/bin/env bash

IMAGE=openshift-azure-deployer:latest

cp -r /root/.azure .

cp -r /root/.ssh/* ssh

cp /root/bin/env.sh bin

docker build -t $IMAGE .
