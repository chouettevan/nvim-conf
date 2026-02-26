vim.keymap.set('n','<leader>r',':terminal lean % <CR>')
vim.lsp.start({
    cmd = {'lean','--server'},
})

