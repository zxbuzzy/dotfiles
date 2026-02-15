return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "master",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "go",
      "lua",
      "python",
      "yaml",
      "javascript",
      "typescript",
      "rust",
      "terraform",
      "hcl",
      "bash",
      "regex",
    },
    highlight = {
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
