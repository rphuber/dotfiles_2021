local oldreq = require
local require = function(s) return oldreq('plugins.' .. s) end

require('plugs')
require('startify')
require('statusline')
require('comment')
require('telescope')

require = oldreq
