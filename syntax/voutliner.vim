" voutliner.vim
"
"  Version: 1.0
"   Author: Ellen Gummesson
"  License: Vim

" Check if the current syntax is already loaded
if exists("b:current_syntax")
  finish
endif

" Clear the syntax highlighting
syntax clear

" Set the main syntax as 'voutliner'
if !exists("main_syntax")
  let main_syntax = "voutliner"
endif

" Regex matches
syntax match L1 /\v^(.*):$/
syntax match L2 /\v^(\t|\s{2})(-|\s+).*$/
syntax match L3 /\v^(\t{2}|\s{4})(-|\s+).*$/
syntax match L4 /\v^(\t{3}|\s{6})(-|\s+).*$/
syntax match L5 /\v^(\t{4}|\s{8})(-|\s+).*$/
syntax match L6 /\v^(\t{5}|\s{10})(-|\s+).*$/
syntax match L7 /\v^(\t{6}|\s{12})(-|\s+).*$/
syntax match L8 /\v^(\t{7}|\s{14})(-|\s+).*$/
syntax match L9 /\v^(\t{8}|\s{16})(-|\s+).*$/
syntax match Co /\v\s+(\/{2}).*$/

" Link syntax matches to highlighting
hi def link L1  PreProc
hi def link L2  Statement
hi def link L3  Type
hi def link L4  Constant
hi def link L5  Identifier
hi def link L6  Statement
hi def link L7  Type
hi def link L8  Constant
hi def link L9  Identifier
hi def link Co  Comment

" Remove inconsistencies in GUI colorschemes
hi PreProc     gui=bold
hi Statement   gui=NONE
hi Type        gui=NONE
hi Constant    gui=NONE
hi Identifier  gui=NONE
hi Comment     gui=italic

" Set the current syntax as 'voutliner'
let b:current_syntax = "voutliner"
