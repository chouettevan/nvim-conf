local root_files = { 'go.mod'}
local paths = vim.fs.find(root_files,{stop=vim.env.HOME})
local root_dir = vim.fs.dirname(paths[1])


if root_dir then 
    vim.keymap.set('n','<leader>r',function()
        local command = ':terminal cd ' .. root_dir .. ' && go build -o a.out && ./a.out '
        vim.cmd(command)
    end
    )
    vim.lsp.start({
            cmd = {'gopls'},
            root_dir = root_dir,
    })
else
    vim.keymap.set('n','<leader>r',':terminal go run % <CR>')
    vim.lsp.start({
            cmd = {'gopls'},
    })
end
