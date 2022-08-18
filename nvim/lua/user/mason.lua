local status, mason = pcall(require, "mason")
if (not status) then
  print("Mason is struggling")
end
local status2, lspconfig = pcall(require, "mason-lspconfig")
if (not status2) then
  print("LSPMASON is struggling")
end

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

lspconfig.setup({
  ensure_installed = { "sumneko_lua", "rust_analyzer" }
})
