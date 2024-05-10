vim.opt.guicursor = ""

vim.opt.updatetime=100

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tw=80
vim.opt.shiftwidth=2
vim.opt.expandtab = true
vim.opt.tabstop=2
vim.opt.softtabstop=2

vim.opt.foldmethod = "marker"
vim.opt.wrap = false

-- instead of nvim backups/swap files, use undotree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.opt.mouse = ""
