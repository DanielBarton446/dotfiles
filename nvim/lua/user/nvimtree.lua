local status, tree = pcall(require, "nvim-tree")
if not status then
  print("nvim tree not loaded")
end

tree.setup({
  open_on_startup = true,
  view = {
    side = "left",
    width = 20,
    auto_resize = true
  }
})
