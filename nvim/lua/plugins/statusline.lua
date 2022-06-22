vim.o.termguicolors = true

if not pcall(require, "feline") then
  return
end

local colors = {
  bg = '#282c34',
  fg = '#abb2bf',
  yellow = '#e0af68',
  cyan = '#56b6c2',
  darkblue = '#081633',
  green = '#98c379',
  orange = '#d19a66',
  violet = '#a9a1e1',
  magenta = '#c678dd',
  blue = '#61afef',
  red = '#e86671'
}

local vi_mode_colors = {
  NORMAL = colors.green,
  INSERT = colors.red,
  VISUAL = colors.magenta,
  OP = colors.green,
  BLOCK = colors.blue,
  REPLACE = colors.violet,
  ['V-REPLACE'] = colors.violet,
  ENTER = colors.cyan,
  MORE = colors.cyan,
  SELECT = colors.orange,
  COMMAND = colors.green,
  SHELL = colors.green,
  TERM = colors.green,
  NONE = colors.yellow
}


local lsp = require 'feline.providers.lsp'
local vi_mode_utils = require 'feline.providers.vi_mode'

local lsp_get_diag = function(str)
  local count = vim.lsp.diagnostic.get_count(0, str)
  return (count > 0) and ' ' .. count .. ' ' or ''
end

-- LuaFormatter off
local comps = {
  vi_mode = {
    left = {
      provider = function()
        return vi_mode_utils.get_vim_mode()
      end,
      hl = function()
        local val = {
          name = vi_mode_utils.get_mode_highlight_name(),
          fg = vi_mode_utils.get_mode_color(),
          -- fg = colors.bg
        }
        return val
      end,
      right_sep = ' '
    },
  },
  file = {
    info = {
      icon = '',
      provider = {
        name = 'file_info',
        opts = {
          type = 'unique',
          file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          file_modified_icon = '',
          -- file_modified_icon = '',
          -- file_modified_icon = '',
          -- file_modified_icon = 'ﱐ',
          -- file_modified_icon = '',
          -- file_modified_icon = '',
          -- file_modified_icon = '',
        }
      },
      hl = {
        fg = colors.blue,
        style = 'bold'
      }
    },
    full = {
      icon = "",
      provider = {
        name = 'file_info',
        icon = '',
        opts = {
          type = 'full-path',
          file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          -- file_readonly_icon = '  ',
          -- file_modified_icon = '',
          file_modified_icon = '',
          -- file_modified_icon = '',
          -- file_modified_icon = 'ﱐ',
          -- file_modified_icon = '',
          -- file_modified_icon = '',
          -- file_modified_icon = '',
        }
      },
      hl = {
        fg = colors.blue,
        style = 'bold'
      }
    },
    position = {
      provider = 'position',
      left_sep = ' ',
      hl = {
        fg = colors.cyan,
        -- style = 'bold'
      }
    },
    type = {
      provider = 'file_type',
      opts = {
        filetype_icon = true,
      },
      hl = function()
        local val        = {}
        local filename   = vim.fn.expand('%:t')
        local extension  = vim.fn.expand('%:e')
        local icon, name = require 'nvim-web-devicons'.get_icon(filename, extension)
        if icon ~= nil then
          val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg')
        else
          val.fg = 'white'
        end
        val.bg = 'bg'
        val.style = 'bold'
        return val
      end,
      right_sep = ' '
    }
  },
  line_percentage = {
    provider = 'line_percentage',
    left_sep = ' ',
    hl = {
      style = 'bold'
    }
  },
  scroll_bar = {
    provider = 'scroll_bar',
    left_sep = ' ',
    hl = {
      fg = colors.blue,
      style = 'bold'
    }
  },
  diagnos = {
    err = {
      -- provider = 'diagnostic_errors',
      provider = function()
        return '' .. lsp_get_diag("Error")
      end,
      -- left_sep = ' ',
      enabled = function() return lsp.diagnostics_exist('Error') end,
      hl = {
        fg = colors.red
      }
    },
    warn = {
      -- provider = 'diagnostic_warnings',
      provider = function()
        return '' .. lsp_get_diag("Warn")
      end,
      -- left_sep = ' ',
      enabled = function() return lsp.diagnostics_exist('Warn') end,
      hl = {
        fg = colors.yellow
      }
    },
    info = {
      -- provider = 'diagnostic_info',
      provider = function()
        return '' .. lsp_get_diag("Info")
      end,
      -- left_sep = ' ',
      enabled = function() return lsp.diagnostics_exist('Info') end,
      hl = {
        fg = colors.blue
      }
    },
    hint = {
      -- provider = 'diagnostic_hints',
      provider = function()
        return '' .. lsp_get_diag("Hint")
      end,
      -- left_sep = ' ',
      enabled = function() return lsp.diagnostics_exist('Hint') end,
      hl = {
        fg = colors.cyan
      }
    },
  },
  lsp = {
    name = {
      provider = 'lsp_client_names',
      -- left_sep = ' ',
      right_sep = ' ',
      -- icon = '  ',
      icon = '慎',
      hl = {
        fg = colors.yellow
      }
    }
  },
  git = {
    branch = {
      provider = 'git_branch',
      -- icon = ' ',
      icon = ' ',
      left_sep = ' ',
      hl = {
        fg = colors.violet,
        style = 'bold'
      },
    },
    add = {
      provider = 'git_diff_added',
      hl = {
        fg = colors.green
      }
    },
    change = {
      provider = 'git_diff_changed',
      hl = {
        fg = colors.orange
      }
    },
    remove = {
      provider = 'git_diff_removed',
      hl = {
        fg = colors.red
      }
    }
  }
}

local components = {
  active = {},
  inactive = {},
}

table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.inactive, {})
table.insert(components.inactive, {})
table.insert(components.inactive, {})

table.insert(components.active[1], comps.vi_mode.left)
table.insert(components.active[1], comps.file.info)
table.insert(components.active[1], comps.git.branch)
table.insert(components.active[1], comps.git.add)
table.insert(components.active[1], comps.git.change)
table.insert(components.active[1], comps.git.remove)
table.insert(components.active[3], comps.diagnos.err)
table.insert(components.active[3], comps.diagnos.warn)
table.insert(components.active[3], comps.diagnos.hint)
table.insert(components.active[3], comps.diagnos.info)
table.insert(components.active[3], comps.file.type)
table.insert(components.active[3], comps.file.position)
table.insert(components.active[3], comps.line_percentage)
table.insert(components.active[3], comps.scroll_bar)
table.insert(components.active[3], comps.vi_mode.right)

table.insert(components.inactive[1], comps.file.full)


-- require'feline'.setup {}
require 'feline'.setup {
  colors = { bg = colors.bg, fg = colors.fg },
  components = components,
  vi_mode_colors = vi_mode_colors,
  force_inactive = {
    filetypes = {
      'packer',
      'NvimTree',
      'fugitive',
      'fugitiveblame',
      'dapui_watches',
      'dapui_stacks',
      'dapui_breakpoints',
      'dapui_scopes',
      'dapui_console',
      'dap-repl',
      'startify',
      'netrw'
    },
    buftypes = { 'terminal' },
    bufnames = {}
  }
}
