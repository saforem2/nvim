-- Keymaps
-- Migrated from LazyVim to native vim.keymap.set
-- use `vim.keymap.set` instead

local nmap = function(key, effect)
  vim.keymap.set("n", key, effect, { silent = true, noremap = true })
end

local vmap = function(key, effect)
  vim.keymap.set("v", key, effect, { silent = true, noremap = true })
end

local imap = function(key, effect)
  vim.keymap.set("i", key, effect, { silent = true, noremap = true })
end

local function toggle_light_dark_theme()
  if vim.o.background == "light" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
end

local function get_color_scheme()
  if vim.o.background == "light" then
    return "onelight"
  else
    return "cyberdream"
  end
end

local cmap = function(key, effect)
  vim.keymap.set("c", key, effect, { silent = true, noremap = true })
end

--- Simple toggle helper for vim options
---@param option string
---@param values? {on: any, off: any}
local function toggle_option(option, values)
  if values then
    if vim.o[option] == values.off then
      vim.o[option] = values.on
    else
      vim.o[option] = values.off
    end
  else
    vim.o[option] = not vim.o[option]
  end
  vim.notify(option .. " = " .. tostring(vim.o[option]), vim.log.levels.INFO)
end

--- Toggle line numbers
local function toggle_line_number()
  vim.o.number = not vim.o.number
  vim.notify("number = " .. tostring(vim.o.number), vim.log.levels.INFO)
end

--- Toggle treesitter highlighting for current buffer
local function toggle_treesitter()
  local buf = vim.api.nvim_get_current_buf()
  if vim.treesitter.highlighter.active[buf] then
    vim.treesitter.stop(buf)
    vim.notify("Treesitter highlighting disabled", vim.log.levels.INFO)
  else
    vim.treesitter.start(buf)
    vim.notify("Treesitter highlighting enabled", vim.log.levels.INFO)
  end
end

-- BarBar
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Move to previous/next
map("n", "H", "<Cmd>BufferPrevious<CR>", opts)
map("n", "L", "<Cmd>BufferNext<CR>", opts)

-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)

-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)

