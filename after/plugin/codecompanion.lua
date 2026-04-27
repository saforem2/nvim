require("codecompanion").setup({
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = "ANTHROPIC_API_KEY",
        },
      })
    end,
  },
  strategies = {
    chat = { adapter = "anthropic" },
    inline = { adapter = "anthropic" },
  },
})

vim.keymap.set({ "n", "v" }, "<leader>Cc", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "CodeCompanion Chat" })
vim.keymap.set({ "n", "v" }, "<leader>Ci", "<cmd>CodeCompanionActions<cr>", { desc = "CodeCompanion Actions" })
vim.keymap.set("v", "<leader>Ca", "<cmd>CodeCompanionChat Add<cr>", { desc = "CodeCompanion Add Selection" })
