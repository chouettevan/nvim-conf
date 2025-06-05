vim.g.netrw_bufsettings = 'nu rnu'
vim.g.netrw_keepdir = 0
vim.api.nvim_create_autocmd('Filetype', {
  pattern = 'netrw',
  callback = function()
    vim.keymap.set('n', '<leader>d', 'D')
  end
})
