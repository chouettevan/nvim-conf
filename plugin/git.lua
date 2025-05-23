vim.api.nvim_create_autocmd('Filetype', {
  pattern = { '*' },
  callback = function()
    vim.keymap.set('n', '<leader>ga', ':!git add % <CR>', { desc = 'Git add' })
    vim.keymap.set('n', '<leader>gm', ':!git commit -m "', { desc = 'Git commit' })
    vim.keymap.set('n', '<leader>gp', ':!git push <CR>', { desc = 'Git status' })
    vim.keymap.set('n', '<leader>gs', ':!git status <CR>', { desc = 'Git push' })
    vim.keymap.set('n', '<leader>gg', ':!git pull <CR>', { desc = 'Git pull' })
    vim.keymap.set('n', '<leader>gc', ':!git checkout -B ', { desc = 'Git change branch and create' })
    vim.keymap.set('n', '<leader>gb', ':!git checkout', { desc = 'Git change branch' })
    vim.keymap.set('n', '<leader>gx', ':!git clean -dfx', { desc = 'Git clean untracked' })
  end
})
