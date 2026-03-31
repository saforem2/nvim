require("which-key").setup({
  icons = {
    group = "+",
    separator = "→",
  },
})

require("which-key").add({
  -- Groups
  { "<leader>a", group = "AI", icon = "󰚩" },
  { "<leader>b", group = "Buffers", icon = "󰈚" },
  { "<leader>c", group = "Code", icon = "" },
  { "<leader>f", group = "Files/Find", icon = "󰉋" },
  { "<leader>g", group = "Git", icon = "󰊢" },
  { "<leader>m", group = "Markdown", icon = "󰍔" },
  { "<leader>q", group = "Quit", icon = "󰈆" },
  { "<leader>s", group = "Search", icon = "" },
  { "<leader>u", group = "UI Toggles", icon = "󰙵" },
  { "<leader>w", group = "Windows", icon = "" },
  { "<leader>x", group = "Lists", icon = "󰉹" },
  { "<leader><tab>", group = "Tabs", icon = "󰓩" },

  -- Standalone leader keymaps
  { "<leader>K", icon = "󰌌" },
  { "<leader>k", icon = "󰁂" },
  { "<leader>l", icon = "󰓙" },
  { "<leader>n", icon = "󰳡" },
  { "<leader>y", icon = "󰅍" },
  { "<leader>Y", icon = "󰅍" },
  { "<leader>\\", icon = "󰄫" },
  { "<leader>`", icon = "󰓡" },
  { "<leader>-", icon = "󰇘" },
  { "<leader>|", icon = "󰇙" },
})

-- Markdown keymaps
vim.keymap.set("n", "<leader>mp", "<cmd>Glow<cr>", { desc = "Preview (Glow)" })
vim.keymap.set("n", "<leader>mP", "<cmd>MarkdownPreview<cr>", { desc = "Preview (Browser)" })
vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", { desc = "Stop Browser Preview" })

-- Colorizer toggle
vim.keymap.set("n", "<leader>uC", "<cmd>ColorizerToggle<cr>", { desc = "Toggle Colorizer" })
