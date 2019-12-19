#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install global Composer packages
/usr/local/bin/composer global require laravel/valet

# Install Laravel Valet
$HOME/.composer/vendor/bin/valet install

# Install global NPM packages
npm install --global vuepress

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
mkdir $HOME/Sites
valet park $HOME/Sites

# Remove config files from $HOME (if they exist) and symlink them from .dotfiles
trash $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

trash $HOME/.zlogin
ln -s $HOME/.dotfiles/.zlogin $HOME/.zlogin

trash $HOME/.zimrc
ln -s $HOME/.dotfiles/.zimrc $HOME/.zimrc

# Symlink the Mackup config file to the home directory
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
