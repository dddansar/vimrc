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

if !exists("g:syntax_on")
  finish
endif

syn cluster RegexContainedin contains=vimSynRegPat,@vimSynRegPatGroup,vimGroupList,vimMapRhs,vimFunctionBody,vimFuncBody,vimExecute,vimString,AllQuotes,AllQuotesLookbehind,shDoubleQuote,shSingleQuote,perlMatch,perlSpecialMatch,perlSpecialString,perlQR
syn cluster RegexContainedinPerl contains=AllQuotes,AllQuotesLookbehind,shDoubleQuote,shSingleQuote,perlMatch,perlSpecialMatch,perlSpecialString,perlQR

" Exit if the file was already loaded
if exists("b:regex_loaded")
   finish
endif
let b:regex_loaded = 1


" Generic Regex Matches
function! RegexMatches(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   hi  link    RegexSpChars   NonText
   execute 'syn match   RegexSpChars   "\$"              ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\^"              ' . l:contained . 'containedin=@RegexContainedin'
   " execute 'syn match   RegexSpChars   "-"               ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\n"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\r"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\e"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\b"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\n"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\\n"             ' . l:contained . 'containedin=@RegexContainedin'

   " Keep regex dot the same color as the color I use in text files.
   hi  link    RegexSpDot     Delimiter
   " execute 'syn match   RegexSpChars   "\%(\.\)\@<!\.\%( \|$\|\.\)\@!"   ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexSpDot     "\."              ' . l:contained . 'containedin=@RegexContainedin'

   hi  link    RegexAst       Question
   execute 'syn match   RegexAst       "*"               ' . l:contained . 'containedin=@RegexContainedin'

   " Rematch double and/or.
   hi  link    RegexAndOr     Delimiter
   execute 'syn match   RegexAndOr     "&&"              ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexAndOr     "||"              ' . l:contained . 'containedin=@RegexContainedin'

   " Regex Ranges
   " match [abc], [3981!$@*&(*\]\-abc]
   " don't match "[abc]abcs[abc]", [ abc ], "[abc] abcs][abc]"
   " match       [!-.:-@[\]-`{-~]
   " don't match [!-.:-@[.]-`{-~], or [arsit\]
   " matches    \[!-.:-@[\]-`{-~] but RegexNoColor will clear the first parenthesis
   hi  link    RegexRanges    Constant
   " execute 'syn match   RegexRanges    "\[.\{-}\\\@<!]"  ' . l:contained . 'containedin=@RegexContainedin'
   " same as RegexRanges above but allow a max of 1 space in the range.
   "              [^ ]*       zero or more non-space characters
   "         \( \=[^ ]*\)     optionally one space followed by zero or more non-space characters
   " \@> means no backtracking so that if "\]" is matched, don't allow it to backtrack and close on "]"
   execute 'syn match   RegexRanges    "\[\%(\%(\\\]\|[^ \]]\)*\)\@>\%( \=\%(\%(\\\]\|[^ \]]\)*\)\@>\)]\%(]\)\@!"  ' . l:contained . 'containedin=@RegexContainedin'

   " WARNING: This can give incorrect matches if not set.
   execute 'syn match   RegexNoColor   "\\\\"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexNoColor   "\\[.[\]''$"~*/-]" ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexNoColor   "\\\^"             ' . l:contained . 'containedin=@RegexContainedin'

   " Word boundaries
   hi  link    RegexWordBndr  Number
   execute 'syn match   RegexWordBndr  "\\<"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexWordBndr  "\\>"             ' . l:contained . 'containedin=@RegexContainedin'
   " execute 'syn match   RegexWordBndr  "\\b"             ' . l:contained . 'containedin=@RegexContainedin'
   " execute 'syn match   RegexWordBndr  "\\B"             ' . l:contained . 'containedin=@RegexContainedin'

   " Separators
   hi  link    RegexPatSepOr  Delimiter
   execute 'syn match   RegexPatSepOr  "\\|"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSepOr  "\\\\|"           ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSepOr  "\\&"             ' . l:contained . 'containedin=@RegexContainedin'

   " Capturing groups
   hi  link    RegexPatSep    Statement
   execute 'syn match   RegexPatSep    "\\("             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\%("            ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\)"             ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\[0-9]"         ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\%\%(\[\)\@="    ' . l:contained . 'containedin=@RegexContainedin'

   " Quantifiers
   hi  link    RegexQuant  Question
   execute 'syn match   RegexQuant  "\\+"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\?"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\="                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\\?{-\\\?}"              ' . l:contained . 'containedin=@RegexContainedin'

   execute 'syn match   RegexQuant  "\\\?{-\?[0-9]*,[0-9]\+\\\?}" ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\\?{-\?[0-9]\+\%(,[0-9]*\)\?\\\?}" ' . l:contained . 'containedin=@RegexContainedin'

   " Character Classes
   hi  link    RegexClass Constant
   execute 'syn match   RegexClass "\\[sSdDxXoOhHpPwWaAlLuUiIfFtkK]" ' . l:contained . 'containedin=@RegexContainedin'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Vim Regex Matches
