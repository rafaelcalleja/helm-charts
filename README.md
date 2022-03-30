# Helm-Charts

This repository contains [Helm](https://helm.sh) charts for various projects

- [Osiris](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/osiris)
- [MysqlCluster](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/mysql-cluster)
- [Octant](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/octant)
- [kube-prometheus-stack](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/kube-prometheus-stack)
- [kuberhealthy](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/kuberhealthy)
- [keda-add-ons-http](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/keda-add-ons-http)
- [keda](https://github.com/rafaelcalleja/helm-charts/tree/master/charts/keda)

## Installing Charts from this Repository

Add the Repository to Helm:

```sh
helm repo add rafaelcalleja-helm-charts https://rafaelcalleja.github.io/helm-charts
```

Install a chart:

```sh
helm install rafaelcalleja-helm-charts/[CHART_NAME]
```
