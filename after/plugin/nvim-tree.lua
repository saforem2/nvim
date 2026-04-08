require("nvim-tree").setup({
  view = { width = 30 },
  renderer = {
    group_empty = true,
    icons = { show = { git = true, folder = true, file = true } },
  },
  filters = { dotfiles = false },
  git = { enable = true },
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "File Explorer" })
vim.keymap.set("n", "<leader>E", "<cmd>NvimTreeFindFile<cr>", { desc = "Find File in Explorer" })
