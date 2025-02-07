require("config.lazy")
require("config.colorscheme")
require("config.telescope")
require("config.treesitter")
require("config.lualine")
require("config.neo-tree")
require("config.mason")
require("config.mason-lspconfig")
require("config.nvim-lspconfig")
require("config.none-ls")

-- change the leader key
vim.g.mapleader = " "

-- remap vim keys
vim.keymap.set('i', 'jj', '<ESC>')

-- navigation keys
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- general settings
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")

-- Set for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2",
})

vim.wo.number = true
vim.wo.relativenumber = true

-- neotree specific
vim.keymap.set('n', '<leader>e', ':Neotree reveal left<CR>')


