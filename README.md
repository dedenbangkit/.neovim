![VIM](https://islascruz.org/blog/wp-content/uploads/2017/01/26-vim-vs-emacs-745x1024.png.webp)

## Installation.
```bash
	$ git clone --depth=1 https://github.com/dedenbangkit/vim-cfg.git ~/.vim_runtime
	$ sh ~/.vim_runtime/install.sh
```
This will only valid for vim configuration, which is copy the config to .vimrc, if you have neovim, you need to doing this:
```bash	
	$ cp ~/.vim_runtime/vim-cf ~/.config/nvim/init.vim
```
## Show Shortcut
```bash
    $ more information: vs [vim-shortcut], tc [tmux-cheat]
```
## Update to latest version?
```bash
    $ cd ~/.vim_runtime
    $ git pull --rebase
```
## Uninstalling

Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`


# Custom Keybind
--------------------
## Basic Setup
```
set number relativenumber
set runtimepath+=~/.vim_runtime
set fillchars+=vert:\ 
set foldlevelstart=1
set background=dark
let g:go_version_warning = 0
" set noeb vb t_vb=
```
## Plugins Keys

### Vim Commenter
```
filetype plugin on
```
### Canoline
```
let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd'
let g:conoline_color_insert_dark = 'guibg=black guifg=white'
```
### Multiple Cursor 
```
let g:multi_cursor_start_word_key      = '<C-h>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-h>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

call plug#end()
```
### NerdTree
```
let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>
```
### Emmet
```
let g:user_emmet_leader_key='<C-Z>'
"only enable normal mode functions.
let g:user_emmet_mode='n'    
```
### Start interactive EasyAlign in visual mode (e.g. vipga)
```
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
```
### Start gitGutter
```
let g:gitgutter_max_signs = 500  " default value
```
### Autocomplete Config
```
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_smart_case = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  "For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" Move up and down in autocomplete with <c-j> and <c-k>
" inoremap <expr> j pumvisible() ? '<C-n>' : 'j'
" inoremap <expr> k pumvisible() ? '<C-p>' : 'k'
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")
inoremap <expr> <C-l> ("\<C-y>")
```
### UltiSnips
```
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
```
### CTRLP Config
```
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/storage/*,*/node_modules/*     
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|storage\|vendor\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.jpg$|'
  \ }
let g:ctrlp_user_command={
            \ 'types':{
            \ 1: ['.git', 'cd %s && git ls-files . -co --exclude-standard'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
        \'fallback': 'find %s -type f'
        \}
let g:ctrlp_open_new_file='h'
let g:ctrlp_match_window='max:30'
let g:ctrlp_clear_cache_on_exit=0
set splitright
```
### CTRLSPACE Config
```
" if has("gui_running")
"   Settings for MacVim and Inconsolata font
"   let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
"endif
" hi CtrlSpaceSearch guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
```
## Key Mapping
```
nmap vs :vsp ~/.vim_runtime/cheatseat / vim-cheat <CR>
nmap tc :vsp ~/.vim_runtime/cheatseat / tmux-cheat <CR>
nmap vim :vsp ~/.config/nvim/init.vim<CR>
nmap we :wq! <CR>
nmap ca :!php artisan cache:clear<CR>
nmap xit :q! <CR>
nmap jf :w! <CR>
nmap npm :!npm run start <CR>
nmap asdf :vertical resize 100 <CR>
nnoremap <silent> <Esc> <Esc> <Esc>: nohlsearch <CR> <Esc>
nmap tt :tabnext <CR>
nmap TT :tabprev <CR>
nmap th :tabfirst <CR>
nmap tl :tablast <CR>
nmap tn :tabnew <CR>
nmap wh <C-w>h
nmap wj <C-w>j
nmap wk <C-w>k
nmap wl <C-w>l
nmap ff <C-f>
nmap ups :gUU
nmap fj :CtrlPBuffer <CR>
nmap lkj :vertical resize 150 <CR>
nmap <C-p> "*p
vmap <C-c> :w !pbcopy<CR><CR>
vnoremap ff y<ESC>/<c-r>"<CR>
vnoremap rr "hy:%s/<C-r>h//gc<left><left><left>
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>
```

### Laravel Find File
```
if(file_readable("artisan"))
    nmap lr :e routes/web.php<cr>
    nmap lca :e config/app.php<cr>
    nmap lc :e composer.json<cr>
    nmap len :e .env<cr>
endif
```

### Tidy Config
```
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
let g:syntastic_php_checkers = ['php']
```
### Beautify Config
```
autocmd FileType javascript nmap vb :call JsBeautify()<CR>
autocmd FileType json       nmap vb :call JsonBeautify()<CR>
autocmd FileType jsx        nmap vb :call JsxBeautify()<CR>
autocmd FileType html       nmap vb :call HtmlBeautify()<CR>
autocmd FileType css        nmap vb :call CSSBeautify()<CR>
```

