#!/usr/bin/env sh

echo =\> Cloning Vundle
git clone https://github.com/gmarik/Vundle.vim.git bundle/Vundle.vim

echo =\> Linking vim directories
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/gvimrc $HOME/.gvimrc

echo =\> Vundling
vim +BundleInstall +qall

echo =\> Compiling Command-T
cd bundle/Command-T/ruby/command-t/
/usr/bin/ruby extconf.rb
make
cd -

echo =\> Done
