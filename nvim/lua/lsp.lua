local lspconfig = require 'lspconfig'
local cmp_nvim_lsp = require 'cmp_nvim_lsp'

local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require("nvim-lsp-installer").setup {}
-- Uncomment this for debugging in ~/.cache/nvim/lsp.log
-- vim.lsp.set_log_level("debug")

-- Thanks TJ!
local servers = {
  gopls         = true,
  rust_analyzer = true,
  elixirls      = {
    cmd = { "elixirls" },
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
  tsserver      = {
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = {
      "javascript",
      "javascriptreact",
      "javascript.jsx",
      "typescript",
      "typescriptreact",
      "typescript.tsx",
    },
  },
  sumneko_lua   = {
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


-- Diagnostics
local handlers = {
  ["textDocument/publishDianostics"] = vim.diagnostic.config({
    underline = true,
    virtual_text = true,
    signs = false,
    update_in_insert = false,
  })
}

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

  vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
end

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
    handlers = handlers,
  }, config)

  lspconfig[server].setup(config)
end

for server, config in pairs(servers) do
  setup_server(server, config)
end
