FROM solr:8.11-slim

WORKDIR /opt/solr/server/solr/configsets
COPY ./configsets/authority ./authority
COPY ./configsets/oai ./oai
COPY ./configsets/search ./search
COPY ./configsets/statistics ./statistics

WORKDIR /var/solr/data

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]