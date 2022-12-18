local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
  return
end

local setup = {}
local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local vopts = {
  mode = "v", -- VISUAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}
local mappings = {
  ["/"] = { ":CommentToggle<CR>", "Comment" },
  ["a"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Code Action" },
  ["k"] = { ":lua vim.lsp.buf.hover()<CR>", "Hover (read docos)" },
  ["gd"] = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Definition" },
  ["gi"] = { "<cmd>lua vim.lsp.buf.implementation()<cr>", "Implementation" },
  ["gs"] = { "[m", "Go to Start of Function" },
  ["d"] = { "<cmd>lua vim.diagnostic.open_float()<cr>", "diagnostics" },
  ["gb"] = { ":Gitsigns toggle_current_line_blame<CR>", "Toggle Git Blame" },
  ["F"] = { ":lua vim.lsp.buf.format()<CR>", "Format Current Buffer" },
  ["ff"] = { ":Telescope find_files<CR>", "Find Files" },
  ["fg"] = { ":Telescope live_grep<CR>", "Live Grep" },
  ["fb"] = { ":Telescope buffers<CR>", "View Buffers" },
  ["rn"] = { ":lua require('renamer').rename()<CR>", "Rename a variable" }
}
local vmappings = {
  ["/"] = { ":'<,'>CommentToggle<CR>", "Comment" },
}

which_key.setup(setup)
which_key.register(mappings, opts)
which_key.register(vmappings, vopts)
