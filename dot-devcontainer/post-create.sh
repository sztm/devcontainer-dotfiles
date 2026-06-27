#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
ls -la /mise/config.toml
MISE_LOG_LEVEL=debug mise config 2>&1 | head -50
echo $MISE_CONFIG_DIR
echo $MISE_DATA_DIR
mise doctor
mise install
