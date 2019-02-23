FROM arm64v8/alpine:latest

RUN wget https://github.com/prometheus/node_exporter/releases/download/v0.17.0/node_exporter-0.17.0.linux-arm64.tar.gz
RUN tar zxvf node_exporter-0.17.0.linux-arm64.tar.gz

EXPOSE 9100
USER nobody
CMD ["node_exporter-0.17.0.linux-arm64/node_exporter"] 
