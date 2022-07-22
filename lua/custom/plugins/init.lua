return {

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

  },

  ["kevinhwang91/nvim-ufo"] = {
    requires = "kevinhwang91/promise-async",
    config = function()
      require("ufo").setup({
         provider_selector = function(bufnr, filetype, buftype)
            return {"treesitter", "indent"}
         end
      })
    end
  },

  ["rcarriga/nvim-notify"] = {},

  ["~/personal/py.nvim"] = {
    ft = {"python"},
    config = function()
      require("py").setup()
    end
  },

  ["goolord/alpha-nvim"] = {
     disable = false,

  },

  ["kdheepak/lazygit.nvim"] = {},

  ["mfussenegger/nvim-dap"] = {},
  ["mfussenegger/nvim-dap-python"] = {
     config = function()
        require("dap-python").setup()
     end
  },
  ["rcarriga/nvim-dap-ui"] = {
     config = function()
        require("dapui").setup()
     end
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
     config = function()
        require("nvim-dap-virtual-text").setup()
     end
  },
  ["nvim-telescope/telescope-dap.nvim"] = {}

}
