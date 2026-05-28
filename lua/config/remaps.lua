vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- 4 space ident
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Resize split remaps
vim.keymap.set('n', '<C-Up>', '<C-w>+')
vim.keymap.set('n', '<C-Down>', '<C-w>-')
vim.keymap.set('n', '<C-Left>', '<C-w><')
vim.keymap.set('n', '<C-Right>', '<C-w>>')

-- Move between split
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Go to normal mode in terminal
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
