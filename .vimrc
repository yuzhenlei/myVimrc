syntax enable

" Vundle config
set nocompatible "vundle required
filetype on "vundle required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()
filetype plugin indent on

" Common config
set termencoding=utf-8
set encoding=utf-8

"let g:rehash256=1
let g:molokai_original=1
set background=dark
colorscheme molokai
set scrolloff=5
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set cindent
set number
"set lazyredraw
"set relativenumber
set noswapfile
set nobackup
set smartcase
set ignorecase
set autochdir
" set cursorline
" cygwin普通模式下，光标形状为块状
" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"


" autocomplete big parantheses
"let s:targetExt = ["c","cpp","cc","php","java"]
"for s:ext in s:targetExt
"    if expand('%:e')==s:ext 
"    imap {<CR> {}<ESC>i<CR><ESC>V<O
"        break
"    endif
"endfor

" ctrlp config
let g:ctrlp_map = '<c-p>' 
let g:ctrlp_cmd = 'CtrlP'
" 设置过滤不进行查找的后缀名 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$' 
 
" disable up,down,left,right btn
imap <DOWN>  <ESC><NOP> 
imap <LEFT>  <ESC><NOP> 
imap <RIGHT>  <ESC><NOP>  
imap <UP>  <ESC><NOP>  
nmap <DOWN>  <NOP> 
nmap <LEFT>   <NOP>
nmap <RIGHT>  <NOP> 
nmap <UP>  <NOP> 

" switch window
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l

" resize window width key map
map <F10>- :vert res -2<ESC><F10>
map <F10>= :vert res +2<ESC><F10>

" Autocomplete map [ to [_]
imap [ []<ESC>i

" NERDTree Config
nmap <F2> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
