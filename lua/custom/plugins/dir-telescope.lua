return {
  'princejoogie/dir-telescope.nvim',
  -- telescope.nvim is a required dependency
  requires = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('dir-telescope').setup {
      -- these are the default options set
      hidden = true,
      no_ignore = false,
      show_preview = true,
      follow_symlinks = false,
    }
    vim.keymap.set('n', '<leader>sd', '<cmd>FileInDirectory<CR>', { desc = '[S]earch [D]irectory files' })
    vim.keymap.set('n', '<leader>sx', '<cmd>GrepInDirectory<CR>', { desc = '[S]earch Directory files in Grep [X]' })
  end,
}
