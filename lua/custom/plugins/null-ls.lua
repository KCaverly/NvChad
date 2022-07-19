local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

  -- Python
  b.formatting.black,
  b.formatting.isort,

  -- Golang
  b.formatting.gofmt,

  -- Lua
  b.formatting.stylua

}

local M = {}

M.setup = function()
  null_ls.setup {
    debug = true,
    sources = sources,

    -- format on save
    on_attach = function(client)
      if client.resolved_capabilities.document_formatting then
        vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()"
      end
    end,
  }
end

return M

