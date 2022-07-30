### How to monitor Elasticsearch with Kube-Prometheus

To `monitor` our Elastic deployment, we can use [Elasticsearch Exporter](https://github.com/prometheus-community/elasticsearch_exporter)

There are basically five steps that we need to take:
1. Deploy `Elasticsearch Exporter` to Kubernetes.
2. Verify that the exporter can `scrape metrics` from our Elastic cluster.
3. Make Kube-Prometheus to `scrape` the exporter. 
4. Add Prometheus as `data source` to Grafana
5. Add a `Grafana Dashboard` to visualise the data.

Read more in the blog post: [https://magsther.github.io/posts/elasticexporter/](https://magsther.github.io/posts/elasticexporter/)

---

After you've generated your API Key, you can make it available to the Terraform provider by exporting it as the environment variable EC_API_KEY (recommended)*

`export TF_VAR_ec_api_key="<apikey value>"`
