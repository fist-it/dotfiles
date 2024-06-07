return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = "find files by fzf" })
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "find files by fzf excl. gitignore" })
    vim.keymap.set('n', '<leader>ps', function()
        vim.ui.input({ prompt = 'Search for: ' }, function(input)
          if input then
            require('telescope.builtin').grep_string({ search = input })
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), 'n', true)
          end
        end)
      end,
      { desc = "find phrase in files by Telescope " })

    vim.keymap.set('n', '<leader>k', ":Telescope keymaps<cr>", { desc = "[Telescope] - Search Keymaps" })
  end
}
