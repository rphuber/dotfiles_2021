local null_ls = require('null-ls')

local diagnostics_format = "[#{c}] #{m} (#{s})"

local sources = {
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.diagnostics.eslint.with({
    prefer_local = "node_modules/.bin",
  }),
  null_ls.builtins.code_actions.gitsigns,
}

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({ bufnr = bufnr })
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- you can reuse a shared lspconfig on_attach callback here
local on_attach = function(client, bufnr)
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

null_ls.setup({ sources = sources, diagnostics_format = diagnostics_format, on_attach = on_attach })
