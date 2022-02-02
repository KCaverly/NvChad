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
    after = "notify",
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
  }

}
