" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

" Set mapleader
let mapleader = ","

" Auto-Pairs settings
autocmd FileType html,xml,php let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '<':'>'}
autocmd FileType tex let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"'"}

" GoldenView.Vim settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>s <Plug>GoldenViewSwitchMain
nmap <silent> <leader>S <Plug>GoldenViewSwitchToggle

" Nerdtree settings
nmap <leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['.o$[[file]]', '.class$[[file]]', '.git$[[dir]]', 'init__.py$[[file]]', '.pyc$[[file]]', '.beam$[[file]]']

" Tagbar settings
nmap <leader>m :TagbarToggle<cr>

" CtrlP settings
let g:ctrlp_map = '<leader>f'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 20
let g:ctrlp_working_path_mode = 'r'
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*.class
set wildignore+=*.o

" Ack.vim settings
"nmap <leader>a :Ack <C-R><C-W>

" ag.vim
nmap <leader>a :Ag <C-R><C-W>

" YouCompleteMe setting
set completeopt-=preview
nmap <leader>g :YcmCompleter GoTo<CR>
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_seed_identifiers_with_syntax = 1


" syctastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
