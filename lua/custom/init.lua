-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.api.nvim_create_autocmd("TermOpen", {command = "startinsert"})

vim.o.number = true
vim.o.relativenumber = true
