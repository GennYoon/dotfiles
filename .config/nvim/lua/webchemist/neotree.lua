-- neo-tree.lua

local status_ok, neo_tree = pcall(require, "neo-tree")
if not status_ok then
  return
end

neo_tree.setup({
  window = {
    mappings = {
      ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
    },
  },
})
