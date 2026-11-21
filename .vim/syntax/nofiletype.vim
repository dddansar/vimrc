"==============================================================================
" File: nofiletype.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for nofiletype files.
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
" if exists("b:nofiletype_loaded")
"    finish
" endif
if exists("g:debug_syntax")
   echom "nofiletype.vim syntax file loaded"
endif
let b:nofiletype_loaded = 1

if !exists("b:current_syntax") || b:current_syntax == ""
   let b:current_syntax = "nofiletype"
endif

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "nofiletype"
   let b:comment_leader = '//'
   let b:multi_line_comment_start = '\(^\|\s\)\@<=/\*'
   let b:multi_line_comment_end = '\*/'
   source $vim_folder_path/lib/more_colors.vim
   source $vim_folder_path/lib/syntax_library.vim
   source $vim_folder_path/lib/regex.vim
   source $vim_folder_path/lib/abbrev.vim

   source $vim_folder_path/lib/linux.vim
   call LinuxCommandsMatch(0)
   call LinuxCommandsMatch(1)

   call AllTabsAndSpaces()
   call AllCaps()
   call AllPaths1(0)
   call AllPathsWin(0)
   call AllPathsDollar(0)
   call AllWebsites(0)
   call AllEmails(0)
   call AllUnwantedCharacters(0)
   call AllOperators()
   call AllSpecial()
   call AllEqualities()
   call AllArrows()
   call AllParenBr()
   call AllSeparators2() " needs to be before AllNumbers()
   call AllNumbers()
   call AllNumbersHex()
   call AllNumbersUnicode(0)
   call AllSlashes()
   " call AllCommentAnywhere()
   " call AllMultiLineCommentAnywhere()
   " call AllQuotes()
   call RegexMatches(0)
   call RegexMatchesVim(0)
   call RegexMatchesPerl(0)
   call AllDefineHash()
   call AllDefineTick()
   call AllDefineDollar()
   call AllDefineAt()
   call AllDefinePercent()
   call AllDefineAnd()
endif

" Matches word: if first word on line
hi  link    NoFiletypeLabel   PreProc
syn match   NoFiletypeLabel   "\%#=1^\s*[a-zA-Z0-9_./-]\+:"

