require("conform").setup({
  formatters_by_ft = {
    markdown = { "mdslw" },
  },
  formatters = {
    mdslw = { prepend_args = { "--stdin-filepath", "$FILENAME" } },
  },
})
