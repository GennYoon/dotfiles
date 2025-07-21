return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- 비동기 작업에 필요
  },
  build = "npm install -g mcp-hub@latest", -- 핵심 MCP Hub 서버 설치
  config = function()
    require("mcphub").setup({
      -- 필수 구성
      port = 8080, -- 기본 허브 포트
      config = vim.fn.expand("~/.config/mcphub/mcpservers.json"), -- 절대 경로 필요

      -- 선택적 사용자 정의
      log = {
        level = vim.log.levels.WARN, -- DEBUG, INFO, WARN, ERROR
        to_file = true, -- ~/.local/state/nvim/mcphub.log 생성
      },
      extensions = {
        avante = {
          make_slash_commands = true,
        },
      },
      on_ready = function()
        vim.notify("MCP Hub가 온라인입니다!")
      end,
    })
  end,
}
