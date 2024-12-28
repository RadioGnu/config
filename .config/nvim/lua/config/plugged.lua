vim.cmd([[
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

    Plug 'CantoroMC/ayu-nvim'           "Theme
    Plug 'itchyny/lightline.vim'        "Status bar
    Plug 'luochen1990/rainbow'          "Parentheses pop out
    Plug 'itchyny/vim-cursorword'       "Underline word under cursor
    Plug 'vim-python/python-syntax'     "Python syntax
    Plug 'tpope/vim-fugitive'           "Git for vim
    Plug 'preservim/vim-markdown'       "Markdown help plugin

call plug#end()
]])
