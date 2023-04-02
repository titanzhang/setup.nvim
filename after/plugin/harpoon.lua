local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>ma', mark.add_file)
vim.keymap.set('n', '<leader>nn', ui.nav_next)
vim.keymap.set('n', '<leader>pp', ui.nav_prev)
vim.keymap.set('n', '<C-m>', ui.toggle_quick_menu)

local telescope = require("telescope")
telescope.load_extension('harpoon')
vim.keymap.set('n', '<C-S-m>', function() telescope.extensions.harpoon.marks() end) 
