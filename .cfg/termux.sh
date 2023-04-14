#! /bin/bash

export CONFIG_HOME=~/config

mkdir -p ~/.config/nvim
mkdir ~/.emacs.d

ln -s $CONFIG_HOME/nvim/init.vim ~/.config/nvim/init.vim 
ln -s $CONFIG_HOME/zsh/.zshrc ~/.zshrc
ln -s $CONFIG_HOME/git/.gitconfig ~/.gitconfig
ln -s $CONFIG_HOME/emacs.d/init.el ~/.emacs.d/init.el
ln -s $CONFIG_HOME/emacs.d/config.org ~/.emacs.d/config.org
