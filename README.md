# Eliatra OpenSearch Kubernetes Operator (EOKO)

This is a fork of https://github.com/Opster/opensearch-k8s-operator.

The Eliatra OpenSearch Kubernetes Operator is used for automating the deployment, provisioning, management, and orchestration of OpenSearch clusters and OpenSearch dashboards.

For more information and commercial support go to [https://eliatra.com/](https://eliatra.com/).

## Getting started

The Operator can be easily installed using helm on any CNCF-certified Kubernetes cluster. Please refer to the [User Guide](./docs/userguide/main.md) for installation instructions.


## Current feature list

Features:

- Deploy a new OS cluster.
- Ability to deploy multiple clusters.
- Spin up OS dashboards.
- Configuration of all node roles (master, data, coordinating..).
- Scale the cluster resources (manually), per nodes' role group.
- Drain strategy for scale down.
- Version updates.
- Change nodes' memory allocation and limits.
- Secured installation features.
- Certificate management.
- Rolling restarts - through API.
- Scaling nodes' disks - increase disk size.
- Cluster configurations and nodes' settings updates.
- Operator Monitoring, with Prometheus and Grafana.


## Installation

The Operator can be easily installed using Helm:

1. Install the Operator: `helm install eoko oci://registry-1.docker.io/eliatra/eoko`

## Compatibility

The Eliatra OpenSearch Kubernetes Operator (EOKO) aims to be compatible to all supported OpenSearch versions. Please check the table below for details:

| Operator Version | Min Supported OpenSearch Version | Max supported OpenSearch version | Comment |
|------------------|----------------------------------|----------------------------------|---------|
| 2.5              | 1.0                              | 2.8                              |         |

This table only lists versions that have been explicitly tested with the operator, the operator will not prevent you from using other versions. Newer minor versions (2.x) not listed here generally also work, but you should proceed with caution and test it in a non-production environment first.

## Development

If you want to develop the operator, please see the separate [developer docs](./docs/developing.md).

## Contributions

We welcome contributions! See how you can get involved by reading [CONTRIBUTING.md](./CONTRIBUTING.md).

## License

This project is licensed under the Apache v2.0 License.

## Copyright

Copyright Eliatra Contributors. See NOTICE for details.

## Trademark

This repo includes certain Apache-licensed Opster code from Opster Ltd. and other source code. 
Opster Ltd. is not the source of that other source code. Opster is a registered trademark of Opster Ltd.