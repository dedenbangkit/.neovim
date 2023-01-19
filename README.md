# MOVED TO : [dedenbangkit/.emacs.d](https://github.com/dedenbangkit/.emacs.d)

## Installation.
```bash
$ git clone --depth=1 https://github.com/dedenbangkit/.neovim.git ~/.vim_runtime
$ sh ~/.vim_runtime/install.sh
```
## Update to latest version?
```bash
$ cd ~/.vim_runtime
$ git pull --rebase
```
## Uninstalling

* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`

# Custom Keybind
--------------------
## Basic Setup
```
let g:python_host_prog='/usr/bin/python2.7'
let g:python3_host_prog='/usr/local/bin/python3.9'
let g:lua_host_prog='/usr/local/bin/lua'
let g:perl_host_prog='/usr/local/bin/perl'
let g:airline_exclude_preview = 0

" set number relativenumber
set number
set list
set runtimepath+=~/.vim_runtime
set fillchars+=vert:‚ñï
set foldlevelstart=1
set laststatus=2
set splitright
let g:go_version_warning = 0
let mapleader=','
set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
" set noeb vb t_vb=
"
set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font:h11

" For conceal markers.
if has('conceal')
" call matchadd('Conceal', 'package', 10, 99, {'conceal': 'p'})
" set conceallevel=3 uncomment to hide quotes or more readable json
" set concealcursor=nv
  set conceallevel=2 concealcursor=nv
  let g:vim_json_conceal=0
endif


