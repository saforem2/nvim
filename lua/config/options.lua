-- Neovim options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.termguicolors = true
vim.opt.shortmess:append("A")

-- Sets how neovim will display certain whitespace in the editor.
--  See :help 'list'
--  and :help 'listchars'
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- don't continue comments automagically
-- https://neovim.io/doc/user/options.html#'formatoptions'
vim.opt.formatoptions:remove("c")
vim.opt.formatoptions:remove("r")
vim.opt.formatoptions:remove("o")

vim.g.vim_markdown_auto_insert_bullets = 0
vim.g.vim_markdown_new_list_item_indent = 0
vim.g.vim_markdown_strikethrough = 1
-- vim.g.tex_superscripts = "[0-9a-zA-W.,:;+-<>/()=]"
-- vim.g.tex_subscripts = "[0-9aehijklmnoprstuvx,+-/().]"
vim.g.vim_markdown_frontmatter = 1
vim.g.vim_markdown_math = 1
-- vim.g.vim_markdown_fenced_languages = { "csharp=cs", "python=py" }
vim.g.vim_markdown_folding_level = 2
vim.opt.foldminlines = 0 -- Allow folding/hiding single lines
vim.opt.fillchars = "fold: " -- remove the trailing dots
-- Hide deprecation warnings
vim.g.deprecation_warnings = false

local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.colorcolumn = { "80" }
-- only set clipboard if not in ssh, to make sure the OSC 52
-- integration works automatically. Requires Neovim >= 0.10.0
opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
opt.completeopt = { "menu", "noinsert", "noselect" }
-- opt.completeopt = "menu,menuone,noinsert,noselect"
opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.cursorline = true -- Enable highlighting of the current line
opt.ttyfast = true -- Faster scrolling
opt.expandtab = true -- Use spaces instead of tabs
opt.fillchars = {
  foldopen = "",
  foldclose = "",
  fold = " ",
  foldsep = " ",
  diff = "╱",
  eob = " ",
}
opt.foldlevel = 99
opt.formatexpr = ""
opt.formatoptions = "jcroqlnt" -- tcqj
opt.foldmethod = "expr" -- Treesitter folding
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()" -- Treesitter folding
-- Make cursor blink
opt.guicursor = {
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50",
  "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
  "sm:block-blinkwait175-blinkoff150-blinkon175",
}
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.ignorecase = true -- Ignore case
opt.inccommand = "nosplit" -- preview incremental substitute
opt.incsearch = true
opt.jumpoptions = "view"
opt.laststatus = 3 -- global statusline
opt.linebreak = true -- Wrap lines at convenient points
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.pumblend = 10 -- Popup blend
opt.pumheight = 15 -- Maximum number of entries in a popup
opt.relativenumber = true -- Relative line numbers
opt.scrolloff = 10 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.shiftround = true -- Round indent
opt.shortmess:append({ W = true, I = true, c = true, C = true })
opt.showmode = false -- Dont show mode since we have a statusline
opt.showbreak = "↳"
opt.sidescrolloff = 10 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.spelloptions:append("noplainbuffer")
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = "screen"
opt.splitright = true -- Put new windows right of current
-- opt.statuscolumn = [[%!v:lua.require'lazyvim.util'.ui.statuscolumn()]]
opt.shiftwidth = 2 -- Size of an indent
opt.tabstop = 2 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Lower than default (1000) to quickly trigger which-key
opt.ttimeoutlen = 10 -- Low value for terminal key codes; avoids Esc delay while still receiving Alt-key sequences
opt.undofile = true
opt.undodir = vim.fn.expand("~/.undodir")
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width
opt.wrap = false -- Disable line wrap
opt.showmatch = true

-- if vim.fn.has("nvim-0.10") == 1 then
--   opt.smoothscroll = true
--   opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
--   opt.foldmethod = "expr"
--   opt.foldtext = ""
-- else
--   opt.foldmethod = "indent"
--   opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
-- end

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 1

-- Semshi (Python semantic highlighting)
-- These must be set before the plugin loads (vim.pack sources plugins before after/plugin/)
vim.g["semshi#error_sign"] = false
vim.g["semshi#simplify_markup"] = false
vim.g["semshi#mark_selected_nodes"] = false
vim.g["semshi#update_delay_factor"] = 0.001

-- LSP config moved to init.lua + lsp/*.lua
