return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- 최신 기능을 위해 false 권장
  opts = {
    provider = "claude",
    -- ACP 설정 추가
    acp_providers = {
      ["claude-code"] = {
        command = "claude", -- 설치된 claude-code 실행 명령어
        args = { "acp" }, -- ACP 모드로 실행하라는 인자
      },
    },
  },
  -- 빌드 프로세스 및 의존성 설정
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- 의존성 추가 (이미지 지원 등)
    "nvim-tree/nvim-web-devicons",
    {
      -- 이미지 붙여넣기 기능 지원
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = { insert_mode = true },
        },
      },
    },
  },
}
