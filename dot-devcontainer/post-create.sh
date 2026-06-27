#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store /home/node/.claude

echo 'eval "$(mise activate zsh)"' >> ~/.zshrc
mise doctor
mise install
