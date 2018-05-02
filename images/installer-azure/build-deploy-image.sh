#!/usr/bin/env bash

#. ../../app/env.sh
#
#set -x
#
#oc login https://${IP}:8443 -u $USER
#
#IMAGE=centos7-java8:latest
#REGISTRY_HOST=docker-registry-default.apps.ocp.datr.eu:443
#
#oc project ${CICD_PROJECT}

docker build -t $IMAGE .
#docker tag $IMAGE $REGISTRY_HOST/${CICD_PROJECT}/$IMAGE
#
#TOKEN=`oc whoami -t`
#
#docker login -p $TOKEN -u justin $REGISTRY_HOST
#
#sleep 5
#
#docker push $REGISTRY_HOST/${CICD_PROJECT}/$IMAGE
