
local M = {}

M.treesitter = {
  ensure_installed = {
    "json",
    "toml",
    "bash",
    "python",
    "markdown"
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
}

return M
