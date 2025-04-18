#!/bin/bash
set -e

echo "[*] Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

echo "[*] Adding NVM to .bashrc..."

cat << 'EOF' >> ~/.bashrc

# NVM initialization
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
EOF

echo "[*] Reloading .bashrc..."
source ~/.bashrc

echo "[*] Installing latest Node.js LTS version..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
nvm alias default 'lts/*'

echo "[✓] NVM and Node.js LTS installed."
