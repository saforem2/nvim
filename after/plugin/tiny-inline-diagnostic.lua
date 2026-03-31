require("tiny-inline-diagnostic").setup()
vim.diagnostic.config({ virtual_text = false })

vim.keymap.set("n", "<leader>uD", function()
  require("tiny-inline-diagnostic").toggle()
end, { desc = "Toggle Inline Diagnostics" })
