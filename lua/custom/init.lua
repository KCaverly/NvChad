-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
vim.api.nvim_create_autocmd("TermOpen", { command = "startinsert" })

-- Relative Number Settings
vim.opt.number = true
vim.opt.relativenumber = true

-- UFO Fold Settings
vim.opt.foldcolumn = "0"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = -1
vim.opt.foldenable = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"
