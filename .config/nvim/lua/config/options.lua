-- Basic settings
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2 -- Amount to indent with << and >>
vim.opt.tabstop = 2 -- How many spaces are shown per Tab
vim.opt.softtabstop = 2 -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line

-- Show relative numbers
vim.o.number = true
vim.o.relativenumber = true

-- split configuration
vim.o.splitright = true
vim.o.splitbelow = true

-- use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Show line under cursor
vim.opt.cursorline = true

-- Enable mouse mode (just in case)
vim.opt.mouse = "a"

-- Enable break indent
vim.opt.breakindent = true

-- Case insensitive search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn
vim.opt.signcolumn = "yes"
