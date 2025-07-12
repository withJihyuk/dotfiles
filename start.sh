#!/bin/sh

brew update
brew tap homebrew/bundle
brew bundle --file=$HOME/dotfiles/Brewfile
brew cleanup
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -nfs $HOME/dotfiles/Brewfile $HOME/Brewfile
ln -nfs $HOME/dotfiles/.gitconfig $HOME/.gitconfig
ln -nfs $HOME/dotfiles/.gitignore $HOME/.gitignore

sudo sh -c "echo $(which nu) >> /etc/shells"
chsh -s $(which nu)