filetype on
set nu
set showmatch
set nocompatible
set syntax=on

set autoindent
set smartindent
" highlight current line and column

set cursorline
set cursorcolumn
hi cursorLine cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE
hi cursorColumn cterm=NONE ctermbg=black ctermfg=NONE guibg=NONE guifg=NONE

set tabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

set history=1000
set enc=utf-8
set showmatch
set matchtime=1
set incsearch
set hlsearch

highlight Search cterm=bold ctermbg=brown ctermfg=green
highlight Match ctermbg=brown ctermfg=white
" set background=dark
" colorscheme solarized

" set php src tags
set tags+=/home/tags

" always show statusline
set laststatus=2
set statusline =%F%m%r%h%w\ [LEN=%L]
highlight StatusLine cterm=bold ctermfg=green ctermbg=black

