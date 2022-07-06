local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- commands
vim.keymap.set('n', '<leader>so', ':source %<cr>', opts)
vim.keymap.set('n', '<leader>ex', ':Explore<cr>', opts)
vim.keymap.set('n', '<leader>st', ':Startify<cr>', opts)

-- buffers
vim.keymap.set('n', '<left>', ':bprevious<cr>', opts)
vim.keymap.set('n', '<right>', ':bnext<cr>', opts)

-- tabs
vim.keymap.set('n', '<up>', ':tabp<cr>', opts)
vim.keymap.set('n', '<down>', ':tabn<cr>', opts)

-- better movement
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)

-- system copy/paste
vim.keymap.set('n', '<leader>y', '"*y', opts)
vim.keymap.set('n', '<leader>p', '"*p', opts)
vim.keymap.set('v', '<leader>y', '"*y', opts)
vim.keymap.set('v', '<leader>p', '"*p', opts)
