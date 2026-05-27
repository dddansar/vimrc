"==============================================================================
" File: svn.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting svn.
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


" WARNING: Having this guard will cause the colors to not update...
" Exit if the file was already loaded
" if exists("b:svn_loaded") || !exists("g:vimrc_loaded") " prevent double load
" " if exists("b:svn_loaded")
"   finish
" endif
" let b:svn_loaded = 1

" source $vim_folder_path/more_colors.vim
" source $vim_folder_path/syntax_library.vim
" source $vim_folder_path/regex.vim
" source $vim_folder_path/abbrev.vim

" call AllFilesDefaultSyntax()

" Prevent these files from getting loaded as they are not needed
let b:more_colors_loaded=1
let b:syntax_library_loaded=1
let b:regex_loaded=1
let b:AllFilesDefaultSyntax_loaded=1
let b:abbrev_loaded=1

hi! link svnDelimiter   Comment
hi! link svnModified    Function
hi! link svnAdded       Operator
hi! link svnRemoved     Constant
hi! link svnRenamed     Conditional
hi! link svnSummary     Normal

