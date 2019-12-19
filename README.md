# Dotfiles

## Setup

1. Update macOS to the latest version
2. Clone this repo to `~/.dotfiles`
3. [Install Zim Framework](https://github.com/zimfw/zimfw#installation)
4. Run `install.sh` to start the installation
5. Copy your public and private SSH keys to `~/.ssh` and make sure they're set
   to `600`
6. Restore preferences by running `mackup restore`
7. Restart your computer to finalize the process

## Before re-installing macOS

- Commit and push any changes/branches to your git repositories
- Backup all important documents & work not in iCloud
- Export data from your local database
- Update [mackup](https://github.com/lra/mackup) and run `mackup backup`

## Credit

[Dries Vints' Dotfiles](https://github.com/driesvints/dotfiles)
