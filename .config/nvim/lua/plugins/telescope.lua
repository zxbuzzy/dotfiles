return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  opts = {
    pickers = {
      find_files = {
        hidden = true,
        file_ignore_patterns = { "node_modules", ".git", ".venv", "venv", ".obsidian" },
      },
      live_grep = {
        file_ignore_patterns = { "node_modules", ".git", ".venv", "venv", ".obsidian" },
        additional_args = function(opts)
          return { "--hidden" }
        end,
      },
    },
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
    },
  },
}
