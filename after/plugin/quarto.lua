-- Pandoc syntax settings
vim.g["pandoc#syntax#conceal#use"] = true
vim.g["pandoc#syntax#codeblocks#embeds#use"] = true
vim.g["pandoc#syntax#conceal#blacklist"] = { "codeblock_delim", "codeblock_start" }
vim.g["tex_conceal"] = "gm"

require("quarto").setup({
  debug = false,
  closePreviewOnExit = true,
  lspFeatures = {
    enabled = true,
    chunks = "curly",
    languages = { "python", "julia", "bash", "html" },
    diagnostics = {
      enabled = true,
      triggers = { "BufWritePost" },
    },
    completion = { enabled = true },
  },
  codeRunner = {
    enabled = true,
    default_method = "slime",
    ft_runners = {},
    never_run = { "yaml" },
  },
})
