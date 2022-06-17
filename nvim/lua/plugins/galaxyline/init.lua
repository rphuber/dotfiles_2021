local gl = require("galaxyline")

gl.short_line_list = {
	"LuaTree",
	"vista",
	"dbui",
	"startify",
	"term",
	"nerdtree",
	"fugitive",
	"fugitiveblame",
	"plug",
}

require("plugins.galaxyline.1_mode_panel")
require("plugins.galaxyline.2_git_panel")
require("plugins.galaxyline.3_filetype_panel")
require("plugins.galaxyline.4_lsp_panel")
require("plugins.galaxyline.5_text_info_panel")
