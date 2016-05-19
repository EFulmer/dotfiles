" ~/.vimrc

" Pathogen related settings and commands:
" This needs to come before any commands that rely on a Pathogen-installed plugin.
execute pathogen#infect()

set nocompatible " Disable Vi backwards-compatibility, allowing full range of Vim features.

" Code / syntax settings:
filetype plugin indent on " Look for syntax and indentation rules files for language of file being edited, and apply if found.
syntax on                 " Enable syntax highlighting. Requires a syntax file for language.

" Simple display settings:
set ruler  " Shows line and column numbers in lower right corner.
set number " Shows line number on left hand side of screen.

" Search settings:
set incsearch " Incremental search; begin searching for string as you type rather than waiting for entering of search string and hitting Enter.
set hlsearch  " Highlight all search string occurrences -- after hitting Enter.
set smartcase " Searching only case-sensitive for uppercase characters entered in search string.
set wrapscan  " Wrap around search; once end of file reached, starts from beginning again.

" Tab settings:
set expandtab  " Pressing <TAB> inserts space characters.
set autoindent " Default indentation strategy: automatically indent new lines to indentation level of previous line

" Mouse / cursor settings:
set mouse=a " Better mouse support for terminal Vim (elucidate).

" Color settings:
set background=dark   " Dark background, used for Solarized.
set t_Co=256          " Set terminal to use 256 colors, which Solarized requires.
colorscheme solarized " Set the color scheme to Solarized Dark


" Rust-specific:
" let g:rustfmt_autosave = 1 " Automatically run rustfmt after every buffer write. " Commented out due to not working.
