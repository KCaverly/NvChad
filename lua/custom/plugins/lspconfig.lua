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

   lspconfig.gopls.setup {
      on_attach = attach,
      capabilities = capabilities,
      cmd = {"gopls", "serve"},
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          linksInHover = false,
          codelenses = {
            generate = true,
            gc_details = true,
            regenerate_cgo = true,
            tidy = true,
            upgrade_dependency = true,
            vendor = true,
          },
          usePlaceholders = true,
        }
      }
   }

end

return M
