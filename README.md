# Dotfiles

## Before re-installing macOS

- Commit and push any changes/branches to your git repositories
- Backup all important documents & work not in iCloud
- Export data from your local database
- Update [mackup](https://github.com/lra/mackup) and run `mackup backup`

## Setup

1. Update macOS to the latest version
2. Clone this repo to `~/.dotfiles`:
   ```sh
   https://github.com/imacrayon/dotfiles.git .dotfiles
   ```
3. [Install Zim Framework](https://github.com/zimfw/zimfw#installation)
4. Run the installation script:
   ```sh
   cd .dotfiles && ./install.sh`
   ```
5. Copy your public and private SSH keys to `~/.ssh` with permissions `600`
6. Restore preferences:
   ```sh
   mackup restore
   ```
7. Restart your computer to finalize the process

## Credit

[Dries Vints' Dotfiles](https://github.com/driesvints/dotfiles)
