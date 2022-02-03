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

-- Workspaces
map("n", "<leader>fs", ":Telescope workspaces <CR>")


-- Comment.Nvim Fix
map("n", "gc", ":lua require('Comment.api').toggle_current_linewise()<CR>")
map("v", "gc", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
