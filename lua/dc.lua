local http = require("socket.http")
-- vim.api.nvim_command('!ls')
-- 定义要打开的网址
-- 获取当前缓冲区名称
local bufname = vim.fn.bufname()

-- 如果缓冲区没有保存，则退出
-- if bufname == "" then
--   print("Buffer is not saved")
--   return
-- end

-- 转换为绝对路径
local abs_path = vim.fn.expand(bufname, ":p")
print(abs_path)


-- Windows上的命令行
local url = "file://" .. abs_path

-- Mac上的命令行
-- local command = "open " .. url

-- 执行命令
-- os.execute(command)
vim.api.nvim_create_user_command('Dc', function()
    http.request(url)
    -- os.execute(command)
end, {})
-- vim.api.nvim_create_user_command




