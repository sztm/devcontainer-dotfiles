# devcontainer-dotfiles

Dotfiles repository for setting up Claude Code development environment in Dev Containers.

## Purpose

This repository serves two purposes:

1. **Host-side**: Provides shared `.devcontainer` configuration files that can be reused across projects
2. **Container-side**: Deploys dotfiles for Claude Code and Zsh configuration inside containers

## Usage

### For Host

Use the `.devcontainer` directory as a common configuration template for your projects. The configuration assumes Node.js and pnpm usage.

Run the host install script to set up the shared devcontainer configuration:

```bash
./install-host.sh
```

### For Container

Run the container install script to deploy dotfiles:

```bash
./install-container.sh
```

This will set up Claude Code settings and Zsh configuration in the container environment.
