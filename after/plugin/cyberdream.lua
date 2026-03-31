require("cyberdream").setup({
  -- Enable transparent background
  transparent = false,
  -- Enable italics comments
  italic_comments = false,
  -- Replace all fillchars with ' ' for the ultimate clean look
  hide_fillchars = false,
  -- Modern borderless telescope theme
  borderless_pickers = true,
  -- Set terminal colors used in `:terminal`
  terminal_colors = true,
  extensions = {
    blinkcmp = true,
    cmp = true,
    fzflua = true,
    lazy = true,
    markdown = true,
    mini = true,
    noice = true,
    rainbow_delimiters = true,
    treesitter = true,
    trouble = true,
    whichkey = true,
  },
  opts = {
    variant = "auto",
    highlights = {
      CursorLine = { bg = "#252525" },
    },
    overrides = function(colors)
      return {
        Keyword = { fg = "#00CCFF" },
        Normal = { bg = "#1c1c1c", fg = "#B3B3B3" },
        Comment = { italic = false, fg = "#5F6972" },
        CopilotSuggestion = { fg = "#FF3BD3", bg = "#1c1c1c" },
        BufferDefaultCurrentADDED = { bg = "NONE" },
        BufferDefaultCurrentCHANGED = { bg = "NONE" },
        BufferDefaultCurrentDELETED = { bg = "NONE" },
        ["@keyword.import"] = { fg = "#D3FF3B" },
        ["@keyword.type"] = { fg = "#E599F7" },
        ["@keyword.conditional"] = { fg = "#FF3BD3" },
        ["@variable.member"] = { fg = "#FA99CD" },
        ["@Identifier"] = { fg = "#65d8ee", bold = true },
        ["RenderMarkdownCodeInline"] = { fg = "#D3FF3B", bg = "#1c1c1c" },
        ["@string.documentation"] = { fg = "#838383" },
      }
    end,
    colors = {},
  },
})
