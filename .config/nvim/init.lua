require("config.lazy")
require("plugins")

-- Example for configuring Neovim to load user-installed installed Lua rocks:
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

require("webchemist.alpha")
require("webchemist.autopairs")
require("webchemist.bufferline")
require("webchemist.flutter-tools")
require("webchemist.git")
require("webchemist.hop")
require("webchemist.lualine")
require("webchemist.lsp")
require("webchemist.neotree")
require("webchemist.image")
require("webchemist.neotest")
require("webchemist.telescope")
require("webchemist.toggleterm")
require("webchemist.treesitter")
require("webchemist.undotree")

require("whichkey")
