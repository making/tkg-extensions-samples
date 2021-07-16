
## Prometheus

Deploy Prometheus

```
./ytt-prometheus.sh | kubectl apply -f-
```

Check progress and wait until `Succeeded` is output.


```
kubectl get app -n tanzu-system-monitoring prometheus -o template='{{.status.deploy.stdout}}' -w
```

```
$ kubectl get app -n tanzu-system-monitoring prometheus -o template='{{.status.inspect.stdout}}' 
Target cluster 'https://100.64.0.1:443'
07:55:19AM: debug: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"networkpolicystats"}
07:55:19AM: debug: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"antreanetworkpolicystats"}
Resources in app 'prometheus-ctrl'
Namespace                Name                                                 Kind                   Owner    Conds.  Rs  Ri  Age
tanzu-system-monitoring  prometheus-server                                    PersistentVolumeClaim  kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-server                                    ConfigMap              kapp     -       ok  -   37m
(cluster)                prometheus-node-exporter                             ClusterRoleBinding     kapp     -       ok  -   37m
(cluster)                prometheus-cadvisor                                  ClusterRole            kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-server                                    Service                kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-server-8m87q                           EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-server                                 Endpoints              cluster  -       ok  -   37m
tanzu-system-monitoring  prometheus-pushgateway                               ServiceAccount         kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-node-exporter                             Service                kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-vlll5                    EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-dmmdb                    EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter                          Endpoints              cluster  -       ok  -   37m
(cluster)                prometheus-server                                    ClusterRoleBinding     kapp     -       ok  -   37m
(cluster)                prometheus-cadvisor                                  ClusterRoleBinding     kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-pushgateway                               Deployment             kapp     2/2 t   ok  -   37m
tanzu-system-monitoring   L prometheus-pushgateway-5b8658fbf9                 ReplicaSet             cluster  -       ok  -   37m
tanzu-system-monitoring   L.. prometheus-pushgateway-5b8658fbf9-zq2qd         Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring  prometheus-alertmanager                              Deployment             kapp     2/2 t   ok  -   37m
tanzu-system-monitoring   L prometheus-alertmanager-5b67c9ffd8                ReplicaSet             cluster  -       ok  -   37m
tanzu-system-monitoring   L.. prometheus-alertmanager-5b67c9ffd8-txj5p        Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring  prometheus-pushgateway                               Service                kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-pushgateway                            Endpoints              cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-pushgateway-dxccq                      EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring  prometheus-server                                    Deployment             kapp     2/2 t   ok  -   37m
tanzu-system-monitoring   L prometheus-server-544b9d8cdb                      ReplicaSet             cluster  -       ok  -   37m
tanzu-system-monitoring   L.. prometheus-server-544b9d8cdb-brg7k              Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring  prometheus-alertmanager                              ServiceAccount         kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-kube-state-metrics                        ServiceAccount         kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-cadvisor                                  ServiceAccount         kapp     -       ok  -   37m
(cluster)                prometheus-node-exporter                             ClusterRole            kapp     -       ok  -   37m
(cluster)                prometheus-pushgateway                               ClusterRoleBinding     kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-kube-state-metrics                        Service                kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-kube-state-metrics                     Endpoints              cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-kube-state-metrics-prcrv               EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-kube-state-metrics-2n8sr               EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring  prometheus-kube-state-metrics                        Deployment             kapp     2/2 t   ok  -   37m
tanzu-system-monitoring   L prometheus-kube-state-metrics-6884d78687          ReplicaSet             cluster  -       ok  -   37m
tanzu-system-monitoring   L.. prometheus-kube-state-metrics-6884d78687-8rbc5  Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring  prometheus-alertmanager                              Service                kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-alertmanager-zpn2n                     EndpointSlice          cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-alertmanager                           Endpoints              cluster  -       ok  -   37m
tanzu-system-monitoring  prometheus-node-exporter                             DaemonSet              kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-6k6m9                    Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-spz6s                    Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-5cd5d59f7                ControllerRevision     cluster  -       ok  -   37m
tanzu-system-monitoring   L prometheus-node-exporter-f54jn                    Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring  prometheus-node-exporter                             ServiceAccount         kapp     -       ok  -   37m
(cluster)                prometheus-alertmanager                              ClusterRole            kapp     -       ok  -   37m
(cluster)                prometheus-server                                    ClusterRole            kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-alertmanager                              ConfigMap              kapp     -       ok  -   37m
(cluster)                prometheus-pushgateway                               ClusterRole            kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-cadvisor                                  DaemonSet              kapp     -       ok  -   37m
tanzu-system-monitoring   L prometheus-cadvisor-t69tb                         Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring   L prometheus-cadvisor-wfzm7                         Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring   L prometheus-cadvisor-9ndzk                         Pod                    cluster  4/4 t   ok  -   37m
tanzu-system-monitoring   L prometheus-cadvisor-69b4669b85                    ControllerRevision     cluster  -       ok  -   37m
tanzu-system-monitoring  prometheus-server                                    ServiceAccount         kapp     -       ok  -   37m
(cluster)                prometheus-kube-state-metrics                        ClusterRoleBinding     kapp     -       ok  -   37m
(cluster)                prometheus-alertmanager                              ClusterRoleBinding     kapp     -       ok  -   37m
(cluster)                prometheus-kube-state-metrics                        ClusterRole            kapp     -       ok  -   37m
tanzu-system-monitoring  prometheus-alertmanager                              PersistentVolumeClaim  kapp     -       ok  -   37m
Rs: Reconcile state
Ri: Reconcile information
61 resources
Succeede
```

