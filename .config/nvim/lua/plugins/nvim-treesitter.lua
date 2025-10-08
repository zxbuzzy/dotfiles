return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'master', 
    lazy = false, 
    build = ":TSUpdate",
    opts = {
      ensure_installed = { "lua", "go", "yaml" },
      highlight = {
        enable = true
      }
    }
}
