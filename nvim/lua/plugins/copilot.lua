return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<Tab>",
          next = "<M-]>",
          prev = "<M-[>",
          accept_word = "<M-Tab>",
          dismiss = "<C-]>",
        },
      },
    },
    config = function(_, opts)
      require("copilot").setup(opts)
      -- Tab 키맵이 Copilot Accept로 설정되어 있는지 확인 및 설정
      local map = vim.api.nvim_get_keymap("i")
      local tab_mapped = false
      for _, m in pairs(map) do
        if m.lhs == "<Tab>" and m.desc == "Copilot Accept" then
          tab_mapped = true
          break
        end
      end
      if not tab_mapped then
        vim.keymap.set("i", "<Tab>", function()
          local suggestion = require("copilot.suggestion")
          if suggestion.is_visible() then
            suggestion.accept()
            return ""
          else
            return vim.api.nvim_replace_termcodes("<Tab>", true, true, true)
          end
        end, { expr = true, silent = true, desc = "Copilot Accept" })
      end
    end,
  },
}
