#!/bin/bash
set -e

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Check if this is Ubuntu 25.04
if ! grep -q "25.04" /etc/os-release; then
    echo "This script is intended for Ubuntu 25.04 only."
    exit 1
fi

# Main setup
echo "[*] Running system main setup..."
bash scripts/main.sh

# Common CLI tools and development dependencies
echo "[*] Installing common CLI tools..."
bash scripts/install-common-tools.sh

# File manager
echo "[*] Installing Nemo (replacing Nautilus)..."
bash scripts/install-nemo.sh

# Core developer setup
echo "[*] Installing Git..."
bash scripts/install-git.sh

echo "[*] Installing NVM and LTS Node.js..."
bash scripts/install-nvm-node.sh

echo "[*] Installing Pyenv and LTS Python..."
bash scripts/install-pyenv-python.sh

# Shell & terminal environment
echo "[*] Installing Zsh and Oh My Zsh..."
bash scripts/install-zsh-and-oh-my-zsh.sh

# Browsers
echo "[*] Installing Chrome..."
bash scripts/install-chrome.sh

# Developer tools
echo "[*] Installing VSCodium..."
bash scripts/install-vscodium.sh

echo "[*] Installing GitKraken..."
bash scripts/install-gitkraken.sh

echo "[*] Installing DBeaver..."
bash scripts/install-dbeaver.sh

# Containers & virtualization
echo "[*] Installing Docker..."
bash scripts/install-docker.sh

# Productivity and utility apps
echo "[*] Installing LibreOffice..."
bash scripts/install-libreoffice.sh

echo "[*] Installing GIMP..."
bash scripts/install-gimp.sh

echo "[*] Installing VLC..."
bash scripts/install-vlc.sh

echo "[*] Installing qBittorrent..."
bash scripts/install-qbittorrent.sh

echo "[✓] All setup scripts completed successfully."
