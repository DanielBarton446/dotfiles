require('neorg').setup {
  load = {
    ["core.defaults"] = {}, -- Defaults
    ["core.norg.concealer"] = {}, -- Pretty icons
    ["core.norg.dirman"] = { -- Workspace management
      config = {
        workspaces = {
          work = "~/notes/work/",
          rust = "~/notes/rust/"
        },
        -- index = "~/notes/index.norg"
      }
    }
  },
  ["core.integrations.telescope"] = {} -- telescope integrations
}
