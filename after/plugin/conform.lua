require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    markdown = { "mdslw" },
  },
  formatters = {
    mdslw = { prepend_args = { "--stdin-filepath", "$FILENAME" } },
  },
})
