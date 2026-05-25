local function start_bashlsp(args)
        vim.keymap.set('n','<leader>r',':terminal bash % <CR>')
        vim.lsp.start({
            name = 'scheme-langserver',
            cmd = {'/home/hollys/Downloads/scheme-langserver',
            '-l lsp.log',
            '-m enable',
            '-t disable'},
            root_dir = vim.fs.root(args.buf,{'.gitignore'})
        })   
end
vim.api.nvim_create_autocmd('FileType',{
        pattern = {'*.sld','*.scm'},
        desc = 'Start scheme LSP',
        callback = start_bashlsp
})

