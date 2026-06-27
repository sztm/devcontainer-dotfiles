#!/bin/bash

# change owner from root
sudo chown -R node node_modules .pnpm-store

# Install tools by mise
mise install
