# Vimrc 配置

---

> .vimrc 用户的详细配置, .vim 插件管理器/swp文件/自定义模板/undo/字典等目录.

## 一. 获取配置文件/文件夹

**两个文件一起配置到用户目录下.**

```bash
git clone https://github.com/biubox/vimrc.git
cp vimrc/.vimrc  ~/
cp -r vimrc/.vim/ ~/
```
插件管理-项目地址
```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

插件管理-`cf加速`-项目地址 **[强烈建议,插件更新/升级更稳定快速]**
```bash
git clone -b cn-fast --depth=1  \
https://github.com/fiixone/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## 二. 配置安装插件


* vim打开任意文件,运行命令:

```bash
    "PluginInstall"	#自动安装所有配置插件.
    "PluginUpdate"	#升级配置插件.
    "PluginClean"	#删除配置插件
    "PluginList"	#查看已配置插件
```
* 快捷键
  * F2  匹配了 nerdtree 目录树快捷键
  * F3  匹配了 Tag 快捷键
  * F4  匹配了 copyright 插件
  * F5  匹配了 Markdown Toc快捷方式
  * F9  匹配了 Chrome 打开当前文件

## 三. neocomplete.vim报错修复

自动匹配`neocomplete.vim`插件报错无法使用需安装`vim-nox`
```bash
sudo apt-get install -y vim-nox	#一般只需要安装这个就可以解决.
```
