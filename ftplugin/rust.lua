vim.keymap.set('n','<leader>r',':terminal cargo run <CR>')
vim.lsp.start({
    cmd = {'rust-analyzer'},
})


