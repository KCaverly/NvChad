-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "gruvbox",
}

M.plugins = {
  user = require "custom.plugins",

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

  override = {
    ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
    ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
    ["NvChad/ui"] = override.ui
  },

}

M.mappings = require "custom.mappings"

M.options = {
   user = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = -1
      vim.o.foldenable = true
   end,
}

return M
