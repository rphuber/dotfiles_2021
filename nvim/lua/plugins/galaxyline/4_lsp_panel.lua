local M = require("config.galaxyline.definitions")

-- Lsp panel
M.insert_mid({ Start = M.transparent_border })

M.insert_blank_line_at_mid()

M.insert_mid({
	DiagnosticError = {
		provider = "DiagnosticError",
		icon = "  ",
		highlight = { M.colors.red, M.colors.bg0 },
	},
})

M.insert_mid({
	DiagnosticHint = {
		provider = "DiagnosticHint",
		icon = "  ",
		highlight = { M.colors.green, M.colors.bg0 },
	},
})

M.insert_mid({
	DiagnosticWarn = {
		provider = "DiagnosticWarn",
		icon = "  ",
		highlight = { M.colors.yellow, M.colors.bg0 },
	},
})

M.insert_blank_line_at_mid()

M.insert_mid({ Start = M.transparent_border })
