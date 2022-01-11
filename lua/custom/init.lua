
-- PLUGINS
local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)

   use {"~/personal/emanote.nvim/",
        config = function() require("emanote").setup(
          {emanote_home="~/personal/kb"}
          ) end}
 end)


 -- MAPPINGS
 local map = require("core.utils").map

 -- Disable Arrow Keys
 map("n", "<Down>", "<NOP>")
 map("n", "<Up>", "<NOP>")
 map("n", "<Left>", "<NOP>")
 map("n", "<Right>", "<NOP>")

