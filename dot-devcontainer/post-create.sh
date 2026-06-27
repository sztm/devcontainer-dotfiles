#!/bin/bash

# change owner from root
sudo chown -R node node_modules /home/node/.claude /workspaces/.pnpm-store

# Set the PNPM store directory to prevent making it in the project folder.
pnpm config set store-dir /workspaces/.pnpm-store --location user

# Install tools by mise
mise install
