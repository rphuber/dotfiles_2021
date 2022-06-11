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

require("config.galaxyline.1_mode_panel")
require("config.galaxyline.2_git_panel")
require("config.galaxyline.3_filetype_panel")
require("config.galaxyline.4_lsp_panel")
require("config.galaxyline.5_text_info_panel")
