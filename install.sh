#!/usr/bin/env sh

echo =\> Cloning the plugin manager
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo =\> Linking vim directories
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/gvimrc $HOME/.gvimrc

echo =\> Installing plugins
vim +PlugInstall +qall

echo =\> Compiling and configuring YouCompleteMe
cd bundle/YouCompleteMe
./install.sh --clang-completer --system-libclang
cd -
cp $PWD/ycm_extra_conf.py $HOME/.ycm_extra_conf.py

echo =\> Done
