-- buffer operations
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', { noremap = true, silent = true, desc = "close current buffer" })


-- command mode ctrl+hjkl navigation instead of arrows
vim.api.nvim_set_keymap('c', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-l>', '<Right>', { noremap = true })

-- step out from current file to oil
vim.keymap.set("n", "-", function()
  require("oil").open()
end, { desc = "Open parent directory" })

-- merge line bellow with current without moving the cursor
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join line below with current" })

-- move selected lines with indent (from theprimeagen)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "Format current buffer" });

vim.keymap.set("n", "<leader>z", function()
  require("zen-mode").toggle({
    window = {
      width = .85 -- width will be 85% of the editor width
    }
  })
end, { desc = "Toggle Zen Mode" });
