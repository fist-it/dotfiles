return {
  "rcarriga/nvim-notify",

  init = function ()
    require"notify".setup {
      timeout = 500,
    }
  end
}
