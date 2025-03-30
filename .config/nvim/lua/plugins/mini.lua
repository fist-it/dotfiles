return {
	'echasnovski/mini.nvim',
	version = false,
	init = function()
		require('mini.ai').setup()
    require('mini.animate').setup({
      cursor = {
        enable = false
      },
      resize = {
        enable = false
      },
      open = {
        enable = false
      },
      close = {
        enable = false
      },
    })
		require('mini.pairs').setup()
	end
}

-- test ajwndakjdn awkdjnawkjdn test
