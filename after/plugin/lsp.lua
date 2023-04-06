local loaded_lsp, _ = pcall(require, 'lsp-zero')

if not loaded_lsp then
  print('lsp-zero not installed')
  return
end

local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })

  -- List all references in telescope
  vim.keymap.set('n', 'gr', '<cmd>Telescope lsp_references<cr>', {buffer = true})

  -- Go to implemention, or list them in telescope
  vim.keymap.set('n', 'gi', function()
    require('harpoon.mark').add_file()
    require('telescope.builtin').lsp_implementations()
  end, {buffer = true})

  -- Go to definition, or list them in telescope
  vim.keymap.set('n', 'gd', function()
    require('harpoon.mark').add_file()
    require('telescope.builtin').lsp_definitions()
  end, {buffer = true})

end)

lsp.ensure_installed({
  'csharp_ls',
  'eslint',
  'tsserver',
  'lua_ls',
  'html',
  'marksman',
})

require('lspconfig').lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.setup()
