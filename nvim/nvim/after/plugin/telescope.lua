local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>git', builtin.git_files, {})
vim.keymap.set('n', '<leader>grep', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

require('telescope').setup({
    defaults = {
        file_ignore_patterns = { "node%_modules/.*" },
    }
})
