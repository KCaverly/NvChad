local M = {}

local function termcodes(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

M.general = {

  n = {

    -- Disable Arrow Keys
    ["<Down>"] = {"<NOP>", "Disable <Down>", opts={}},
    ["<Up>"] = {"<NOP>", "Disable <Up>", opts={}},
    ["<Left>"] = {"<NOP>", "Disable <Left>", opts={}},
    ["<Right>"] = {"<NOP>", "Disable <Right>", opts={}},

    -- Toggle Line Diagnostics
    ["<leader>ld"] = {":ToggleDiag<CR>", "Toggle Line Diagnostics", opts={}},

    -- Keep Search Items Centered
    ["n"] = {"nzzzv", "Keep Search Items Centered", opts={}},
    ["N"] = {"Nzzzv", "Keep Search Items Centered", opts={}},
    ["J"] = {"mzJ`z", "Keep Search Items Centered", opts={}},

    -- Move Text Around
    ["<leader>j"] = {":m .+1<CR>==", "Move Line Up in Normal Mode"},
    ["<leader>k"] = {":m .-2<CR>==", "Move Line Down in Normal Mode"},

    -- Workspaces
    ["<leader>fs"] = {":Telescope workspaces <CR>", "Toggle Workspaces"},

    -- Twilight
    ["<leader>tw"] = {":Twilight<CR>", "Toggle Twilight"},

    -- Open Terminal in Window
    ["<leader>w"] = {":term<CR>", "Open Terminal in Tab"},

    -- Toggle Trouble
    ["<leader>tt"] = {":TroubleToggle<CR>", "Toggle Trouble"},

    -- Toggle Symbols
    ["<leader>ts"] = {":SymbolsOutline<CR>", "Toggle SymbolsOutline"},

    -- Bidirectional Leap
    ["<leader>s"] = {":lua require'leap'.leap{['target-windows'] = {vim.api.nvim_get_current_win()}}<CR>", "Search via Leap"},

    -- Generate Docstrings
    ["<leader>gd"] = {":Neogen<CR>", "Generate Docstring"},

    ["<C-f>"] = {':silent !tmux split-window "~/.local/bin/peaches projects"<CR>' , "Toggle Project Launcher"},
    ["<C-g>"] = {':silent !tmux split-window "~/.local/bin/peaches ssh"<CR>', "Toggle SSH Launcher"},

    ["zR"] = {":lua require('ufo').openAllFolds() <CR>", "Open All Folds"},
    ["zM"] = {":lua require('ufo').closeAllFolds() <CR>", "Close All Folds"}

  },

  i = {

    -- Quick JK to Escape
    ["jk"] = {"<Esc>", "Quick JK to Escape", opts={}},

    -- Moving Text Around
    ["<C-j>"] = {"<Esc>:m .+1<CR>==i", "Move Line Up in Insert Mode"},
    ["<C-k>"] = {"<Esc>:m .-2<CR>==i", "Move Line Down in Insert Mode"},

  },

  t = {
    ["<Esc>"] = { termcodes "<C-\\><C-N>", "Escape Terminal Mode"},
    ["jk"] = { termcodes "<C-\\><C-N>", "Escape Terminal Mode"},
    ["j"] = { termcodes "j", "J Weirdness"}
  }

}


M.truzen = {
  n = {
    ["<leader>ta"] = {"<cmd> TZAtaraxis <CR>", "Truzen Ataraxis"},
    ["<leader>tm"] = {"<cmd> TZMinimalist <CR>", "Truzen Minimal"},
    ["<leader>tf"] = {"<cmd> TZFocus <CR>", "Truzen Focus"},
  }
}

return M
