return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "lua",
      "go",
      "python",
      "yaml",
      "javascript",
      "typescript",
      "rust",
      "terraform",
      "hcl",
      "bash",
      "regex",
      "kdl",
    })
  end,
}
