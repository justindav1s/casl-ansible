#!/usr/bin/env bash

IMAGE=openshift-azure-deployer:latest

cp -r /root/.azure .

cp -r /root/.ssh/* ssh

docker build -t $IMAGE .
