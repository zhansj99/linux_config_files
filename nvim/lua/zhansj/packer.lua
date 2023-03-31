-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- nvimtree
  use {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
  }

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- lsp
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- autocompletion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline'
  }

  -- snippets
  use {
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets'
  }

  -- autopair
  use {
  	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- alpha
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }

  -- indent blankline
  use {
    "lukas-reineke/indent-blankline.nvim",
  }

  -- impatient
  use {
    'lewis6991/impatient.nvim',
  }

  -- gitsign
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  }

  -- toggleterm
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
  }

  -- bufferline
  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons',
  }

  -------------------- color themes --------------------
  use {
    'morhetz/gruvbox',
  }

  use {
    'luisiacc/gruvbox-baby',
    branch = 'main',
    config = function() vim.cmd.colorscheme("gruvbox-baby") end
  }

  use {
    'folke/tokyonight.nvim'
  }

end)
