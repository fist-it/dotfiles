vim.g.NERDTreeShowHidden = 1;
vim.g.NERDTreeFileLines = 1
vim.g.NERDTreeDirArrowExpandable = '▸'
vim.api.nvim_set_keymap('n', '<leader>t', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
