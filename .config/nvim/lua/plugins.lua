-- Initialize Packer
local packer = require('packer')

packer.init({
  git = { clone_timeout = 300 }, -- Optional timeout for git clones in seconds
})



-- Load plugins
packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- functionality
  use 'jay-babu/mason-nvim-dap.nvim'
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
  use {
    'stevearc/oil.nvim',
    requires = {
      "nvim-tree/nvim-web-devicons"
    }
  }
  use {
    "jiaoshijie/undotree",
    requires = {
      "nvim-lua/plenary.nvim",
    },
  }
  use 'windwp/nvim-ts-autotag'
  use "sontungexpt/url-open"

  -- debugging
  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui",
    requires = {
      "nvim-neotest/nvim-nio"
    }
  }
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  -- visual
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  }
  use 'olivercederborg/poimandres.nvim'
  use 'ryanoasis/vim-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'norcalli/nvim-colorizer.lua'
  use 'anuvyklack/pretty-fold.nvim'

  -- lsp
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use { 'folke/trouble.nvim',
    requires = {
      "nvim-tree/nvim-web-devicons"
    }
  }
  use 'simrat39/rust-tools.nvim'


  -- markdown preview
  use { "ellisonleao/glow.nvim" }

  -- 3rd party
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
end)
