local function default_on_attach(client, bufnr)
  print('Attaching to ' .. client.name)

  -- mappings
  -- see :help vim.lsp for documentation on any of the below
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)

  vim.keymap.set('n', 'H', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', '<C-h>', vim.lsp.buf.signature_help, bufopts)

  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
  -- Open code actions for the selected visual range
  vim.keymap.set('x', '<leader>ca', vim.lsp.buf.range_code_action, bufopts)

  vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
end

require("flutter-tools").setup {
  lsp = {
    color = { -- show the derived colours for dart variables
      enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
      background = false, -- highlight the background
      foreground = false, -- highlight the foreground
      virtual_text = true, -- show the highlight using virtual text
      virtual_text_str = "■", -- the virtual text character to highlight
    },
    on_attach = default_on_attach,
  }
}
