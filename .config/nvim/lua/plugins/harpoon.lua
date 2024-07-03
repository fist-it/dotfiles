return {
  'ThePrimeagen/harpoon',
  opts = {},
  init = function()

    local ui = require 'harpoon.ui'
    local mark = require 'harpoon.mark'

    vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "add file to harpoon" });
    vim.keymap.set("n", "<leader>l", function() ui.nav_next() end, { desc = "go to next harpoon file" });
    vim.keymap.set("n", "<leader>h", function() ui.nav_prev() end, { desc = "go to prev harpoon file" });
    vim.keymap.set("n", "<leader><leader>", function() ui.toggle_quick_menu() end, { desc = "toggle harpoon quick menu" });
  end
}
