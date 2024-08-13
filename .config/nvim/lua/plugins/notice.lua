-- 입력창을 멋지게 표현합니다.

return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    routes = {
      {
        filter = {
          event = "msg_show",
          any = {
            { find = "%d+L, %d+B" },
            { find = "; after #%d+" },
            { find = "; before #%d+" },
          },
        },
        view = "mini",
      },
    },
    presets = {
      bottom_search = true, -- 검색을 위해 클래식 하단 cmdline을 사용하십시오.
      command_palette = true, -- cmdline과 팝업 메뉴를 함께 배치
      long_message_to_split = true, -- 긴 메시지는 분할로 전송됩니다
      inc_rename = false, -- inc-rename.nvim에 대한 입력 대화 상자를 활성화합니다.
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  },
}
