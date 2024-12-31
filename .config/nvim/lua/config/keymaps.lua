-- Undo up to . or other characters
vim.keymap.set('i', '.', '.<C-g>u')
vim.keymap.set('i', ',', ',<C-g>u')
vim.keymap.set('i', ';', ';<C-g>u')

-- Quick save
vim.keymap.set('n', '<leader>w', ':w<CR>')
-- kill current search
vim.keymap.set('n', '<leader>s', ':nohlsearch<CR>')
-- Go to normal mode in terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

-- Remap splits navigation to just CTRL + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- Splitting (A-HJKL to resizee)
vim.keymap.set('n', '<A-h>', ':vertical resize -5<CR>')
vim.keymap.set('n', '<A-l>', ':vertical resize +5<CR>')
vim.keymap.set('n', '<A-j>', ':resize -5<CR>')
vim.keymap.set('n', '<A-k>', ':resize +5<CR>')
