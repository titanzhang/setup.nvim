local loaded_telescope, telescope = pcall(require, 'telescope')
if not loaded_telescope then
    print('Telescope not installed')
    return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({
        search = vim.fn.input("Grep > "),
        layout_strategy = 'horizontal',
        layout_config = { width = 0.95 }
    });
end)
