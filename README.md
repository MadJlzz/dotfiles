# dotfiles

Manages my Linux development environment using [chezmoi](https://www.chezmoi.io/).
All machines get the same setup: shell config, fonts, editors, dev tools, and keyboard support.

## What's included

| Category | What it does |
|----------|-------------|
| **Packages** | git, curl, zsh, fzf, gnome-tweaks, pass, flatpak |
| **mise** | Tool version manager (Go, Rust, Node, Terraform, kubectl, etc.) |
| **Starship** | Cross-shell prompt (installed via mise) |
| **Helix** | Terminal editor (installed via mise) |
| **VSCode** | Repo setup, install, and settings |
| **Obsidian** | Note-taking app (installed via Flatpak) |
| **Fonts** | Hack + Fira Code Nerd Fonts |
| **Dotfiles** | .zshrc, .gitconfig, starship/helix/mise configs |

## Prerequisites

- [chezmoi](https://www.chezmoi.io/install/) installed
- Fedora or Ubuntu/Debian

## Get started

One-liner to install chezmoi and apply this repo:

```shell
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply MadJlzz
```

Or if chezmoi is already installed:

```shell
chezmoi init --apply MadJlzz
```

This will:
1. Run all install scripts (packages, mise, VSCode)
2. Deploy all dotfiles and config to their proper locations

Scripts requiring root will prompt for your sudo password.

## Day-to-day usage

```shell
# See what would change
chezmoi diff

# Apply changes
chezmoi apply

# Edit a managed file (opens in $EDITOR, applies on save)
chezmoi edit ~/.zshrc

# Pull latest from repo and apply
chezmoi update
```

## Supported distributions

- Fedora (primary)
- Ubuntu / Debian
