require("treesj").setup({
  use_default_keymaps = false,
})

vim.keymap.set("n", "<leader>tT", "<CMD>TSJToggle<CR>", { desc = "Toggle Treesitter Join" })
vim.keymap.set("n", "<leader>tj", "<CMD>TSJJoin<CR>", { desc = "Treesitter Join" })
vim.keymap.set("n", "<leader>ts", "<CMD>TSJSplit<CR>", { desc = "Treesitter Split" })
