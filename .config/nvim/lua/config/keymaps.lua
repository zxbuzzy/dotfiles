local builtin = require("telescope.builtin")
local conform = require("conform")
local keymap = vim.keymap

-- navigation keymaps
keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- better escape
keymap.set("i", "jk", "<ESC>", { desc = "Quit insert mode" })

-- resize keymap
keymap.set("n", "<C-w><Up>", "<cmd>resize +3<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-w><Down>", "<cmd>resize -3<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-w><Left>", "<cmd>vertical resize -3<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-w><Right>", "<cmd>vertical resize +3<cr>", { desc = "Increase Window Width" })

-- neotree keymap
keymap.set("n", "<leader>e", ":Neotree reveal left<CR>", { desc = "Open Neotree" })

-- split window
keymap.set("n", "ss", ":split<Return>", { desc = "Horizontal split window" })
keymap.set("n", "sv", ":vsplit<Return>", { desc = "Vertical split window" })

-- telescope
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- QoL keymaps
keymap.set("n", "<leader>nh", "<cmd>noh<cr>", { desc = "No highlight after seach" })

keymap.set("n", "gcf", function()
  if conform.format() then
    vim.notify("File formatted")
  else
    vim.notify("Formatter not found")
  end
end, { desc = "Format the current file" })
