"============================================================================
"
"     自定义区
"
"============================================================================

set nocompatible        " 关闭 vi 兼容模式(vundle需要配置)
filetype off            " 关闭文件检测(vundle需要配置)

syntax on               " 自动语法高亮
set number              " 显示行号
set cursorline          " 突出显示当前行
set ruler               " 打开状态栏标尺
set t_Co=256            " 启用256色
"colorscheme molokai    " 设定配色方案
set fillchars=vert:\ ,stl:\ ,stlnc:\  "分屏中间白线

set clipboard+=unnamed,unnamedplus		" 共享剪贴板
set mouse=a             " 支持鼠标
set showmode            " 显示所处模式
set showcmd             " 显示输入的命令
set magic               " 设置魔术
"set guioptions-=T       " 隐藏工具栏
"set guioptions-=m       " 隐藏菜单栏
set cmdheight=1         " 设置命令行的行数为 1
" 状态行显示的内容（包括文件类型和解码）
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2        " 显示状态栏 默认值为 1, 0 表示不显示，1 表示只在多窗口时显示，2 表示显示
set noerrorbells        " 置空错误铃声的终端代码
"set visualbell         " 出错时，发出视觉提示，通常是屏幕闪烁。
set wildmenu                          " 命令模式下，底部操作指令按下 Tab 键自动补全
set wildmode=longest:list,full        " 命令模式下，底部操作指令按下 Tab 键自动补全


set autoindent          " 自动缩进
set smartindent         " 开启新行时使用智能自动缩进
set expandtab           " 设置自动将 Tab 转为空格
set tabstop=4           " 设定 tab 长度为 4
set shiftwidth=4        " 设定<<和>>命令移动时的宽度为4
set softtabstop=-1       " 使得按退格键时可以一次删除的空格数,当softtabstop的值为负数,会使用shiftwidth的值
"set noexpandtab         " 不要用空格代替制表符
set expandtab           " 用空格代替制表符

set showmatch           " 插入括号时，自动高亮对应的另一个括号
set matchtime=2         " 显示匹配括号的时间(1/10s)
set incsearch           " 输入搜索内容时就显示搜索结果
set hlsearch            " 搜索时高亮显示被找到的文本
set ignorecase          " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感

set history=1000        " 记住多少次历史操作
set autoread            " 打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了）就会发出提示
set autochdir           " 默认的工作目录是打开的第一个文件的目录,新建自动切换当前目录为当前文件所在的目录

set nobackup            " 文件不备份
set noswapfile          " 不创建交换文件
set undofile            " 默认情况下，操作记录只在本次编辑时有效.打开这个设置可以保留撤销历史
set backupdir=~/.vim/.backup/
set directory=~/.vim/.swp/
set undodir=~/.vim/.undo/


set foldenable          " 开始折叠
set foldmethod=syntax   " 设置语法折叠
set foldcolumn=0        " 设置侧边提示折叠区域的宽度
setlocal foldlevel=4    " 设置折叠层数为
"set foldclose=all      " 设置自动关闭折叠


" 语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=mM
set fencs=utf-8,gbk,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936


" 设置字典 ~/.vim/dict/文件的路径
autocmd filetype javascript	set dictionary=~/.vim/dict/javascript.dict
autocmd filetype css		set dictionary=~/.vim/dict/css.dict
autocmd filetype php		set dictionary=~/.vim/dict/php.dict


" 检测到新建文档格式匹配，自动应用模板
autocmd BufNewFile *.html   0r ~/.vim/template/html.conf
autocmd BufNewFile *.css	0r ~/.vim/template/css.conf
autocmd BufNewFile *.php	0r ~/.vim/template/php.conf

" 自定义光标样式
if &term =~ "xterm"
		let &t_SI = "\<Esc>[5 q" . "\<Esc>]12;green\x7"		" &t_SI 表示插入模式
		let &t_SR = "\<Esc>[5 q" . "\<Esc>]12;blue\x7"		" &t_SR 表示替换模式
		let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"		" &t_EI 表示 Normal 模式
