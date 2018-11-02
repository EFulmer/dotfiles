set nocompatible
set ruler
set number

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
call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree' " project sidebar
call plug#end()

colorscheme solarized
set background=dark

let mapleader='\'

set autoread " automatically reload open files on changes, i.e. from formatting tools
au FocusGained,BufEnter * :checktime
