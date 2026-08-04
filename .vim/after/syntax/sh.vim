"==============================================================================
" File: sh.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all sh/bash files.
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
" if exists("b:sh_loaded")
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
   echom "sh.vim syntax file loaded"
endif
let b:sh_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && (b:current_syntax == "sh" || b:current_syntax == "csh" || b:current_syntax == "bash" || b:current_syntax == "posix")
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim
   source $vim_folder_path/after/syntax/shared/linux.vim

   call AllFilesDefaultSyntax()
   call AllPathsSingleSlashStart(1)
   call RegexMatches(1)
   call RegexMatchesPerl(1)
   call SpRegexSearches(1)
   " AllPaths needs to be after regex/slashes/operators/separators...
   call AllPaths1(0)
   call AllPathsWin(0)
   call AllPathsDollar(0)
   call AllDefineDollar()
endif

hi! link shVarAssign    Operator
" hi! link shAlias        Number
hi! link shAlias        Define
hi! link shLoop         Repeat

" hi  link    ShDollarBracket   Define
" syn match   ShDollarBracket   "\%(\${\|}\)" contained containedin=shDoubleQuote,shSingleQuote

hi  link    ShDelimiters   Delimiter
syn match   ShDelimiters   "[:;|]" contained containedin=shDoubleQuote,shSingleQuote

hi  link    ShOptions   shOption
syn match   ShOptions   "--\w\+\>" contained containedin=shDoubleQuote,shSingleQuote
syn match   ShOptions   "\s-[a-zA-Z]\+\s" contained containedin=shDoubleQuote,shSingleQuote

hi  link    ShOperators   Operator
syn match   ShOperators   "[=]" contained containedin=shDoubleQuote,shSingleQuote

hi  link    LinuxCommands2 Identifier
syn keyword LinuxCommands2 vsp split wincmd contained containedin=shSingleQuote

" invisible/transparent group...
syn keyword LinuxCommands tmux containedin=shIf

