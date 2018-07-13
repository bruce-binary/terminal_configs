#!/bin/bash

vundle=~/.vim/bundle/Vundle.vim

if [[ ! "$(ls -A $vundle)" ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle
fi

vrc=~/.vimrc
if [ -f $vrc ]; then
  rm $vrc
fi

wget -O ~/.vimrc https://raw.githubusercontent.com/wongtiongkiat/terminal_configs/master/bash_script/.vimrc
vim +PluginInstall +qall
