local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "json",
    "toml",
    "python",
    "rust"
  },
}

M.nvimtree = {
  git = {
    enable = true
  }
}

return M
