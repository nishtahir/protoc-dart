FROM google/dart:latest

ENV PATH="/root/.pub-cache/bin:${PATH}"
RUN apt-get update && \
    apt-get install -y protobuf-compiler && \
    pub global activate protoc_plugin && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

ENTRYPOINT ["/usr/bin/protoc"]