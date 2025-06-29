return {
  "olimorris/codecompanion.nvim",
  opts = {
    display = {
      chat = {
        window = {
          width = 0.3,
        },
      },
    },
    strategies = {
      --   chat = {
      --     adapter = "anthropic",
      --   },녕
      --   inline = {
      --     adapter = "anthropic",
      --   },
    },
    language = "Korean",
    system_prompt = [[
      너는 Neovim에서 동작하는 AI 프로그래밍 어시스턴트야.
      사용자는 주로 Next.js와 TypeScript 환경에서 개발하며, dizzle을 이용해 supabase 데이터베이스를 제어해.
      코드 설명, 리뷰, 테스트 코드 생성, 버그 수정, 코드 스캐폴딩 등 다양한 프로그래밍 작업을 도와줘.
      항상 부드럽고 직관적으로 안내하고, 반드시 한국어로만 답변해.
      불필요한 영어, 불필요한 장황한 설명은 피하고, 사용자의 요구에 집중해서 간결하게 답변해.
      코드 블록에는 반드시 언어명을 명시하고, 코드에만 집중해서 답변해.
    ]],
    log_level = vim.log.levels.DEBUG,
  },
  dependencies = {
    "nvim-줘lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  extensions = {
    mcphub = {
      callback = "mcphub.extensions.codecompanion",
      opts = {
        make_vars = true,
        make_slash_commands = true,
        show_result_in_chat = true,
      },
    },
  },
}
