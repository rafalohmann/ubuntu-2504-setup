#!/bin/bash
set -e

echo "[*] Removing existing pyenv installation..."
rm -rf ~/.pyenv

echo "[*] Installing dependencies for pyenv..."
sudo apt install -y make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev curl libncursesw5-dev \
    xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

echo "[*] Installing pyenv..."
curl https://pyenv.run | bash

echo "[*] Adding pyenv to .bashrc..."

cat << 'EOF' >> ~/.bashrc

# pyenv initialization
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
EOF

echo "[*] Reloading .bashrc..."
source ~/.bashrc

echo "[*] Installing latest stable Python version with pyenv..."
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

LATEST_PYTHON=$(pyenv install --list | grep -E "^\s*3\.[0-9]+\.[0-9]+$" | tail -1 | tr -d ' ')
pyenv install "$LATEST_PYTHON"
pyenv global "$LATEST_PYTHON"

echo "[✓] pyenv and Python $LATEST_PYTHON installed."
