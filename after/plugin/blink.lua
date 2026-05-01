local icons = require("config.icons")

require("blink.cmp").setup({
  snippets = {
    expand = function(snippet)
      vim.snippet.expand(snippet)
    end,
  },
  appearance = {
    use_nvim_cmp_as_default = false,
    nerd_font_variant = "mono",
    kind_icons = icons.kinds,
  },
  completion = {
    accept = { auto_brackets = { enabled = true } },
    menu = { draw = { treesitter = { "lsp" } } },
    documentation = { auto_show = true, auto_show_delay_ms = 200 },
    ghost_text = { enabled = false },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  cmdline = { enabled = false },
  keymap = {
    preset = "enter",
    ["<C-Space>"] = { "show", "show_documentation", "hide_documentation" },
    ["<C-y>"] = { "select_and_accept" },
    ["<C-e>"] = { "cancel", "fallback" },
    ["<C-c>"] = { "cancel", "fallback" },
    ["<Tab>"] = { "snippet_forward", "fallback" },
    ["<S-Tab>"] = { "snippet_backward", "fallback" },
  },
})
