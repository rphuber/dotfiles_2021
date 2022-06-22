local cmd = vim.cmd
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute "packadd packer.nvim"
end


--setup packer.nvim
cmd("packadd packer.nvim")
cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

return require("packer").startup(
  function(use)
    -- use packer to manage itself
    use { "wbthomason/packer.nvim", opt = true }

    -- treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
    }

    -- lsp and associated plugins
    use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
      'jose-elias-alvarez/null-ls.nvim', -- Formatter

      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',
    }

    -- debugging
    use {
      'mfussenegger/nvim-dap',
      'leoluz/nvim-dap-go',
      'rcarriga/nvim-dap-ui',
      'theHamsta/nvim-dap-virtual-text',
      'nvim-telescope/telescope-dap.nvim'
    }

    -- fuzzy finding with telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- search
    use 'haya14busa/is.vim'
    use 'haya14busa/vim-asterisk'
    use 'osyo-manga/vim-anzu'

    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }
    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
    }
    use {
      "folke/twilight.nvim",
      config = function()
        require("twilight").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }
    use 'folke/lsp-colors.nvim'
    use 'folke/tokyonight.nvim'

    use 'bluz71/vim-moonfly-colors'
    use 'bluz71/vim-nightfly-guicolors'

    use {
      'feline-nvim/feline.nvim',
    }
    use 'kyazdani42/nvim-web-devicons'

    use {
      "lewis6991/gitsigns.nvim",
      event = "BufRead",
      config = function()
        require("gitsigns").setup({
          signcolumn         = false, -- Toggle with `:Gitsigns toggle_signs`
          numhl              = true, -- Toggle with `:Gitsigns toggle_numhl`
          linehl             = false, -- Toggle with `:Gitsigns toggle_linehl`
          word_diff          = false, -- Toggle with `:Gitsigns toggle_word_diff`
          current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        })
      end
    }

    -- comment
    use "terrortylor/nvim-comment"

    use "tpope/vim-repeat"

    use 'edkolev/tmuxline.vim'
    use 'simnalamburt/vim-mundo'
    use 'mhinz/vim-startify'
    use 'jparise/vim-graphql'

    -- surrounds
    use 'jiangmiao/auto-pairs'
    use 'machakann/vim-sandwich'
  end
)
