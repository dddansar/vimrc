"==============================================================================
" File: bash.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all bash files.
"------------------------------------------------------------------------------
" Authors: Danny Sarraf
"------------------------------------------------------------------------------
" URL: https://github.com/dddansar/vimrc
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
if exists("b:bash_loaded")
  finish
endif
let g:bash_loaded = 1

hi! link shVarAssign    Operator
" hi! link shAlias        Number
hi! link shAlias        Define
hi! link shLoop         Repeat

call AllPathsSingleSlashStart(1)

hi  link    LinuxCommands2 Identifier
syn keyword LinuxCommands2 vsp split wincmd contained containedin=shSingleQuote

" create dummy region to contain paths
syn match ShDummyRegion "^\w\+=.*" transparent


