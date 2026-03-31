require("fff").setup({
  debug = {
    enabled = true,
    show_scores = true,
  },
})
vim.keymap.set("n", "ff", function()
  require("fff").find_files()
end, { desc = "FFFind files" })
