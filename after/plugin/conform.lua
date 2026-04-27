require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    markdown = { "mdslw" },
  },
  notify_on_error = true,
  notify_no_formatters = false,
  formatters = {
    mdslw = { prepend_args = { "--stdin-filepath", "$FILENAME" } },
  },
})
