scriptencoding utf-8

""" plugin
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#begin(expand('~/.vim/bundle/'))
  call neobundle#end()
endif

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundleCheck

" vundle
" original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-pathogen'

" vim-scripts repos
NeoBundle 'rails.vim'

NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimshell'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-haml'
NeoBundle 'nginx.vim'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'yanktmp.vim'

NeoBundle 'rbtnn/rabbit-ui.vim'
NeoBundle 'rbtnn/rabbit-ui-collection.vim'

NeoBundle 'scrooloose/syntastic'

filetype plugin indent on

let g:neocomplcache_enable_at_startup = 1

"Yanktmp
noremap <silent> sy :call YanktmpYank()<CR>
noremap <silent> sp :call YanktmpPaste_p()<CR>
noremap <silent> sP :call YanktmpPaste_P()<CR>

"syntastic
let g:syntastic_enable_signs=1
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_loc_list=2

""" plugin end

set clipboard=unnamed,autoselect

set number
set backspace=2
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set autoindent
set incsearch
set hlsearch
set display=lastline

syntax on

set lcs=tab:>-,trail:_,extends:\
set list
highlight link ZenkakuSpace Error
match ZenkakuSpace /　/

" vimdiff
hi DiffText ctermfg=black ctermbg=7
