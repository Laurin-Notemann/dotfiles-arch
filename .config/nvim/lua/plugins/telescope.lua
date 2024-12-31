return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>pf', function()
      builtin.find_files({
        find_command = {
          "rg",
          "--glob=!**/node_modules/**",
          "--glob=!**/.git/**",
          "--glob=!**/.next/**",
          "--glob=!**/.cache/**",
          "--glob=!**/.vscode/**",
          "--glob=!**/.idea/**",
          "--hidden",
          "--files",
        },
        no_ignore = true
      })
    end, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)

  end
}
