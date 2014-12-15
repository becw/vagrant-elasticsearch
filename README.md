# Elasticsearch in 60 seconds

Elasticsearch is an open-source search server based on the Lucene search engine.

http://www.elasticsearch.org/

The respository contains a Vagrant setup to get a local Elasticsearch server running quickly.

To use this, you will need Vagrant and Virtualbox:

* https://www.vagrantup.com/
* https://www.virtualbox.org/

Once those are installed:

* In your terminal, type `vagrant up` in the root of this repository
* Add the following entry to your `/etc/hosts` file:

```
10.33.36.97    elasticsearch.dev
```

* Visit `http://elasticsearch.dev:9200` in your browser
* Explore further using the installed "head" plugin: `http://elasticsearch.dev:9200/_plugin/head/`

## Included plugins

This configuration includes the following plugins:

* ICU Analysis: https://github.com/elasticsearch/elasticsearch-analysis-icu
* Head: https://github.com/mobz/elasticsearch-head
* Kopf: https://github.com/lmenezes/elasticsearch-kopf
* Bigdesk: http://bigdesk.org/
