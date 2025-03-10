-- change the leader key
vim.g.mapleader = " "

-- use system clipboard
vim.opt.clipboard = "unnamedplus"

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
vim.cmd("set list")

-- Set for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  command = "setlocal tabstop=2 shiftwidth=2 softtabstop=2",
})

vim.wo.number = true
vim.wo.relativenumber = true


