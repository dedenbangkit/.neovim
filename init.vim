let g:python_host_prog='/usr/bin/python2.7'
let g:python3_host_prog='/usr/local/bin/python3.9'
let g:lua_host_prog='/usr/local/bin/lua'
let g:perl_host_prog='/usr/local/bin/perl'
let g:airline_exclude_preview = 0

" Themes
" for vim 8
if (has("termguicolors"))
    set termguicolors
endif


" set number relativenumber
set number
set list
set runtimepath+=~/.vim_runtime
set fillchars+=vert:▕
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
" source ~/.vim_runtime/themes/darkspectrum.vim


" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim_runtime/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'vifm/vifm.vim'
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators Plug 'SirVer/ultisnips'
Plug 'SirVer/ultisnips'
" Vim react template
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', {'branch': 'master' }
" On-demand loading
" Better Nerdtree
" Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Emmet
Plug 'mattn/emmet-vim'
" GitHub Plugin
Plug 'airblade/vim-gitgutter'
" Initialize plugin system
Plug 'tpope/vim-fugitive'

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" JSBeautify
Plug 'yuezk/vim-js'
" CTRLSpace
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Laravel Plugin
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jalvesaq/Nvim-R'
" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Multiple Cursor
Plug 'terryma/vim-multiple-cursors'
Plug 'miyakogi/conoline.vim'
" All Themes
"Plug 'rafi/awesome-vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
" Renamer
Plug 'wojtekmach/vim-rename'
" Translate
Plug 'VincentCordobes/vim-translate'
" In Between Word
Plug 'tpope/vim-surround'
" Vim React Preffy
Plug 'maxmellon/vim-jsx-pretty'
" Vim Indenting PHP
Plug '2072/PHP-Indenting-for-VIm'
" Prettier for neovim
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'sbdchd/neoformat'
" Vim Svelte
" Plug 'evanleck/vim-svelte'
" Vim Ferret Search ACK
Plug 'wincent/ferret'
" WIndow Interactive
Plug 'romgrk/winteract.vim'
" Angular Typescipt
Plug 'leafgarland/typescript-vim'
Plug 'shawncplus/phpcomplete.vim'
" Vim XML Beautify
Plug 'chrisbra/vim-xml-runtime'
" Anyjump
Plug 'pechorin/any-jump.vim'
" Tab Themes
Plug 'mhartington/oceanic-next'
Plug 'maksimr/vim-jsbeautify'
" Autopairs
Plug 'jiangmiao/auto-pairs'
" EasyMotion
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
"Codi REPL
Plug 'metakirby5/codi.vim'
" Trailing Whitespace
Plug 'ntpeters/vim-better-whitespace'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'lighttiger2505/deoplete-vim-lsp'
  let g:deoplete#enable_at_startup = 1
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"DBML
Plug 'jidn/vim-dbml'
Plug 'ryanoasis/vim-devicons'
Plug 'powerline/powerline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Vim Cargo Rust
Plug 'rust-lang/rust.vim'
" Clojure Env
Plug 'Olical/conjure', {'tag': 'v4.11.0'}
Plug 'dense-analysis/ale', {'tag': 'v3.0.0'}
Plug 'radenling/vim-dispatch-neovim'
Plug 'jceb/vim-orgmode'
Plug 'guns/vim-clojure-static'
Plug 'guns/vim-clojure-highlight'
Plug 'tpope/vim-salve'
" Emulator Attach
Plug 'christoomey/vim-tmux-runner'
" SQL support
Plug 'joereynolds/SQHell.vim'
" LSP
" Plug 'neovim/nvim-lspconfig'
" Plug 'kabouzeid/nvim-lspinstall'
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
Plug 'vim-syntastic/syntastic'
" VimSpector
Plug 'puremourning/vimspector'

packloadall
silent! helptags ALL

" VimSpector
let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>dd :call vimspector#Launch()<CR>
nmap <Leader>dx :VimspectorReset<CR>
nmap <Leader>de :VimspectorEval
nmap <Leader>dw :VimspectorWatch
nmap <Leader>do :VimspectorShowOutput
packadd! vimspector

" Tmux attacher
let g:VtrStripLeadingWhitespace = 1
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

" Silver Searcher
let g:ackprg = 'ag --vimgrep'

" Canoline dark
"let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd'
"let g:conoline_color_insert_dark = 'guibg=black guifg=white'

" For light colorschemes
let g:conoline_color_normal_light = 'guibg=#eaeaea'
let g:conoline_color_normal_nr_light = 'guibg=#eaeaea'
let g:conoline_color_insert_light = 'guibg=#ffffff'
let g:conoline_color_insert_nr_light = 'guibg=#ffffff'

" Multiple Cursor
let g:multi_cursor_start_word_key      = '<C-h>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-h>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

call plug#end()

" NerdTree
let g:NERDTreeWinPos = "left"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
map <C-n> :NERDTreeToggle<CR>

