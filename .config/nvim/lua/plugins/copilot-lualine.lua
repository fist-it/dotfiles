return {
  'AndreM222/copilot-lualine',
  init = function()
    require'lualine'.setup({
      options = {
        icons_enabled = true,
        -- theme = rose-pine,
        disabled_filetypes = {},
        always_divide_middle = true
      },
    })
  end
}
