local loaded_lsp, _ = pcall(require, 'lsp-zero')

if loaded_lsp then
  local lsp = require('lsp-zero').preset({})

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
else
  print('lsp-zero not installed')
end
