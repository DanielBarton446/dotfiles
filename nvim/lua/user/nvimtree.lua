local status, tree = pcall(require, "nvim-tree")
if not status then
  print("nvim tree not loaded")
end

tree.setup({
  view = {
    side = "left",
    width = 20,
    adaptive_size = true
  }
})
