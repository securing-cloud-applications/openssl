FROM ubuntu:22.04
RUN apt-get update \
   && apt-get install -y \
      openssl \
      ca-certificates \
   && rm -rf /var/cache/apt/archives /var/lib/apt/lists/*