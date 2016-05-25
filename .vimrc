" ~/.vimrc

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
set expandtab  " Pressing <TAB> inserts space characters.
set autoindent " Default indentation strategy: automatically indent new lines to indentation level of previous line

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
set mouse=a " Better mouse support for terminal Vim (elucidate).

"" Color settings:
set background=dark   " Dark background, used for Solarized.
set t_Co=256          " Set terminal to use 256 colors, which Solarized requires.
colorscheme solarized " Set the color scheme to Solarized Dark


"" Rust-specific:
" let g:rustfmt_autosave=1 " Automatically run rustfmt after every write of a Rust source buffer. " Commented out until I can get rustfmt working.
