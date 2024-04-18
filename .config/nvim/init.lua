-- ~/.config/nvim/init.lua


-- Install Packer if not already installed
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- Initialize Packer
local packer = require('packer')

packer.init({
  git = { clone_timeout = 300 }, -- Optional timeout for git clones in seconds
})


vim.g.mapleader = ' '

-- Load plugins
packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- functionality
  use 'preservim/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
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


  -- visual

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

  -- for learning
  use { 'm4xshen/hardtime.nvim',
    requires = {
      { "nvim-lua/plenary.nvim" },
      { "MunifTanjim/nui.nvim" }
    }
  }
end)


-- inline configuration
vim.cmd [[
  set updatetime=100
  set number relativenumber
  set tw=80
  set shiftwidth=2
  set expandtab
  set tabstop=2
  set softtabstop=2
  set foldmethod=marker
  set nowrap
 ]]

vim.g.rust_recommended_style = 0;



vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-l>', '<Right>', { noremap = true })
