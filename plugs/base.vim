" 默认值
Plug 'tpope/vim-sensible'

" 状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'dark'

" 文件目录
Plug 'scrooloose/nerdtree'
nnoremap <silent> <C-N> :NERDTreeToggle<CR>

" 最近使用
Plug 'mhinz/vim-startify'

" git
Plug 'tpope/vim-fugitive'

" 高亮单词
Plug 'lfv89/vim-interestingwords'

" 自动注释
Plug 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1

" 语法检查
Plug 'dense-analysis/ale'
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" 模糊查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
let g:Lf_ShortcutF = '<c-p>'
let g:Lf_ShortcutB = '<m-n>'
noremap <silent> <C-F> :LeaderfFile<cr>
noremap <silent> <C-E> :LeaderfMru<cr>
noremap <silent> <m-p> :LeaderfFunction!<cr>
noremap <silent> <m-n> :LeaderfBuffer<cr>
noremap <silent> <m-m> :LeaderfTag<cr>
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}