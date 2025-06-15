return {
  vim.api.nvim_create_autocmd('TermOpen', {
    group = vim.api.nvim_create_augroup('custom-term-open', {
      clear = true,
    }),
    callback = function()
      vim.opt.number = false
      vim.opt.relativenumber = false
    end,
  }),
  vim.keymap.set('n', '<leader>tt', function()
    vim.cmd.new()
    vim.cmd.term()
    vim.cmd.wincmd 'J'
    vim.api.nvim_win_set_width(0, 80)
    vim.cmd 'startinsert'
    print 'testing'
  end),
}
