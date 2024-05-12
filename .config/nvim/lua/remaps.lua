


-- buffer operations
vim.api.nvim_set_keymap('n', '<leader>w', ':bd<CR>', { noremap = true, silent = true, desc = "close current buffer" })
vim.api.nvim_set_keymap('n', '<leader>n', ':bn<CR>', { noremap = true, silent = true, desc = "go to next buffer" })


-- command mode ctrl+hjkl navigation instead of arrows
vim.api.nvim_set_keymap('c', '<C-h>', '<Left>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-j>', '<Down>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-k>', '<Up>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-l>', '<Right>', { noremap = true })

-- step out from current file to oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- url
vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>")
vim.keymap.set("n", "gha", "<esc>:URLOpenHighlightAll<cr>")
vim.keymap.set("n", "ghc", "<esc>:URLOpenHighlightAllClear<cr>")

-- trouble
vim.keymap.set("n", "<leader>T", function() require("trouble").toggle() end, { desc = "toggle Trouble view" });

vim.keymap.set("n", "J", "mzJ`z")

-- move selected lines with indent (shoutout theprimeagen)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format() end, { desc = "format current buffer" });
