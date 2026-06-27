#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
ls /mise
ls -la ~/.local/state/mise/ignored-configs/
mise trust /mise/config.toml
ls -la ~/.local/state/mise/ignored-configs/
mise doctor
mise install
