return {
  settings = {
    pyright = {
      -- Let ruff handle import organization
      disableOrganizeImports = true,
    },
    python = {
      analysis = {
        -- Let ruff handle linting diagnostics
        ignore = { "*" },
      },
    },
  },
}
