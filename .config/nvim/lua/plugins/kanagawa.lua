return {
  "rebelot/kanagawa.nvim",
  config = function()
    -- Default options:
    require('kanagawa').setup({
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = { bold = true },
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = true, -- dim inactive window `:h hl-NormalNC`
      terminalColors = false, -- define vim.g.terminal_color_{0,17}
      colors = {           -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
---@diagnostic disable-next-line: unused-local
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave",  -- Load "wave" theme when 'background' option is not set
      background = {   -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus"
      },
    })

    -- setup must be called before loading
    vim.cmd("colorscheme kanagawa")
  end
}
