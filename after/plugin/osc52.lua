vim.keymap.set("n", "<leader>y", function()
  return require("osc52").copy_operator()
end, { expr = true, desc = "Copy selection to system clipboard (normal mode)" })

vim.keymap.set("n", "<leader>Y", "<leader>y_", {
  remap = true,
  desc = "Copy current line into system clipboard (normal mode)",
})

vim.keymap.set("v", "<leader>y", function()
  require("osc52").copy_visual()
end, { desc = "Copy selection to system clipboard (visual mode)" })
