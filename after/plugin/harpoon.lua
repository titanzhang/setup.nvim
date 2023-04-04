local loaded_harpoon, _ = pcall(require, 'harpoon')
local loaded_telescope, telescope = pcall(require, 'telescope')

if loaded_harpoon then
  local mark = require('harpoon.mark')
  local ui = require('harpoon.ui')

  vim.keymap.set('n', '<leader>ma', mark.add_file)
  vim.keymap.set('n', '<leader>nn', ui.nav_next)
  vim.keymap.set('n', '<leader>pp', ui.nav_prev)
  vim.keymap.set('n', '<leader>mm', ui.toggle_quick_menu)

  if loaded_telescope then
    telescope.load_extension('harpoon')
    vim.keymap.set('n', '<leader>MM', function() telescope.extensions.harpoon.marks() end)
  else
    print('Telescope not installed')
  end
else
  print('Harpoon not installed')
end
