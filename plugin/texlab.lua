local function start_texlab()
        vim.keymap.set('n','<leader>r',':! lualatex % <CR>')
        vim.keymap.set('n','<leader>b',function()
            local line_num = tonumber(vim.fn.getpos('.')[2])
            local col_num = tonumber(vim.fn.getpos('.')[3])
            local cmd = ':' .. tostring(line_num) .. 'copy '  
            cmd = cmd .. ' ' .. tostring(line_num) .. ' <CR>'
            vim.cmd(cmd)
            vim.cmd(':' .. tostring(line_num+1) .. 's/begin/end/')
            vim.fn.cursor(line_num,col_num)
        end)
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

