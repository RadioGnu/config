set nocompatible

"""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
syntax enable

"""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""
:imap ii <Esc>

"""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"""""""""""""""""""""""""""
" => Other settings
"""""""""""""""""""""""""""
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
