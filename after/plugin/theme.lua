-- Apply colorscheme after all plugins are loaded
-- auto-dark-mode handles the actual colorscheme switching
-- This is a fallback in case auto-dark-mode hasn't run yet
if vim.o.background == "dark" then
  pcall(vim.cmd.colorscheme, "cyberdream")
else
  pcall(vim.cmd.colorscheme, "onelight")
end
