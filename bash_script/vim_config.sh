#!/bin/bash

sudo apt-get install -y exuberant-ctags
ctags -R /home/git/regentmarkets/

vundle=~/.vim/bundle/Vundle.vim

if [[ ! "$(ls -A $vundle)" ]]; then
  git clone https://github.com/VundleVim/Vundle.vim.git $vundle
fi

vrc=~/.vimrc
if [ -f $vrc ]; then
  rm $vrc
fi

mkdir -p ~/.vim/{undo,backup,swap}
wget -O ~/.vimrc https://raw.githubusercontent.com/brucebinary/terminal_configs/master/bash_script/.vimrc

# Install Vim plugins automatically
vim -u NONE -c "silent! source ~/.vimrc" +PluginInstall +qall
