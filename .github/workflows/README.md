# GitHub Actions 自动发布工作流

## 文件说明

### `release.yml` (传统版本)
使用传统的 GitHub Actions，分别上传每个文件。

### `release-modern.yml` (推荐版本)
使用现代化的 `softprops/action-gh-release` action，可以一次性上传多个文件，更简洁高效。

## 使用方法

1. **选择一个工作流文件**：推荐使用 `release-modern.yml`
2. **删除不需要的文件**：如果只需要一个工作流，可以删除另一个
3. **推送 tag 触发发布**：
   ```bash
   git tag v1.0.0
   git push origin v1.0.0
   ```

## 工作流触发条件

- 当推送以 `v` 开头的 tag 时触发（如 `v1.0.0`, `v2.1.3`）
- 可以修改 `tags` 部分来改变触发条件

## 上传的文件

默认会上传以下文件到 release：
- `Profiles.json` → `oh-my-nvim-profiles.json`
- `init.lua` → `init.lua`  
- `lua/` 目录 → `lua-configs.tar.gz` (打包后)

## 自定义配置

### 修改上传文件
在 `files:` 部分添加或删除文件：
```yaml
files: |
  Profiles.json
  init.lua
  lua-configs.tar.gz
  README.md  # 添加其他文件
```

### 修改发布说明
编辑 `release_body.md` 的生成部分来自定义发布说明。

### 修改 tag 匹配规则
```yaml
on:
  push:
    tags:
      - 'v*'        # 匹配 v1.0.0
      - 'release-*' # 匹配 release-1.0.0
      - '*'         # 匹配所有 tag
```

## 权限说明

工作流需要 `contents: write` 权限来创建 release 和上传文件。这个权限通过 `GITHUB_TOKEN` 自动提供。

## 故障排除

1. **权限错误**：确保仓库设置中允许 GitHub Actions 有写权限
2. **文件不存在**：检查要上传的文件路径是否正确
3. **Tag 格式**：确保 tag 名称符合触发条件的格式