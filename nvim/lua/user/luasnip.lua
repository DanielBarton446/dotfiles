local status, ls = pcall(require, "luasnip")
if (not status) then return end

ls.config.set_config({
  enable_autosnippets = true,
})
