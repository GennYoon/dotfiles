return {
  "ravitemer/mcphub.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "MCPHub",
  build = "npm install -g mcp-hub@latest",
  config = function()
    require("mcphub").setup({
      auto_approve = true,
      extensions = {
        avante = {
          make_slash_commands = true,
        },
      },
      log = {
        level = vim.log.levels.WARN, -- DEBUG, INFO, WARN, ERROR
        to_file = false,
        file_path = nil,
        prefix = "MCPHub",
      },
      on_ready = function()
        vim.notify("MCP Hub가 시작되었습니다!")
      end,
    })
  end,
}
