local M = require("config.galaxyline.definitions")

M.insert_left({ Start = M.transparent_border })

M.insert_blank_line_at_left()

M.insert_left({
	ViMode = {
		icon = function()
			return M.icons[vim.fn.mode()]
		end,
		provider = function()
			local vim_mode = vim.fn.mode()
			vim.api.nvim_command("hi GalaxyViMode guifg=" .. M.mode_color[vim_mode])
			return M.alias[vim_mode]
		end,
		highlight = { M.colors.bg0, M.colors.bg0 },
	},
})

M.insert_blank_line_at_left()
