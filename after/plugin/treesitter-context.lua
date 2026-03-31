require("treesitter-context").setup({
  min_window_height = 50,
  enable = true,
  throttle = true,
  max_lines = 10,
  patterns = {
    default = { "class", "function", "method" },
  },
})
