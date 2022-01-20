
-- PLUGINS
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)

   use {"~/personal/emanote.nvim/",
        config = function() require("emanote").setup(
          {emanote_home="~/personal/kb"}
          ) end}

   use {"~/personal/py.nvim/",
        ft = {'python'},     
        config = function() require("py").setup() end,
        }

    use {
      "luukvbaal/stabilize.nvim",
      config = function() require("stabilize").setup() end
    }

    use {
   "Pocco81/AutoSave.nvim",
   config = function()
      local autosave = require "autosave"

      autosave.setup {
         enabled = true,
         execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
         events = { "InsertLeave", "TextChanged" },
         conditions = {
            exists = true,
            filetype_is_not = {},
            modifiable = true,
         },
         clean_command_line_interval = 2500,
         on_off_commands = true,
         write_all_buffers = false,
      }
   end,
} 

   use {'rlane/pounce.nvim'}

   use {'rcarriga/nvim-notify'}

 end)


 -- MAPPINGS
 local map = require("core.utils").map
 
 -- Disable Arrow Keys
 map("n", "<Down>", "<NOP>")
 map("n", "<Up>", "<NOP>")
 map("n", "<Left>", "<NOP>")
 map("n", "<Right>", "<NOP>")

 -- Misc
 map("n", "Y", "y$")

 -- Keep Search Items centered
 map("n", "n", "nzzzv")
 map("n", "N", "Nzzzv")
 map("n", "J", "mzJ`z")

 -- Undo Break Points
 map("i", ",", ",<c-g>u")
 map("i", ".", ".<c-g>u")
 map("i", "!", "!<c-g>u") 
 map("i", "?", "?<c-g>u")

 -- Moving Text Around
 map("i", "<C-j>", "<esc>:m .+1<CR>==i")
 map("i", "<C-k>", "<esc>:m .-2<CR>==i")
 map("n", "<leader>k", ":m .-2<CR>==")
 map("n", "<leader>j", ":m .+1<CR>==")

 -- Plugin Specific: pounce
 map("n", "<leader>s", "<cmd>Pounce<CR>")
