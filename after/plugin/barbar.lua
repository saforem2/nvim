vim.g.barbar_auto_setup = false

require("barbar").setup({
  animation = true,
  focus_on_close = "left",
  hide = { extensions = true },
  highlight_alternate = false,
  highlight_inactive_file_icons = false,
  highlight_visible = false,
  icons = {
    buffer_index = false,
    buffer_number = false,
    diagnostics = {
      [vim.diagnostic.severity.ERROR] = { enabled = true, icon = " " },
      [vim.diagnostic.severity.WARN] = { enabled = false },
      [vim.diagnostic.severity.INFO] = { enabled = false },
      [vim.diagnostic.severity.HINT] = { enabled = true },
    },
    gitsigns = {
      added = { enabled = true, icon = "+" },
      changed = { enabled = true, icon = "~" },
      deleted = { enabled = true, icon = "-" },
    },
    filetype = { custom_colors = false, enabled = true },
    separator = { left = "▎", right = "" },
    separator_at_end = true,
    modified = { button = "●" },
    pinned = { button = "", filename = true },
    preset = "default",
    current = { buffer_index = false },
    inactive = {},
    visible = { modified = { buffer_number = false } },
  },
})
