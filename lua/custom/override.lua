
local M = {}

M.treesitter = {
  ensure_installed = {
    "json",
    "toml",
    "bash",
    "python",
    "markdown",
    "go"
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },
}

M.ui = {
   tabufline = {
      lazyload = false
   }
}


return M
