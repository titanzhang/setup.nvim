local loaded_telescope, builtin = pcall(require, 'telescope.builtin')
if loaded_telescope then
  vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
  vim.keymap.set('n', '<C-p>', builtin.git_files, {})
  vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
  end)
else
  print('Telescope not installed')
end
