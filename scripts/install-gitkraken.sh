#!/bin/bash
set -e

echo "[*] Downloading GitKraken .deb package..."
wget -O /tmp/gitkraken.deb https://release.axocdn.com/linux/gitkraken-amd64.deb

echo "[*] Installing GitKraken..."
sudo apt install -y /tmp/gitkraken.deb

echo "[*] Cleaning up..."
rm /tmp/gitkraken.deb

echo "[✓] GitKraken installed successfully."
