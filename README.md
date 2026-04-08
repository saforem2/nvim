# Neovim Config (vim.pack)

A Neovim 0.12+ config using the **built-in `vim.pack` API** — no lazy.nvim, no external plugin manager.

Migrated from a LazyVim-based setup (`saforem2/starter`) to native Neovim APIs.

## Directory Structure

```
init.lua                    # Entry point: options → packs → keymaps → autocmds → LSP
lua/
  packs.lua                 # vim.pack.add() declarations + PackChanged build hooks
  config/
    options.lua             # Global vim options (loaded first, before plugins)
    keymaps.lua             # Global keymaps
    autocmds.lua            # Autocommands
    icons.lua               # Shared icon constants (completion kinds, diagnostics, git)
  style.lua                 # UI constants (border chars, emoji set)
lsp/                        # Per-server LSP configs (Neovim 0.12+ native LSP)
after/plugin/               # Per-plugin setup() calls and keymaps
after/queries/              # Treesitter query overrides
ftplugin/                   # Filetype-specific settings (python, markdown, quarto, sh, r)
```

## LSP Servers

All servers use Neovim 0.12's native `vim.lsp.enable()` — no lspconfig or Mason required. Each server has a config file in `lsp/` returning a settings table.

| Server | Language | Notes |
|--------|----------|-------|
| `pyright` | Python | Type checking, hover, completions (imports/linting deferred to ruff) |
| `ruff` | Python | Linting + formatting |
| `ty` | Python | Astral's type checker (inlay hints for variable types disabled) |
| `luals` | Lua | Third-party checking off, telemetry off |
| `marksman` | Markdown | Wiki-links, references, TOC |
| `jsonls` | JSON | Validation enabled |
| `ast_grep` | Multi | AST-based structural search/lint |
| `ltex_plus` | Text | Grammar/spell checking |
| `copilot-language-server` | AI | GitHub Copilot |

### Formatting (conform.nvim)

| Filetype | Formatter |
|----------|-----------|
| Lua | `stylua` |
| Markdown | `mdslw` |

Format with `<leader>cf` (async, falls back to LSP).

## Plugins (57)

