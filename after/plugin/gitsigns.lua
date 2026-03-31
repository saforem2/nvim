require("gitsigns").setup({
  signs = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged = {
    add = { text = "┃" },
    change = { text = "┃" },
    delete = { text = "_" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "┆" },
  },
  signs_staged_enable = true,
  signcolumn = true,
  numhl = false,
  linehl = false,
  word_diff = false,
  watch_gitdir = { follow_files = true },
  auto_attach = true,
  attach_to_untracked = false,
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol",
    delay = 1000,
    ignore_whitespace = false,
    virt_text_priority = 100,
    use_focus = true,
  },
  current_line_blame_formatter = "<author>, <author_time:%R> - <summary>",
  sign_priority = 6,
  update_debounce = 100,
  max_file_length = 40000,
  preview_config = {
    style = "minimal",
    relative = "cursor",
    row = 0,
    col = 1,
  },
  on_attach = function(bufnr)
    local gs = require("gitsigns")
    local map = function(mode, l, r, desc)
      vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
    end

    -- Navigation
    map("n", "]c", function()
      if vim.wo.diff then return "]c" end
      vim.schedule(function() gs.nav_hunk("next") end)
      return "<Ignore>"
    end, "Next Hunk")
    map("n", "[c", function()
      if vim.wo.diff then return "[c" end
      vim.schedule(function() gs.nav_hunk("prev") end)
      return "<Ignore>"
    end, "Prev Hunk")

    -- Actions
    map("n", "<leader>gs", gs.stage_hunk, "Stage Hunk")
    map("n", "<leader>gr", gs.reset_hunk, "Reset Hunk")
    map("v", "<leader>gs", function() gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, "Stage Hunk")
    map("v", "<leader>gr", function() gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") }) end, "Reset Hunk")
    map("n", "<leader>gS", gs.stage_buffer, "Stage Buffer")
    map("n", "<leader>gu", gs.undo_stage_hunk, "Undo Stage Hunk")
    map("n", "<leader>gR", gs.reset_buffer, "Reset Buffer")
    map("n", "<leader>gp", gs.preview_hunk, "Preview Hunk")
    map("n", "<leader>gd", gs.diffthis, "Diff This")
    map("n", "<leader>gD", function() gs.diffthis("~") end, "Diff This ~")
    map("n", "<leader>gt", gs.toggle_deleted, "Toggle Deleted")

    -- Text object
    map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Select Hunk")
  end,
})
