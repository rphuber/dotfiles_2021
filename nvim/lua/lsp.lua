local lspconfig = require 'lspconfig'
local cmp_nvim_lsp = require 'cmp_nvim_lsp'

local runtime_path = vim.split(package.path, ';')

-- Diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = false,
  update_in_insert = false,
}
)
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

  vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)

  vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"
end

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("nvim-lsp-installer").setup {}
-- Uncomment this for debugging in ~/.cache/nvim/lsp.log
vim.lsp.set_log_level("debug")
--

-- Thanks TJ!
local servers = {
  gopls       = true,
  graphql     = true,
  elixirls    = {
    cmd = { "elixirls" },
    capabilities = capabilities,
    on_attach = default_on_attach,
    settings = {
      elixirLS = {
        -- I choose to disable dialyzer for personal reasons, but
        -- I would suggest you also disable it unless you are well
        -- aquainted with dialzyer and know how to use it.
        dialyzerEnabled = false,
        -- I also choose to turn off the auto dep fetching feature.
        -- It often get's into a weird state that requires deleting
        -- the .elixir_ls directory and restarting your editor.
        fetchDeps = false
      }
    }
  },
  tsserver    = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
    },
    on_attach = function(client)
      client.resolved_capabilities.document_formatting = false
      default_on_attach(client)
    end,
  },
  sumneko_lua = {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
          path = runtime_path,
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  },
}

local capabilities = cmp_nvim_lsp.update_capabilities(vim.lsp.protocol.make_client_capabilities())


local setup_server = function(server, config)
  if not config then
    return
  end

  if type(config) ~= "table" then
    config = {}
  end

  config = vim.tbl_deep_extend("force", {
    on_attach = default_on_attach,
    capabilities = capabilities,
  }, config)

  lspconfig[server].setup(config)
end

for server, config in pairs(servers) do
  setup_server(server, config)
end
