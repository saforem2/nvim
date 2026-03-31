require("noice").setup({
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    hover = { enabled = true },
    signature = { enabled = true },
    documentation = {
      opts = {
        win_options = {
          concealcursor = "n",
          conceallevel = 3,
          winhighlight = {
            Normal = "Normal",
            FloatBorder = "Todo",
          },
        },
      },
    },
  },
  views = {
    split = { enter = true },
    mini = { win_options = { winblend = 100 } },
  },
  routes = {
    { filter = { find = "E162" }, view = "mini" },
    { filter = { event = "msg_show", kind = "", find = "written" }, view = "mini" },
    { filter = { event = "msg_show", find = "search hit BOTTOM" }, skip = true },
    { filter = { event = "msg_show", find = "search hit TOP" }, skip = true },
    { filter = { event = "emsg", find = "E23" }, skip = true },
    { filter = { event = "emsg", find = "E20" }, skip = true },
    { filter = { find = "No signature help" }, skip = true },
    { filter = { find = "E37" }, skip = true },
  },
  cmdline = { view = "cmdline" },
  popupmenu = {
    enabled = false,
    backend = "nui",
    kind_icons = true,
  },
  presets = {
    command_palette = false,
    long_message_to_split = false,
    inc_rename = true,
    lsp_doc_border = true,
  },
})
