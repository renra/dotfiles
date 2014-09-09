" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent off
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


set nocompatible
set noswapfile
set encoding=utf-8
set smartcase

set nosmartindent
set autoindent
set indentexpr=""

" Display file name
set modeline
set ls=2

set shiftround
set expandtab

" Set the tab width
let s:tabwidth=2
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth

set cc=80
set scrolloff=500
highlight ColorColumn ctermbg=magenta

set splitright

set wrap
autocmd BufWritePre * :%s/\s\+$//e

set wildmenu
set background=dark
set hlsearch

inoremap <esc> <nop>
inoremap <Up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

vnoremap < <gv
vnoremap > >gv

nnoremap j gj
nnoremap k gk

if has('mouse')
  set mouse=ar
end

nnoremap <c-l> :nohlsearch<CR>

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
noremap <c-a> ^
noremap <c-e> <end>
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

" filetype off
" filetype plugin indent off
" set rtp+=$GOROOT/misc/vim
" filetype plugin indent on
" syntax on

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.handlebars set filetype=html
au BufNewFile,BufRead *.go set filetype=javascript
au Filetype php,html,xml,xsl,eruby source ~/.vim/scripts/closetag.vim
au Filetype rb source ~/.vim/scripts/reek.vim

" inoremap <Leader>s <span class="italic">

set hidden
set bs=2