function! RegexMatchesVim(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   " Lookahead/Lookbehind
   hi  link    RegexPosLookVim   Question
   execute 'syn match   RegexPosLookVim   "\\@<="           ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\@="            ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\zs"            ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\ze"            ' . l:contained . 'containedin=@RegexContainedin'

   hi  link    RegexNegLookVim   Question
   execute 'syn match   RegexNegLookVim   "\\@<!"           ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexNegLookVim   "\\@!"            ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexNegLookVim   "\\@>"            ' . l:contained . 'containedin=@RegexContainedin'

   " case sensitivity and magic
   hi  link    RegexMagicVim  Question
   execute 'syn match   RegexMagicVim  "\\c"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\C"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\v"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\V"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\m"                ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\M"                ' . l:contained . 'containedin=@RegexContainedin'

   " Line matching
   hi  link    RegexLineVim  NonText
   execute 'syn match   RegexLineVim   "\\_\."              ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\_s"               ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\[_%]\^"           ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\[_%]\$"           ' . l:contained . 'containedin=@RegexContainedin'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Perl Regex Matches
function! RegexMatchesPerl(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   " Separators
   hi  link    RegexPatSepOrPerl  Delimiter
   execute 'syn match   RegexPatSepOrPerl  "|"           ' . l:contained . 'containedin=RegexPatSepPerl'

   " Quantifiers
   execute 'syn match   RegexLookPerl   "?"              ' . l:contained . 'containedin=@RegexContainedin'
   execute 'syn match   RegexLookPerl   "+"              ' . l:contained . 'containedin=@RegexContainedin'

   " Lookahead/Lookbehind
   hi  link    RegexLookPerl   Question
   execute 'syn match   RegexLookPerl   "\%((\)\@<=?<\?="       ' . l:contained . 'containedin=RegexPatSepPerl'
   execute 'syn match   RegexLookPerl   "\%((\)\@<=?<\?!"       ' . l:contained . 'containedin=RegexPatSepPerl'

   hi  link    RegexAtomicPerl   Question
   execute 'syn match   RegexAtomicPerl "\%((\)\@<=?>"          ' . l:contained . 'containedin=RegexPatSepPerl'

   hi  link    RegexPatSepPerl      RegexNoColor
   hi  link    RegexPatSepGroupPerl Statement
   " Allows nested parentheses. Colors the parentheses not the internals.
   " Can contains itself with @ClusterRegex
   " Needs to be oneline to not break other syntax groups
   execute 'syn region  RegexPatSepPerl' .
      \ ' matchgroup=RegexPatSepGroupPerl' .
      \ ' start="\%(\\\)\@<!(\%(?:\)\?"' .
      \ ' end="\%(\\\)\@<!)" ' .
      \ l:contained ' containedin=@RegexContainedinPerl contains=@ClusterRegex oneline'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Search and Replace
function! SpRegexSearches(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   if g:performance_mode <= 0
      " Match s///
      " Only matches one separator at a time
      " hi  link    SpRegexSearches1 RegexNoColor
      " execute 'syn match   SpRegexSearches1  "\%(%\|\<\)s\/.\+\/.*\/[giIceErnp&]*" contains=Regex.*,vimNotation ' . l:contained . 'containedin=vimMapRhs,SpVimRegexLine,AllQuotes,AllQuotesLookbehind'
      " hi  link    SpRegexS11 Function
      " hi  link    SpRegexS12 Function
      " hi  link    SpRegexS13 Function
      " execute 'syn match   SpRegexS11 "%\?s\/\%(.\+\/.*\/\)\@="                 contained containedin=SpRegexSearches1'
      " execute 'syn match   SpRegexS12 "\%(\\\)\@<!\/"                           contained containedin=SpRegexSearches1'
      " execute 'syn match   SpRegexS13 "\%(%\?s\/.\+\/.*\/\)\@<=[giIceErnp&]\+"  contained containedin=SpRegexSearches1'

      " if (!exists("b:comment_leader") || b:comment_leader != '#') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '#')
      "    " Match s###g s###e
      "    execute 'syn match   SpRegexSearches2  "%\?s#.\+#.*#[giIceErnp&]*" contains=Regex.*,vimNotation ' . l:contained . 'containedin=vimMapRhs,SpVimRegexLine,AllQuotes,AllQuotesLookbehind'
      "    hi  link    SpRegexS21 Function
      "    hi  link    SpRegexS22 Function
      "    hi  link    SpRegexS23 Function
      "    execute 'syn match   SpRegexS21 "\%(%\|\<\)s#\%(.\+#.*#\)\@="                 contained containedin=SpRegexSearches2'
      "    execute 'syn match   SpRegexS22 "\%(\\\)\@<!#"                         contained containedin=SpRegexSearches2'
      "    execute 'syn match   SpRegexS23 "\%(%\?s#.\+#.*#\)\@<=[giIceErnp&]\+"  contained containedin=SpRegexSearches2'
      " endif

      " Matches different search and replace separators, while keeping track of
      " which separator was matched. Assigns no colors to the internals of the
      " search/replace but assigns the Function highlight group color to its
      " main command keywords and separators.
      hi link SpRegexSearches    RegexNoColor
      " NOTE: SpRegexSearchesSep needs a different name for each separator, or
      " separators may incorrectly match in other search/replace separators.
      let l:sep_names = {
         \ '/': 'Slash',
         \ '#': 'Hash',
         \ '%': 'Percent',
         \ '@': 'At',
         \ '!': 'Bang',
         \ ',': 'Comma',
         \ ';': 'Semi'
         \ }
      for l:s in ['/', '#', '%', '@', '!', ',', ';']
         let l:sep = l:s ==# '/' ? '/'
                 \ : l:s ==# '#' ? '\#'
                 \ : l:s ==# '%' ? '%'
                 \ : l:s ==# '@' ? '@'
                 \ : l:s ==# '!' ? '!'
                 \ : l:s ==# ',' ? ','
                 \ : ';'
         let l:name = l:sep_names[l:s]
         execute 'hi link SpRegexSearchesSep' . l:name . ' Function'

         " Matches entire search and replace line.
         execute 'syn match SpRegexSearches' . l:name . ' "\%([%$]\|\<[0-9,]*\)s' . l:sep . '.\+' . l:sep . '.*' . l:sep . '[0-9giIceErnp&]*" contains=SpRegexSearchesSep' . l:name . ',@ClusterRegex,vimNotation ' . l:contained . 'containedin=vimMapRhs,SpVimRegexLine,AllQuotes,AllQuotesLookbehind,RegexPatSepPerl'

         " Matches search and replace commands/separators in SpRegexSearches.
         " Has some corner case issues but overall works pretty well.
         " May incorrectly match if another separators comes after the end.
         " May incorrectly match if s/ occurs again in other separators.
         execute 'syn match SpRegexSearchesSep' . l:name . ' "\%([%$]\|\<[0-9,]*\)s' . l:sep . '\|' . l:sep . '[0-9giIceErnp&]*\%(.*' . l:sep . '\)\@!\|' . l:sep . '" contained'
      endfor

   endif
endfunction