### Colorschemes
- [cyberdream.nvim](https://github.com/scottmckendry/cyberdream.nvim) — primary dark theme
- [onedarkpro.nvim](https://github.com/olimorris/onedarkpro.nvim) — light theme (`onelight`)
- [material.nvim](https://github.com/marko-cerovac/material.nvim)
- [oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim)
- [lush.nvim](https://github.com/rktjmp/lush.nvim) — colorscheme creation framework
- [auto-dark-mode.nvim](https://github.com/f-person/auto-dark-mode.nvim) — OS-level light/dark switching

### Treesitter
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) — syntax highlighting, folding
- [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) — sticky context header
- [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) — function/class text objects
- [nvim-treesitter-endwise](https://github.com/RRethy/nvim-treesitter-endwise) — auto-close `end` blocks

### Completion & Snippets
- [blink.cmp](https://github.com/saghen/blink.cmp) — fast completion engine (sources: LSP, path, snippets, buffer)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets) — snippet collection

### Git
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) — git signs, hunk navigation, blame

### UI & Navigation
- [barbar.nvim](https://github.com/romgrk/barbar.nvim) — buffer tabs
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [noice.nvim](https://github.com/folke/noice.nvim) — enhanced notifications, cmdline, LSP hover
- [which-key.nvim](https://github.com/folke/which-key.nvim) — keymap hint popup
- [flash.nvim](https://github.com/folke/flash.nvim) — jump/search motions
- [fzf-lua](https://github.com/ibhagwan/fzf-lua) — fuzzy finder (files, grep, symbols, etc.)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) — file explorer
- [beacon.nvim](https://github.com/danilamihailov/beacon.nvim) — cursor flash on jump
- [colorful-winsep.nvim](https://github.com/nvim-zh/colorful-winsep.nvim) — colored window separators
- [nvim-colorizer.lua](https://github.com/catgoose/nvim-colorizer.lua) — inline color previews
- [tiny-inline-diagnostic.nvim](https://github.com/rachartier/tiny-inline-diagnostic.nvim) — compact diagnostics

### Editing
- [mini.nvim](https://github.com/nvim-mini/mini.nvim) — comment, pairs, surround, and more
- [treesj](https://github.com/Wansmer/treesj) — split/join code blocks
- [vim-illuminate](https://github.com/rrethy/vim-illuminate) — highlight other occurrences of word
- [deadcolumn.nvim](https://github.com/Bekaboo/deadcolumn.nvim) — fading color column
- [nvim-cursorword](https://github.com/xiyaowong/nvim-cursorword) — underline word under cursor
- [vim-repeat](https://github.com/tpope/vim-repeat) — `.` repeat for plugin actions
- [mkdir.nvim](https://github.com/jghauser/mkdir.nvim) — auto-create parent directories on save
- [hlsearch.nvim](https://github.com/nvimdev/hlsearch.nvim) — auto-clear search highlighting
- [HighStr.nvim](https://github.com/Pocco81/HighStr.nvim) — persistent text highlighting
- [nvim-osc52](https://github.com/ojroques/nvim-osc52) — clipboard via OSC 52 (SSH-friendly)
- [conform.nvim](https://github.com/stevearc/conform.nvim) — formatting engine

### Python
- [semshi](https://github.com/wookayin/semshi) — semantic syntax highlighting
- [python-syntax](https://github.com/vim-python/python-syntax) — enhanced syntax
- [vim-python-pep8-indent](https://github.com/Vimjas/vim-python-pep8-indent) — PEP 8 indentation
- [venv-selector.nvim](https://github.com/linux-cultist/venv-selector.nvim) — virtual environment picker

### Markdown & Quarto
- [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) — inline rendering
- [quarto-nvim](https://github.com/quarto-dev/quarto-nvim) — Quarto document support
- [otter.nvim](https://github.com/jmbuhr/otter.nvim) — embedded code LSP in markdown/quarto
- [vim-pandoc-syntax](https://github.com/vim-pandoc/vim-pandoc-syntax) — pandoc syntax
- [tex-conceal.vim](https://github.com/KeitaNakamura/tex-conceal.vim) — LaTeX conceal
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) — browser preview
- [glow.nvim](https://github.com/ellisonleao/glow.nvim) — terminal markdown preview
- [mkdnflow.nvim](https://github.com/jakewvincent/mkdnflow.nvim) — markdown navigation & links
- [mdx.nvim](https://github.com/davidmh/mdx.nvim) — MDX support

### AI
- [CopilotChat.nvim](https://github.com/CopilotC-Nvim/CopilotChat.nvim) — Copilot chat interface
- [opencode.nvim](https://github.com/nickjvandyke/opencode.nvim) — OpenCode AI

### File Navigation
- [fff.nvim](https://github.com/dmtrKovalenko/fff.nvim) — fast file finder

### Terminal & Kitty
- [vim-kitty-navigator](https://github.com/knubie/vim-kitty-navigator) — Kitty pane navigation
- [vim-kitty](https://github.com/fladson/vim-kitty) — Kitty config syntax
- [kitty-scrollback.nvim](https://github.com/mikesmithgh/kitty-scrollback.nvim) — Kitty scrollback buffer

### Fuzzy Cmdline
- [wilder.nvim](https://github.com/gelguy/wilder.nvim) — fuzzy command-line completion
- [fzy-lua-native](https://github.com/romgrk/fzy-lua-native) — native fzy algorithm

### Activity Tracking
- [vim-wakatime](https://github.com/wakatime/vim-wakatime)
- [aw-watcher.nvim](https://github.com/lowitea/aw-watcher.nvim) — ActivityWatch
- [codestats.nvim](https://github.com/liljaylj/codestats.nvim) — Code::Stats
- [TakaTime](https://github.com/Rtarun3606k/TakaTime)

### Utilities
- [ansi.nvim](https://github.com/0xferrous/ansi.nvim) — ANSI color code rendering
- [auto-save.nvim](https://github.com/okuuva/auto-save.nvim) — auto-save on change
- [commitpad.nvim](https://github.com/Sengoku11/commitpad.nvim) — commit message scratchpad
- [store.nvim](https://github.com/alex-popov-tech/store.nvim) — persistent data store

### Core Dependencies
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nui.nvim](https://github.com/MunifTanjim/nui.nvim)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)

## Keymaps

**Leader**: `<Space>`

### Leader Groups

| Prefix | Group | Examples |
|--------|-------|---------|
| `<leader>a` | AI | `ac` toggle chat, `ao` open, `ar` reset, `ae` explain, `af` fix |
| `<leader>b` | Buffers | `bb` switch, `bd` delete, `bo` delete others, `bn` order by name |
| `<leader>c` | Code | `cf` format, `cd` diagnostics, `cs` symbols, `cS` workspace symbols, `cr` references, `cv` venv select |
| `<leader>f` | Files/Find | `ff` files, `fb` buffers, `fg` grep, `fh` help, `fk` keymaps, `fn` new file |
| `<leader>g` | Git | `gg` lazygit, `gb` blame, `gB` browse, `gs` stage hunk, `gd` diff |
| `<leader>m` | Markdown | `mp` glow preview, `mP` browser preview |
| `<leader>s` | Search | `sg` live grep, `sw` grep word, `sl` buffer lines, `sh` highlights |
| `<leader>u` | UI Toggles | `us` spell, `uw` wrap, `ul` line numbers, `ud` diagnostics, `uh` inlay hints, `uT` treesitter, `uC` colorizer |
| `<leader>w` | Windows | `-` split below, `\|` split right, `wd` delete |
| `<leader>x` | Lists | `xl` location list, `xq` quickfix |
| `<leader><tab>` | Tabs | `<tab><tab>` new, `<tab>d` close, `<tab>]` next, `<tab>[` prev |

### Navigation

| Key | Mode | Action |
|-----|------|--------|
| `H` / `L` | n | Previous / Next buffer |
| `[b` / `]b` | n | Previous / Next buffer |
| `[d` / `]d` | n | Previous / Next diagnostic |
| `[e` / `]e` | n | Previous / Next error |
| `[w` / `]w` | n | Previous / Next warning |
| `[h` / `]h` | n | Previous / Next heading (markdown) |
| `[q` / `]q` | n | Previous / Next quickfix |
| `s` | n | Flash jump |
| `S` | n | Flash treesitter select |
| `r` | o | Remote flash |
| `<C-h/j/k/l>` | n | Navigate windows |
| `<C-p>` | n | Buffer pick mode |
| `ff` | n | fff file finder |

### Editing

| Key | Mode | Action |
|-----|------|--------|
| `<A-j>` / `<A-k>` | n, i, v | Move line(s) down / up |
| `<C-s>` | n, i, v | Save file |
| `0` | n | Jump to first non-blank character |
| `X` | n | Split line at cursor |
| `gco` / `gcO` | n | Add comment below / above |
| `<leader>y` / `<leader>Y` | n, v | Copy to system clipboard (OSC 52) |

## Options

- **Indentation**: 2 spaces (4 for Python)
- **Line numbers**: Relative + absolute
- **Color column**: 80
- **Search**: ripgrep via `grepprg`
- **Folding**: Treesitter-based
- **Clipboard**: System clipboard sync (OSC 52 for SSH)
- **Cursor**: Blinking block (normal), blinking line (insert)
- **Statusline**: Global (`laststatus=3`)
- **Undo**: Persistent, 10,000 levels
- **Scrolloff**: 10 lines
- **Spell**: English

## Requirements

- **Neovim** 0.12+ (required for `vim.pack` and native LSP)
- **Git** (for vim.pack to clone plugins)
- **ripgrep** (`rg`) — used by fzf-lua and grepprg
- **fzf** — fuzzy finder backend
- **lazygit** — terminal git UI (optional)
- **glow** — terminal markdown renderer (optional)
- **Cargo/Rust** — blink.cmp builds from source

### LSP Servers (must be on `$PATH`)

```bash
# Python
pip install pyright
uv tool install ty
uv tool install ruff

# Lua
brew install lua-language-server    # or build from source

# Markdown
brew install marksman

# JSON
npm install -g vscode-json-language-server

# Code search
brew install ast-grep               # or cargo install ast-grep

# Grammar
brew install ltex-ls-plus           # or download from GitHub

# Formatting
cargo install stylua
```

## Installation

```bash
git clone https://github.com/saforem2/nvim ~/.config/nvim
nvim  # vim.pack will auto-install plugins on first launch
```

To use alongside another Neovim config:

```bash
git clone https://github.com/saforem2/nvim ~/.config/nvim-custom
NVIM_APPNAME=nvim-custom nvim
```
