# OpenSearch-k8s-operator

The Kubernetes [OpenSearch Operator](https://github.com/Eliatra/opensearch-k8s-operator) is used for automating the deployment, provisioning, management, and orchestration of OpenSearch clusters and OpenSearch dashboards.

## Getting started

The Operator can be easily installed using helm on any CNCF-certified Kubernetes cluster. Please refer to the [User Guide](https://github.com/Eliatra/opensearch-k8s-operator/blob/main/docs/userguide/main.md) for more information.

### Installation Using Helm

#### Install Chart
```
helm install [RELEASE_NAME] oci://registry-1.docker.io/eliatra/eoko
```
#### Uninstall Chart
```
helm uninstall [RELEASE_NAME]
```
#### Upgrade Chart
```
helm repo update
helm upgrade [RELEASE_NAME] oci://registry-1.docker.io/eliatra/eoko
```


