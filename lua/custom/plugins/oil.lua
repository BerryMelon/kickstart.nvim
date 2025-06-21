return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { 'nvim-tree/nvim-web-devicons', opts = {} } },
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      view_options = { show_hidden = true },
    }
    -- Open parent directory in current windows
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open Oil' })
    -- vim.keymap.set('n', '-', require('oil').toggle_float, { desc = 'Open Oil' })
  end,
}
