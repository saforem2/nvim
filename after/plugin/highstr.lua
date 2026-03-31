require("high-str").setup({
  verbosity = 1,
  saving_path = "/tmp/highstr/",
  highlight_colors = {
    color_0 = { "#0c0d0e", "smart" },
    color_1 = { "#e5c07b", "smart" },
    color_2 = { "#7FFFD4", "smart" },
    color_3 = { "#8A2BE2", "smart" },
    color_4 = { "#FF4500", "smart" },
    color_5 = { "#008000", "smart" },
    color_6 = { "#0000FF", "smart" },
    color_7 = { "#FFC0CB", "smart" },
    color_8 = { "#FFF9E3", "smart" },
    color_9 = { "#7d5c34", "smart" },
  },
})
vim.api.nvim_set_keymap("v", "<F3>", ":<c-U>HSHighlight 1<CR>", {
  noremap = true,
  silent = true,
})
vim.api.nvim_set_keymap("v", "<F4>", ":<c-U>HSRmHighlight<CR>", {
  noremap = true,
  silent = true,
})
