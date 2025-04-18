#!/bin/bash
set -e

echo "[*] Installing Zsh..."
sudo apt install -y zsh

echo "[*] Changing default shell to Zsh for the current user..."
chsh -s "$(which zsh)"

echo "[*] Installing Oh My Zsh..."
export RUNZSH=no
export CHSH=no
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "[*] Installing Zsh plugins..."

git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "[*] Installing Starship prompt..."
curl -sS https://starship.rs/install.sh | sh -s -- -y

echo
echo "[✓] Zsh, Oh My Zsh, plugins, and Starship installed."
