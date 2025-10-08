return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      pickers = {
        find_files = {
          hidden = true,
          file_ignore_patterns = { 'node_modules', '.git', '.venv' },
        },
        live_grep = {
          file_ignore_patterns = { 'node_modules', '.git', '.venv' },
          additional_args = function()
            return { "--hidden" }
          end
        }
      }
    }
}
