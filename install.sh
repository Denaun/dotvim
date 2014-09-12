#!/usr/bin/env sh

echo =\> Checking out Vundle
git submodule update --init

echo =\> Linking vim directories
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/gvimrc $HOME/.gvimrc

echo =\> Vundling
vim +BundleInstall +qall

echo =\> Compiling Command-T
cd bundle/Command-T/ruby/command-t/
ruby extconf.rb
make
cd -

echo =\> Done
