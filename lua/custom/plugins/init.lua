return {

  {
    "~/personal/emanote.nvim/",
    after = "telescope.nvim",
    config = function() require("emanote").setup(
      {
        emanote_home = "~/personal/kb"
      }) 
    end
  },

  {
    "rcarriga/nvim-notify"
  },

  {
    "~/personal/py.nvim",
    ft = {"python"},
    config = function() require("py").setup() end,
  },

  {
    "luukvbaal/stabilize.nvim",
    config = function() require("stabilize").setup() end
  },

  {
    "natecraddock/workspaces.nvim",
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

  {
    "folke/twilight.nvim",
    config = function()
      require("twilight").setup({})
    end
  },

  {
    "Pocco81/TrueZen.nvim",
  },

  {
    "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim",
    config = function()
      require("toggle_lsp_diagnostics").init()
    end
  },

  {
    "nvim-telescope/telescope-media-files.nvim",
    module = "telescope",
    config = function()

      require("telescope").setup({
        extensions = {
          media_files = {
            filetypes = {"png", "webp", "jpg", "jpeg", "pdf"},
            find_cmd = "rg"
          }
        }
      })

      require('telescope').load_extension('media_files')
    end
  },

  {
    "ray-x/go.nvim",
    config = function()
      require('go').setup()
    end
  }

}
