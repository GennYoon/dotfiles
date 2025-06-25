-- NOTE: AI 개발(https://github.com/yetone/avante.nvim)

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = true,
  version = false, -- 절대 "*"로 설정하지 않기!
  opts = {
    ---@alias Provider "claude" | "openai" | "azure" | "gemini" | "cohere" | "copilot" | string
    provider = "openai", -- 기본 제공자
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o",
        timeout = 30000,
        extra_request_body = {
          temperature = 0,
          max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
          reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
        },
      },
      ollama = {
        endpoint = "http://127.0.0.1:11434",
        timeout = 30000, -- Timeout in milliseconds
        extra_request_body = {
          options = {
            temperature = 0.75,
            num_ctx = 20480,
            keep_alive = "5m",
          },
        },
      },
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
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "echasnovski/mini.pick", -- for file_selector provider mini.pick
    "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
    "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
    "ibhagwan/fzf-lua", -- for file_selector provider fzf
    "stevearc/dressing.nvim", -- for input provider dressing
    "folke/snacks.nvim", -- for input provider snacks
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
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
