local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "find files by fzf" } )
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "find files by fzf excl. gitignore" } )
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({
    search = vim.fn.input("Grep > ")
  });
end,
{ desc = "find phrase in files by fzf"})

vim.keymap.set('n', '<leader>k', ":Telescope keymaps<cr>", { desc = "[Telescope] - Search Keymaps"} )
