local function start_texlab()
        vim.keymap.set('n','<leader>r',':!lualatex % <CR>')
        vim.keymap.set('n','<leader>c',':!rm *.pdf *.aux *.log <CR>')
        vim.lsp.start({
                name = 'texlab',
                cmd = {'texlab'},
        })   
end

vim.api.nvim_create_autocmd('FileType',{
        pattern = {'tex','plaintex','bib'},
        desc = 'Start Latex LSP',
        callback = start_texlab
})

