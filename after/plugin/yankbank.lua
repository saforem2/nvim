require("yankbank").setup()
vim.keymap.set("n", "<leader>Y", "<cmd>YankBank<cr>", { desc = "Yank History" })
