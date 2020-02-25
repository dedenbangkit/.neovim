set number relativenumber
set list
set runtimepath+=~/.vim_runtime
set fillchars+=vert:\ 
set foldlevelstart=1
set background=dark
let g:go_version_warning = 0
" set noeb vb t_vb=

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/plug.vim
source ~/.vim_runtime/plugged/awesome-vim-colorschemes/colors/PaperColor.vim


" source ~/.vim_runtime/themes/darkspectrum.vim

" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim_runtime/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets' | Plug 'SirVer/ultisnips'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeTabsToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
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
" Plugin Scala
Plug 'derekwyatt/vim-scala'
" Emmet
Plug 'mattn/emmet-vim'
" GitHub Plugin
Plug 'airblade/vim-gitgutter'
" Initialize plugin system
Plug 'tpope/vim-fugitive'
" AutoComplete plugin system
Plug 'Shougo/neocomplcache'
" Initialize plugin system
" Plug 'zuhdil/vim-alder'
" JSBeautify
Plug 'maksimr/vim-jsbeautify'
" CTRLSpace
" Plug 'vim-ctrlspace/vim-ctrlspace'
" Laravel Plugin
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jalvesaq/Nvim-R'
" Multiple Cursor
Plug 'terryma/vim-multiple-cursors'
Plug 'miyakogi/conoline.vim'
" All Themes
Plug 'rafi/awesome-vim-colorschemes'
" Renamer
Plug 'wojtekmach/vim-rename'
" Translate
Plug 'VincentCordobes/vim-translate'
" In Between Word
Plug 'tpope/vim-surround'
" Vim React Preffy
Plug 'maxmellon/vim-jsx-pretty'
" Vim react template
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
" Vim Indenting PHP
Plug '2072/PHP-Indenting-for-VIm'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Vim Svelte
Plug 'evanleck/vim-svelte'
" Vim Cargo Rust
Plug 'rust-lang/rust.vim'
" Vim Ferret Search ACK
Plug 'wincent/ferret'
" WIndow Interactive
Plug 'romgrk/winteract.vim'

" Canoline
let g:conoline_color_normal_dark = 'guibg=#333333 guifg=#dddddd'
let g:conoline_color_insert_dark = 'guibg=black guifg=white'

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
let g:user_emmet_leader_key='<C-Z>'
"only enable normal mode functions.
let g:user_emmet_mode='n'    

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Start gitGutter
let g:gitgutter_max_signs = 500  " default value
0

" Autocomplete Config 
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_smart_case = 1
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup(). "\<CR>"
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

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" CTRLP Config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/storage/*,*/node_modules/*     
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|\.node_modules\|storage\|vendor\|log\|tmp$',
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

" Prettier Config
let g:prettier#autoformat = 1
let g:prettier#config#tab_width = 'auto'
let g:prettier#config#html_whitespace_sensitivity = 'css'

" CTRLSPACE Config
" if has("gui_running")
"   Settings for MacVim and Inconsolata font
"   let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
"endif
" hi CtrlSpaceSearch guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold

"Cheatseat nmap - normal | imap - insert | vmap - visual and select | smap - select | xmap - visual | cmap - command-line | omap - operator
nmap vim :vsp ~/.config/nvim/init.vim<CR>
nmap vom :source ~/.config/nvim/init.vim<CR>
nmap ca :!php artisan cache:clear<CR>
nmap jf :w! <CR>
nmap yarn :!yarn start <CR>
nmap asdf :vertical resize 50 <CR>
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
nmap gw :InteractiveWindow<CR>
nmap ff <C-f>
nmap fff :Ack 
nmap ee $
nmap yy yyp
nmap ups gUU
nmap fj :CtrlPBuffer <CR>
nmap lkj :vertical resize 150 <CR>
nmap vv :Prettier<CR>
nmap co /console<CR>
nmap <C-p> "*p
vmap <C-c> :w !pbcopy<CR><CR>
xnoremap K  :m-2<CR>gv=gv
xnoremap J :m'>+<CR>gv=gv
vnoremap ff y<ESC>/<c-r>"<CR>
vnoremap rr "hy:%s/<C-r>h//gc<left><left><left>

" Snippets
nmap fire i🔥 🔥 🔥<Esc>
nmap { ysiw{
nmap [ ysiw[

" Vim Commenter
filetype plugin on

" Laravel Find File
if(file_readable("artisan"))
    nmap lr :e routes/web.php<cr>
    nmap lca :e config/app.php<cr>
    nmap lc :e composer.json<cr>
    nmap len :e .env<cr>
endif

" Python Custom
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Tidy Config
let syntastic_mode_map = { 'passive_filetypes': ['html'] }
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute " ,"trimming empty <", "unescaped &" , "lacks \"action", "is not recognized!", "discarding unexpected"]
let g:syntastic_php_checkers = ['php']

" Translate
let g:translate#default_languages = {
      \ 'id': 'en',
      \ 'en': 'id'
      \ }

nmap <F2> :Translate<CR>
vmap <F2> :TranslateVisual<CR>

" Beautify Config
autocmd FileType javascript nmap vb :call JsBeautify()<CR>
autocmd FileType json       nmap vb :call JsonBeautify()<CR>
autocmd FileType jsx        nmap vb :call JsxBeautify()<CR>
autocmd FileType html       nmap vb :call HtmlBeautify()<CR>
autocmd FileType css        nmap vb :call CSSBeautify()<CR>

" Custom Configuration
try
source ~/.vim_runtime/my_configs.vim
catch
endtry
