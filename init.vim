set noundofile
set nobackup
set noswapfile

set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'

set ts=2
set softtabstop=2
set shiftwidth=2
set expandtab

syntax on
set hlsearch

set backspace=indent,eol,start
call plug#begin()
"let g:plug_url_format = 'git@github.com:%s.git'
  Plug 'rust-lang/rust.vim'
  Plug 'cp2k/vim-cp2k'
  Plug 'arnoudbuzing/wolfram-vim',{'for':'wolfram'}
  Plug 'Valloric/YouCompleteMe',{'for':'python' }
call plug#end()

" ycm
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }
highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
      \ "python":1,                
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }
