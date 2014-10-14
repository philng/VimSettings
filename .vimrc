set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required vundle
Bundle 'gmarik/vundle'

" Bundles here
Bundle 'tpope/vim-surround.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'majutsushi/tagbar.git'
Bundle 'ramitos/jsctags.git'
Bundle 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe.git'
Bundle 'marijnh/tern_for_vim.git'
Bundle 'bling/vim-airline.git'
Bundle 'honza/vim-snippets.git'
" End bundles

filetype plugin indent on
syntax enable

" Syntastic setup
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
let g:syntastic_javascript_syntax_checker="jshint"
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5

let g:syntastic_mode_map = { "mode": "active",
         \ "active_filetypes": [],
         \ "passive_filetypes": ['html'] }
" End syntastic

" Toggle paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
"

" Hotkeys
imap jj <Esc>
nnoremap <silent> <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <leader>d :TagbarToggle<CR>
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-r>"
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
