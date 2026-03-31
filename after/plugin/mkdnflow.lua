require("mkdnflow").setup({
  mappings = {
    MkdnFoldSection = { "n", "<leader>k" },
    MkdnUnfoldSection = { "n", "<leader>K" },
  },
  filetypes = {
    rmd = true,
    markdown = true,
    qmd = true,
  },
  foldtext = {
    title_transformer = function()
      local function my_title_transformer(text)
        local updated_title = text:gsub("%b{}", "")
        updated_title = updated_title:gsub("^%s*", "")
        updated_title = updated_title:gsub("%s*$", "")
        updated_title = updated_title:gsub("^######", "######")
        updated_title = updated_title:gsub("^#####", "#####")
        updated_title = updated_title:gsub("^####", "####")
        updated_title = updated_title:gsub("^###", "###")
        updated_title = updated_title:gsub("^##", "##")
        updated_title = updated_title:gsub("^#", "#")
        return updated_title
      end
      return my_title_transformer
    end,
    object_count_icon_set = "nerdfont",
    object_count_opts = function()
      local opts = {
        link = false,
        blockquote = {
          icon = " ",
          count_method = {
            pattern = { "^>.+$" },
            tally = "blocks",
          },
        },
        fncblk = {
          icon = " ",
        },
      }
      return opts
    end,
    line_count = false,
    word_count = true,
    fill_chars = {
      left_edge = "╾────",
      right_edge = "───",
      item_separator = " · ",
      section_separator = " // ",
      left_inside = " ┝",
      right_inside = "┥ ",
      middle = "─",
    },
  },
})
