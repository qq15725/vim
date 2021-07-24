if has('patch-8.1.2269')
    " Latest YCM needs at least this version of vim
    Plug 'ycm-core/YouCompleteMe'
else
    " Version compatible with the vim in Debian 10 buster
    Plug 'ycm-core/YouCompleteMe', { 'commit':'d98f896' }
endif

let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'                    " 使用 Ctrl+Z 主动触发语义补全
noremap <c-z> <NOP>
set completeopt=menu,menuone
" 修改补全列表配色
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
" 对指定源文件，输入两个字母后即触发语义补全
let g:ycm_semantic_triggers =  {
        \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
        \ 'cs,lua,javascript': ['re!\w{2}'],
        \ }
let g:ycm_filetype_whitelist = {
         \ "c":1,
         \ "cpp":1,
         \ "go":1,
         \ "python":1,
         \ "sh":1,
         \ "zsh":1,
         \ }
let g:ycm_filetype_blacklist = {
     \ 'markdown' : 1,
     \ 'text' : 1,
     \ 'pandoc' : 1,
     \ 'infolog' : 1,
     \}
