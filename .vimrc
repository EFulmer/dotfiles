" ~/.vimrc

" Source code editing relevant commands:
filetype plugin indent on " Look for syntax and indentation rules files for language of file being edited, and apply if found.
syntax on " Enable syntax highlighting. Requires a syntax file for language.

" Some simple display things:
set ruler " Shows line and column numbers in lower right corner.
set number " Shows line number on left hand side of screen.

" Search options:
set incsearch " Incremental search; begin searching for string as you type rather than waiting for entering of search string and hitting Enter.
set hlsearch " Highlight all search string occurrences -- after hitting Enter.
set smartcase " Searching only case-sensitive for uppercase characters entered in search string.
set wrapscan " Wrap around search; once end of file reached, starts from beginning again.

" Tab settings:
set expandtab " Pressing <TAB> inserts space characters.

" Set the color scheme to Solarized Dark:
" colorscheme solarized " Commented out until Solarized is downloaded.
