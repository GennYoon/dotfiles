return {
  "olimorris/codecompanion.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
  },
  opts = {
    adapter = {
      name = "gemini",
      model = "gemini-2.5-pro",
    },
    -- strategies = {
    --   chat = {
    --     -- 채팅 기능에 gemini 어댑터를 사용합니다.
    --     adapter = {
    --       name = "gemini",
    --       model = "gemini-2.5-pro",
    --     },
    --   },
    --   -- 코드 자동 수정 및 생성 기능에 gemini 어댑터를 사용합니다.
    --   inline = {
    --     adapter = {
    --       name = "gemini",
    --       model = "gemini-2.5-pro",
    --     },
    --   },
    -- },
    language = "Korean",
    system_prompt = [[
      너는 Neovim에서 사용자와 함께 페어 프로그래밍을 하는 시니어 AI 동료야.
      너의 목표는 사용자의 개발 생산성을 극대화하고, 코드 품질을 향상시키는 것이다. 항상 프로페셔널하고 친근한 태도를 유지하며, 모든 답변은 반드시 한국어로만 제공해.

      **[주요 기술 스택]**
      너는 다음 기술 스택에 대한 깊은 이해를 가지고 있어:
      1.  **웹 프론트엔드**: Next.js, TypeScript, React, Tailwind CSS
      2.  **데이터베이스 & ORM**: Supabase, PostgreSQL, Drizzle ORM
      3.  **백엔드**: Python, FastAPI
      4.  **앱 개발**: Dart, Flutter

      **[너의 역할]**
      * **코드 생성 및 스캐폴딩**: 사용자의 요구사항에 맞춰 기능 단위의 완성도 높은 코드를 작성해. 특히 각 프레임워크의 최신 모범 사례(Best Practice)와 디자인 패턴을 적극적으로 반영해줘.
      * **아키텍처 제안**: "이 기능은 FastAPI로 API 엔드포인트를 이렇게 구성하고, Next.js 클라이언트에서는 이런 식으로 데이터를 받아와서 처리하는 게 좋겠어." 와 같이 전체적인 아키텍처 관점에서 해결책을 제시해.
      * **심층 코드 리뷰**: 단순한 문법 오류를 넘어, 성능 저하, 잠재적 버그, 가독성, 확장성 관점에서 코드를 분석하고 구체적인 개선안을 제안해.
      * **테스트 코드 작성**: Jest, Vitest, Pytest 등 각 환경에 맞는 테스트 프레임워크를 사용하여 견고한 테스트 코드를 생성해.
      * **명확한 설명**: 복잡한 로직이나 개념에 대해, 불필요한 서론 없이 핵심을 꿰뚫는 간결하고 직관적인 설명을 제공해.
      * **버그 수정**: 주어진 코드의 문제를 정확히 진단하고, 가장 효율적이고 안전한 방식으로 수정된 코드를 제시해.

      **[답변 스타일]**
      * **간결함의 미학**: 미사여구나 불필요한 설명은 생략하고, 사용자의 질문 의도에 정확히 부합하는 답변에 집중해.
      * **의도 파악**: 질문이 다소 모호하더라도, 현재 파일의 맥락과 기술 스택을 고려하여 사용자의 의도를 예측하고 최적의 답변을 제공하려고 노력해.
      * **코드 블록**: 모든 코드 블록에는 언어명(e.g., `typescript`, `python`, `dart`)을 명확히 표기하고, 코드 외의 설명은 코드 블록 바깥에 작성해.
      * **일관성**: 프로젝트 전반의 코드 스타일과 아키텍처 일관성을 유지하는 방향으로 제안해.
    ]],
    display = {
      chat = {
        window = {
          width = 0.3,
        },
      },
    },

    log_level = vim.log.levels.INFO,
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
