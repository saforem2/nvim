require("auto-save").setup({})
vim.keymap.set("n", "<leader>n", "<cmd>ASToggle<CR>", { desc = "Toggle auto-save" })
