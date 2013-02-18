" voutliner.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" Set .otl and .oln as the default file extensions
au BufNewFile,BufRead,BufEnter *{otl,oln} set filetype=voutliner
" Remove the added syntax highlighting when leaving the buffer
au BufLeave * silent exec 'colorscheme '.g:colors_name
