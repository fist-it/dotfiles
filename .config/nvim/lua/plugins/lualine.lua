return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'kanagawa',
        -- component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          -- tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch',
          -- {
          --   '%S',
          --   color = { fg = "#e0def4" },
          -- }
        },
        lualine_c = { 'diff' },
        lualine_x = { 'filetype', { 'fileformat', symbols = { unix = '', dos = '', mac = '' } } },
        lualine_y = { 'hostname', 'diagnostics' },
        lualine_z = { 'selectioncount' }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' }
      },
      -- tabline = {
      --   lualine_a = {},
      --   lualine_b = {
      --     -- 'filename'
      --   },
      --   lualine_c = {
      --     -- 'buffers'
      --   },
      --   lualine_x = {},
      --   lualine_y = {},
      --   lualine_z = {}
      -- },
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    }
  end
}
