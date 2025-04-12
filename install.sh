#!/bin/bash

[ -f ~/.vimrc ] && cp ~/.vimrc ~/.vimrc_bak
curl -s 'https://raw.githubusercontent.com/yuzhenlei/myVimrc/refs/heads/master/.vimrc' > ~/.vimrc
cd /tmp
pwd
git clone git@github.com:tomasr/molokai.git && mv molokai/colors ~/.vim/
rm -rf molokai
cd -
pwd
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
