" Automatically source the plugins_config.vim when it is saved
autocmd! bufwritepost plugins_config.vim source %

" Set mapleader
let mapleader=","

" Auto-Pairs settings
autocmd FileType html,xml,php let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"', '`':'`', '<':'>'}
autocmd FileType tex let g:AutoPairs = {'(':')', '[':']', '{':'}', "`":"'"}

" GoldenView.Vim settings
let g:goldenview__enable_default_mapping = 0
nmap <silent> <leader>s <Plug>GoldenViewSwitchMain
nmap <silent> <leader>S <Plug>GoldenViewSwitchToggle


