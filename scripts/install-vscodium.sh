#!/bin/bash
set -e

echo "[*] Adding VSCodium GPG key..."
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

echo "[*] Adding VSCodium repository..."
echo 'deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
echo "[*] Updating package list..."
sudo apt update

echo "[*] Installing VSCodium..."
sudo apt install -y codium

echo "[✓] VSCodium installed."
