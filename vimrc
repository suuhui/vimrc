filetype on
set nu
set showmatch
set nocompatible
set syntax=on

execute pathogen#infect()

set cindent
set smartindent
" highlight current line and column

" 'i'代表插入模式
" 'nore' "no recursion"代表不递归
" '<ESC>,<CR>' 代表键盘上的键
" map 后面的第一个参数指的是输入 第二个参数是执行的命令
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>kA<CR>
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
" 按Ctrl+h/j/k/l映射到方向键
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-g> <ESC>o
inoremap <C-e> <ESC>A
inoremap <C-f> <ESC>^i
inoremap <C-x> <ESC>lxi

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

" 当vim中没有其他文件，只剩下nerdtree的时候，自动关闭窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" 改变nerdtree的箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" taglist配置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1 " only show this file's tag 
let Tlist_Exit_OnlyWindow = 1 " if taglist window is the last window, then quit vim
let Tlist_Auto_Open = 0 " not auto open taglist window
let Tlist_Use_Right_Window = 0 " show taglist in left
map <C-m> :TlistToggle<CR>



if has("cscope") && filereadable("/usr/local/bin/cscope")
   set csprg=/usr/local/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

