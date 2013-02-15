" voutliner.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" ~ Indentation
setlocal shiftwidth=4
setlocal tabstop=4
setlocal softtabstop=4

setlocal autoindent   " Enable auto indent
setlocal smartindent  " Enable context-sensitive indentation
setlocal expandtab    " Replace tabs with spaces
setlocal smarttab     " Insert space on the start of a line (the shiftwidth)
setlocal shiftround   " Round the indent to multiple of shiftwidth

" ~ Text
setlocal textwidth=80        " Set textwidth to 80 characters
setlocal wrap                " Wrap the text
setlocal linebreak           " Break whole words
setlocal formatoptions+=cqt  " Automatic hard wrapping

" ~ Folding
setlocal foldmethod=expr
setlocal foldexpr=VOFolding()
setlocal foldtext=VOFoldingText()

function! VOFolding()
  let line = getline(v:lnum)
  if match(line, "^\s*$") >= 0
    return ">0"
  elseif match(line, "^.*:$") >= 0
    return ">1"
  else
    return "="
  endif
endfunction

function! VOFoldingText()
  let foldsize = (v:foldend-v:foldstart)
  if foldsize == '1'
    return getline(v:foldstart).' '.foldsize.' line '
  endif
  return getline(v:foldstart).' '.foldsize.' lines '
endfunction
