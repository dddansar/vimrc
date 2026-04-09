"==============================================================================
" File: tcl.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all tcl files.
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
if exists("b:tcl_loaded")
  finish
endif
let g:tcl_loaded = 1


" A bunch of useful keywords.
hi  link    TclKeywords1 AllFilesSystemColor
syn keyword TclKeywords1 proc lindex
syn keyword TclKeywords1 llength lappend lreplace lrange list concat incr
syn keyword TclKeywords1 upvar set

" Commands associated with widgets.
syn keyword TclKeywords5 background highlightbackground insertontime cget
syn keyword TclKeywords5 selectborderwidth borderwidth highlightcolor setgrid
syn keyword TclKeywords5 selectforeground cursor highlightthickness padx
syn keyword TclKeywords5 exportselection insertbackground pady takefocus
syn keyword TclKeywords5 font insertborderwidth relief
syn keyword TclKeywords5 foreground insertofftime selectbackground
syn keyword TclKeywords5 height spacing1 spacing2 spacing3 insertwidth
syn keyword TclKeywords5 state tabs width wrap
syn keyword TclKeywords5 command xscrollcommand yscrollcommand
syn keyword TclKeywords5 scrollregion xscrollincrement yscrollincrement
syn keyword TclKeywords5 closeenough confine orient
syn keyword TclKeywords5 indicatoron offvalue onvalue selectcolor selectimage
syn keyword TclKeywords5 show class colormap container visual state variable
syn keyword TclKeywords5 selectmode postcommand selectcolor tearoff
syn keyword TclKeywords5 direction aspect justify tearoffcommand title type
syn keyword TclKeywords5 bigincrement digits from length resolution showvalue
syn keyword TclKeywords5 sliderlength sliderrelief tickinterval to
syn keyword TclKeywords5 activerelief elementborderwidth
syn keyword TclKeywords5 delete names types create


syn keyword TclKeywords5 active last none cascade checkbutton command
syn keyword TclKeywords5 activebackground activeforeground accelerator
syn keyword TclKeywords5 font foreground hidemargin image indicatoron
syn keyword TclKeywords5 selectcolor selectimage state underline value variable
syn keyword TclKeywords5 add clone configure delete entrycget entryconfigure
syn keyword TclKeywords5 post postcascade type unpost yposition activate
syn keyword TclKeywords5 radiobutton separator background bitmap columnbreak
syn keyword TclKeywords5 label menu offvalue onvalue index insert invoke

" Commands associated with namespace.
syn keyword TclKeywords5 children code current delete eval
syn keyword TclKeywords5 export forget inscope origin
syn keyword TclKeywords5 parent qualifiers tail which command variable

" Commands associated with expr.
syn keyword TclKeywords5 acos  cos   hypot sinh
syn keyword TclKeywords5 asin  cosh  log   sqrt
syn keyword TclKeywords5 atan  exp   log10 tan
syn keyword TclKeywords5 atan2 floor pow   tanh
syn keyword TclKeywords5 ceil  fmod  sin

" Commands associated with pack.
syn keyword TclKeywords5 forget info propagate slaves ipadx ipady padx pady
syn keyword TclKeywords5 after anchor before expand fill in side

" Commands associated with string.
syn keyword TclKeywords5 compare first index last length match range tolower
syn keyword TclKeywords5 toupper trim trimleft trimright wordstart wordend

" Commands associated with array.
syn keyword TclKeywords5 anymore donesearch exists get names nextelement
syn keyword TclKeywords5 size startsearch set

" Switches for lsort.
syn keyword TclKeywords5 ascii dictionary command
syn keyword TclKeywords5 increasing decreasing index clock

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

hi  link    TclKeywords6 AllFilesSpecialColor
syn keyword TclKeywords6 force

hi  link    TclKeywords7 AllFilesNumColor
syn keyword TclKeywords7 constraint

hi  link    TclKeywords8 AllFilesSystemColor2
syn keyword TclKeywords8 run prove

hi  link    TclKeywords9 AllFilesSystemColor3
syn keyword TclKeywords9 del

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

