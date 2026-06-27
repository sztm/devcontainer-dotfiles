#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
ls /mise
mise trust /mise/config.toml
mise doctor
mise install
