" Automatically source the plugins.vim when it is saved
autocmd! bufwritepost plugins.vim source %

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add plugins here
"Plugin 'Lokaltog/vim-distinguished'
Plugin 'jiangmiao/auto-pairs'
Plugin 'zhaocai/GoldenView.Vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
