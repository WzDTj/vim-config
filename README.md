# WzDTj's vim config

## 介绍

这份配置是按照自己技术栈配置。
按 [通用文档编辑器] [代码编辑器] 两个层面来进行拆封、解耦。

在通用文档编辑器层面，有以下功能支持：

- 快速查找文件
- 当前文件信息
- Buffer 的快捷操作

在代码编辑器层面，需要对支持的语言满足以下几个要素：

- 语法高亮
- 代码补全
- 代码格式化
- 定义跳转
- 语法、语义即时报错
- 版本控制

## 安装

将配置直接覆盖至 home 目录

## 语言支持

| 语言 |
| --- |
| MarkDown |
| --- |
| C |
| C++ |
| HTML |
| CSS |
| Less |
| Sass |
| PHP |
| JavaScript |
| TypeScript |

## 默认键位

通用快捷键
---

| 快捷键 | 说明 |
|:---|:---|
| \<leader\>e | 打开/关闭文件管理器 |
| \<leader\>w | 保存 |
| \<leader\>q | 关闭 |
| \<leader\>vs | 垂直分屏 |
| \<leader\>ls | 查看 Buffer |
| \<leader\>o | 打开文件 |
| \<leader\>sf | 搜索文件 |
| \<leader\>st | 搜索文本 |
| \<leader\>y | 复制 |
| \<leader\>p | 粘贴 |

代码快捷键
---

| 快捷键 | 说明 |
|:---|:---|
| \<leader\>/ | 注释/解除注释 |
| \<leader\>otl | 打开/关闭代码大纲 |
| \<leader\>i | 格式化代码 |
| \<leader\>fix | 修复错误 |
| \<leader\>ycm | 调用 YcmCompleter 命令 |
| \<leader\>def | 跳转到定义 |
| \<leader\>ref | 查看引用 |
| \<leader\>doc | 查看文档 |

