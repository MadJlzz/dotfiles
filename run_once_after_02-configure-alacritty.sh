#!/bin/bash
set -euo pipefail

ALACRITTY_REPO="https://raw.githubusercontent.com/alacritty/alacritty/master"
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

echo "==> Installing Alacritty terminfo..."
curl -sSL "${ALACRITTY_REPO}/extra/alacritty.info" -o "$TMPDIR/alacritty.info"
sudo tic -xe alacritty,alacritty-direct "$TMPDIR/alacritty.info"

echo "==> Installing Alacritty icon..."
curl -sSL "${ALACRITTY_REPO}/extra/logo/alacritty-term.svg" -o "$TMPDIR/Alacritty.svg"
sudo cp "$TMPDIR/Alacritty.svg" /usr/share/pixmaps/Alacritty.svg

echo "==> Installing Alacritty desktop entry..."
curl -sSL "${ALACRITTY_REPO}/extra/linux/Alacritty.desktop" -o "$TMPDIR/Alacritty.desktop"
sudo desktop-file-install "$TMPDIR/Alacritty.desktop"
sudo update-desktop-database
