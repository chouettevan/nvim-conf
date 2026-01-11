local function start_bashlsp()
        vim.keymap.set('n','<leader>r',':terminal bash % <CR>')
        vim.lsp.start({
            name = 'bash-language-server',
            cmd = {'bash-language-server','start'},
        })   
end
vim.api.nvim_create_autocmd('FileType',{
        pattern = {'sh','bash'},
        desc = 'Start bash LSP',
        callback = start_bashlsp
})

