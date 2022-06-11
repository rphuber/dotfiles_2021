local M = require("config.galaxyline.definitions")

-- Git panel
--
M.insert_left({ Start = M.transparent_border })

M.insert_left({
	GitIcon = {
		provider = function()
			return "  "
		end,
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { M.colors.orange, M.colors.bg0 },
	},
})

M.insert_left({
	GitBranch = {
		provider = "GitBranch",
		condition = require("galaxyline.provider_vcs").check_git_workspace,
		highlight = { M.colors.blue, M.colors.bg0, "bold" },
	},
})

M.insert_blank_line_at_left()

M.insert_left({
	DiffAdd = {
		provider = "DiffAdd",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.green, M.colors.bg0 },
	},
})

M.insert_left({
	DiffModified = {
		provider = "DiffModified",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.blue, M.colors.bg0 },
	},
})

M.insert_left({
	DiffRemove = {
		provider = "DiffRemove",
		condition = M.checkwidth,
		icon = "  ",
		highlight = { M.colors.red, M.colors.bg0 },
	},
})

M.insert_left({ Separa = M.transparent_border })
