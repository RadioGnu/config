let mapleader = "\<Space>"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

    Plug 'CantoroMC/ayu-nvim'           "Theme
    Plug 'itchyny/lightline.vim'        "Status bar
    Plug 'luochen1990/rainbow'          "Parantheses pop out
    "Plug 'unblevable/quick-scope'       "Underline chars when pressing f
    Plug 'mcchrish/nnn.vim'             "File manager
    Plug 'itchyny/vim-cursorword'       "Underline word under cursor
    Plug 'vim-python/python-syntax'
    Plug 'tpope/vim-fugitive'           "Git for vim

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch                   " Incremental search
set hidden                      " Needed to keep multiple buffers open
set noswapfile                  " No swap
set nobackup                    " No backup files
set number relativenumber       " Display line numbers
set clipboard=unnamedplus       " Copy/paste between vim and other programs.
set showmatch
set cursorline
set cursorcolumn
set scrolloff=1
syntax enable

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors               " Set if term supports true colors.
let ayucolor="dark"
colorscheme ayu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'one'
      \ }

" Always show statusline
set laststatus=2

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Escape is hard to reach
:vmap ii <Esc>
:omap ii <Esc>
:map! ii <Esc>

:nnoremap Y y$
:nnoremap J mzJ`z

"Undo up to . or other characters
:inoremap . .<C-g>u
:inoremap , ,<C-g>u
:inoremap ; ;<C-g>u

"Moving selection in visual mode
:vnoremap J :m '>+1<CR>gv=gv
:vnoremap K :m '<-2<CR>gv=gv
:vnoremap H <gv
:vnoremap L >gv

"Go to normal mode in terminal
:tnoremap <Esc><Esc> <C-\><C-n>

"Quick save
nnoremap <leader>w :w<CR>

"File Manager
nnoremap <leader>f ::NnnPicker %:p:h<CR>

"kill current search
nnoremap <leader>s :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab                   " Use spaces instead of tabs.
set smarttab                    " Be smart using tabs ;)
set shiftwidth=4                " One tab == four spaces.
set tabstop=4                   " One tab == four spaces.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Splitting (A-HJKL to resizee)
noremap <A-h> :vertical resize -5<CR>
noremap <A-l> :vertical resize +5<CR>
noremap <A-j> :resize -5<CR>
noremap <A-k> :resize +5<CR>

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Other settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:python_highlight_all = 1

