local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion

null_ls.setup({
	debug = false,
	sources = {

    -- Python
		formatting.black.with({ extra_args = { "--fast" } }),
    formatting.isort,
    diagnostics.mypy.with({ extra_args = {"--ignore-missing-imports", "--follow-imports=silent"}}),
    diagnostics.flake8.with({ extra_args = {"--max-line-length", "88", "--ignore=E203"}}),

    -- General
    completion.spell,
    diagnostics.cspell

	},
})
