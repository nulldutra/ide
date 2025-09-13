require("user.plugins")
require("user.lsp")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true

vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>")

vim.cmd("colorscheme gruvbox")
vim.o.background = "dark"

