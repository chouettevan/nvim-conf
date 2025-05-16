builtin = require('telescope.builtin')
actions = require("telescope.actions")
vim.api.nvim_create_autocmd('Filetype',{
    pattern = {'*'},
    callback = function()
        require('telescope').setup{
            defaults = {
                mappings = {
                  i = {
                    ["<CR>"] = actions.select_default
                  },

                }
            }
        }
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fc', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope search git' })
    end
})
