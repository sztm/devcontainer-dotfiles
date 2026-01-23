#!/bin/sh

set -e

DOTFILES_DIR="$(pwd)"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Installing dotfiles..."

# dot-zshrc -> ~/.zshrc
TARGET="$HOME/.zshrc"
if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
    BACKUP="${TARGET}.backup.${TIMESTAMP}"
    mv "$TARGET" "$BACKUP"
    echo "✓ Backed up existing .zshrc to ${BACKUP}"
fi
ln -sf "$DOTFILES_DIR/dot-zshrc" "$TARGET"
echo "✓ Installed .zshrc"

# dot-claude -> ~/.claude
TARGET="$HOME/.claude"
if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
    BACKUP="${TARGET}.backup.${TIMESTAMP}"
    mv "$TARGET" "$BACKUP"
    echo "✓ Backed up existing .claude to ${BACKUP}"
fi
ln -sf "$DOTFILES_DIR/dot-claude" "$TARGET"
echo "✓ Installed .claude"

echo "Done!"
