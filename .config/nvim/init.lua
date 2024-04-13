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
  use 'mbbill/undotree'
  use 'windwp/nvim-ts-autotag'


  -- visual
  use 'ryanoasis/vim-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'nvim-treesitter/nvim-treesitter'
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use 'norcalli/nvim-colorizer.lua'
  use 'anuvyklack/pretty-fold.nvim'
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
  use 'simrat39/rust-tools.nvim'


  -- markdown preview
  use { "ellisonleao/glow.nvim" }

  -- 3rd party
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
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

-- Airline configuration
vim.g.airline_theme = 'minimalist'
vim.g['airline#extensions#tabline#enabled'] = 1
vim.g['airline#extensions#tabline#formatter'] = 'unique_tail_improved'
vim.g.airline_powerline_fonts = 1


vim.cmd [[
  colorscheme rose-pine
  let g:rose_pine_variant = 'dawn'
  ]]
