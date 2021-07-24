" 一个简单的插件，它将改进 PHP 的语法突出显示。像本文中的许多插件一样，它是高度可配置的。
Plug 'StanAngeloff/php.vim'

" 这将在您需要时自动格式化您的代码（例如，通过按键或每次保存 PHP
" 文件时）。默认情况下，它会按照PSR1 /
" PSR2规则格式化您的代码，但您也可以自行配置。
Plug 'stephpy/vim-php-cs-fixer'
nnoremap <silent> <C-L> :call PhpCsFixerFixFile()<CR>
nnoremap <silent> <leader>pcd :call PhpCsFixerFixDirectory()<CR>
let g:php_cs_fixer_rules = "@PSR2"
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.
