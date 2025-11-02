return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "go", "yaml", "python" },
    auto_install = true,
    highlight = {
      enable = true,
    },
  },
}
