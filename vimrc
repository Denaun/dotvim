" All the commands here are required by Vundle.
" Other settings are contained in the init dir and executed at the end of this
" file.

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'b4winckler/vim-objc'
Plugin 'bkad/CamelCaseMotion'
Plugin 'chrisbra/SudoEdit.vim'
Plugin 'Denaun/DoxygenToolkit.vim'
Plugin 'Denaun/molokai'
Plugin 'Denaun/vim-as'
Plugin 'gi1242/vim-multimarkdown'
Plugin 'jcfaria/Vim-R-plugin'
Plugin 'junegunn/vim-easy-align'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'MORZorg/vim-sol'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-pathogen'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'wincent/Command-T'
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
filetype plugin indent on

" Source initialization files
runtime! init/**.vim

