FROM ghcr.io/tensorchord/cloudnative-vectorchord:16-0.3.0

ARG CNPG_TAG=16
ARG PGVECTORS_TAG=v0.3.0
ARG TARGETARCH

USER root

# Téléchargement du .deb pgvecto.rs compatible
ADD https://github.com/tensorchord/pgvecto.rs/releases/download/${PGVECTORS_TAG}/vectors-pg${CNPG_TAG%.*}_${PGVECTORS_TAG#v}_${TARGETARCH}.deb /tmp/pgvectors.deb

# Installation du .deb
RUN apt-get update && \
    apt-get install -y /tmp/pgvectors.deb && \
    rm /tmp/pgvectors.deb

USER postgres
