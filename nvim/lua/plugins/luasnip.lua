-- Loading any vscode snippets from plugins
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip").filetype_extend("typescript", {"javascript"})
require("luasnip").filetype_extend("typescriptreact", {"javascriptreact" })
