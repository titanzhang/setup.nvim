if vim.g.loaded_fugitive == 1 then
  vim.keymap.set("n", "<leader>gg", vim.cmd.Git);
else
  print('Fugitive not installed')
end
