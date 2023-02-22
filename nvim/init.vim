let mapleader = "\<Space>"

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
    Plug 'vimwiki/vimwiki'              "Vimwiki - notetaking
    Plug 'preservim/vim-markdown'       "Markdown help plugin

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
set wildmenu
set cursorline
set cursorcolumn
set scrolloff=1
set sidescroll=5 "if for some reason wrap is off

"When autocompleting, complete to the greatest common match
set completeopt=longest,menuone

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set termguicolors               " Set if term supports true colors.
let ayucolor="dark"
colorscheme ayu
highlight Comment guifg='LightMagenta'

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
:vmap jk <Esc>
:omap jk <Esc>
:map! jk <Esc>

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

"Quick save
nnoremap <leader>w :w<CR>

"Go to normal mode in terminal
:tnoremap <Esc><Esc> <C-\><C-n>

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
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vim_markdown_math = 1

