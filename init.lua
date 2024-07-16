vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true 
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.laststatus = 2

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smarttab = true

-- vim.filetype.add {
--  extension = {
--    lua = function(path)
--      return path:match ".nvim.lua$" and "lua" or "luau"
--    end,
--  },
--}

require("ben.lazy")
