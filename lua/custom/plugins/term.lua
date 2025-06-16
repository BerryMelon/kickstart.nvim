return {
  vim.keymap.set('n', '<leader>tt', function()
    vim.cmd.new()
    vim.cmd.term()
    vim.cmd.wincmd 'J'
    vim.api.nvim_win_set_width(0, 80)
    vim.cmd 'startinsert'
    vim.opt.number = false
  end),
}
