return {
  "nvim-telescope/telescope.nvim",
  branch = "master",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        file_ignore_patterns = { "node_modules", ".git/", ".venv", ".obsidian" },
      },
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git/", ".venv", ".obsidian" },
        additional_args = function(opts)
          return { "--hidden" }
        end,
      },
    },
  },
}
