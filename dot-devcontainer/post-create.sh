#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
pwd
mise config
mise doctor
mise install
