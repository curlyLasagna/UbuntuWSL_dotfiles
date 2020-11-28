!#/bin/bash

apt update && apt upgrade
apt install \
    zsh     \

mkdir .zsh

# Antigen: zsh plugin manager
curl -L git.io/antigen > $HOME/.zsh/antigen.zsh

echo ".dotfiles" >> .gitignore

git clone --bare git@github.com:curlyLasagna/UbuntuWSL_dotfiles.git $HOME/.dotfiles

alias dotfiles='/usr/bin/git -- git-dir=$HOME/.dotfiles/.git --work-tree=$HOME'

echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git/ --work-tree=$HOME'" >> $HOME/.zsh/aliases

dotfiles config --local status.showUntrackedFiles no

dotfiles checkout

