

vim.g.netrw_bufsettings = 'nu rnu'
vim.api.nvim_create_autocmd('Filetype',{
    pattern = 'netrw',
    callback = function()
        vim.keymap.set('n','<leader>d','D')
    end
})



