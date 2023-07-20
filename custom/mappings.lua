---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  i = {
    ["<C-c>"] = { "<esc>", "exit insert mode", opts = { nowait = true } },
  },
}

-- more keybinds!

return M
