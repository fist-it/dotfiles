return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	-- or                              , branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "[Telescope] find files" })
		vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "[Telescope] find files in current repo excl. gitignore" })
		vim.keymap.set('n', '<leader>ps', builtin.live_grep,	{ desc = "[Telescope] find phrase in files by Telescope " })

		vim.keymap.set('n', '<leader>K', ":Telescope keymaps<cr>", { desc = "[Telescope] - Search Keymaps" })
	end
}
