### Grafana dashboards as configmaps

[Grafana](https://grafana.com/) is an open source solution for running data analytics, pulling up metrics that make sense of the massive amount of data & to monitor our apps with the help of cool customizable dashboards.

If you remember from the previous blog [post](https://magsther.github.io/posts/servicemonitor/), we mentioned that we need to take five steps to do this:

1. Deploy `Elasticsearch Exporter` to Kubernetes.
2. Verify that the exporter can `scrape metrics` from our Elastic cluster.
3. Make Kube-Prometheus to `scrape the exporter` 
4. Add Prometheus as `data source` to Grafana
5. Add a `Grafana Dashboard` to visualise the data.


Read more in the blog post: [https://magsther.github.io/posts/grafana/](https://magsther.github.io/posts/grafana/)
