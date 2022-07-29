### Elastic Cloud on Kubernetes

Elastic Cloud is the best way to consume all of Elastic’s products across any cloud. Easily deploy in your favorite public cloud, or in multiple clouds, and extend the value of Elastic with cloud-native features.

In this blog post, we deploy Elasticsearch and Kibana using Terraform.

Read more in the blog post: [https://magsther.github.io/posts/elastic/](https://magsther.github.io/posts/elastic/)

---

After you've generated your API Key, you can make it available to the Terraform provider by exporting it as the environment variable EC_API_KEY (recommended)*

`export TF_VAR_ec_api_key="<apikey value>"`
