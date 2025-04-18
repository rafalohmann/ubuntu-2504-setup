# ubuntu-2504-setup

This repository contains modular shell scripts to set up a fully personal environment on **Ubuntu 25.04**.

## Overview

The setup includes:
- System update and cleanup
- Common CLI tools (build-essential, curl, jq, htop, net-tools, etc.)
- Nemo (file manager, replaces Nautilus)
- Git (with default configs)
- NVM (with LTS Node.js)
- Pyenv (with latest LTS Python)
- Zsh with Oh My Zsh, Starship, and helpful aliases
- Google Chrome
- VSCodium (open-source VS Code)
- GitKraken (Git GUI)
- DBeaver (database client)
- Docker Engine and Docker Compose
- LibreOffice suite
- GIMP (image editor)
- VLC media player
- qBittorrent (torrent client)
- GNOME tweaks for power users (Flatpak, Dock, battery % etc.)

## Usage

1. Clone this repository:

```bash
git clone https://github.com/rafalohmann/ubuntu-2504-setup.git
cd ubuntu-2504-setup
```

2. Make the main runner executable:

```bash
chmod +x run-all.sh
```

3. Run the setup:

```bash
sudo ./run-all.sh
```

Each script in the `scripts/` folder can also be executed individually.

## Zsh Post-Installation Setup

After running `install-zsh-and-oh-my-zsh.sh`, follow these steps:

### Enable useful plugins

Edit your `~/.zshrc` and replace:

```zsh
plugins=(git)
```

With:

```zsh
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)
```

### Add aliases, pyenv, nvm, and starship setup

At the end of your `~/.zshrc`, add:

```zsh
# Aliases

alias zshconfig="nano ~/.zshrc"
alias zshsource="source ~/.zshrc"

alias sshhome="cd ~/.ssh"
alias sshconfig="nano ~/.ssh/config"

alias gitconfig="nano ~/.gitconfig"

alias gits="git status"
alias gitd="git diff"
alias gitl="git lg"
alias gita="git add ."
alias gitc="git commit"

alias ni="rm -rf node_modules package-lock.json && npm install"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# starship
eval "$(starship init zsh)"
```

### Final Step

Apply your changes:

```bash
source ~/.zshrc
```

You're all set! 🎉 Enjoy your customized Zsh experience.

## Notes

- This setup is tailored specifically for Ubuntu 25.04.
- Node.js and Python are installed via `nvm` and `pyenv`, ensuring version flexibility and isolation.

## License

MIT License
