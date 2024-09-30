-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end

require("config.lazy")
