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

inoremap <Leader>s <span class="italic">

set hidden
