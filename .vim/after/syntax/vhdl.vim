"==============================================================================
" File: vhdl.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all VHDL files.
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


" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:vhdl_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if !exists("g:syntax_on")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "vhdl.vim syntax file loaded"
endif
let b:vhdl_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "vhdl"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   if hlexists('vhdlTodo')
      syn clear vhdlTodo
   endif

   call AllFilesDefaultSyntax()
endif

hi  link    VHDLConditional Conditional
syn keyword VHDLConditional if else begin end then

hi  link    VHDLRepeat Repeat
syn keyword VHDLRepeat while do for loop

hi  link    VHDLFunction Function
syn keyword VHDLFunction function procedure package

hi  link    VHDLType Type
syn keyword VHDLType variable

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "vhdl"
   call AllTime()
   call AllOperators()
   call AllShiftOp()
   call AllEqualities()
   call AllParenBr()
   call AllArrows()
   call AllSeparators()
   call AllDefineTick()
   call AllLabel()
endif


