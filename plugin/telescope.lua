builtin = require('telescope.builtin')
vim.api.nvim_create_autocmd('Filetype',{
    pattern = {'*'},
    callback = function()
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fc', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope search git' })
    end
})
