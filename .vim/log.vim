"==============================================================================
" File: log.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all log files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
"------------------------------------------------------------------------------
" Authors: Danny Sarraf
"------------------------------------------------------------------------------
" Copyright: MIT License
"
" Copyright (c) 2026 Danny Sarraf
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
"==============================================================================

" Exit if the file was already loaded
if exists("b:log_loaded")
  finish
endif
let g:log_loaded = 1

" ignore case in this file
syn case ignore

" Unmatch comments.
if hlexists('AllPreComments')
    syn clear AllPreComments
endif
if hlexists('AllPreComments2')
    syn clear AllPreComments2
endif

" Match functions like abc()
hi  link  LogMatches1  Operator
syn match LogMatches1  "\<\w\+()"

hi  link  LogMatches3  NonText
syn match LogMatches3 "\<Mismatch\>"
syn match LogMatches3 "\<errors\>"
syn match LogMatches3 "\%(error\>\)\@<=.*"
syn match LogMatches3 "\<abort\%(ed\|ing\)\?\>"
syn match LogMatches3 "\<abort\>"

hi  link  LogMatches4  Statement
syn match LogMatches4 "\<initializing\>"
syn match LogMatches4 "\<terminating\>"
syn match LogMatches4 "\<start\>"
syn match LogMatches4 "\<stop\>"
syn match LogMatches4 "\<starting\>"
syn match LogMatches4 "\<stopping\>"
syn match LogMatches4 "\<sending\>"
syn match LogMatches4 "\<sent\>"
syn match LogMatches4 "\<done\>"
syn match LogMatches4 "\<entering\>"
syn match LogMatches4 "\<exiting\>"
syn match LogMatches4 "\<listening\>"
syn match LogMatches4 "\<accepted\>"

hi  link  LogMatches4  Statement
syn match LogMatches4  "\<file\>"
syn match LogMatches4  "\<compiling\>"
syn match LogMatches4  "\<compilation\>"
syn match LogMatches4  "\<optimizing\>"
syn match LogMatches4  "\<loading\>"
syn match LogMatches4  "\<importing\>"
syn match LogMatches4  "\<running\>"
syn match LogMatches4  "\<creating\>"
syn match LogMatches4  "\<recompiling\>"
syn match LogMatches4  "\<generating\>"

hi  link  LogMatches5  Operator
syn match LogMatches5  "\<uvm_info\>"
syn match LogMatches5  "\<info\>"
syn match LogMatches5  "\<correct\>"
syn match LogMatches5  "\<uvm_\w\+\>"
syn match LogMatches5  "\<debug\>"

hi  link  LogMatches6  Type
syn match LogMatches6  "\<read\>"
syn match LogMatches6  "\<write\>"
syn match LogMatches6  "\<reading\>"
syn match LogMatches6  "\<writing\>"
syn match LogMatches6  "\<addr\>"
syn match LogMatches6  "\<address\>"
syn match LogMatches6  "\<data\>"

" Match word.word
hi  link  LogMatches7  Tag
syn match LogMatches7  "\<\w\+\(\.\w\+\)\+\>" contains=AllPreTime,AllPreNumbers1

hi  link  LogMatches8  Define
syn match LogMatches8  "warning"
syn match LogMatches8  "UVM_WARNING"

hi  link  LogError     Error
syn match LogError     "\<UVM_ERROR\>"
syn match LogError     "\<error\>"

syn case match

