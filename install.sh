#!/usr/bin/env sh

echo =\> Cloning Vundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

echo =\> Linking vim directories
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/gvimrc $HOME/.gvimrc

echo =\> Installing plugins
vim +BundleInstall +qall

echo =\> Compiling and configuring YouCompleteMe
cd bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang
cd -
cp $PWD/ycm_extra_conf.py $HOME/.ycm_extra_conf.py

echo =\> Done
