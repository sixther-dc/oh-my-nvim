# Visual 模式
## 标题2
列编辑模式，`ctr+v`进入visual模式，然后`c`删除当前行，进入编辑模式，此时编辑的任意内容在按下`ESC`键之后都会在所有选中区域生效;
`$`用于生成一个自适应行内容的区域，结合`A`可以实现在所有行尾添加内容的操作，`I`用于在行首添加内容
```
=chapter             page;
=-------------       -I;
=Normal mode1         56I;
=Insert mode23         56I;
=Visual mode444         56I;
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
使用 Visual 模式选中文本，然后 `"+y` 可以复制到系统剪贴板，已经映射为 `<ctr - y>`

命令 | 说明 
--- | ----
PeekOpen | 打开markdown预览 

