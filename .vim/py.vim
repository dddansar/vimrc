"==============================================================================
" File: py.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all python files.
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
if exists("b:py_loaded")
  finish
endif
let g:py_loaded = 1


hi  link    PyKeywords1 Statement
syn keyword PyKeywords1       from __file__

hi  link    PyKeywords2 Type
syn keyword PyKeywords2       pyplot numpy pandas random rmdir self debugpy matplotlib sys csv os
syn keyword PyKeywords2       threading time datetime chdir fsync mkdir path remove everything
syn keyword PyKeywords2       math inspect torch dataclasses

hi  link    PyKeywords2 Define
syn keyword PyKeywords2          file

syn keyword PyKeywords1          as
syn keyword PyKeywords1          assert
syn keyword PyKeywords1          async
syn keyword PyKeywords1          await
syn keyword PyKeywords1          class
syn keyword PyKeywords1          def
syn keyword PyKeywords1          del
syn keyword PyKeywords1          except
syn keyword PyKeywords1          finally
syn keyword PyKeywords1          from
syn keyword PyKeywords1          in
syn keyword PyKeywords1          is
syn keyword PyKeywords1          lambda
syn keyword PyKeywords1          None
syn keyword PyKeywords1          nonlocal
syn keyword PyKeywords1          pass
syn keyword PyKeywords1          raise
syn keyword PyKeywords1          try
syn keyword PyKeywords1          with
syn keyword PyKeywords1          yield

