-- Plugin manifest for vim.pack (nvim 0.12+)
-- All vim.pack.add() calls and PackChanged build hooks

local gh = function(repo) return "https://github.com/" .. repo end

-- Register build hooks BEFORE vim.pack.add() so they fire on install/update
vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name = ev.data.spec.name
    local kind = ev.data.kind
    if kind ~= "install" and kind ~= "update" then return end

    if name == "nvim-treesitter" then
      if not ev.data.active then vim.cmd.packadd("nvim-treesitter") end
      vim.cmd("TSUpdate")
    end

    if name == "blink.cmp" then
      local pack_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/" .. name
      vim.system({ "cargo", "build", "--release" }, { cwd = pack_path }):wait()
    end

    if name == "semshi" then
      pcall(vim.cmd, "UpdateRemotePlugins")
    end

    if name == "CopilotChat.nvim" then
      local pack_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/" .. name
      vim.system({ "make", "tiktoken" }, { cwd = pack_path }):wait()
    end

    if name == "fff.nvim" then
      if not ev.data.active then vim.cmd.packadd("fff.nvim") end
      pcall(function() require("fff.download").download_or_build_binary() end)
    end

    if name == "fzy-lua-native" then
      local pack_path = vim.fn.stdpath("data") .. "/site/pack/core/opt/" .. name
      vim.system({ "make" }, { cwd = pack_path }):wait()
    end
  end,
})

vim.pack.add({
  -- Colorschemes
  gh("scottmckendry/cyberdream.nvim"),
  gh("olimorris/onedarkpro.nvim"),
  gh("marko-cerovac/material.nvim"),
  gh("nyoom-engineering/oxocarbon.nvim"),

  -- Core dependencies
  gh("nvim-tree/nvim-web-devicons"),
  gh("MunifTanjim/nui.nvim"),
  gh("nvim-lua/plenary.nvim"),

  -- Treesitter
  { src = gh("nvim-treesitter/nvim-treesitter"), version = "main" },
  gh("nvim-treesitter/nvim-treesitter-context"),
  gh("nvim-treesitter/nvim-treesitter-textobjects"),
  gh("RRethy/nvim-treesitter-endwise"),

  -- Completion
  { src = gh("saghen/blink.cmp"), version = "main" },
  gh("rafamadriz/friendly-snippets"),

  -- Formatting
  gh("stevearc/conform.nvim"),

  -- Git
  gh("lewis6991/gitsigns.nvim"),

  -- UI
  gh("romgrk/barbar.nvim"),
  gh("nvim-lualine/lualine.nvim"),
  gh("folke/noice.nvim"),
  gh("folke/which-key.nvim"),
  gh("folke/flash.nvim"),
  gh("ibhagwan/fzf-lua"),
  gh("nvim-tree/nvim-tree.lua"),

  -- Editing
  gh("nvim-mini/mini.nvim"),
  gh("Wansmer/treesj"),
  gh("rrethy/vim-illuminate"),
  gh("Bekaboo/deadcolumn.nvim"),
  gh("xiyaowong/nvim-cursorword"),
  gh("tpope/vim-repeat"),
  gh("jghauser/mkdir.nvim"),
  gh("nvimdev/hlsearch.nvim"),
  gh("Pocco81/HighStr.nvim"),
  gh("ojroques/nvim-osc52"),

  -- Python
  gh("wookayin/semshi"),
  gh("vim-python/python-syntax"),
  gh("Vimjas/vim-python-pep8-indent"),
  gh("linux-cultist/venv-selector.nvim"),

  -- Markdown / Quarto
  gh("MeanderingProgrammer/render-markdown.nvim"),
  gh("quarto-dev/quarto-nvim"),
  gh("jmbuhr/otter.nvim"),
  gh("vim-pandoc/vim-pandoc-syntax"),
  gh("KeitaNakamura/tex-conceal.vim"),
  gh("iamcco/markdown-preview.nvim"),
  gh("ellisonleao/glow.nvim"),
  gh("jakewvincent/mkdnflow.nvim"),
  gh("davidmh/mdx.nvim"),

  -- Colorschemes (additional)
  gh("rktjmp/lush.nvim"),

  -- UI (additional)
  gh("danilamihailov/beacon.nvim"),
  gh("nvim-zh/colorful-winsep.nvim"),
  gh("catgoose/nvim-colorizer.lua"),
  gh("rachartier/tiny-inline-diagnostic.nvim"),

  -- Fuzzy cmdline
  gh("gelguy/wilder.nvim"),
  gh("romgrk/fzy-lua-native"),

  -- AI / Chat
  { src = gh("CopilotC-Nvim/CopilotChat.nvim"), version = "main" },
  gh("nickjvandyke/opencode.nvim"),

  -- File navigation
  gh("dmtrKovalenko/fff.nvim"),

  -- Terminal / Kitty
  gh("tridactyl/vim-tridactyl"),
  gh("knubie/vim-kitty-navigator"),
  gh("fladson/vim-kitty"),
  gh("mikesmithgh/kitty-scrollback.nvim"),

  -- Theme switching
  gh("f-person/auto-dark-mode.nvim"),

  -- Activity / Time tracking
  gh("wakatime/vim-wakatime"),
  gh("lowitea/aw-watcher.nvim"),
  gh("liljaylj/codestats.nvim"),
  gh("Rtarun3606k/TakaTime"),

  -- Utilities
  gh("0xferrous/ansi.nvim"),
  gh("okuuva/auto-save.nvim"),
  gh("Sengoku11/commitpad.nvim"),
  gh("alex-popov-tech/store.nvim"),
})
