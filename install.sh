#!/bin/sh
set -e

cd ~/.vim_runtime
cat ~/.vim_runtime/.vim-cf > ~/.vimrc
echo "Setup VIM selesai, silahkan buka vim, install Plugin, dan restart vim"