endif
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

"============================================================================
"
"     自定义键盘映射区
"
"============================================================================

" Buffers操作快捷方式
"nnoremap <C-RETURN> :bnext<CR>
"nnoremap <C-S-RETURN> :bprevious<CR>

" Tab操作快捷方式!
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

" 关于tab的快捷键
" map tn :tabnext<cr>
" map tp :tabprevious<cr>
" map td :tabnew .<cr>
" map te :tabedit
" map tc :tabclose<cr>

" 窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
"光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
"时候会变得非常方便.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 退出vim映射 默认模式下，按 \q (默认的leader键是 \)就等价于输入 :q 并按回车键执行，按 \w 等价于输入 :w
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>

" 可实现免退出使用超级用户权限保存文件
cmap w!! w !sudo tee > /dev/null %

" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y
vmap <C-v> "+gP
"map <F5> <Esc>:!google-chrome % &<CR> <CR>
map <F9> <Esc>:!google-chrome % &<CR> <CR>



"============================================================================
"
"     Vundle  插件区
"
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"
"============================================================================
"   设置运行 Vundle 初始化路径
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"   可以自定义 Vundle在该路径中安装插件, 另外，Vundle也应安装在相同位置
"call vundle#begin('~/some/path/here')
"
"   必须用Vundle 来管理引入的 Vundle插件
"Plugin 'VundleVim/Vundle.vim'
Plugin 'fiixone/Vundle.vim'
"   以下是支持的不同格式的示例。
"   插件 必需要放置在 vundle#begin()和vundle#end()之间.
"----------------------------------------------------------------------------
"   以下是插件引入示例:                                                        -
"   plugin on GitHub repo                                                   -
"   Plugin 'tpope/vim-fugitive'                                             -
"                                                                           -
"   plugin from http://vim-scripts.org/vim/scripts.html                     -
"   Plugin 'L9'                                                             -
"                                                                           -
"   Git plugin not hosted on GitHub                                         -
"   Plugin 'git://git.wincent.com/command-t.git'                            -
"                                                                           -
"   git repos on your local machine (i.e. when working on your own plugin)  -
"   Plugin 'file:///home/gmarik/path/to/plugin'                             -
"----------------------------------------------------------------------------


"-------下方状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"let g:airline_powerline_fonts = 1							" 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1				" 显示窗口tabline
let g:airline#extensions#tabline#buffer_nr_show = 0         " 显示窗口buffer
let g:airline_theme='badwolf'								" badwolf主题
"let g:airline#extensions#hunks#enabled = 1					" 1;启用/0;禁用在源代码控制下显示更改的大块摘要
"let g:airline#extensions#hunks#non_zero_only = 1		    " 1;启用/0;禁用仅显示非零大块头
"let g:airline#extensions#hunks#hunk_symbols = ['+', '~', '-']
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

"let g:airline_left_sep = '»'
"let g:airline_left_alt_sep = '❯'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_right_alt_sep = '❮ '
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.colnr = ':'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.readonly = '⛔'
let g:airline_symbols.dirty='🗑️'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '␊'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

"-------Git-signify插件
Plugin 'mhinz/vim-signify'
let g:signify_vcs_list = ['git','svn']		"指定版本控制软件
" Plugin 'airblade/vim-gitgutter'
set updatetime=100

"-------Git-版本控制
Plugin 'tpope/vim-fugitive'

"-------插件路径管理
Plugin 'pathogen.vim'



"-------显示缩进的对齐线
Plugin 'indentLine.vim'
let g:indentLine_color_term = 239


"-------Emmet-HTML结构插件
"       ctrl+y+,  运行
Plugin 'mattn/emmet-vim'
let g:user_emmet_install_global = 0         "禁止全局启用
autocmd FileType html,css EmmetInstall      "只在html，css文件中使用

let g:user_emmet_leader_key='<C-E>'         "自定义映射！！ 结尾也需要 (,)  的


