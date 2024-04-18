-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
--
vim.cmd [[colorscheme glitz]]

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }
--
-- vim.api.nvim_eval "colorscheme sam_molokai"
-- vim.api.nvim_eval "TSEnable highlight<CR>"
-- require("nvim-treesitter").setup {}

-- vim.api.nvim_eval "set rtp+=~/.config/nvim/lua/user/highlights/"
-- vim.api.nvim_eval "set rtp+=~/.config/nvim/lua/user/highlights/"
-- vim.api.nvim_eval "set rtp+=~/.local/share/nvim/runtime/colors"
-- vim.api.nvim_eval "set rtp+=~/.config/nvim/lua/user/highlights"
