require("liang.remap")
require("liang.config")
require("liang.packer")

local augroup = vim.api.nvim_create_augroup
local TheLiangGroup = augroup('TheLiang', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd({ 'BufWritePre' }, {
  group = TheLiangGroup,
  pattern = "*",
  command = "%s/\\s\\+$//e"
})
