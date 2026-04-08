# Neovim Config (vim.pack)

## Architecture

This is a Neovim 0.12+ config using the **built-in `vim.pack` API** — no lazy.nvim or any external plugin manager.

```
init.lua                    # Entry point: options → packs → keymaps → autocmds → LSP
lua/packs.lua               # vim.pack.add() declarations + PackChanged build hooks
lua/config/options.lua      # Global vim options (loaded first, before plugins)
lua/config/keymaps.lua      # Global keymaps
lua/config/autocmds.lua     # Autocommands
lua/config/icons.lua        # Shared icon constants (used by blink.cmp, etc.)
lua/style.lua               # UI constants (borders, emojis)
lsp/*.lua                   # Per-server LSP configs (Neovim 0.12+ native LSP)
after/plugin/*.lua          # Per-plugin setup() calls and keymaps (41 files)
after/queries/              # Treesitter query overrides
ftplugin/                   # Filetype-specific settings
```

## Key patterns

- **Package declaration**: `gh("owner/repo")` helper in `lua/packs.lua` → `vim.pack.add({...})`
- **Build hooks**: `PackChanged` autocmd for treesitter TSUpdate, blink.cmp cargo build, semshi UpdateRemotePlugins, CopilotChat tiktoken, fff binary, fzy-lua-native make
- **Plugin config**: Each plugin gets its own `after/plugin/<name>.lua` calling `require("plugin").setup({...})`
- **LSP**: Native `vim.lsp.enable()` in init.lua + per-server configs in `lsp/` directory
- **No lazy loading**: All plugins load on startup (vim.pack doesn't support lazy loading)

## Important details

- `mapleader` is set to `<Space>` in `options.lua` — must stay before any keymap definitions
- Semshi `vim.g["semshi#..."]` settings are in `options.lua` (not after/plugin/) because they must be set before the plugin loads
- `<leader>c` is reserved as the Code group prefix (osc52 clipboard copy uses `<leader>y` instead)
- Gitsigns keymaps are buffer-local via `on_attach` callback, not global
- store.nvim is pcall-wrapped because its markview.nvim dependency is not installed

## Keymap groups (which-key)

| Prefix | Group | Key bindings |
|--------|-------|-------------|
| `<leader>a` | AI | CopilotChat toggle/open/reset/explain/fix |
| `<leader>b` | Buffers | navigate, delete, order, move |
| `<leader>c` | Code | format, diagnostics, symbols, references, venv |
| `<leader>f` | Files/Find | files, buffers, help, registers, jumps, marks, keymaps |
| `<leader>g` | Git | lazygit, blame, browse, stage/reset hunks, diff |
| `<leader>m` | Markdown | Glow preview, browser preview |
| `<leader>s` | Search | grep, lines, history, highlights, emoji |
| `<leader>u` | UI Toggles | spell, wrap, numbers, diagnostics, colorizer, treesitter |
| `<leader>w` | Windows | split, delete |
| `<leader>x` | Lists | location list, quickfix |
| `<leader><tab>` | Tabs | new, close, navigate |

Other notable keymaps: `s`/`S` (flash jump/treesitter), `ff` (fff file finder), `]c`/`[c` (git hunks), `[h`/`]h` (markdown headings), `<F3>`/`<F4>` (highlight text)

## Origin

This config was migrated from a LazyVim-based setup. The migration:
1. Converted all `lua/plugins/*.lua` lazy specs → `vim.pack.add()` entries + `after/plugin/*.lua` configs
2. Replaced lazy.nvim framework features with native Neovim equivalents
3. Previous repo: `saforem2/starter` (fork of LazyVim/starter)
4. GitHub: `saforem2/nvim`
