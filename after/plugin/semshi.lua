vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
  group = vim.api.nvim_create_augroup("SemanticHighlight", {}),
  callback = function()
    vim.cmd([[
      highlight! semshiGlobal gui=italic
      highlight! semshiImported gui=bold
      highlight! link semshiParameter @lsp.type.parameter
      highlight! link semshiParameterUnused DiagnosticUnnecessary
      highlight! link semshiBuiltin @function.builtin
      highlight! link semshiAttribute @attribute
      highlight! link semshiSelf @lsp.type.selfKeyword
      highlight! link semshiUnresolved @lsp.type.unresolvedReference
    ]])
  end,
})
