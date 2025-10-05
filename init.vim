set nocompatible
set ruler
set number

let mapleader='\'

set autoread " automatically reload open files on changes, i.e. from formatting tools
au FocusGained,BufEnter * :checktime

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab


" Search options
set incsearch " searching as you type, no need to press enter
set hlsearch " highlight search string
set ignorecase " case-insensitive
set smartcase " case-insensitive if search characters are lowercase
nmap \q :nohlsearch<CR> " \q to get rid of search match highlighting

" Neovim plugins
let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent !\curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif
call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree' " project sidebar
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow' " Rainbow parens.
"" Solarized
Plug 'maxmx03/solarized.nvim'
""" The below lines are commented out because I'm not sure if I need them now.
"""" lua << EOF
"""" require('solarized').setup({
""""   theme = 'solarized-dark', -- or 'solarized-light'
"""" })
"""" EOF

" need to run `pip3 install pynvim` for deoplete; to enable python 3 scripting (I think?)
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

" deoplete
let g:deoplete#enable_at_startup = 1
" Color stuff!
"" rainbow parens
let g:rainbow_active = 1
set termguicolors
colorscheme solarized
if has('mac')
  let s:is_dark = system('defaults read -g AppleInterfaceStyle') =~? 'Dark'
  if s:is_dark
    set background=dark
  else
    set background=light
  endif
endif

