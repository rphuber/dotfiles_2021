local oldreq = require
local require = function(s) return oldreq('plugins.' .. s) end

-- load the actual plugin files
require('plugs')

-- configs for all the plugins
require('startify')
require('treesitter')
require('statusline')
require('comment')
require('telescope')
require('null-ls')
require("trouble")
require("todo-comments")
require("lsp-colors")
require('dap')

require = oldreq
