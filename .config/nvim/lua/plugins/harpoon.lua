return {
  'ThePrimeagen/harpoon',
  opts = {},
  init = function()
    local ui = require 'harpoon.ui'
    local mark = require 'harpoon.mark'

    vim.keymap.set("n", "<leader>a", function() mark.add_file() end, { desc = "add file to harpoon" });
    vim.keymap.set("n", "<leader><leader>", function() ui.toggle_quick_menu() end, { desc = "toggle harpoon quick menu" });

    vim.keymap.set("n", "<leader>h", function() ui.nav_file(1) end, { desc = "navigate to harpoon file 1" });
    vim.keymap.set("n", "<leader>j", function() ui.nav_file(2) end, { desc = "navigate to harpoon file 2" });
    vim.keymap.set("n", "<leader>k", function() ui.nav_file(3) end, { desc = "navigate to harpoon file 3" });
    vim.keymap.set("n", "<leader>l", function() ui.nav_file(4) end, { desc = "navigate to harpoon file 4" });
  end
}
