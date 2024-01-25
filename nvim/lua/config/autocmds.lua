-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Trun off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- Terraform에서 새파일 생성시 바로 terraform인지 체크를 못하기때문에 해당 파일이 열리면 포맷을 찾게한다.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "tf", "tfvars" },
  callback = function()
    vim.lsp.buf.format()
  end,
})
