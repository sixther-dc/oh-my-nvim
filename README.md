# visual 模式
## 标题2
列编辑模式，`ctr+v`进入visual模式，然后`c`删除当前行，进入编辑模式，此时编辑的任意内容在按下`esc`键之后都会在所有选中区域生效;
`$`用于生成一个自适应行内容的区域，结合`A`可以实现在所有行尾添加内容的操作，`I`用于在行首添加内容
```
=chapter         ||   page;
=------------    ||   -i;;;;
=normal mode1    ||    56i;;;;
=insert mode23   ||     56i;;;;
=vissual mode444  ||      56i;;;;
```

```
this phrase takes time but even get to the point  {test}
```
---
> 这里是一个引用
---
- list1
- list2
- list3
- list4

## 小技巧
### 复制到系统剪贴板
- 使用 visual 模式选中文本，然后 `"+y` 可以复制到系统剪贴板，已经映射为 `<ctr - y>`
- comment插件提供了快速注释代码的功能，结合 `shift + v` 行级可视模式， `gc` 可实现快捷注释 

## 命令说明
命令 | 说明 
--- | ----
peekopen | 打开markdown预览 

