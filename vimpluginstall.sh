#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
#
#dir=`pwd`
#cd ~/.vim/bundle
#git clone https://github.com/ozelentok/denite-gtags.git
#git clone https://github.com/Shougo/denite.nvim.git
#git clone https://github.com/yegappan/grep.git
#git clone https://github.com/scrooloose/nerdtree.git
#git clone https://github.com/vim-airline/vim-airline.git
#git clone https://github.com/tpope/vim-fugitive.git
#
#cd $dir

ln -s vimrc ~/.vimrc

