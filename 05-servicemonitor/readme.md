### Kubernetes Servicemonitor
To `monitor` our Elastic deployment, we use [Elasticsearch Exporter](https://github.com/prometheus-community/elasticsearch_exporter)

We will create a `ServiceMonitor` resource in Kubernetes to allow our existing `Kube-Prometheus` to scrape the metrics from `elastic-exporter`.

There are basically five steps that we need to take:
1. Deploy `Elasticsearch Exporter` to Kubernetes.
2. Verify that the exporter can `scrape metrics` from our Elastic cluster.
3. Make Kube-Prometheus to `scrape` the exporter. 
4. Add Prometheus as `data source` to Grafana
5. Add a `Grafana Dashboard` to visualise the data.

Read more in the blog post: [https://magsther.github.io/posts/servicemonitor/](https://magsther.github.io/posts/servicemonitor/)
