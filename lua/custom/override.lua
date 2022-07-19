
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
      lazyload = false,
      overriden_modules = function()
         return require "custom.plugins.tabufline"
      end,
   },

   statusline = {
      overriden_modules = function()
         return require "custom.plugins.statusline"
      end,
   }
}


return M