" Emmet
let g:user_emmet_leader_key='<C-E>'
"only enable normal mode functions.
let g:user_emmet_mode='n'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Whitespaces
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start gitGutter
let g:gitgutter_max_signs = 500  " default value

" inoremap <expr> <C-j> ("\<C-n>")
" inoremap <expr> <C-k> ("\<C-p>")
" inoremap <expr> <C-l> ("\<C-y>")

" Clojure Settings
" ['pyls','bandit','mypy']
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
let g:ale_sign_warning = '⚠'
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

" AutoComplete (Neocomplecache)
let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_enable_smart_case = 1
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
" NeoComplcache
" function! s:my_cr_function()
"  return neocomplcache#smart_close_popup(). "\<CR>"
"   "For no inserting <CR> key.
" return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
" endfunction
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()


" <TAB>: completion.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" <C-h>, <BS>: close popup and delete backword char.

" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : 'j'
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : 'k'

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

augroup vimrc-neoclojure
    autocmd FileType clj,cljs,edn,clojure setlocal omnifunc=neoclojure#complete#omni
    autocmd!
    autocmd FileType clojure setlocal omnifunc=neoclojure#complete#omni_auto
augroup END
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType javascript.jsx setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType clojure setlocal omnifunc=neoclojure#complete#omni_auto


" CTRLP Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/storage/*,*/node_modules/*,*/public/*,*/.mypy_cache/*,*/.ipynb_checkpoints/*
let g:ctrlp_user_command={
            \ 'types':{
            \ 1: ['.git', 'cd %s && git ls-files . -co --exclude-standard'],
            \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
        \'fallback': 'find %s -type f'
        \}
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.mypy_cache$|\.ipynb_checkpoints$|yardoc|node_modules|storage|vendor|log|public|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$|\.jpg$|'
  \ }
let g:ctrlp_open_new_file='h'
let g:ctrlp_match_window='max:20'
let g:ctrlp_clear_cache_on_exit=0

" Prettier Config
" let g:prettier#autoformat = 1
" let g:prettier#config#tab_width = 'auto'
" let g:prettier#config#tab_width = 2
" let g:prettier#config#html_whitespace_sensitivity = 'css'
" let g:prettier#quickfix_enabled = 0

" CTRLSPACE Config
" hi CtrlSpaceSearch guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold

" Cheatseat nmap - normal | imap - insert | vmap - visual and select | smap - select | xmap - visual | cmap - command-line | omap - operator
" Keybinds
nmap vim :vsp ~/.config/nvim/init.vim<CR>
nmap vam :source ~/.config/nvim/init.vim<CR>
" ctags
nmap go <C-]>
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
" Search
vnoremap ff y<ESC>/<c-r>"<CR>
vnoremap rr "hy:%s/<C-r>h//gc<left><left><left>

" Easy-motion insearch integration
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

" colorscheme oceanic_material
" dark
"source ~/.vim_runtime/themes/oceanic_material.vim
set t_Co=256   " This is may or may not needed.
set background=light
colorscheme PaperColor
let g:lightline = {'colorscheme': 'PaperColor'}
hi Normal ctermfg=227 ctermbg=17

" Anyjump
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

xnoremap K  :m-2<CR>gv=gv
xnoremap J :m'>+<CR>gv=gv

" Snippets
nmap fire i🔥 🔥 🔥<Esc>
nmap ( ysiw(
nmap { ysiw{
nmap [ ysiw[

" Vim Commenter
filetype plugin on

" Python Custom
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Tidy Config
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
let g:syntastic_php_checkers = ['php']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_args = ['--fix']
let g:syntastic_java_javac_classpath = '...'
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'


set autoread
au VimEnter *.js au BufWritePost *.js checktime
au VimEnter *.jsx au BufWritePost *.jsx checktime

" Translate
let g:translate#default_languages = {
      \ 'id': 'en',
      \ 'en': 'id'
      \ }

nmap <F2> :Translate<CR>
vmap <F2> :TranslateVisual<CR>

" Beautify Config
"autocmd FileType javascript nmap vb :Prettier<CR>
"autocmd FileType jsx        nmap vb :Prettier<CR>
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
" Custom Configuration
try
" source ~/.vim_runtime/my_configs.vim
catch
endtry

" SQL
let g:sqh_provider = 'psql'
let g:sqh_connections = {
    \ 'default': {
    \   'user': 'unep',
    \   'password': 'password',
    \   'host': 'localhost',
    \   'database': 'gpml'
    \}
\}


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

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-l>"
let g:UltiSnipsJumpForwardTrigger="<M-]>"
let g:UltiSnipsJumpBackwardTrigger="<M-[>"

let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------------------------
" slime configuration
"------------------------------------------------------------------------------
" always use tmux
let g:slime_target = 'tmux'

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
let g:slime_default_config = {
            \ 'socket_name': get(split($TMUX, ','), 0),
            \ 'target_pane': '{top-right}' }
let g:slime_dont_ask_default = 1


" Airline Themes
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

" Disable inline highlight lint
let g:LanguageClient_useVirtualText = 0
