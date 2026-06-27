#!/bin/sh

set -e

DOTFILES_DIR="$(pwd)"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "Installing dotfiles for container..."

# dot-zshrc -> ~/.zshrc
TARGET="$HOME/.zshrc"
if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
    BACKUP="${TARGET}.backup.${TIMESTAMP}"
    mv "$TARGET" "$BACKUP"
    echo "✓ Backed up existing .zshrc to ${BACKUP}"
fi
ln -sf "$DOTFILES_DIR/dot-zshrc" "$TARGET"
echo "✓ Installed .zshrc"

# dot-claude/* -> ~/.claude/*
mkdir -p "$HOME/.claude"
for SRC in "$DOTFILES_DIR/dot-claude"/* "$DOTFILES_DIR/dot-claude"/.[!.]*; do
    [ -e "$SRC" ] || continue
    BASENAME=$(basename "$SRC")
    TARGET="$HOME/.claude/$BASENAME"
    if [ -e "$TARGET" ] && [ ! -L "$TARGET" ]; then
        BACKUP="${TARGET}.backup.${TIMESTAMP}"
        mv "$TARGET" "$BACKUP"
        echo "✓ Backed up existing .claude/$BASENAME to ${BACKUP}"
    fi
    ln -sf "$SRC" "$TARGET"
    echo "✓ Installed .claude/$BASENAME"
done

echo "Done!"
