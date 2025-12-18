return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" }, -- 저장 직전에 로드
    cmd = { "ConformInfo" },
    keys = {
      {
        "<leader>cF",
        function()
          require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
        end,
        mode = { "n", "v" },
        desc = "Format Injected Langs",
      },
    },
    opts = {
      -- 저장 시 포맷팅 강제 활성화
      default_format_opts = {
        timeout_ms = 3000, -- 3초 내에 안 끝나면 포기 (타임아웃 늘림)
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
        lsp_format = "fallback", -- not recommended to change
      },
      -- 파일 타입별 실행 순서 지정
      formatters_by_ft = {
        -- Biome로 먼저 싹 정리하고 -> Rustywind로 클래스 정렬
        ["javascript"] = { "biome", "rustywind" },
        ["javascriptreact"] = { "biome", "rustywind" },
        ["typescript"] = { "biome", "rustywind" },
        ["typescriptreact"] = { "biome", "rustywind" },
        ["css"] = { "biome" },
        ["json"] = { "biome" },
      },
      -- Rustywind 옵션 설정 (선택 사항)
      formatters = {
        biome = {
          -- args를 덮어씌워서 import 정렬 기능까지 포함된 명령어로 변경
          args = { "check", "--write", "--unsafe", "--stdin-file-path", "$FILENAME" },
        },
        rustywind = {
          -- 필요한 경우 인자 추가
          prepend_args = { "--write" },
        },
      },
    },
  },
}
