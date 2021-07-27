#! /bin/bash

export CONFIG_HOME=/home/polonium/Documents/config

mkdir -p ~/.config/nvim

ln -s $CONFIG_HOME/nvim/init.vim ~/.config/nvim/init.vim 
ln -s $CONFIG_HOME/zsh/.zshrc ~/.zshrc
ln -s /home/polonium/Documents/config/git/.gitconfig ~/.gitconfig
