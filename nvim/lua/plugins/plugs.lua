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
    use { "wbthomason/packer.nvim", opt = true }

    use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
    }

    use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
      'jose-elias-alvarez/null-ls.nvim', -- Formatter

      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path', 'jose-elias-alvarez/null-ls.nvim', -- Formatter,
      'hrsh7th/cmp-cmdline',
      'hrsh7th/nvim-cmp',

    }

    use {
      'nvim-telescope/telescope.nvim',
      requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'bluz71/vim-moonfly-colors'
    use 'bluz71/vim-nightfly-guicolors'

    use {
      'feline-nvim/feline.nvim',
    }
    use 'kyazdani42/nvim-web-devicons'

    -- search
    use 'haya14busa/is.vim'
    use 'haya14busa/vim-asterisk'
    use 'osyo-manga/vim-anzu'

    use {
      "lewis6991/gitsigns.nvim",
      event = "BufRead",
      config = function()
        require("gitsigns").setup({
          signcolumn         = false, -- Toggle with `:Gitsigns toggle_signs`
          numhl              = true, -- Toggle with `:Gitsigns toggle_numhl`
          linehl             = false, -- Toggle with `:Gitsigns toggle_linehl`
          word_diff          = false, -- Toggle with `:Gitsigns toggle_word_diff`
          current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
        })
      end
    }
    use "terrortylor/nvim-comment"
    use 'edkolev/tmuxline.vim'
    use 'simnalamburt/vim-mundo'
    use 'mhinz/vim-startify'
    -- surrounds
    use 'jiangmiao/auto-pairs'
    use 'machakann/vim-sandwich'
  end
)
