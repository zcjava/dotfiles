set clipboard=unnamed
" vim 复制内容到系统剪切板
"runtime autoload/pathogen.vim
"execute pathogen#infect()
" 开启语法高亮
" set guifont=Menlo\ for\ Powerline
syntax enable
filetype on
set nu
set showcmd
set wrap
" 代码缩进
filetype indent on
filetype plugin on
filetype plugin indent on
colorscheme default     
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 折叠
" set fdm=syntax

set fileencodings=utf-8,gb2312,gbk
set encoding=gbk
         
let mapleader=";"

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

" 总是现实状态栏
" set laststatus=2 
set encoding=utf-8
set ruler
" set cursorcolumn
" 开启实时搜索
set incsearch
" 开启高亮搜索
set hlsearch
" 忽略大小写
set ignorecase

set nocompatible

set wildmenu

set nowrap

" 基于缩进或语法进行代码折叠
set foldmethod=syntax
" 启动vim时关闭折叠代码
set nofoldenable



" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" jump anywhere
Bundle 'Lokaltog/vim-easymotion'
" powerline 
Bundle 'Lokaltog/vim-powerline'
" powerline setting
let g:Powerline_colorscheme='solarized256'
let g:Powerline_symbols='fancy'
" 颜色配置
set t_Co=256
set cursorline 
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=LightBlue

Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fh :NERDTreeToggle<CR>
 " 设置NERDTree子窗口宽度
let NERDTreeWinSize=20
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','\.swo$']
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn 
Bundle 'kien/ctrlp.vim'

Bundle 'Tagbar'
" tagbar
let g:tagbar_width=25
let g:tagbar_autofocus=1
let g:tagbar_right=1
nmap <Leader>fl :TagbarToggle<CR>

" 设置 ctags 对哪些代码元素生成标签
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
map <F8>:! ctags -R --languages=javascript,java,python<CR>


Bundle 'bufexplorer.zip'

Bundle 'Syntastic'
" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
highlight SyntasticErrorSign guifg=white guibg=black
let g:syntastic_loc_list_height = 5
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_jshint_exec='/usr/local/bin/jshint'

nmap <Leader>s :call ToggleErrors()<cr>
nmap <Leader>sn :lnext<cr>
nmap <Leader>sp :lprevious<cr>

Bundle 'ZenCoding.vim'

" Bundle 'valloric/YouCompleteMe'
" let g:ycm_filetype_blacklist = {
"       \ 'tagbar' : 1,
"       \ 'qf' : 1,
"       \ 'notes' : 1,
"       \ 'unite' : 1,
"       \ 'text' : 1,
"       \ 'vimwiki' : 1,
"       \ 'gitcommit' : 1,
"       \}
" let g:ycm_semantic_triggers = {
"    \   'css': [ 're!^\s{4}', 're!:\s+' ],
"    \ }
" let g:ycm_seed_identifiers_with_syntax = 1

Bundle 'marijnh/tern_for_vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'

" markdown 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_frontmatter = 1
" Plugin 'JamshedVesuna/vim-markdown-preview'
" let vim_markdown_preview_browser = 'Google Chrome'
" let vim_markdown_preview_toggle = 1

Plugin 'myhere/vim-nodejs-complete'

Plugin 'maksimr/vim-jsbeautify'
map <Leader>fm :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <Leader>fm :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <Leader>fm :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <Leader>fm :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <Leader>fm :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <Leader>fm :call CSSBeautify()<cr>


" Plugin 'pangloss/vim-javascript'
" let g:javascript_plugin_jsdoc = 1 
" let g_javascript_plugin_flow = 1 

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" java complete 
" Plugin 'arrtur-shaik/vim-javacomplete2'
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

" 成对生成() {}
Plugin 'Raimondi/delimitMate'

" 快速注释  选中后  gc 即可
Plugin 'tpope/vim-commentary'
