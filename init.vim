let g:elm_setup_keybindings = 0

call plug#begin('~/.config/nvim/plugged')
Plug 'https://github.com/neomake/neomake.git'
Plug 'https://github.com/editorconfig/editorconfig-vim.git'
Plug 'elmcast/elm-vim'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/wincent/command-t.git'
Plug 'scrooloose/nerdcommenter'
call plug#end()

nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <c-l> :nohlsearch<CR>

"autocmd! BufWritePost * Neomake
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <C-n> :NERDTreeToggle<CR>

" Make it easy to navigate errors (and vimgreps)...
"
nnoremap <RIGHT>         :cnf<CR><C-G>
nnoremap <LEFT>          :cpf<CR><C-G>

set ignorecase
set smartcase
set incsearch

" :hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" :hi CursorColumn cterm=NONE ctermbg=darkmagenta ctermfg=white guibg=darkmagenta guifg=white
set background=dark

if has('persistent_undo')
  set undofile
  set undodir=$HOME/.NVIM_UNDO_FILES
  set undolevels=5000
endif

set noswapfile
set encoding=utf-8

highlight ColorColumn ctermbg=darkmagenta
set cc=81

vnoremap < <gv
vnoremap > >gv

nnoremap j gj
nnoremap k gk

nnoremap <c-d> x
nnoremap + ddkP
noremap - ddp
noremap _ dd

nnoremap <c-a> ^

inoremap <c-d> <del>

" Movement in insert mode
inoremap <c-h> <Left>
inoremap <c-j> <esc>gja
inoremap <c-k> <esc>gka
inoremap <c-l> <Right>
inoremap <c-a> <Esc>^i
inoremap <c-e> <end>

" Select word
nnoremap <Return> viw

nnoremap <Leader>eb :vs ~/.bashrc<cr>
nnoremap <Leader>ev :vs $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

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

nnoremap <leader># viw<esc>a %><esc>hbi<%= <esc>lel
inoremap <leader># <%=  %><esc>hhi

nnoremap <Space> i
