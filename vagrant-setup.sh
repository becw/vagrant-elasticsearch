#!/usr/bin/env bash

apt-get -yq update
apt-get -yq install git openjdk-7-jre-headless service-wrapper curl

update-alternatives --set java /usr/lib/jvm/java-7-openjdk-i386/jre/bin/java

wget -nv https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.1.deb
dpkg -i elasticsearch-1.4.1.deb

mv /etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml.bak
cp /home/vagrant/config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

update-rc.d elasticsearch defaults 95 10
/etc/init.d/elasticsearch start

/usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
/usr/share/elasticsearch/bin/plugin -install lukas-vlcek/bigdesk
/usr/share/elasticsearch/bin/plugin -install elasticsearch/elasticsearch-analysis-icu/2.4.1
/usr/share/elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf

/etc/init.d/elasticsearch restart
# or service elasticsearch restart
