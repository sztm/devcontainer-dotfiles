# devcontainer-dotfiles

Dotfiles repository for setting up development environment with some tools in Dev Containers.

## Purpose

This repository serves two purposes:

1. **Host-side**: Provides shared `.devcontainer` configuration files that can be reused across projects
2. **Container-side**: Deploys dotfiles for some tools and Zsh configuration inside containers
   - Tools
     - [Node.js](https://nodejs.org/en)
     - [GitHub CLI](https://cli.github.com/)
     - [Google Cloud CLI](https://cloud.google.com/cli)
     - [Claude Code CLI](https://code.claude.com/docs/en/overview)
     - [GitHub Copilot CLI](https://github.com/features/copilot/cli)
     - [Terraform CLI](https://developer.hashicorp.com/terraform/cli)
       - [terraform-docs](https://terraform-docs.io/)
     - [fnox](https://fnox.jdx.dev/)
     - [pnpm](https://pnpm.io/)

## Usage

### For Host

Use the `.devcontainer` directory as a common configuration template for your projects. The configuration assumes Node.js and pnpm usage.

Run the host install script to set up the shared devcontainer configuration:

```bash
./install-host.sh
```

### For Container

Run the following command to set up a dev container with dotfiles:

```bash
devcontainer up \
  --workspace-folder . \
  --config ~/.devcontainer/devcontainer.json \
  --dotfiles-repository "sztm/devcontainer-dotfiles" \
  --dotfiles-install-command "install-container.sh"
```

This will set up Claude Code settings and Zsh configuration in the container environment.
