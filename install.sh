#!/usr/bin/env sh

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo =\> Cloning the plugin manager
mkdir -p ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo =\> Linking vim directories
ln -s $DIR/vimrc $HOME/.vimrc
ERR=$0
ln -s $DIR/gvimrc $HOME/.gvimrc

if [[ $ERR != 0 || $0 != 0 ]]; then
  echo =\> Installation not complete
  return 1
fi

echo =\> Installing plugins
echo "    NOTE: It's safer to download spell files after the installation (with
          MacVim etc)"
vim +PlugInstall +qall

if [[ $0 != 0 ]]; then
  echo =\> Installation not complete
  return 1
fi

echo =\> Copying default configuration for YouCompleteMe
cp $DIR/ycm_extra_conf.py $HOME/.ycm_extra_conf.py

echo =\> Done
