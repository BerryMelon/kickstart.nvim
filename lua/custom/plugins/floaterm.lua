return {
  'voldikss/vim-floaterm',
  config = function()
    vim.keymap.set('n', '<leader>tt', '<CMD>FloatermToggle<CR>', { desc = 'Toggle Floaterm Window' })
    vim.keymap.set('n', '<leader>tn', '<CMD>FloatermNew --cwd=<buffer> zsh<CR>', { desc = 'Open New Floaterm Window' })
    vim.keymap.set('n', '<leader>th', '<CMD>FloatermPrev<CR>', { desc = 'Prev Floaterm Window' })
    vim.keymap.set('n', '<leader>tl', '<CMD>FloatermNext<CR>', { desc = 'Next Floaterm Window' })
    vim.keymap.set('n', '<leader>tq', '<CMD>FloatermKill<CR>', { desc = 'Kill Floaterm Window' })
  end,
}
