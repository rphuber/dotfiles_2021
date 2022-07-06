-- :help options

HOME = os.getenv("HOME")

-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- general
vim.o.encoding    = 'utf-8'
vim.o.backspace   = 'indent,eol,start' -- default  value
vim.o.history     = 100
vim.o.startofline = true

-- vim.o.clipboard = "unnamed" -- using custom keybindings instead

-- diplay
vim.o.showmatch     = true
vim.o.matchtime     = 2
vim.o.mps           = vim.o.mps .. ",<:>"
vim.o.scrolloff     = 8
vim.o.laststatus    = 2
vim.o.list          = false
vim.o.showmode      = false
vim.o.termguicolors = true

-- sidebar
vim.o.number         = true
vim.o.numberwidth    = 2
vim.o.relativenumber = true
vim.o.signcolumn     = 'number'
vim.o.modelines      = 0
vim.o.showcmd        = true
vim.o.cursorline     = true
vim.o.cursorlineopt  = 'number'

-- search
vim.o.incsearch  = true
vim.o.ignorecase = true
vim.o.smartcase  = true

-- tabs
vim.o.expandtab   = true
vim.o.tabstop     = 2
vim.o.shiftwidth  = 0
vim.o.autoindent  = true
vim.o.smartindent = true

-- backupfiles
vim.o.swapfile   = false
vim.o.undofile   = true
vim.opt.undodir = HOME .. "/.config/nvim/undo"

-- splits
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.mouse = "a" -- allow the mouse to be used in neovim

-- command mode
vim.o.wildmenu = true

vim.g.fugitive_dynamic_colors = 1

-- colorscheme
vim.cmd [[colorscheme moonfly]]
vim.cmd [[highlight Search gui=NONE]]
vim.cmd [[highlight IncSearch gui=NONE]]

-- defaults
-- vim.opt.hlsearch = true -- default
-- vim.opt.incsearch = true -- default
-- vim.opt.wildmenu = true -- default
-- vim.opt.autoindent = true -- default
-- vim.opt.hidden = true
-- vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
-- vim.opt.concealcursor = 'nc'
-- vim.opt.showtabline = 2                         -- always show tabs
-- vim.opt.vb = true
-- vim.opt.linebreak = true
-- vim.opt.textwidth = 80
