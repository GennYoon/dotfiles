-- NOTE: AI 개발(https://github.com/yetone/avante.nvim)

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = true,
  version = false, -- 절대 "*"로 설정하지 않기!
  opts = {
    ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
    provider = "openai", -- 기본 제공자
    openai = {
      endpoint = "https://api.openai.com/v1",
      model = "gpt-4o-mini",
      timeout = 30000,
      temperature = 0,
      max_completion_tokens = 8192,
    },
    system_prompt = function()
      local hub = require("mcphub").get_hub_instance()
      if not hub then
        return nil, vim.notify("MCP Hub not initialized")
      end

      return hub:get_active_servers_prompt()
    end,
    custom_tools = function()
      return {
        require("mcphub.extensions.avante").mcp_tool(),
      }
    end,
  },
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
}
