local function start_clangd()
        vim.keymap.set('n','<leader>r',':terminal gcc % && ./a.out <CR>')
        local root_files = {'Makefile'}
        local paths = vim.fs.find(root_files,{stop = vim.env.HOME})
        local root_dir = vim.fs.dirname(paths[1])
        if root_dir == nil then
            root_dir = vim.fn.getcwd()
        end
        print(root_dir)
        vim.lsp.start({
            name = 'clangd',
            cmd = {'clangd'},
            root_dir = root_dir
        })   
end
vim.api.nvim_create_autocmd('FileType',{
        pattern = {'c','cpp'},
        desc = 'Start C/C++ LSP',
        callback = start_clangd
})

