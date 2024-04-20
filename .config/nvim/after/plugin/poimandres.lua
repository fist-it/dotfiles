local poimandres = require('poimandres')

poimandres.setup {
  bold_vert_split = false,         -- use bold vertical separators
  dim_nc_background = true,        -- dim 'non-current' window backgrounds
  disable_background = false,      -- disable background
  disable_float_background = true, -- disable background for floats
  disable_italics = false,         -- disable italics
}


-- lua set scheme
vim.cmd('colorscheme poimandres')
