"==============================================================================
" File: regex.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all files that use
"              regular expressions.
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
if exists("b:regex_loaded")
  finish
endif
let g:regex_loaded = 1


let g:supports_regex=1

" NOTE: Inside a character class like [ ], the dot . and $ loses its special
"       meaning and matches a literal dot . and $.

" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5

   " Clear/set colors of special characters in regular expression for visibility.
   syn match   RegexNoColor1  "[!?]"
   syn match   RegexNoColor1  "[+%]"
   syn match   RegexNoColor1  "[&|><]"

   syn match   RegexNoColor1  "`"
   syn match   RegexNoColor1  "[{}()]"
   syn match   RegexNoColor1  "'" contains=AllPreNumbers3

   hi  link    RegexSpChars1  AllFilesSpecialColor
   syn match   RegexSpChars1  "\$" contains=AllPreDollar
   syn match   RegexSpChars1  "-"

   hi  link    RegexSpChars2  AllFilesVarColor
   syn match   RegexSpChars2  "[][]"

   hi  link    RegexSpChars3  AllFilesArrowsColor
   syn match   RegexSpChars3  "*"

   " Rematch double and/or.
   hi  link    RegexAndOr     AllFilesOpColor
   syn match   RegexAndOr     "&&"
   syn match   RegexAndOr     "||"

   if exists("b:comment_leader")
      if b:comment_leader != '"' && exists("b:comment_second") && b:comment_second != '"'
         syn match   RegexNoColor2        '"'
      endif
      if b:comment_leader != '#'
         syn match   RegexNoColor2        "#"
      else
         syn match   RegexNoColor2        "\%(\S.*\)\@<=#"
      endif
   else
      syn match   RegexNoColor2        '"'
   endif
endif

" Ranges
hi  link    RegexRanges    AllFilesVarColor
syn match   RegexRanges    "\[.\{-}\\\@<!]" contains=@NoSpell

" Escaped colors
hi  link    RegexSpChars4  AllFilesSpecialColor
syn match   RegexSpChars4  "\^"
syn match   RegexSpChars4  "\\"

" syn match   RegexNoColor3  "\\[\.\[\]\$\\\-'\"~]"
syn match   RegexNoColor3  "\\[\.\[\]\$\\\-''\"~]"
syn match   RegexNoColor3  "\\\/"
syn match   RegexNoColor3  "\\\^"

hi  link    RegexSpChars5  AllFilesNumColor
syn match   RegexSpChars5  "\(^\s*\)\@<!\\<"
syn match   RegexSpChars5  "\\>"

hi  link    RegexSpChars6  AllFilesVarColor
syn match   RegexSpChars6  "\\<lt>.\{-}>" contains=@NoSpell

hi  link    RegexSpChars7  AllFilesOpColor
syn match   RegexSpChars7  "\\|"
syn match   RegexSpChars7  "\\\\|"

hi  link    RegexSpChars8  AllFilesSystemColor
syn match   RegexSpChars8  "\\("
syn match   RegexSpChars8  "\\%("
syn match   RegexSpChars8  "\\)"

syn match   RegexSpChars8  "\(\s\)\@<=[!?:]\(\s\)\@="
" Using \(\s\|\S\) because $ is causing issues as it can corrupt the next line
" when used with containedin.
syn match   RegexSpChars8  "\(\s\)\@<=[!?:]\(\s\|\S\)\@!"
" syn match   RegexSpChars8  "\(\s\)\@<===#\?\(\s\)\@="

hi  link    RegexSpChars9  AllFilesSystemColor3
syn match   RegexSpChars9  "\\@<="
syn match   RegexSpChars9  "\\@="
syn match   RegexSpChars9  "\\zs" contains=@NoSpell
syn match   RegexSpChars9  "\\ze" contains=@NoSpell

hi  link    RegexSpChars10 AllFilesArrowsColor
syn match   RegexSpChars10 "\\@<!"
syn match   RegexSpChars10 "\\@!"

hi  link    RegexSpChars11 AllFilesArrowsColor
syn match   RegexSpChars11 "\\+"
syn match   RegexSpChars11 "\\?"
syn match   RegexSpChars11 "\\="
syn match   RegexSpChars11 "\\{[0-9]*,[0-9]\+}"
syn match   RegexSpChars11 "\\{[0-9]\+,[0-9]*}"

hi  link    RegexSpChars12 AllFilesVarColor
syn match   RegexSpChars12 "\(^\s*\)\@<!\\[sSdDxXoOhHpPwWaAlLuU]" contains=@NoSpell
"
" hi  link    RegexSpChars13 AllFilesNumColor
" syn match   RegexSpChars13 "\\t" contains=@NoSpell
" syn match   RegexSpChars13 "\\r" contains=@NoSpell
" syn match   RegexSpChars13 "\\n" contains=@NoSpell
" syn match   RegexSpChars13 "\\f" contains=@NoSpell
" " Matches a control character using caret notation
" syn match   RegexSpChars13 "\\c[A-Z]" contains=@NoSpell

" Match s///
hi  link    RegexSearches1 AllFilesOpColor
syn match   RegexSearches1 "\%([a-zA-Z]\)\@<!%\?s\/\%(.\+\/.*\/\)\@="
syn match   RegexSearches1 "\%(\%([a-zA-Z]\)\@<!%\?s\/.\+\)\@<=\/\%(.*\/\)\@="
syn match   RegexSearches1 "\%(\%([a-zA-Z]\)\@<!%\?s\/.\+\/.*\)\@<=\/\w*"

" Match s###g s###e
hi  link    RegexSearches2 AllFilesOpColor
syn match   RegexSearches2 "\%([a-zA-Z]\)\@<!%\?s#\%(.\+#.*#\)\@="
syn match   RegexSearches2 "\%(\%([a-zA-Z]\)\@<!%\?s#.\+\)\@<=#\%(.*#\)\@="
syn match   RegexSearches2 "\%(\%([a-zA-Z]\)\@<!%\?s#.\+#.*\)\@<=#\w*"

