require("nvim-treesitter").setup({{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "javascript", "html", "python", "rust" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }})
