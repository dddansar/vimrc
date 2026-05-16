"==============================================================================
" File: regex.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all files that use
"              regular expressions.
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


" Exit if the file was already loaded
if exists("b:regex_loaded")
  finish
endif
let b:regex_loaded = 1

if !has('nvim')
   syn cluster RegexContainedin contains=vimSynRegPat,@vimSynRegPatGroup,vimGroupList,vimMapRhs,vimFunctionBody,vimString
else " For NeoVim
   syn cluster RegexContainedin contains=vimSynRegPat,@vimSynRegPatGroup,vimGroupList,vimMapRhs,vimFunctionBody
endif

function! RegexMatches()
   hi  link    RegexSpChars   NonText
   syn match   RegexSpChars   "\$"              contained containedin=@RegexContainedin
   syn match   RegexSpChars   "\."              contained containedin=@RegexContainedin
   syn match   RegexSpChars   "\^"              contained containedin=@RegexContainedin
   " syn match   RegexSpChars   "-"               contained containedin=@RegexContainedin
   syn match   RegexSpChars   "\\n"              contained containedin=@RegexContainedin

   hi  link    RegexAst       Question
   syn match   RegexAst       "*"               contained containedin=@RegexContainedin

   " Rematch double and/or.
   hi  link    RegexAndOr     Delimiter
   syn match   RegexAndOr     "&&"              contained containedin=@RegexContainedin
   syn match   RegexAndOr     "||"              contained containedin=@RegexContainedin

   " Regex Ranges
   hi  link    RegexRanges    Constant
   syn match   RegexRanges    "\[.\{-}\\\@<!]"  contained containedin=@RegexContainedin

   hi  link    RegexContinue  Exception
   syn match   RegexContinue  "^\s*\\"          contained containedin=@RegexContainedin,vimOperParen

   " WARNING: This can give incorrect matches if not set.
   syn match   RegexNoColor   "\\\\"            contained containedin=@RegexContainedin
   syn match   RegexNoColor   "\\[.[\]'$"~*/-]" contained containedin=@RegexContainedin
   syn match   RegexNoColor   "\\\^"            contained containedin=@RegexContainedin

   hi  link    RegexWordBndr  Number
   syn match   RegexWordBndr  "\\<"             contained containedin=@RegexContainedin
   syn match   RegexWordBndr  "\\>"             contained containedin=@RegexContainedin

   hi  link    RegexLessThan  Constant
   syn match   RegexLessThan  "\\<lt>.\{-}\%(>\)\@="hs=s+2 contained containedin=vimMapRhs

   hi  link    RegexPatSepOr  Delimiter
   syn match   RegexPatSepOr  "\\|"             contained containedin=@RegexContainedin
   syn match   RegexPatSepOr  "\\\\|"           contained containedin=@RegexContainedin

   hi  link    RegexPatSep    Statement
   syn match   RegexPatSep    "\\("             contained containedin=@RegexContainedin
   syn match   RegexPatSep    "\\%("            contained containedin=@RegexContainedin
   syn match   RegexPatSep    "\\)"             contained containedin=@RegexContainedin

   hi  link    RegexPosLook   Conditional
   syn match   RegexPosLook   "\\@<="           contained containedin=@RegexContainedin
   syn match   RegexPosLook   "\\@="            contained containedin=@RegexContainedin
   syn match   RegexPosLook   "\\zs"            contained containedin=@RegexContainedin
   syn match   RegexPosLook   "\\ze"            contained containedin=@RegexContainedin

   hi  link    RegexNegLook   Question
   syn match   RegexNegLook   "\\@<!"           contained containedin=@RegexContainedin
   syn match   RegexNegLook   "\\@!"            contained containedin=@RegexContainedin

   hi  link    RegexQuant  Question
   syn match   RegexQuant  "\\+"                contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\?"                contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\="                contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\{[0-9]*,[0-9]\+}" contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\{[0-9]\+\%(,[0-9]*\)\?}" contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\{-}"              contained containedin=@RegexContainedin
   syn match   RegexQuant  "\\{-[0-9],}"        contained containedin=@RegexContainedin

   hi  link    RegexWildcards Identifier
   syn match   RegexWildcards "
              \\\[sSdDxXoOhHpPwWaAlLuUiIfF0-9]" contained containedin=@RegexContainedin

   syn cluster ClusterRegex contains=Regex.*
endfunction


function! SpRegexSearches()
   if g:performance_mode <= 0
      " Match s///
      syn match   SpRegexSearches1  "%\?s\/.\+\/.*\/[giIceErnp&]*" contains=Regex.*,vimNotation containedin=vimMapRhs,SpVimRegexLine
      hi  link    SpRegexS11 Function
      hi  link    SpRegexS12 Function
      hi  link    SpRegexS13 Function
      syn match   SpRegexS11 "%\?s\/\%(.\+\/.*\/\)\@="                 contained containedin=SpRegexSearches1
      syn match   SpRegexS12 "\%(\\\)\@<!\/"                           contained containedin=SpRegexSearches1
      syn match   SpRegexS13 "\%(%\?s\/.\+\/.*\/\)\@<=[giIceErnp&]\+"  contained containedin=SpRegexSearches1

      if (!exists("b:comment_leader") || b:comment_leader != '#') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '#')
         " Match s###g s###e
         syn match   SpRegexSearches2  "%\?s#.\+#.*#[giIceErnp&]*" contains=Regex.*,vimNotation containedin=vimMapRhs,SpVimRegexLine
         hi  link    SpRegexS21 Function
         hi  link    SpRegexS22 Function
         hi  link    SpRegexS23 Function
         syn match   SpRegexS21 "%\?s#\%(.\+#.*#\)\@="                 contained containedin=SpRegexSearches2
         syn match   SpRegexS22 "\%(\\\)\@<!#"                         contained containedin=SpRegexSearches2
         syn match   SpRegexS23 "\%(%\?s#.\+#.*#\)\@<=[giIceErnp&]\+"  contained containedin=SpRegexSearches2
      endif
   endif
endfunction

