vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.scrolloff = 1
vim.opt.lbr = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = {"longest", "menuone"}

vim.opt.termguicolors = true
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.cmd([[set nofoldenable]])

vim.opt.laststatus = 2
vim.opt.showmode = false
vim.opt.mouse = "a"
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.vim_markdown_math = 1
