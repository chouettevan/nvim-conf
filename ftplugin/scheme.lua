vim.lsp.start({
    cmd = { 
      'scheme-langserver', 
      '/tmp/scheme-langserver.log', 
      '-m enable',
      '-t disable'},
})

