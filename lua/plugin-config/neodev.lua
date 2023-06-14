local status, neodev = pcall(require, "neodev")
if not status then
    vim.notify("没有找到 neovim")
  return
end

neodev.setup({
})

