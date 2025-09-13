-- lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  error("lazy.nvim não encontrado! Clonagem falhou?")
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Theme
  { "morhetz/gruvbox" },
  { "nvim-tree/nvim-web-devicons" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim" },

  -- NerdTree
  { "preservim/nerdtree" },

  -- Autocomplete
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },

  -- Syntax highlighting
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
})

