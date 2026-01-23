#!/bin/bash

# Ref: https://github.com/microsoft/vscode-dev-containers/blob/06b27a9a1d39dba6a7a8cca108cfb806c5c6e0d1/script-library/docs/node.md#using-nvm-from-a-dockerfile-or-postcreatecommand
bash -i -c 'nvm install --lts'

npm i -g pnpm
