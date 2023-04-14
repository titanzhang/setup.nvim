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
  'rust_analyzer'
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

require('lspconfig').rust_analyzer.setup({
  settings = {
    ["rust-analyzer"] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
    }
  }
})

-- Workaround for rust-analyzer reporting error on single file
-- https://github.com/neovim/nvim-lspconfig/issues/1528
local old_notify = vim.notify
local silence_pat = '[lspconfig] cmd ("cargo'
vim.notify = function(msg, level, opts)
  if (string.sub(msg, 1, string.len(silence_pat)) ~= silence_pat) then
    old_notify(msg, level, opts)
  end
end

lsp.setup()
