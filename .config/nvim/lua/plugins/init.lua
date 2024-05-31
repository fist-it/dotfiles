return {

  -- functionality
  { 'windwp/nvim-ts-autotag' },

  -- visual
  { 'olivercederborg/poimandres.nvim' },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  { 'norcalli/nvim-colorizer.lua' },

  -- markdown preview
  { 'ellisonleao/glow.nvim' },

  -- 3rd party
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  }
}
