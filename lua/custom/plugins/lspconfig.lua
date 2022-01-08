local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   lspconfig.pyright.setup {
      on_attach = attach,
      capabilities = capabilities,
   }

   lspconfig.rust_analyzer.setup {
      on_attached=attach,
      capabilities = capabilities
   }

end

return M
