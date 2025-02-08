return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
				ensure_installed = {"c", "cpp", "lua", "vim", "vimdoc", "query", "javascript", "html", "python", "rust"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
	},
}