-- Sort automatically by...
map("n", "<Space>bn", "<Cmd>BufferOrderByName<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)
map("n", "<Space>b<", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<Space>b>", "<Cmd>BufferMoveNext<CR>", opts)

-- osc52 copy moved to <leader>y / <leader>Y (see after/plugin/osc52.lua)
-- <leader>c is reserved as the Code group prefix
map("n", "[h", "<cmd>MkdnPrevHeading<cr>", { desc = "Jump to Previous Heading" })
map("n", "]h", "<cmd>MkdnNextHeading<cr>", { desc = "Jump to Next Heading" })
map("n", "<leader>\\", "<cmd>QuartoPreview<cr>", { desc = "Quarto Preview" })
map("n", "0", "^", { desc = "Beginning of line" })
map("n", "X", [[:keeppatterns substitute/\s*\%#\s*/\r/e <bar> normal! ==<CR>]], { desc = "Split line" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- buffers
map("n", "[b", "<cmd>BufferPrevious<cr>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>BufferNext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bb", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>`", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>bd", function()
  vim.cmd("bdelete")
end, { desc = "Delete Buffer" })
map("n", "<leader>bo", function()
  local current = vim.api.nvim_get_current_buf()
  for _, buf in ipairs(vim.api.nvim_list_bufs()) do
    if buf ~= current and vim.api.nvim_buf_is_loaded(buf) then
      vim.api.nvim_buf_delete(buf, { force = false })
    end
  end
end, { desc = "Delete Other Buffers" })
map("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })

-- Clear search, stop snippet on escape
vim.keymap.set({ "i", "n", "s" }, "<esc>", function()
  pcall(vim.cmd, "noh")
  return "<Esc>"
end, { expr = true, desc = "Escape and Clear hlsearch" })


-- Clear search, diff update and redraw
-- taken from runtime/lua/_editor.lua
map(
  "n",
  "<leader>ur",
  "<Cmd>nohlsearch<Bar>diffupdate<Bar>normal! <C-L><CR>",
  { desc = "Redraw / Clear hlsearch / Diff Update" }
)

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev Search Result" })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

--keywordprg
map("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- commenting
map("n", "gco", "o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Below" })
map("n", "gcO", "O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>", { desc = "Add Comment Above" })

-- checkhealth (replaced Lazy UI)
map("n", "<leader>l", "<cmd>checkhealth<cr>", { desc = "Checkhealth" })

-- new file
map("n", "<leader>fn", "<cmd>enew<cr>", { desc = "New File" })

-- location list
map("n", "<leader>xl", function()
  local success, err = pcall(vim.fn.getloclist(0, { winid = 0 }).winid ~= 0 and vim.cmd.lclose or vim.cmd.lopen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Location List" })

-- quickfix list
map("n", "<leader>xq", function()
  local success, err = pcall(vim.fn.getqflist({ winid = 0 }).winid ~= 0 and vim.cmd.cclose or vim.cmd.copen)
  if not success and err then
    vim.notify(err, vim.log.levels.ERROR)
  end
end, { desc = "Quickfix List" })

map("n", "[q", vim.cmd.cprev, { desc = "Previous Quickfix" })
map("n", "]q", vim.cmd.cnext, { desc = "Next Quickfix" })

-- formatting (using conform)
map({ "n", "v" }, "<leader>cf", function()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Format" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    vim.diagnostic.jump({ count = next and 1 or -1, severity = severity })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- stylua: ignore start

-- toggle options
map("n", "<leader>us", function() toggle_option("spell") end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function() toggle_option("wrap") end, { desc = "Toggle Wrap" })
map("n", "<leader>uL", function() toggle_option("relativenumber") end, { desc = "Toggle Relative Number" })
map("n", "<leader>ud", function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
  vim.notify("Diagnostics " .. (vim.diagnostic.is_enabled() and "enabled" or "disabled"), vim.log.levels.INFO)
end, { desc = "Toggle Diagnostics" })
map("n", "<leader>ul", function() toggle_line_number() end, { desc = "Toggle Line Numbers" })
map("n", "<leader>uc", function()
  toggle_option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 })
end, { desc = "Toggle Conceal Level" })
map("n", "<leader>uA", function()
  toggle_option("showtabline", { off = 0, on = vim.o.showtabline > 0 and vim.o.showtabline or 2 })
end, { desc = "Toggle Tabline" })
map("n", "<leader>uT", function() toggle_treesitter() end, { desc = "Toggle Treesitter" })
map("n", "<leader>ub", function()
  toggle_option("background", { off = "light", on = "dark" })
end, { desc = "Toggle Dark Background" })

if vim.lsp.inlay_hint then
  map("n", "<leader>uh", function()
    vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
    vim.notify("Inlay hints " .. (vim.lsp.inlay_hint.is_enabled() and "enabled" or "disabled"), vim.log.levels.INFO)
  end, { desc = "Toggle Inlay Hints" })
end

-- lazygit
if vim.fn.executable("lazygit") == 1 then
  map("n", "<leader>gg", function()
    vim.cmd("tabnew | terminal lazygit -p " .. (vim.fs.root(0, ".git") or vim.fn.getcwd()))
    vim.cmd("startinsert")
  end, { desc = "Lazygit (Root Dir)" })
  map("n", "<leader>gG", function()
    vim.cmd("tabnew | terminal lazygit")
    vim.cmd("startinsert")
  end, { desc = "Lazygit (cwd)" })
  map("n", "<leader>gl", function()
    vim.cmd("tabnew | terminal lazygit log -p " .. (vim.fs.root(0, ".git") or vim.fn.getcwd()))
    vim.cmd("startinsert")
  end, { desc = "Git Log" })
  map("n", "<leader>gL", function()
    vim.cmd("tabnew | terminal lazygit log")
    vim.cmd("startinsert")
  end, { desc = "Git Log (cwd)" })
end

map("n", "<leader>gb", function()
  vim.cmd("Git blame")
end, { desc = "Git Blame" })
map({ "n", "x" }, "<leader>gB", function()
  vim.fn.system("gh browse")
end, { desc = "Git Browse (open)" })
map({"n", "x" }, "<leader>gY", function()
  local url = vim.fn.system("gh browse --no-browser 2>/dev/null"):gsub("%s+$", "")
  if url ~= "" then
    vim.fn.setreg("+", url)
    vim.notify("Copied: " .. url, vim.log.levels.INFO)
  end
end, { desc = "Git Browse (copy)" })

-- quit
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "Quit All" })

-- highlights under cursor
map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })
map("n", "<leader>uI", function() vim.treesitter.inspect_tree() vim.api.nvim_input("I") end, { desc = "Inspect Tree" })

-- terminal
map("n", "<leader>fT", function()
  vim.cmd("split | terminal")
  vim.cmd("startinsert")
end, { desc = "Terminal (cwd)" })
map("n", "<leader>ft", function()
  local root = vim.fs.root(0, ".git") or vim.fn.getcwd()
  vim.cmd("split | terminal")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. root .. "\n")
  vim.cmd("startinsert")
end, { desc = "Terminal (Root Dir)" })
map("n", "<c-/>", function()
  local root = vim.fs.root(0, ".git") or vim.fn.getcwd()
  vim.cmd("split | terminal")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. root .. "\n")
  vim.cmd("startinsert")
end, { desc = "Terminal (Root Dir)" })
map("n", "<c-_>", function()
  local root = vim.fs.root(0, ".git") or vim.fn.getcwd()
  vim.cmd("split | terminal")
  vim.fn.chansend(vim.b.terminal_job_id, "cd " .. root .. "\n")
  vim.cmd("startinsert")
end, { desc = "which_key_ignore" })

-- Terminal Mappings
map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })
map("t", "<c-_>", "<cmd>close<cr>", { desc = "which_key_ignore" })

-- windows
map("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- native snippets. only needed on < 0.11, as 0.11 creates these by default
if vim.fn.has("nvim-0.11") == 0 then
  map("s", "<Tab>", function()
    return vim.snippet.active({ direction = 1 }) and "<cmd>lua vim.snippet.jump(1)<cr>" or "<Tab>"
  end, { expr = true, desc = "Jump Next" })
  map({ "i", "s" }, "<S-Tab>", function()
    return vim.snippet.active({ direction = -1 }) and "<cmd>lua vim.snippet.jump(-1)<cr>" or "<S-Tab>"
  end, { expr = true, desc = "Jump Previous" })
end
