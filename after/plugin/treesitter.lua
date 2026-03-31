-- nvim-treesitter (main branch) uses a simplified API
-- Highlighting/indentation are handled by native vim.treesitter APIs
-- This file handles parser installation and incremental selection

-- Install parsers (async, won't block startup)
require("nvim-treesitter").install({
  "python", "markdown", "markdown_inline", "julia", "bash",
  "yaml", "lua", "vim", "query", "vimdoc", "latex",
  "html", "css", "dot", "javascript", "mermaid", "typescript",
})

-- Incremental selection keymaps
vim.keymap.set("n", "gnn", function()
  require("nvim-treesitter.incremental_selection").init_selection()
end, { desc = "Init treesitter selection" })
vim.keymap.set("x", "grn", function()
  require("nvim-treesitter.incremental_selection").node_incremental()
end, { desc = "Increment node selection" })
vim.keymap.set("x", "grc", function()
  require("nvim-treesitter.incremental_selection").scope_incremental()
end, { desc = "Increment scope selection" })
vim.keymap.set("x", "grm", function()
  require("nvim-treesitter.incremental_selection").node_decremental()
end, { desc = "Decrement node selection" })
