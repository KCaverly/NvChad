require("gruvbox").setup {
  overrides = {
    TabLineFill = { bg = "#282828" },
    TabLineSel = { bg = "#3c3836" },
    SignColumn = { bg = "#282828" },
    GruvboxBlueSign = { bg = "#282828" },
    GruvboxRedSign = { bg = "#282828" },
    GruvboxGreenSign = { bg = "#282828" },
    GruvboxAquaSign = { bg = "#282828" },
  },
}

local colorscheme = "gruvbox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
