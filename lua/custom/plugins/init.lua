return {

  ["natecraddock/workspaces.nvim"] = {
    after = "telescope.nvim",
    config = function()

      require("workspaces").setup({
        hooks = {
          open = { "Telescope find_files " }
        }
      })

      require("telescope").setup({
        extensions = {
          workspaces = {
            keep_insert = true
          }
        }
      })

      require("telescope").load_extension("workspaces")

    end
  },

  ["WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"] = {
    config = function()
      require("toggle_lsp_diagnostics").init()
    end
  },

  ["folke/twilight.nvim"] = {
    config = function()
      require("twilight").setup({})
    end
  },

  ["Pocco81/TrueZen.nvim"] = {},

  ["luukvbaal/stabilize.nvim"] = {
    config = function()
      require("stabilize").setup()
    end },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  }

}
