#!/usr/bin/env bash

NS=odk

helm repo add openg2p https://openg2p.github.io/openg2p-helm
helm repo update

echo Create $NS namespace
kubectl create ns $NS

helm -n $NS install odk-central openg2p/odk-central  $@
