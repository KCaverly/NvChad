return {

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"] = {
    config = function()
      require("toggle_lsp_diagnostics").init()
    end,
  },

  ["luukvbaal/stabilize.nvim"] = {
    config = function()
      require("stabilize").setup()
    end,
  },

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
    end,
  },

  ["simrat39/symbols-outline.nvim"] = {},

  ["ggandor/leap.nvim"] = {
    config = function()
      require("leap").set_default_keymaps()
    end,
  },

  ["danymat/neogen"] = {
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("neogen").setup {
        enabled = true,
        languages = {
          python = {
            template = {
              annotation_convention = "numpydoc",
            },
          },
        },
      }
    end,
  },

  ["kevinhwang91/nvim-ufo"] = {
    requires = "kevinhwang91/promise-async",
    config = function()
      require("ufo").setup {
        provider_selector = function(bufnr, filetype, buftype)
          return { "treesitter", "indent" }
        end,
      }
    end,
  },

  ["rcarriga/nvim-notify"] = {},

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["mfussenegger/nvim-dap"] = {},
  ["mfussenegger/nvim-dap-python"] = {
    config = function()
      require("dap-python").setup()
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    config = function()
      require("dapui").setup()

      local dap, dapui = require "dap", require "dapui"
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end

      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end

      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },
  ["nvim-telescope/telescope-dap.nvim"] = {},

  ["nvim-neorg/neorg"] = {
    tag = "0.0.12",
    ft = "norg",
    after = "nvim-treesitter",
    setup = function()
      require("custom.plugins.neorg").autocmd()
    end,
    config = function()
      require("custom.plugins.neorg").setup()
    end,
  },
}
