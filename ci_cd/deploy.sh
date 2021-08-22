#!/bin/bash

sudo -u ubuntu kubectl create -f manifest/deployment-backend.yaml
[[ "$?" != "0" ]] && exit 1
sudo -u ubuntu kubectl apply -f manifest/service-backend.yaml
[[ "$?" != "0" ]] && exit 1

sudo -u ubuntu kubectl create -f manifest/deployment-frontend.yaml
[[ "$?" != "0" ]] && exit 1
sudo -u ubuntu kubectl apply -f manifest/service-frontend.yaml
exit $?
