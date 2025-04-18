#!/bin/bash
set -e

echo "[*] Installing common CLI tools and dev dependencies..."

sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    p7zip-full \
    p7zip-rar \
    build-essential \
    nano \
    tree \
    htop \
    net-tools \
    traceroute \
    telnet

echo "[✓] Common CLI tools installed."
