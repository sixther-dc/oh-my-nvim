--基础配置
require("basic")
--主题配置
require("colorscheme")
--Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
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
require("lsp.setup")
require("lsp.cmp")
