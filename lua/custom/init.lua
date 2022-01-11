local customPlugins = require "core.customPlugins"

customPlugins.add(function(use)

   use {"~/personal/emanote.nvim/",
        config = function() require("emanote").setup(
          {emanote_home="~/personal/kb"}
          ) end}
 end)

-- the above snippet is just an example
