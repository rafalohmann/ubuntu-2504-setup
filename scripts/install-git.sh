#!/bin/bash
set -e

echo "[*] Installing Git..."
sudo apt install -y git

echo "[*] Configuring Git defaults..."

git config --global init.defaultBranch main
git config --global core.editor nano
git config --global push.default simple
git config --global pull.rebase false

echo "[✓] Git installed and configured."
