#!/bin/bash
set -euo pipefail

ALACRITTY_REPO="https://raw.githubusercontent.com/alacritty/alacritty/master"

echo "==> Installing Alacritty terminfo..."
curl -sSL "${ALACRITTY_REPO}/extra/alacritty.info" | tic -xe alacritty,alacritty-direct -

echo "==> Installing Alacritty desktop entry..."
mkdir -p ~/.local/share/applications
curl -sSL "${ALACRITTY_REPO}/extra/linux/Alacritty.desktop" -o ~/.local/share/applications/Alacritty.desktop

echo "==> Installing Alacritty icon..."
mkdir -p ~/.local/share/icons
curl -sSL "${ALACRITTY_REPO}/extra/logo/alacritty-term.svg" -o ~/.local/share/icons/Alacritty.svg
