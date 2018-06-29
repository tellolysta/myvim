#!/bin/bash

cd ..
mv myvim/ ~/.vim
cd ~/.vim

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo "submodules init & cloning"
echo `git submodule init`
echo `git submodule update`
ln -s ~/.vim/vimrc ~/.vimrc

