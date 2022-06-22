-- :help options

-- defaults
vim.opt.hlsearch = true -- default
vim.opt.incsearch = true -- default
vim.opt.wildmenu = true -- default
vim.opt.autoindent = true -- default
vim.opt.backspace = {'indent', 'eol', 'start'} -- default

vim.opt.cursorline = true
vim.opt.conceallevel = 1
vim.opt.concealcursor = 'nc'

vim.opt.showtabline = 2
vim.opt.modelines = 2
vim.opt.vb = true
vim.opt.laststatus = 2
vim.opt.mouse = 'a'
vim.opt.scrolloff = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.linebreak = true
vim.opt.textwidth = 80
vim.opt.hidden = true

vim.opt.backup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false

-- tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0 -- if 0 it uses tabstop value
vim.opt.softtabstop = 0 -- if 0 it uses shiftwidth value
vim.opt.expandtab = true

-- splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- search
vim.opt.smartcase = true

-- format


vim.opt.swapfile = false

vim.opt.shell = 'bash' -- Need this because I use fish shell

-- vim.opt.regexpengine = 1
-- vim.opt.lazyredraw = true
-- vim.opt.list = true
-- vim.opt.listchars = 'tab:»»,trail:·,nbsp:·,precedes:·,extends:»»,tabstop:2,nbsp:true,precedes:true,extends:true'
--
--
vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.smartindent = true                      -- make indenting smarter again
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                        -- creates a swapfile
-- vim.opt.termguicolors = true                    -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.undofile = true                         -- enable persistent undo
vim.opt.updatetime = 300                        -- faster completion (4000ms default)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.expandtab = true                        -- convert tabs to spaces
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.number = true                           -- set numbered lines
vim.opt.relativenumber = false                  -- set relative numbered lines
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.guifont = "monospace:h17"
