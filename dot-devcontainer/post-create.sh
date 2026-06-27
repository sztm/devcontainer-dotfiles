#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store /mise

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
mise install
