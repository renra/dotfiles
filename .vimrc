filetype plugin on
source ~/.vim/matchit/plugin/matchit.vim
source ~/.vim/editorconfig-vim-master/autoload/editorconfig.vim
source ~/.vim/editorconfig-vim-master/plugin/editorconfig.vim

" call plug#begin('~/.vim/plugged')
" Plug 'elmcast/elm-vim'
" call plug#end()

let b:match_words = '\v<class>|<do>|<def>:<end>'

" Make it easy to navigate errors (and vimgreps)...
"
nnoremap <RIGHT>         :cnf<CR><C-G>
nnoremap <LEFT>          :cpf<CR><C-G>

" Not working seemingly
"set iskeyword=a-z,A-Z,48-57,_,.,-,>

set ignorecase
set smartcase
set incsearch

" :hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkmagenta ctermfg=white guibg=darkmagenta guifg=white

set nocursorline
set nocursorcolumn

" set foldmethod=indent
" set foldopen=all

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.VIM_UNDO_FILES
  set undolevels=5000
endif

nnoremap / /\v

syntax on
set nocompatible
set noswapfile

set encoding=utf-8
set nosmartindent
set autoindent
set indentexpr=""

" Display file name
set modeline
set ruler
set ls=2

set shiftround
set expandtab

" Set the tab width
let s:tabwidth=2
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth

highlight ColorColumn ctermbg=darkmagenta
" call matchadd('ColorColumn', '\%>80v', 100)
set cc=81

set splitright

set wrap
autocmd BufWritePre * :%s/\s\+$//e
autocmd BufRead,BufNewfile *.elm setlocal filetype=haskell

au BufNewFile,BufRead *.hbs set filetype=html
au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.scala set filetype=java
au BufNewFile,BufRead *.module set filetype=php

set wildmenu
set background=dark
set hlsearch

" Only for training
"inoremap <esc> <nop>
"inoremap <Up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>

vnoremap < <gv
vnoremap > >gv

nnoremap j gj
nnoremap k gk

nnoremap <c-l> :nohlsearch<CR>    "

nnoremap <c-d> x
nnoremap + ddkP
noremap - ddp
noremap _ dd

inoremap <c-d> <del>
inoremap <c-u> <esc>lviwuwi
inoremap <c-y> <esc>lviwuwi

" Movement in insert mode
inoremap <c-h> <Left>
inoremap <c-j> <esc>gja
inoremap <c-k> <esc>gka
inoremap <c-l> <Right>
inoremap <c-a> <Esc>^i
inoremap <c-e> <end>

" Select word
noremap <Return> viw

nnoremap <Leader>eb :vs ~/.bashrc<cr>
nnoremap <Leader>et :vs ~/TODO<cr>
nnoremap <Leader>ev :vs $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

noremap <Leader>i i#include <><Left>
inoremap <Leader>i #include <><Left>

nnoremap <Leader>b :buffers<CR>:buffer<Space>

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
inoremap <leader>" ""<esc>i

nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
inoremap <leader>' ''<esc>i

nnoremap <leader>< viw<esc>a><esc>hbi<<esc>lel
inoremap <leader>< <><esc>i

nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
inoremap <leader>( ()<esc>i

nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel
inoremap <leader>{ {}<esc>i

nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel
inoremap <leader>[ []<esc>i

nnoremap <leader>% viw<esc>a%<esc>hbi%<esc>lel
inoremap <leader>% %%<esc>i

inoremap <C-O> <Esc>O

nnoremap <Space> i
inoremap <C-@> <Esc>
vnoremap <C-@> <Esc>

augroup HelpInTabs
  autocmd!
  autocmd BufEnter *.txt call HelpInNewTab()
augroup END

" set matchpairs+=do:end

" Converts help windows to tabs. Courtesy of Damian Conway
function! HelpInNewTab()
  if &buftype == 'help'
    execute "normal \<C-W>T"
  endif
endfunction
