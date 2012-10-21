set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required vundle
Bundle 'gmarik/vundle'

" Bundles here
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'msanders/snipmate.vim'
Bundle 'majutsushi/tagbar.git'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/AutoComplPop.git'
Bundle 'Rip-Rip/clang_complete'
" End bundles

filetype plugin indent on
syntax on

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_javascript_checker="jshint"
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

let g:syntastic_mode_map = { "mode": "active",
         \ "active_filetypes": [],
         \ "passive_filetypes": ['html'] }
" End syntastic

" Clang Complete Options
set completeopt=menu,menuone,longest
set pumheight=15
let g:clang_library_path='/usr/lib'
let g:clang_complete_copen=1
let g:clang_use_library=1
"

" AutoComplPop for eclim
let g:acp_behaviorJavaEclimLength = 3
function MeetsForJavaEclim(context)
  return g:acp_behaviorJavaEclimLength >= 0 &&
        \ a:context =~ '\k\.\k\{' . g:acp_behaviorJavaEclimLength . ',}$'
endfunction
let g:acp_behavior = {
    \ 'java': [{
      \ 'command': "\<c-x>\<c-u>",
      \ 'completefunc' : 'eclim#java#complete#CodeComplete',
      \ 'meets'        : 'MeetsForJavaEclim',
    \ }]
  \ }
"

" Javascript Ctags support
" NOTE: Requires doctorjs installed
" let g:tagbar_type_javascript = {
"     \ 'ctagsbin' : '/usr/local/bin/jsctags'
" \ }
"

" Toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"

" Hotkeys
imap jj <Esc>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>d :TagbarToggle<CR>
"

" Color scheme stuff
set term=xterm-256color
set t_Co=256
colorscheme wombat256
"
          
set autoindent
set softtabstop=2 shiftwidth=2 tabstop=2
set expandtab
set mouse=a
set number
