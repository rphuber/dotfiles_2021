local oldreq = require
local require = function(s) return oldreq('mappings.' .. s) end

require('user-mappings')
require('lsp-mappings')
require('gitsigns')
require('mundo-mappings')
require('trouble')
require('telescope')

require = oldreq
