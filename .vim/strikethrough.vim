"==============================================================================
" File: strikethrough.vim
"------------------------------------------------------------------------------
" Description: This file adds strikethrough syntax highlighting.
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

" Add strikethrough and grayout/gray-out, match ~~ or ;; or ::
"------------------------------------------------------------------------------
hi link StrikeoutMatch HLStrikeThroughGray
syntax match StrikeoutMatch "\~\~.*"  contains=@NoSpell
syntax match StrikeoutMatch "\~\~.*\~\~"  contains=@NoSpell
" hi link StrikeoutMatch2 HLStrikeThroughDefault
" syntax match StrikeoutMatch2 "::.*"  contains=@NoSpell
" syntax match StrikeoutMatch2 "::.*::"  contains=@NoSpell
" hi link GrayOutMatch HLGrayOut
" syntax match GrayOutMatch ";;.*"  contains=@NoSpell
" syntax match GrayOutMatch ";;.*;;"  contains=@NoSpell
"------------------------------------------------------------------------------

