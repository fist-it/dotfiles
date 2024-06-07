return {
  'olivercederborg/poimandres.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('poimandres').setup {
      bold_vert_split = false,         -- use bold vertical separators
      dim_nc_background = true,        -- dim 'non-current' window backgrounds
      disable_background = false,      -- disable background
      disable_float_background = true, -- disable background for floats
      disable_italics = false,         -- disable italics
    }
  end,

  -- optionally set the colorscheme within lazy config
  init = function()
    local color = "poimandres"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = '#0e0e0e' })

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = '#0e0e0e' })
  end
}

