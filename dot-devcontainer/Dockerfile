# The official javascript-node image: https://github.com/devcontainers/images/tree/main/src/javascript-node
# List of available images: https://mcr.microsoft.com/v2/devcontainers/javascript-node/tags/list
FROM mcr.microsoft.com/devcontainers/javascript-node:4.0.11-24-trixie

COPY post-create.sh /tmp/post-create.sh

# Install mise
#  https://mise.jdx.dev/mise-cookbook/docker.html#docker-image-with-mise
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN mkdir /mise
ENV MISE_DATA_DIR="/mise"
ENV MISE_CONFIG_DIR="/mise"
ENV MISE_TRUSTED_CONFIG_PATHS="/mise"
ENV MISE_CACHE_DIR="/mise/cache"
ENV MISE_INSTALL_PATH="/usr/local/bin/mise"
ENV PATH="/mise/shims:$PATH"
# ENV MISE_VERSION="..."
RUN curl https://mise.run | sh
RUN chmod -R 777 /mise
