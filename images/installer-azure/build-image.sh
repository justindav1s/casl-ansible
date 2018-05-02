#!/usr/bin/env bash

IMAGE=openshift-azure-deployer:latest

cp -r /root/.azure .

docker build -t $IMAGE .
