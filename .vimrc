"mkdir ~/.vim
"mkdir ~/.vim/bundle
"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

"mkdir -p ~/.vim/colors && cd ~/.vim/colors 
"wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

syntax on

"-------------python设置--------------
let python_highlight_all=1
nmap <F5> :w<CR>:call RunPython()<CR>
imap <F5> <C-C>:w<CR>:call RunPython()<CR>
func! RunPython()
    if &filetype == 'python'
		"exec "!date | tee .%.output -i"
        "exec "!time python3 % | tee .%.output -a -i"
        exec "!time python3 %"
    endif
endfunc


"---------------样式设置---------------------
" tab宽度和缩进同样设置为4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nocompatible
set number
"设置背景颜色
"hi Normal guibg=#99cc99 guifg=Black
"hi LineNr guibg=#003366 guifg=#99ccff ctermbg=7777 ctermfg=blue
"set cursorline
"hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=#66cc99 guifg=black
" 修改后的vim自动生效, 会出现auto commend的提示
"autocmd BufWritePost  source 
" 修改注释字体颜色
hi Comment ctermfg =cyan



"-------------快捷键设置-------------------
"用于注释的快捷键,需要安装nerdcommenter插件
nmap <C-i> <leader>cc
nmap <S-i> <leader>cu
"保存文件，需要在~/.bashrc中加入  stty -ixon  用于取消linux挂起映射
nmap <C-S> :x<CR>
vmap <C-S> <C-C>:x<CR>
imap <C-S> <C-C>:x<CR>




"设置快捷键, 用于在多窗口中切换光标
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-H> <C-W><C-H>

"---------------NERDTree设置----------------------
map <F2> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" " 设置宽度
let NERDTreeWinSize=31
" " 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" " 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" " 显示书签列表
let NERDTreeShowBookmarks=1






"--------------编辑设置-----------------

"支持utf-8
set encoding=utf-8

"设置配色, 需要下载wombat256mod,见头部
set t_Co=256
color wombat256mod

"你在此设置运行时路径
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" 在这里面输入安装的插件
" Vundle 本身就是一个插件
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" 配色方案
" Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

"Plugin 'christoomey/vim-run-interactive'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'croaky/vim-colors-github'
"Plugin 'danro/rename.vim'
"Plugin 'majutsushi/tagbar'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'kien/ctrlp.vim'
"Plugin 'pbrisbin/vim-mkdir'
"Plugin 'scrooloose/syntastic'
"Plugin 'slim-template/vim-slim'
"Plugin 'thoughtbot/vim-rspec'
"Plugin 'tpope/vim-Pluginr'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-fugitive'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-surround'
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'vim-scripts/ctags.vim'
"Plugin 'vim-scripts/matchit.zip'
"Plugin 'vim-scripts/tComment'
"Plugin 'mattn/emmet-vim'
"Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'godlygeek/tabular'
"Plugin 'msanders/snipmate.vim'
"Plugin 'jelera/vim-javascript-syntax'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'othree/html5.vim'
"Plugin 'xsbeats/vim-blade'
"Plugin 'Raimondi/delimitMate'
"Plugin 'groenewege/vim-less'
"Plugin 'evanmiller/nginx-vim-syntax'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tomasr/molokai'
"Plugin 'klen/python-mode'
"Plugin 'vim-scripts/indentpython.vim'

"代码不全和查看函数定义
Bundle 'davidhalter/jedi-vim'  
Bundle 'ervandew/supertab'
"注释插件
Bundle 'scrooloose/nerdcommenter'
"缩进指示线
Plugin 'Yggdroot/indentLine'
"括号补全
Plugin 'jiangmiao/auto-pairs'
"git插件集成
Plugin 'tpope/vim-fugitive'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" 好看的状态栏
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1 
let g:airline_theme="molokai"

" 文件修改的状态显示
Plugin 'mhinz/vim-signify'



"所有插件都应该在这一行之前
call vundle#end()

" filetype off
filetype plugin indent on
