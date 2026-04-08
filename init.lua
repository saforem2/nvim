-- Neovim config using vim.pack (nvim 0.12+)
-- No lazy.nvim, no LazyVim framework

-- Options first (before plugins load)
require("config.options")

-- Declare and install all packages
require("packs")

-- Keymaps and autocmds
require("config.keymaps")
require("config.autocmds")

-- Native LSP (nvim 0.12+)
vim.lsp.enable({
  "ty",
  "ruff",
  "pyright",
  "luals",
  "ltex_plus",
  "marksman",
  "ast_grep",
  "jsonls",
  "copilot-language-server",
})
