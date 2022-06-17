local M = require("config.galaxyline.definitions")

-- Information panel
M.insert_left({ Start = M.transparent_border })

M.insert_left({
	FileIcon = {
		provider = "FileIcon",
		condition = M.buffer_not_empty,
		highlight = { require("galaxyline.provider_fileinfo").get_file_icon_color, M.colors.bg0 },
	},
})

M.insert_left({
	BufferType = {
		provider = "FileTypeName",
		condition = M.has_file_type,
		highlight = { M.colors.fg, M.colors.bg0 },
	},
})

M.insert_blank_line_at_left()
