" ~/.vimrc

" pathogen for neovim
set rtp+=$HOME/.vim/
set nocp " explain what this is

"" Pathogen related settings and commands:
"" This needs to come before any commands that rely on a Pathogen-installed plugin.
execute pathogen#infect()

set nocompatible " Disable Vi backwards-compatibility, allowing full range of Vim features.

"" Code / syntax settings:
filetype plugin indent on " Look for syntax and indentation rules files for language of file being edited, and apply if found.
syntax on                 " Enable syntax highlighting. Requires a syntax file for language.

"" Simple display settings:
set ruler  " Shows line and column numbers in lower right corner.
set number " Shows line number on left hand side of screen.

"" Search settings:
set incsearch " Incremental search; begin searching for string as you type rather than waiting for entering of search string and hitting Enter.
set hlsearch  " Highlight all search string occurrences -- after hitting Enter.
set smartcase " Searching only case-sensitive for uppercase characters entered in search string.
set wrapscan  " Wrap around search; once end of file reached, starts from beginning again.

"" Tab settings:
set expandtab    " Pressing <TAB> inserts space characters.
set autoindent   " Default indentation strategy: automatically indent new lines to indentation level of previous line
set tabstop=4    " Each <TAB> character in a file is displayed as 4 spaces.
set shiftwidth=4 " Each indentation level indents code 4 spaces further to the left.
set smarttab
set smartindent

"" Code folding:
set foldmethod=indent " When folding a part of a file away, what defines a "part" is determined by indentation (or line with the same spaces).
set foldlevel=99      " First/"most shallow" 99 levels of indentation/spacing will be left unfolded (i.e. fully visible).

"" Window splitting:
set splitbelow " When creating a new horizontal split, the new split will be created below the existing one.
set splitright " When creating a new vertical split, the new split will be created to the right of the existing one.

"" Key bindings for window splitting:
nnoremap <C-J> <C-W><C-J> " Moving to the split below is now Ctrl+J.
nnoremap <C-K> <C-W><C-K> " Moving to the split above is now Ctrl+K.
nnoremap <C-L> <C-W><C-L> " Moving to the split to the right is now Ctrl+L.
nnoremap <C-H> <C-W><C-H> " Moving to the split to the left is now Ctrl+H.

"" Mouse / cursor settings:
set mouse=a      " Better mouse support for terminal Vim (elucidate).
set cursorline   " Highlight current line.
set cursorcolumn " Highlight current column.

"" Color settings:
set background=dark   " Dark background, used for Solarized.
set t_Co=256          " Set terminal to use 256 colors, which Solarized requires.
colorscheme solarized " Set the color scheme to Solarized Dark

"" Python-specific:
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 | 
    \ set expandtab | 
    \ set autoindent | 
    \ set fileformat=unix 

"" Rust-specific:
" let g:rustfmt_autosave=1 " Automatically run rustfmt after every write of a Rust source buffer. " Commented out until I can get rustfmt working.

"" OCaml-specific:
let g:opamshare=substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" + g:opamshare + "/merlin/vim"

" Rainbow parens:
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]


" other
set nowrap
set modeline
set showmode
set tw=80
set history=1000
" set clipboard=unnamedplus,autoselect " TODO figure out why this does not work.
set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest
" 
" map <Leader>s :SyntasticToggleMode<CR>
" 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" 
" deoplete
call deoplete#enable()
" " haskell
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" supertab
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:haskellmode_completion_ghc = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

map <Leader>n :NERDTreeToggle<CR>

let g:haskell_tabular = 1

vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /::<CR>
vmap a- :Tabularize /-><CR>

map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

" more other stuff
