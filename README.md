![VIM](https://dnp4pehkvoo6n.cloudfront.net/43c5af597bd5c1a64eb1829f011c208f/as/Ultimate%20Vimrc.svg)

## Thanks to AMIX
This repository is originaly forked from https://github.com/amix/vimrc with some custom modifications.

## Installing this custom version.

	git clone --depth=1 https://github.com/dedenbangkit/vim-cfg.git ~/.vim_runtime
	sh ~/.vim_runtime/install.sh

This will only valid for vim configuration, which is copy the config to .vimrc, if you have neovim, you need to doing this:
	
	cp ~/.vim_runtime/vim-cf ~/.config/nvim/init.vim

## How to update to latest version?

    cd ~/.vim_runtime
    git pull --rebase

## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
