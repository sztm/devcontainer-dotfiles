# The official javascript-node image: https://github.com/devcontainers/images/tree/main/src/javascript-node
# List of available images: https://mcr.microsoft.com/v2/devcontainers/javascript-node/tags/list
FROM mcr.microsoft.com/devcontainers/javascript-node:4.0.6-24-trixie

COPY post-create.sh /tmp/post-create.sh

# Install bubblewrap and socat for Claude Code sandbox functionality
# https://code.claude.com/docs/ja/sandboxing#os%E3%83%AC%E3%83%99%E3%83%AB%E3%81%AE%E5%AE%9F%E6%96%BD
RUN apt-get update && apt-get install -y \
  bubblewrap \
  socat \
  apt-transport-https \
  ca-certificates \
  gnupg \
  curl \
  && rm -rf /var/lib/apt/lists/*
