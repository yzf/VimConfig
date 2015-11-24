" Configuration file for vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      Plugins                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable plugins
try
    source ~/.vim/plugins.vim
    source ~/.vim/plugins_config.vim
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                      General                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto clean the terminal after close vim
set term=xterm
" Use Vim defaults instead of 100% vi compatibility
set nocompatible

" Automatically read a file when it is changed from the outside
set autoread

" No backup files
set nobackup
set nowritebackup
set noswapfile

" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gb2312

" File formats
set fileformats=unix,dos,mac

" Timeout
set timeoutlen=500

" Hide a buffer when it is abandoned
set hidden

" History
set history=700

" Undo
set undolevels=700

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    User Interface                    "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show line number
set number

" Show the current position (row, col)
set ruler

" Show matching brackets
set showmatch

" Show the status line
set laststatus=2

" The time of blinking when matching brackets
set matchtime=0

" Enable syntax highlighting
syntax enable

" Set colors
set t_Co=256
try
    colorscheme molokai
catch
    colorscheme desert
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"              Text, Tab, Indent, Backspece            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cinoptions=g0
" Text width
set textwidth=120

" Color the column 80
set colorcolumn=80

" Don't automatically wrap on load
set nowrap

" Use space instead of tab
set expandtab

" Be smart when using tabs
set smarttab

" Tab width
set tabstop=4
set softtabstop=4

" Shift
set shiftwidth=4
set shiftround

" Auto indent
set autoindent

" Auto indent
set smartindent

" Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Search                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browers
set incsearch

" Using regular expressions easily
set magic

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Mappings                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>q :q<cr>
nmap <leader>w :w<cr>
nmap <leader>o <c-o>
nmap <leader>h :A<cr>
" Easier moving between windows
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l
" Copy to system's clipboard
vmap <c-c> "+y
vmap <leader>c <c-c>
vmap <leader>v "+p

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Autocmd                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent
autocmd FileType h,hh,hpp,c,cc,cpp,py set cindent
autocmd FileType yaml call YamlTabWidth()

" Build and run(just avaiable for a single source code)
autocmd FileType c imap <F9> <esc>:w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType c nmap <F9> :w<cr>:!clear && gcc % -o %< && ./%<<cr>
autocmd FileType cpp imap <F9> <esc>:w<cr>:!clear && g++ -isystem/usr/local/include % -o %< && ./%<<cr>
autocmd FileType cpp nmap <F9> :w<cr>:!clear && g++ -isystem/usr/local/include % -o %< && ./%<<cr>
autocmd FileType python imap <F9> <esc>:w<cr>:!clear && python %<cr>
autocmd FileType python nmap <F9> :w<cr>:!clear && python %<cr>
autocmd FileType sh imap <F9> <esc>:w<cr>:!clear && bash %<cr>
autocmd FileType sh nmap <F9> :w<cr>:!clear && bash %<cr>
autocmd FileType erlang imap <F9> <esc>:w<cr>:!clear && escript %<cr>
autocmd FileType erlang nmap <F9> :w<cr>:!clear && escript %<cr>

" Add new file templates
try
    autocmd BufNewFile *.py 0r ~/.vim/template/pythonconfig.py
catch
endtry

function! YamlTabWidth()
    set tabstop=2
    set softtabstop=2
    set shiftwidth=2
endfunction

" Auto delete trailing white space on saving
function! DeleteTrailingWhiteSpace()
    if index(['markdown'], &ft) == -1
        exe "normal mz"
        %s/\s\+$//ge
        exe "normal `z"
    end
endfunction
autocmd! bufwritepre * :call DeleteTrailingWhiteSpace()
