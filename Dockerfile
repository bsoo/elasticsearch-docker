FROM docker.elastic.co/elasticsearch/elasticsearch-oss:6.1.1

RUN bin/elasticsearch-plugin install analysis-kuromoji \
    && bin/elasticsearch-plugin install analysis-icu

ADD ./elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

ENV ES_JAVA_OPTS "-Xms256m -Xmx256m"
