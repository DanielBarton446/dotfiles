local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    sign_icons = {
      error = " ",
      warn = " ",
      hint = " ",
      info = " "
    }
})

lsp.on_attach(function(client)
  if client.name == "eslint" then
      vim.cmd.LspStop('eslint')
      return
  end
end)

lsp.setup()
