local root_files = {"pyproject.toml","setup.py"}
local paths = vim.fs.find(root_files,{stop = vim.env.HOME})
local root_dir = vim.fs.dirname(paths[1])

vim.keymap.set('n','<leader>r',':terminal python3 % <CR>')
if root_dir then
    print("hi")
    vim.lsp.start({
        cmd = {'pyright-langserver','--stdio'},
        root_dir = root_dir,
    })
else
    print("ho")
    vim.lsp.start({
        cmd = {'pyright-langserver','--stdio'},
    })
end

