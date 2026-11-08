"==============================================================================
" File: qf.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for Quickfix Window.
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

if !exists("g:syntax_on")
  finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif

" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:qf_loaded")
"    finish
" endif
if exists("g:debug_syntax")
   echom "qf.vim syntax file loaded"
endif
let b:qf_loaded = 1

if !exists("b:current_syntax") || b:current_syntax == ""
   let b:current_syntax = "qf"
endif

if exists("b:current_syntax") && b:current_syntax == "qf"
   source $vim_folder_path/lib/more_colors.vim
   source $vim_folder_path/lib/syntax_library.vim
   source $vim_folder_path/lib/unicode.vim
   " echom "qf.vim source files loaded"

   call AllCaps()
   call AllHLWords()
   call AllNumbers()
   call AllNumbersHex()
   call AllNumbersUnicode()

   syn clear qfText
   syn match qfText ".*" contained contains=AllCaps,AllCaps1,AllNumbersSci,AllNumbersUnd,AllNumbersHex1,AllNumbersHex2,AllNumbersTick,AllNumbersUnicode,@ClusterUnicode

endif

