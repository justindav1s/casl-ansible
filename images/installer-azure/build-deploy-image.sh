#!/usr/bin/env bash

#. ../../app/env.sh
#
#set -x
#
oc login https://ocp.digitaldevops.net -u justin
#
IMAGE=openshift-azure-deployer:latest
REGISTRY_HOST=docker-registry-default.apps.digitaldevops.net:443
#
oc project openshift

TOKEN=`oc whoami -t`

docker login -p $TOKEN -u justin $REGISTRY_HOST

docker build -t $IMAGE .
#docker tag $IMAGE $REGISTRY_HOST/${CICD_PROJECT}/$IMAGE
#
#
#

#
#sleep 5
#
#docker push $REGISTRY_HOST/${CICD_PROJECT}/$IMAGE
