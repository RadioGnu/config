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
vim.g.ayucolor = "dark"
vim.cmd.colorscheme("ayu")
vim.cmd.highlight("Comment guifg='LightMagenta'")

vim.g.lightline = {colorscheme = "one"}
vim.opt.laststatus = 2
vim.opt.showmode = false
vim.opt.mouse = "a"
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.python_highlight_all = 1
vim.g.vim_markdown_math = 1
