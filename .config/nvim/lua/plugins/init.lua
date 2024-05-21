return {

  -- functionality
  {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  },
  {
    'stevearc/oil.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    "pocco81/true-zen.nvim"
  },
  {
    'jiaoshijie/undotree',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },
  { 'windwp/nvim-ts-autotag' },
  { 'sontungexpt/url-open' },


  -- visual
  {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },
  { 'olivercederborg/poimandres.nvim' },
  { 'ryanoasis/vim-devicons' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'norcalli/nvim-colorizer.lua' },

  -- lsp
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    dependencies = {
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
  },
  {
    'folke/trouble.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  { 'simrat39/rust-tools.nvim' },


  -- markdown preview
  { 'ellisonleao/glow.nvim' },

  -- 3rd party
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  }
}
