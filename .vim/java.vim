"==============================================================================
" File: java.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all java files.
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
if exists("b:java_loaded")
  finish
endif
let g:java_loaded = 1


hi  link    JavaKeywords Statement
syn keyword JavaKeywords abstract    assert      boolean
syn keyword JavaKeywords catch       implements
syn keyword JavaKeywords synchronized
syn keyword JavaKeywords extends     final       finally
syn keyword JavaKeywords instanceof  interface   long        native
syn keyword JavaKeywords class       private     protected   public
syn keyword JavaKeywords new         package
syn keyword JavaKeywords short       strictfp    super
syn keyword JavaKeywords this        throw       throws
syn keyword JavaKeywords transient   try         volatile

syn keyword JavaKeywords System java