"-------目录树
Plugin 'scrooloose/nerdtree'
" :ERDtree 打开NERD_tree :NERDtreeClose 关闭NERD_tree
" o 打开关闭文件或者目录 t 在标签页中打开
" T 在后台标签页中打开 ! 执行此文件
" p 到上层目录 P 到根目录
" K 到第一个节点 J 到最后一个节点
" u 打开上层目录 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录 R 递归刷新当前根目录
"
" F2 NERDTree 切换
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>


"-------Tag插件
Plugin 'taglist.vim'
" ctags 配置:F3快捷键显示程序中的各种tags，包括变量和函数等。
" 如果打开vim出现以下提示 "Taglist: Exuberant ctags (http://ctags.sf.net) not found in PATH. Plugin is not loaded."
" 请执行   sudo apt-get install exuberant-ctags
map <F3> :TlistToggle<CR>
let Tlist_Use_Right_Window=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_WinWidt=25

Plugin	'preservim/tagbar'
nmap  <F8> :TagbarToggle <CR>


"-------CtrlP 搜索插件
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_working_path_mode = ''
set wildignore+=*/temp/*,.so,*.swp,*.zip,*.xls


"-------自动补齐括号
Plugin 'guoang/delimitMate'
let delimitMate_expand_cr = 1
filetype indent plugin on


"-------NeoComplete.vim 自动补全插件
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1       "开启插件
"以下文件启用补齐
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"-------Markdown插件
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_fenced_languages=['bash=sh']	"代码块定义
let g:vim_markdown_frontmatter = 1				"突出显示yaml
let g:vim_markdown_toml_frontmatter = 1			"突出显示toml
let g:vim_markdown_json_frontmatter = 1			"突出显示json
"let g:vim_markdown_edit_url_in = 'tab'			"新文件默认使用tab方式打开
let g:vim_markdown_toc_autofit = 1				"启用Toc窗口自动调整大小
let g:vim_markdown_folding_level = 3			"折叠级别是 1 到 6 之间的数字.如果未指定,则默认设置为1.展开用作文档标题的 1 级标题
let g:vim_markdown_folding_style_pythonic = 1	"设置折叠样式为python-mode
let g:vim_markdown_override_foldtext = 0		"禁用文本折叠
let g:vim_markdown_conceal = 0					"禁用隐藏
"let g:vim_markdown_conceal_code_blocks = 0		"禁用代码块隐藏

map <F5> <Esc>:Toc<CR> <CR>

Plugin	'iamcco/markdown-preview.nvim'
let g:mkdp_delay_auto_refresh=2000
nmap <silent> <F7> <Plug>MarkdownPreview
imap <silent> <F7> <Plug>MarkdownPreview
nmap <silent> <F8> <Plug>StopMarkdownPreview
imap <silent> <F8> <Plug>StopMarkdownPreview



"-------vim-copyright插件
Plugin 'Nine2/vim-copyright'
"let g:file_copyright_company = "your company, default: null"
"let g:file_copyright_rights = "custom_rights, default:'All rights reserved.'"
let g:file_copyright_name = "Fiix.one"
let g:file_copyright_email = ""
let g:file_copyright_auto_update = 0			"自动升级版权. Default: 1; 0关闭自动.
let g:file_copyright_auto_filetypes =[]			"自动添加版权的文件类型,如下为默认配置
"let g:file_copyright_auto_filetypes = ['sh', 'plx', 'pl', 'pm', 'py', 'python','h', 'hpp', 'c', 'cpp', 'java','ruby', 'rb', 'rake','uml', 'plantuml','go',]
nmap <F4> :CopyrightUpdate<cr>					"绑定F4为快捷方式


"-------修复行末空格: FixWhitespace
Plugin 'bronson/vim-trailing-whitespace'




"-----------------必须在 此行之前 添加所有插件-----------------------------------
"----------------------------------------------------------------------------
call vundle#end()            " required
filetype plugin indent on    " required

"   要忽略插件缩进更改，请使用：
"filetype plugin on
"
" 简要命令帮助：  列表/安装/搜索/清除  插件
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" 命令 :h 有关更多详细信息，常见问题解答
"----------------------------------------------------------------------------

