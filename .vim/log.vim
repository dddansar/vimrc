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

syn match LogNoColor "#"

hi  link  LogMatches1 HLOlive
hi  link  LogMatches2 HLDarkorange
hi  link  LogMatches3 HLDarkgreenB
hi  link  LogMatches4 HLForestgreen
hi  link  LogMatches5 HLRedB
hi  link  LogMatches6 HLYellow
hi  link  LogMatches7 HLDodgerblue
hi  link  LogMatches8 HLFuchsia
hi  link  LogMatches9 HLKhaki4
hi  link  LogMatches10 HLOrange
hi  link  LogMatches11 HLOrangeredB
hi  link  LogMatches12 HLTeal
hi  link  LogMatches13 HLDarkgreen
hi  link  LogMatches14 HLCyan
hi  link  LogMatches15 HLGrey50
hi  link  LogMatches16 HLSiennaB
hi  link  LogErrorbg HLRedBgB

syn region LogMatches1 oneline start="# Loading" end='$'
syn region LogMatches11 oneline start="# \*\* Warning" end='$'
syn region LogMatches11 oneline start="# UVM_WARNING" end='$'
syn region LogMatches11 oneline start="#\s*Warning" end='$'
syn region LogMatches2 oneline start="# UVM_INFO" end=':'
syn region LogMatches3 oneline start="#    DEBUG" end='$'
syn region LogMatches4 oneline start="#  - INFO -" end='$'
syn region LogMatches5 oneline start="# \*\* Error" end=' : '
syn region LogMatches5 oneline start="# \*\* Error" end='$'
syn region LogMatches5 oneline start="# *Error" end='$'
syn region LogMatches5 oneline start="# UVM_ERROR" end='$'
syn region LogMatches8  start=" Scope: " end=' '
syn region LogMatches9  start="File: /" end='$'

"------------------------------------------------------------------------------
syn match LogMatches5 "# \*\*\*ERROR\*\*\*"
syn match LogMatches5 "Mismatch"
syn match LogMatches13 "CORRECT"
syn match LogMatches8 ": Starting$"
syn match LogMatches7 ": Stopping$"
syn match LogMatches11 "# --WARNING--"
syn match LogMatches11 "Warning"
syn match LogMatches11 "warning"
syn match LogMatches11 "UVM_WARNING"
syn match LogMatches9 "Starting"
syn match LogMatches8 "Sent"
"------------------------------------------------------------------------------

syn match LogMatches2 "Running"
syn match LogMatches2 "Creating"
syn match LogMatches2 "compiling"
syn match LogMatches2 "recompiling"
syn match LogMatches2 "generating"
syn match LogMatches6 "\[Info\]"
syn match LogMatches6 "INFO\s*:"

" NOTE: .\{-} means non greedy version of .*
syn match LogMatches2 "uvm_test_top.\{-}\[.\{-}\]"
syn match LogMatches2 "reporter.\{-}\[.\{-}\]"

syn match LogErrorbg "\<ERROR\>" containedin=HLRedB
syn match LogErrorbg "\<UVM_ERROR\>" containedin=HLRedB
syn match LogErrorbg "\<Error\>" containedin=HLRedB
syn match LogErrorbg "\<error\>" containedin=HLRedB

