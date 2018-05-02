#!/usr/bin/env bash

IMAGE=openshift-azure-deployer:latest

docker build -t $IMAGE .
