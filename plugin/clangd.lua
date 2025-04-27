local function start_clangd()
        vim.keymap.set('n','<leader>r',':terminal gcc % && ./a.out <CR>')
        vim.lsp.start({
                name = 'clangd',
                cmd = {'clangd'}
        })   
end

vim.api.nvim_create_autocmd('FileType',{
        pattern = {'c','cpp'},
        desc = 'Start C/C++ LSP',
        callback = start_clangd
})

