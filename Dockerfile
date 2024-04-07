FROM ubuntu:24.04
RUN apt-get update \
   && apt-get install -y \
      ca-certificates \
      openssl wget curl vim \
   && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*

COPY examples /examples