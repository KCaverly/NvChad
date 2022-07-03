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
  },

  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  },

  ["simrat39/symbols-outline.nvim"] = {},

  ["ggandor/leap.nvim"] = {
    config = function()
      require("leap").set_default_keymaps()
    end
  },

  ["danymat/neogen"] = {
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      require('neogen').setup {
        enabled = true,
        languages = {
          python = {
            template = {
              annotation_convention = "numpydoc"
            }
          }
        }
      }
    end,

  }

}
