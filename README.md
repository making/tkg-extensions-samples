
## Prometheus

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
07:09:43AM: info: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"networkpolicystats"}
07:09:44AM: info: Resources: Ignoring group version: schema.GroupVersionResource{Group:"stats.antrea.tanzu.vmware.com", Version:"v1alpha1", Resource:"antreanetworkpolicystats"}
Resources in app 'prometheus-ctrl'
Namespace                Name                                                 Kind                   Owner    Conds.  Rs  Ri  Age
tanzu-system-monitoring  prometheus-server                                    PersistentVolumeClaim  kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-server                                    ConfigMap              kapp     -       ok  -   54m
(cluster)                prometheus-node-exporter                             ClusterRoleBinding     kapp     -       ok  -   54m
(cluster)                prometheus-cadvisor                                  ClusterRole            kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-server                                    Service                kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-server                                 Endpoints              cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-server-2m8hr                           EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring  prometheus-pushgateway                               ServiceAccount         kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-node-exporter                             Service                kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-node-exporter                          Endpoints              cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-node-exporter-2r2vr                    EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-node-exporter-zltrm                    EndpointSlice          cluster  -       ok  -   54m
(cluster)                prometheus-server                                    ClusterRoleBinding     kapp     -       ok  -   54m
(cluster)                prometheus-cadvisor                                  ClusterRoleBinding     kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-pushgateway                               Deployment             kapp     2/2 t   ok  -   54m
tanzu-system-monitoring   L prometheus-pushgateway-69bdfb7d4c                 ReplicaSet             cluster  -       ok  -   54m
tanzu-system-monitoring   L.. prometheus-pushgateway-69bdfb7d4c-qnv8q         Pod                    cluster  4/4 t   ok  -   54m
tanzu-system-monitoring  prometheus-alertmanager                              Deployment             kapp     2/2 t   ok  -   54m
tanzu-system-monitoring   L prometheus-alertmanager-67799bc464                ReplicaSet             cluster  -       ok  -   54m
tanzu-system-monitoring   L.. prometheus-alertmanager-67799bc464-qppdx        Pod                    cluster  4/4 t   ok  -   54m
tanzu-system-monitoring  prometheus-pushgateway                               Service                kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-pushgateway-h9ppm                      EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-pushgateway                            Endpoints              cluster  -       ok  -   54m
tanzu-system-monitoring  prometheus-server                                    Deployment             kapp     2/2 t   ok  -   54m
tanzu-system-monitoring   L prometheus-server-764cf8fd4                       ReplicaSet             cluster  -       ok  -   29m
tanzu-system-monitoring   L prometheus-server-7c4c9dd57c                      ReplicaSet             cluster  -       ok  -   26m
tanzu-system-monitoring   L prometheus-server-77ddf986fd                      ReplicaSet             cluster  -       ok  -   54m
tanzu-system-monitoring   L.. prometheus-server-77ddf986fd-mtgvx              Pod                    cluster  4/4 t   ok  -   54m
tanzu-system-monitoring  prometheus-alertmanager                              ServiceAccount         kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-kube-state-metrics                        ServiceAccount         kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-cadvisor                                  ServiceAccount         kapp     -       ok  -   54m
(cluster)                prometheus-node-exporter                             ClusterRole            kapp     -       ok  -   54m
(cluster)                prometheus-pushgateway                               ClusterRoleBinding     kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-kube-state-metrics                        Service                kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-kube-state-metrics-n8w4n               EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-kube-state-metrics-qhvvx               EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-kube-state-metrics                     Endpoints              cluster  -       ok  -   54m
tanzu-system-monitoring  prometheus-kube-state-metrics                        Deployment             kapp     2/2 t   ok  -   54m
tanzu-system-monitoring   L prometheus-kube-state-metrics-68b4c74cbc          ReplicaSet             cluster  -       ok  -   54m
tanzu-system-monitoring   L.. prometheus-kube-state-metrics-68b4c74cbc-bw5xm  Pod                    cluster  4/4 t   ok  -   54m
tanzu-system-monitoring  prometheus-alertmanager                              Service                kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-alertmanager                           Endpoints              cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-alertmanager-m8dvc                     EndpointSlice          cluster  -       ok  -   54m
tanzu-system-monitoring  prometheus-node-exporter                             DaemonSet              kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-node-exporter-7cfbd4ff5b               ControllerRevision     cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-node-exporter-qckbj                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-z9t8v                    Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-node-exporter-5dbf6fffb5               ControllerRevision     cluster  -       ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-z46ht                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-8s58v                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-dzvlr                    Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-node-exporter-mnl8t                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-db5rt                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-node-exporter-tl8pn                    Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring  prometheus-node-exporter                             ServiceAccount         kapp     -       ok  -   54m
(cluster)                prometheus-alertmanager                              ClusterRole            kapp     -       ok  -   54m
(cluster)                prometheus-server                                    ClusterRole            kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-alertmanager                              ConfigMap              kapp     -       ok  -   54m
(cluster)                prometheus-pushgateway                               ClusterRole            kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-cadvisor                                  DaemonSet              kapp     -       ok  -   54m
tanzu-system-monitoring   L prometheus-cadvisor-gfmmh                         Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-cadvisor-c5b469c76                     ControllerRevision     cluster  -       ok  -   54m
tanzu-system-monitoring   L prometheus-cadvisor-n5vvm                         Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-cadvisor-25xzr                         Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-cadvisor-st6mc                         Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring   L prometheus-cadvisor-78b77899d9                    ControllerRevision     cluster  -       ok  -   32m
tanzu-system-monitoring   L prometheus-cadvisor-t5898                         Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-cadvisor-w5zmx                         Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-cadvisor-7wflk                         Pod                    cluster  4/4 t   ok  -   31m
tanzu-system-monitoring   L prometheus-cadvisor-rd94k                         Pod                    cluster  4/4 t   ok  -   32m
tanzu-system-monitoring  prometheus-server                                    ServiceAccount         kapp     -       ok  -   54m
(cluster)                prometheus-kube-state-metrics                        ClusterRoleBinding     kapp     -       ok  -   54m
(cluster)                prometheus-alertmanager                              ClusterRoleBinding     kapp     -       ok  -   54m
(cluster)                prometheus-kube-state-metrics                        ClusterRole            kapp     -       ok  -   54m
tanzu-system-monitoring  prometheus-alertmanager                              PersistentVolumeClaim  kapp     -       ok  -   54m
Rs: Reconcile state
Ri: Reconcile information
75 resources
Succeeded
```

Check the log if prometheus does not start

```
kubectl -n tanzu-system-monitoring logs -f deploy/prometheus-server -c prometheus-server
```

Check the `values.yaml` in `prometheus-data-values`

```
kubectl get secret -n tanzu-system-monitoring prometheus-data-values -otemplate='{{index .data "values.yaml" | base64decode}}'
```