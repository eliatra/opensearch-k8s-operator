#!/bin/bash
CLUSTER_NAME=opensearch-operator-smoketest

## Setup k3d cluster and prepare kubeconfig
k3d cluster create $CLUSTER_NAME --agents 2 --kubeconfig-switch-context=false --kubeconfig-update-default=false -p "30000-30005:30000-30005@agent:0" --image=rancher/k3s:v1.22.17-k3s1
k3d kubeconfig get $CLUSTER_NAME > kubeconfig-smoketest
export KUBECONFIG=$(pwd)/kubeconfig-smoketest

## Install helm chart
helm install eoko oci://registry-1.docker.io/eliatra/eoko --wait
helm install eoko-cluster oci://registry-1.docker.io/eliatra/eoko-cluster --wait

echo
echo "==============================================================="
echo
echo "Waiting until OpenSearch is ready ..."
echo
until kubectl wait -l statefulset.kubernetes.io/pod-name=eoko-cluster-masters-2 --for=condition=ready pod --timeout=-1s
do
    echo "Waiting for eoko-cluster-masters-2 pod to be ready ..."
    sleep 30
done

until kubectl rollout status deployment eoko-cluster-dashboards
do
    echo "Waiting for eoko-cluster-dashboards deployment to be ready ..."
    sleep 15
done

echo
echo "==============================================================="
echo "Finished successfully"

## Delete k3d cluster
k3d cluster delete $CLUSTER_NAME