Go to http://localhost:9000 using the following port forward

```
kubectl port-forward -n tanzu-system-monitoring svc/prometheus-server 9000:80
```

Check the log if prometheus does not start

```
kubectl -n tanzu-system-monitoring logs -f deploy/prometheus-server -c prometheus-server
```

Check the `values.yaml` in `prometheus-data-values`

```
kubectl get secret -n tanzu-system-monitoring prometheus-data-values -otemplate='{{index .data "values.yaml" | base64decode}}'
```

## Grafana

Deploy Grafana

```
./ytt-grafana.sh | kubectl apply -f-
```

Check progress and wait until `Succeeded` is output.

```
kubectl get app -n tanzu-system-monitoring grafana -o template='{{.status.deploy.stdout}}' -w
```

```
$ kubectl get app -n tanzu-system-monitoring grafana -o template='{{.status.inspect.stdout}}' 
Target cluster 'https://100.64.0.1:443'
07:56:06AM: debug: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"antreanetworkpolicystats"}
07:56:06AM: debug: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"networkpolicystats"}
Resources in app 'grafana-ctrl'
Namespace                Name                           Kind                   Owner    Conds.  Rs  Ri  Age
tanzu-system-monitoring  grafana                        ConfigMap              kapp     -       ok  -   20m
(cluster)                grafana-clusterrole            ClusterRole            kapp     -       ok  -   20m
(cluster)                grafana-clusterrolebinding     ClusterRoleBinding     kapp     -       ok  -   20m
tanzu-system-monitoring  grafana-dashboard-apiserver    ConfigMap              kapp     -       ok  -   20m
tanzu-system-monitoring  grafana-default-dashboard      ConfigMap              kapp     -       ok  -   20m
tanzu-system-monitoring  grafana                        Deployment             kapp     2/2 t   ok  -   20m
tanzu-system-monitoring   L grafana-74c5fd8f87          ReplicaSet             cluster  -       ok  -   20m
tanzu-system-monitoring   L.. grafana-74c5fd8f87-q8xrg  Pod                    cluster  4/4 t   ok  -   20m
tanzu-system-monitoring  grafana                        ServiceAccount         kapp     -       ok  -   20m
tanzu-system-monitoring  grafana-config-dashboards      ConfigMap              kapp     -       ok  -   20m
tanzu-system-monitoring  grafana                        Service                kapp     -       ok  -   20m
tanzu-system-monitoring   L grafana                     Endpoints              cluster  -       ok  -   20m
tanzu-system-monitoring   L grafana-jmzjd               EndpointSlice          cluster  -       ok  -   20m
tanzu-system-monitoring  grafana                        Secret                 kapp     -       ok  -   20m
tanzu-system-monitoring  grafana-pvc                    PersistentVolumeClaim  kapp     -       ok  -   20m
tanzu-system-monitoring  grafana-datasource             ConfigMap              kapp     -       ok  -   20m
Rs: Reconcile state
Ri: Reconcile information
16 resources
Succeeded
```

Go to http://localhost:3000 using the following port forward

```
kubectl port-forward -n tanzu-system-monitoring svc/grafana 3000:80
```

Check the log if grafana does not start

```
kubectl -n tanzu-system-monitoring logs -f deploy/grafana
```

Check the `values.yaml` in `grafana-data-values`

```
kubectl get secret -n tanzu-system-monitoring grafana-data-values -otemplate='{{index .data "values.yaml" | base64decode}}'
```