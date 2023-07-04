--lazy 插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

--Lazy插件管理
require("plugins")
--基础配置
require("basic")
--主题配置
require("colorscheme")
-- 快捷键映射
require("keybindings")
-- require("dc")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.nvim-treesitter")
require("plugin-config.go")
require("plugin-config.neodev")
require("plugin-config.toggleterm")
require("plugin-config.nvim-autopairs")
require("plugin-config.indent-blankline")
require("plugin-config.peek")
require("plugin-config.comment")
require("lsp.setup")
require("lsp.cmp")

