require("colorizer").setup({
  filetypes = { "*" },
  buftypes = {},
  user_commands = true,
  lazy_load = false,
  options = {
    parsers = {
      css = true,
      hex = {
        rrggbbaa = true,
        aarrggbb = true,
      },
      names = {
        lowercase = true,
        camelcase = true,
        uppercase = false,
        strip_digits = false,
        custom = false,
      },
      tailwind = {
        enable = true,
        update_names = false,
      },
      sass = { enable = true, parsers = { css = true } },
    },
    display = {
      mode = "background",
      virtualtext = {
        char = "■",
        position = "eol",
        hl_mode = "foreground",
      },
    },
    always_update = false,
  },
})
