local neocodeium = require("neocodeium")

neocodeium.setup({
  manual = false,
  filter = function()
    local blink_ok, blink = pcall(require, "blink.cmp")
    if blink_ok and blink.is_visible() then
      return false
    end
    return true
  end,
})

vim.keymap.set("i", "<A-f>", function() neocodeium.accept() end, { desc = "Accept Codeium suggestion" })
vim.keymap.set("i", "<A-w>", function() neocodeium.accept_word() end, { desc = "Accept Codeium word" })
vim.keymap.set("i", "<A-a>", function() neocodeium.accept_line() end, { desc = "Accept Codeium line" })
vim.keymap.set("i", "<A-e>", function() neocodeium.cycle_or_complete() end, { desc = "Cycle Codeium suggestion" })
vim.keymap.set("n", "<leader>uN", "<cmd>NeoCodeium toggle<cr>", { desc = "Toggle NeoCodeium" })
