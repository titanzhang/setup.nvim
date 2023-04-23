if (vim.g.loaded_undotree == 1) then
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
else
    print("Undotree not installed")
end
