#!/usr/bin/env bash

set -e

RCFILE="${HOME}/.vim_runtime/init.vim"

cp "${RCFILE}" "${HOME}/.vimrc"
[ -d "${HOME}/.config/nvim" ] && cp "${RCFILE}" "${HOME}/.config/nvim/"
echo "Setup VIM selesai, silahkan buka vim, install Plugin, dan restart vim"
