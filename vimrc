filetype on
set nu
set showmatch
set nocompatible
set syntax=on

execute pathogen#infect()

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
set statusline =[%F%m%r%h%w\ LEN=%L\ curlen=%l]
highlight StatusLine cterm=NONE ctermfg=169 ctermbg=239

" show files of current directory
" map <F3> :tabnew .<CR>

" show tree directory
" map <C-F3> \be


" Bundle 'scrooloose/nerdtree' " 加入NERDTree

" 关闭NERDTree快捷键
" map <leader>t :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 设置宽度
let NERDTreeWinSize=28
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1

" vim不指定具体文件打开是，自动使用nerdtree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" 当vim打开一个目录时，nerdtree自动使用
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" 当vim中没有其他文件，值剩下nerdtree的时候，自动关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 改变nerdtree的箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
