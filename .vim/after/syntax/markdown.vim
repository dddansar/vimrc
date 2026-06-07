"==============================================================================
" File: markdown.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all markdown files.
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
" if exists("b:markdown_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if exists("g:debug_syntax")
   echom "markdown.vim syntax file loaded"
endif
let b:markdown_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "markdown"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim
   source $vim_folder_path/after/syntax/shared/spell.vim
   " Apply spell checking everywhere in text files.
   syntax spell toplevel

   call AllFilesDefaultSyntax()
endif


hi! link markdownCodeBlock StorageClass
hi! link markdownItalic LineNr

if hlexists('markdownError')
   syn clear markdownError
endif

" Make lines beginning with # as titles
hi link TxtTitles1 AllTitles1
hi link TxtTitles2 AllTitles2
hi link TxtTitles3 AllTitles3
hi link TxtTitles4 AllTitles4
hi link TxtTitles5 AllTitles5
syntax match TxtTitles1 "^\s*# .*"
syntax match TxtTitles2 "^\s*## .*"
syntax match TxtTitles3 "^\s*### .*"
syntax match TxtTitles4 "^\s*#### .*"
syntax match TxtTitles5 "^\s*##### .*"

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "markdown"
   " call AllOperators()
   call AllEqualities()
   call AllArrows()
   call AllSeparators2()
   call AllParenBr()
   " call AllWebsites(0)
   " call AllEmails(0)
   call AllLabel()
   call AllNumbers()
   " call AllSlashes()
   " call AllHLWords()
endif

