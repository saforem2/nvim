-- store.nvim optionally depends on markview.nvim (not installed)
local ok, store = pcall(require, "store")
if ok then
  store.setup({})
end