source ~/.vim_runtime/vimrcs/plug.vim
source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
```

## Key Mappings
```
nmap vim :vsp ~/.config/nvim/init.vim<CR>
nmap vam :source ~/.config/nvim/init.vim<CR>
" ctags
nmap go <C-]>
" main mapping
nmap jf :w! <CR>
nmap yarn :!yarn start <CR>
nmap <A-w> :InteractiveWindow<CR>
nnoremap <silent> <Esc> <Esc> <Esc>: nohlsearch <CR> <Esc>
nmap tt :tabnext <CR>
nmap TT :tabprev <CR>
nmap th :tabfirst <CR>
nmap tl :tablast <CR>
nmap tn :tabnew <CR>
nmap gt :s/\<\(\w\)\(\w*\)\>/\u\1\L\2/g <CR>
nmap s  :AirlineRefresh<CR>
nmap ss :SQHExecute<CR>
nmap H 0
nmap L $
nmap wh <C-w>h
nmap wj <C-w>j
nmap wk <C-w>k
nmap wl <C-w>l
nmap ff <C-f>
nmap ffj :AnyJump <CR>
nmap en $
nmap yy yyp
nmap ups gUU
nmap fj :CtrlPBuffer <CR>
nmap co /console<CR>
nmap <C-p> "*p
vmap <C-c> :w !pbcopy<CR><CR>
nmap term :Start<CR>
nmap <C-B> :Git blame<CR>
nmap ( ysiw(
nmap { ysiw{
nmap [ ysiw[
" Neocomplecache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_smart_case = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  "For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")
inoremap <expr> <C-l> ("\<C-y>")
" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" Multiple Cursor
let g:multi_cursor_start_word_key      = '<C-h>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-h>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" Emmmet
let g:user_emmet_leader_key='<C-Z>'
"only enable normal mode functions.
let g:user_emmet_mode='n'
```
### LSP and Linter
```
let g:ale_linters = {
\   'clojure': ['clj-kondo'],
\   'yaml': ['yamllint'],
\   'python': ['flake8'],
\   'sh': ['shellcheck'],
\   'java': ['google_java_format'],
\}
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'css': ['prettier'],
\   'sh': ['shellcheck'],
\   'python': ['yapf'],
\   'java': ['google_java_format'],
\}
let g:ale_python_pyls_config = {
\   'pyls': {
\     'plugins': {
\       'pycodestyle': {
\         'enabled': v:false,
\       },
\       'pyflakes': {
\         'enabled': v:false,
\       },
\       'pydocstyle': {
\         'enabled': v:false,
\       },
\     },
\   },
\}
nmap ale :ALEFix<Cr>
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '‚ö†'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let maplocalleader = ","
nmap el :ConjureLogVSplit<CR>
nmap cls :ConjureLogCloseVisible<CR>
nmap ef :ConjureLogResetSoft<CR>
nmap ee :ConjureEval<CR>
nmap eb :ConjureEvalBuf<CR>
nmap ed :ConjureDocWord<CR>
nmap D dib
vmap ev :ConjureEvalVisual<CR>

" Python LSP
if executable('pyls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'allowlist': ['python'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    inoremap <buffer> <expr><c-f> lsp#scroll(+4)
    inoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" FirePlace Clojure
nmap ct :Eval (test)
```

## Themes
```
if (has("termguicolors"))
    set termguicolors
endif

set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}
hi Normal ctermfg=227 ctermbg=17
let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd'
let g:conoline_color_insert_dark = 'guibg=black guifg=white'
let g:airline_theme="atomic"
let g:airline_layout='powerline'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_exclude_preview = 1
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:airline_powerline_fonts = 1
let g:airline_highlighting_cache = 1
autocmd FileType javascript setlocal ts=4 sts=4 sw=4
autocmd FileType jsx setlocal ts=4 sts=4 sw=4
autocmd SessionLoadPost * AirlineRefresh
"Nerdtree color
" add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:darkYellow = "8A8A00"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

highlight ExtraWhitespace ctermbg=15

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = s:salmon
let g:NERDTreeExtensionHighlightColor['js'] = s:yellow
let g:NERDTreeExtensionHighlightColor['ts'] = s:brown
let g:NERDTreeExtensionHighlightColor['jsx'] = s:darkOrange

let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.env'] = s:lightPurple
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['yarn.lock'] = s:yellow
let g:NERDTreeExactMatchHighlightColor['package-lock.json'] = s:yellow
let g:NERDTreeExactMatchHighlightColor['package.json'] = s:yellow

let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
let g:NERDTreePatternMatchHighlightColor['*\].js'] = s:blue

let g:WebDevIconsDefaultFolderSymbolColor = s:beige " sets the color for folders that did not match any rule
let g:WebDevIconsDefaultFileSymbolColor = s:blue " sets the color for files that did not match any rule

let g:webdevicons_conceal_nerdtree_brackets=1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

" Tidy
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_java_javac_classpath = '...'
let g:syntastic_error_symbol = '‚ùå'
let g:syntastic_style_error_symbol = '‚ÅâÔ∏è'
let g:syntastic_warning_symbol = '‚ö†Ô∏è'
let g:syntastic_style_warning_symbol = 'üí©'
```
### Code Prettier
```
autocmd BufWritePre *.js Neoformat
autocmd BufWritePre *.jsx Neoformat
autocmd BufWritePre *.ts Neoformat
autocmd BufWritePre *.tsx Neoformat
autocmd BufWritePre *.scss Neoformat
autocmd BufWritePre *.html Neoformat
autocmd BufWritePre *.json Neoformat
autocmd BufWritePre *.css Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
autocmd FileType jsx setlocal formatprg=prettier\ --single-quote\ --trailing-comma\ es5
" Use formatprg when available
let g:neoformat_run_all_formatters = 1

autocmd FileType json       nmap vb :call JsonBeautify()<CR>
autocmd FileType html       nmap vb :call HtmlBeautify()<CR>
autocmd FileType css        nmap vb :call CSSBeautify()<CR>
autocmd FileType xml        nmap vb :call xmlformat#Format()<CR>
" Easyalign
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
```

## Other Plugin Config

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
### Anyjump
```
nmap wi :AnyJump<CR>
nmap fw :AnyJump<CR>
let g:any_jump_ignored_files = ['*.tmp', '*.temp']
let g:any_jump_window_width_ratio  = 0.5
let g:any_jump_window_height_ratio = 0.5
let g:any_jump_search_prefered_engine = 'ag'
let g:any_jump_references_enabled = 1
" Or override all default colors
let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Function",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}
```
### Easy-motion insearch integration
```
function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())
```
