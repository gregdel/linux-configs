set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
set t_Co=256
set ignorecase
set smartcase

" Set term
set term=xterm-256color

" Set encoding
set encoding=utf-8

" Navigate through tabs
nnoremap tk    :tabnext<CR>
nnoremap tj    :tabprev<CR>

" Open a new tab the easy way
nnoremap tt    :tabedit<Space>

" Open NERDTree with Ctrl+D
nmap <silent> <C-D> :NERDTreeToggle<CR>

" Color scheme
colorscheme molokai
syntax on
filetype plugin indent on

" Run pathogen
execute pathogen#infect()

" Delete spaces at the end of files
au BufWrite * %s/\s\+$//ge

" Set markdown syntax for .md files
au BufRead,BufNewFile *.md set filetype=markdown
