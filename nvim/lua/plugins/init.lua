local oldreq = require
local require = function(s) return oldreq('plugins.' .. s) end

-- load the actual plugin files
require('plugs')

-- configs for all the plugins
require('comment')
require('completion')
require('dap')
require("lsp-colors")
require('luasnip')
require('null-ls')
require('startify')
require('statusline')
require('telescope')
require("todo-comments")
require('treesitter')
require("trouble")

require = oldreq
