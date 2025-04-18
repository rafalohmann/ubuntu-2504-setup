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
- APT-based Firefox (Snap-free)
- Google Chrome
- VSCodium (open-source VS Code)
- GitKraken (Git GUI)
- DBeaver (database client)
- Docker Engine and Docker Compose
- LibreOffice suite
- GIMP (image editor)
- VLC media player
- qBittorrent (torrent client)

## Usage

1. Clone this repository:

```bash
git clone https://github.com/your-username/ubuntu-2504-setup.git
cd ubuntu-2504-setup
```

2. Make the main runner executable:

```bash
chmod +x run-all.sh
```

3. Run the setup:

```bash
./run-all.sh
```

Each script in the `scripts/` folder can also be executed individually.

## Notes

- This setup is tailored specifically for Ubuntu 25.04.
- Firefox is installed using the APT method, replacing the Snap version.
- Node.js and Python are installed via `nvm` and `pyenv`, ensuring version flexibility and isolation.

## License

MIT License