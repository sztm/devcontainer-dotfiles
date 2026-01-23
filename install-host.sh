#!/bin/sh

set -e

DOTFILES_DIR="$(pwd)"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Installing dotfiles for host..."

# dot-devcontainer -> ~/.devcontainer
TARGET="$HOME/.devcontainer"
if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
    BACKUP="${TARGET}.backup.${TIMESTAMP}"
    mv "$TARGET" "$BACKUP"
    echo "✓ Backed up existing .devcontainer to ${BACKUP}"
fi
ln -sf "$DOTFILES_DIR/dot-devcontainer" "$TARGET"
echo "✓ Installed .devcontainer"

echo "Done!"
