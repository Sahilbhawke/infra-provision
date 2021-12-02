
Bitcot
===========

A Helm chart for Wordpress + MySQL Deployment

# WordPress

[WordPress](https://wordpress.org/) is one of the most versatile open
source content management systems on the market. A publishing platform
for building blogs and websites.

## **IMPORTANT NOTE**
This Chart was customized to work for my particular requirements.  No
guarantees it will work in your environment.

### Prerequisites
- Kubernetes 1.12+
- Helm 3.1.0

### Install Helm

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources.

To install Helm, refer to the [Helm install guide](https://github.com/helm/helm#install) and ensure that the `helm` binary is in the `PATH` of your shell.

If you want to use a package manager:

- [Homebrew](https://brew.sh/) users can use `brew install helm`.
- [Chocolatey](https://chocolatey.org/) users can use `choco install kubernetes-helm`.

To rapidly get Helm up and running, start with the [Quick Start Guide](https://helm.sh/docs/intro/quickstart/).

See the [installation guide](https://helm.sh/docs/intro/install/) for more options,
including installing pre-releases.

### Add Repo

The following command allows you to download and install all the charts from this repository:

```bash
$ helm repo add bitnami https://charts.bitnami.com/bitnami
```

### Using Helm

Once you have installed the Helm client, you can deploy a Bitnami Helm Chart into a Kubernetes cluster.

Please refer to the [Quick Start guide](https://helm.sh/docs/intro/quickstart/) if you wish to get running in just a few commands, otherwise the [Using Helm Guide](https://helm.sh/docs/intro/using_helm/) provides detailed instructions on how to use the Helm client to manage packages on your Kubernetes cluster.

Useful Helm Client Commands:
* View available charts: `helm search repo`
* Install a chart: `helm install my-release bitnami/<package-name>`
* Upgrade your application: `helm upgrade`

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm install --name my-release stable/wordpress
```

The command deploys WordPress on the Kubernetes cluster in the default
configuration. The [configuration](#configuration) section lists the
parameters that can be configured during installation.

## Execute the command to get the list of helm releases
```sh
helm list
```
## Execute the command to get the list of helm releases from all namespaceses
```sh
helm list -A
```

## Configuration

The following table lists the configurable parameters of the Bitcot chart and their default values.

| Parameter                | Description             | Default        |
| ------------------------ | ----------------------- | -------------- |
| `replicaCount` |  | `1` |
| `namespace` |  | `"bitcot"` |
| `imagePullSecrets` |  | `[{"name": null}]` |
| `imageCredentials.registry` |  | `null` |
| `imageCredentials.username` |  | `null` |
| `imageCredentials.password` |  | `null` |
| `imageCredentials.email` |  | `null` |
| `accessModes` |  | `["ReadWriteOnce"]` |
| `imagePullPolicy` |  | `"Always"` |
| `storage` |  | `"3Gi"` |
| `wordpress.tier` |  | `"frontend"` |
| `wordpress.service.port` |  | `80` |
| `wordpress.service.targetPort` |  | `80` |
| `wordpress.service.protocol` |  | `"TCP"` |
| `wordpress.service.type` |  | `"LoadBalancer"` |
| `wordpress.image` |  | `"wordpress:5.3"` |
| `wordpress.resources.requests.memory` |  | `"500Mi"` |
| `wordpress.resources.requests.cpu` |  | `"600m"` |
| `wordpress.resources.limits.memory` |  | `"600Mi"` |
| `wordpress.resources.limits.cpu` |  | `"750m"` |
| `wordpress.secrets.WORDPRESS_DB_HOST` |  | `"bitcot-mysql"` |
| `wordpress.secrets.WORDPRESS_DB_NAME` |  | `"know2"` |
| `wordpress.secrets.WORDPRESS_DB_PASSWORD` |  | `"groot"` |
| `wordpress.secrets.WORDPRESS_DB_USER` |  | `"wp_root"` |
| `wordpress.containerPort` |  | `80` |
| `wordpress.containerPorthttps` |  | `443` |
| `wordpress.Volumes.name` |  | `"wordpress-persistent-storage"` |
| `wordpress.Volumes.mountPath` |  | `"/var/www/html"` |
| `Sidecar.name` |  | `"sidecar-container"` |
| `Sidecar.image` |  | `"ubuntu:20.04"` |
| `db.tier` |  | `"mysql"` |
| `db.service.port` |  | `3306` |
| `db.service.targetPort` |  | `3306` |
| `db.service.protocol` |  | `"TCP"` |
| `db.service.type` |  | `"ClusterIP"` |
| `db.image` |  | `"mysql:5.6"` |
| `db.resources.requests.memory` |  | `"500Mi"` |
| `db.resources.requests.cpu` |  | `"600m"` |
| `db.resources.limits.memory` |  | `"600Mi"` |
| `db.resources.limits.cpu` |  | `"750m"` |
| `db.secrets.MYSQL_DATABASE` |  | `"know2"` |
| `db.secrets.MYSQL_PASSWORD` |  | `"groot"` |
| `db.secrets.MYSQL_ROOT_PASSWORD` |  | `"groot"` |
| `db.secrets.MYSQL_USER` |  | `"wp_root"` |
| `db.containerPort` |  | `3306` |
| `db.Volumes.name` |  | `"mysql-persistent-storage"` |
| `db.Volumes.mountPath` |  | `"/var/lib/mysql"` |
| `initContainers.name` |  | `"init-container-mysql"` |
| `initContainers.image` |  | `"mysql:latest"` |
| `initContainers.Volume.name` |  | `"db-dump"` |
| `initContainers.Volume.mountPath` |  | `"/docker-entrypoint-initdb.d"` |

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```console
$ helm delete my-release
```

The command removes all the Kubernetes components associated with the
chart and deletes the release.

## Authors

- [Bitcot](https://www.bitcot.com/)

![Logo](https://ca.slack-edge.com/T038JGHAM-U10U9592T-7448ec25ea73-54)

## Contact

Please reach out to us for queries and questions on `contact@bitcot.com`
