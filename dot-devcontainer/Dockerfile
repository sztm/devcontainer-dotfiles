# The official javascript-node image: https://github.com/devcontainers/images/tree/main/src/javascript-node
# List of available images: https://mcr.microsoft.com/v2/devcontainers/javascript-node/tags/list
FROM mcr.microsoft.com/devcontainers/javascript-node:4.0.8-24-trixie

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


# Install packages for Google Cloud CLI
RUN sudo apt-get update && sudo apt-get install -y \
  apt-transport-https \
  ca-certificates \
  gnupg \
  curl

RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg

RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Install the Google Cloud CLI
RUN sudo apt-get update && sudo apt-get install -y google-cloud-cli


USER node

# NOTE: You can specify the latest version of Claude Code here with "latest"
ARG CLAUDE_CODE_VERSION=2.1.112

# Install Claude Code
RUN curl -fsSL https://claude.ai/install.sh | bash -s -- ${CLAUDE_CODE_VERSION}
