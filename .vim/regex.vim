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

" ,shDblBrace -> breaks bash
syn cluster RegexContainedin contains=vimSynRegPat,@vimSynRegPatGroup,vimGroupList,vimMapRhs,vimFunctionBody,vimFuncBody,vimExecute,vimString,AllQuotes,AllQuotesLookbehind,shDoubleQuote,shSingleQuote,shHereDoc,perlMatch,perlSpecialMatch,perlSpecialString,perlQR,JavascriptRegex,RegexPatSepPerl,shNoQuote
syn cluster RegexContainedinPerl contains=AllQuotes,AllQuotesLookbehind,shDoubleQuote,shSingleQuote,shHereDoc,perlMatch,perlSpecialMatch,perlSpecialString,perlQR,JavascriptRegex,RegexPatSepPerl,shNoQuote

" Exit if the file was already loaded
if exists("b:regex_loaded")
   finish
endif
let b:regex_loaded = 1


" Generic Regex Matches
function! RegexMatches(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   hi  link    RegexSpChars   NonText
   execute 'syn match   RegexSpChars   "\$"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexSpChars   "\^"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   " execute 'syn match   RegexSpChars   "-"               ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " \n newline, \e escape character, \r carriage return, \f form feed, \v vertical tab
   execute 'syn match   RegexSpChars   "\\[nerfv]"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Keep regex dot the same color as the color I use in text files.
   hi  link    RegexSpDot     Delimiter
   " execute 'syn match   RegexSpChars   "\%(\.\)\@<!\.\%( \|$\|\.\)\@!"   ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexSpDot     "\."              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   hi  link    RegexAst       Question
   execute 'syn match   RegexAst       "*"               ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Rematch double and/or.
   hi  link    RegexAndOr     Delimiter
   execute 'syn match   RegexAndOr     "&&"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexAndOr     "||"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Regex Ranges
   " match [abc], [3981!$@*&(*\]\-abc]
   " don't match "[abc]abcs[abc]", [ abc ], "[abc] abcs][abc]"
   " match       [!-.:-@[\]-`{-~]
   " don't match [!-.:-@[.]-`{-~], or [arsit\]
   " matches    \[!-.:-@[\]-`{-~] but RegexNoColor will clear the first parenthesis
   hi  link    RegexRanges    Constant
   " execute 'syn match   RegexRanges    "\[.\{-}\\\@<!]"  ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   " same as RegexRanges above but allow a max of 1 space in the range.
   " [^ \]]*  zero or more non-space and non ] characters
   " \([^ \]]*\) \?\([^ \]]*\)  at most 1 space
   " \@> means no backtracking so that if "\]" is matched, don't allow it to backtrack and close on "]"
   execute 'syn match   RegexRanges    "\(\\\)\@<!\[\%(\%(\\\\\|\\\]\|[^ \]]\)*\)\@> \?\%(\%(\\\\\|\\\]\|[^ \]]\)*\)\@>\]\%(\]\)\@!"  ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin,RegexPatSepPerl'

   " WARNING: This can give incorrect matches if not set.
   execute 'syn match   RegexNoColor   "\\\\"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexNoColor   "\\[.[\]''$"~*/-]" ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexNoColor   "\\\^"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " POSIX
   execute 'syn match   RegexRanges    "\[\^\?\[:[[:alpha:]]\+:\]\]"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'


   " Word boundaries
   hi  link    RegexWordBndr  Number
   execute 'syn match   RegexWordBndr  "\\<"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexWordBndr  "\\>"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Separators
   hi  link    RegexPatSepOr  Delimiter
   execute 'syn match   RegexPatSepOr  "\\|"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPatSepOr  "\\&"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Capturing groups
   hi  link    RegexPatSep    Statement
   execute 'syn match   RegexPatSep    "\\("             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\%("            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\)"             ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\[0-9]"         ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPatSep    "\\%\%(\[\)\@="    ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Quantifiers
   hi  link    RegexQuant  Question
   execute 'syn match   RegexQuant  "\\+"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\?"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\="                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\\?{-\\\?}"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   execute 'syn match   RegexQuant  "\\\?{-\?[0-9]*,[0-9]\+\\\?}" ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexQuant  "\\\?{-\?[0-9]\+\%(,[0-9]*\)\?\\\?}" ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Character Classes
   " \a alphabet, \A non-alphabet, \d digit, \D non-digit, \w word,
   " \W non-word, \s whitespace, \S non-whitespace, \l lowercase,
   " \L non-lowercase, \u uppercase, \U non-uppercase, \x hex digits,
   " \X non-hex digits, \o octal digits, \O non-octal digits,
   " \h head of word, \H non-head of word, \t tab
   hi  link    RegexClass Constant
   execute 'syn match   RegexClass "\\[sSdDxXoOhHwWaAlLuUt]" ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Vim Regex Matches
function! RegexMatchesVim(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   " Lookahead/Lookbehind
   hi  link    RegexPosLookVim   Question
   execute 'syn match   RegexPosLookVim   "\\@<="           ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\@="            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\zs"            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexPosLookVim   "\\ze"            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   hi  link    RegexNegLookVim   Question
   execute 'syn match   RegexNegLookVim   "\\@<!"           ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexNegLookVim   "\\@!"            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexNegLookVim   "\\@>"            ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " case sensitivity and magic
   hi  link    RegexMagicVim  Question
   execute 'syn match   RegexMagicVim  "\\c"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\C"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\v"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\V"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\m"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexMagicVim  "\\M"                ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Character Classes (Vim Only)
   " \p printable, \P non-printable, \f filename, \F non-filename,
   " \i identifier, \I non-identifier, \k keyword, \K non-keyword
   hi  link    RegexClassVim Constant
   execute 'syn match   RegexClassVim  "\\[pPfFiIkK]" ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   .

   " Line matching
   hi  link    RegexLineVim  NonText
   execute 'syn match   RegexLineVim   "\\_\."              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\_s"               ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\[_%]\^"           ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexLineVim   "\\[_%]\$"           ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Perl Regex Matches
function! RegexMatchesPerl(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   " Separators
   hi  link    RegexPatSepOrPerl  Delimiter
   execute 'syn match   RegexPatSepOrPerl  "|"           ' . l:contained . 'contains=@NoSpell containedin=RegexPatSepPerl'

   " Quantifiers
   hi  link    RegexQuantPerl   Question
   execute 'syn match   RegexQuantPerl   "?"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'
   execute 'syn match   RegexQuantPerl   "+"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Perl regex flags
   " (?i) Case-insensitive     ([a-z] matches [A-Z] too),
   " (?m) Multiline            (^ and $ match start/end of each line),
   " (?s) Single-line (dotall) (. matches \n too),
   " (?x) Extended             (Allows whitespace and # comments in pattern),
   " (?n) No capture           (All () are non-capturing (Perl 5.22+)),
   " (?p) Preserve             (Preserves $', $&),
   " (?d) Default              (Use default (native) character semantics),
   " (?l) Locale               (Use locale-based character semantics),
   " (?u) Unicode              (Use Unicode character semantics),
   " (?a) ASCII                (Restrict \w \d \s etc. to ASCII only),
   " (?aa) ASCII strict        (Also disables case-insensitive Unicode folding)
   hi  link    RegexFlagsPerl   Question
   execute 'syn match   RegexFlagsPerl   "\%((\)\@<=?[imsxnpdlua-]\+"              ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Word boundaries
   hi  link    RegexWordBndrPerl  Number
   execute 'syn match   RegexWordBndrPerl  "\\b"         ' . l:contained . 'contains=@NoSpell containedin=@RegexContainedin'

   " Lookahead/Lookbehind
   hi  link    RegexLookPerl   Question
   execute 'syn match   RegexLookPerl   "\%((\)\@<=?<\?="       ' . l:contained . 'contains=@NoSpell containedin=RegexPatSepPerl'
   execute 'syn match   RegexLookPerl   "\%((\)\@<=?<\?!"       ' . l:contained . 'contains=@NoSpell containedin=RegexPatSepPerl'

   hi  link    RegexAtomicPerl   Question
   execute 'syn match   RegexAtomicPerl "\%((\)\@<=?>"          ' . l:contained . 'contains=@NoSpell containedin=RegexPatSepPerl'

   hi  link    RegexPatSepPerl      RegexNoColor
   hi  link    RegexPatSepGroupPerl Statement
   " Allows nested parentheses. Colors the parentheses not the internals.
   " Can contains itself with @ClusterRegex
   " Needs to be oneline to not break other syntax groups
   execute 'syn region  RegexPatSepPerl' .
      \ ' matchgroup=RegexPatSepGroupPerl' .
      \ ' start="\%(\\\)\@<!(\%(?:\)\?"' .
      \ ' end="\%(\\\)\@<!)" ' .
      \ l:contained ' contains=@NoSpell containedin=@RegexContainedinPerl contains=@ClusterRegex oneline'

   syn cluster ClusterRegex contains=Regex.*
endfunction


" Search and Replace
function! SpRegexSearches(contained_en)
   let l:contained = (a:contained_en ? 'contained ' : '')

   if g:performance_mode <= 0

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
         " execute 'syn match SpRegexSearches' . l:name . ' "\%([%$]\|\<[0-9,]*\)s' . l:sep . '.\+' . l:sep . '.*' . l:sep . '[0-9giIceErnp&]*" contains=SpRegexSearchesSep' . l:name . ',@ClusterRegex,vimNotation ' . l:contained . 'contains=@NoSpell containedin=vimMapRhs,SpVimRegexLine,AllQuotes,AllQuotesLookbehind,RegexPatSepPerl,shDoubleQuote,shSingleQuote,shHereDoc'
         execute 'syn match SpRegexSearches' . l:name . ' "\%([%$]\|\<[0-9,]*\)s' . l:sep . '.\+' . l:sep . '.*' . l:sep . '\%([0-9giIceErnp&]\+\%(\>\|\%([&]\)\@<=\)\)\?\%(\w\|&\)\@!" contains=SpRegexSearchesSep' . l:name . ',@ClusterRegex,vimNotation ' . l:contained . 'contains=@NoSpell containedin=vimMapRhs,SpVimRegexLine,AllQuotes,AllQuotesLookbehind,RegexPatSepPerl,shDoubleQuote,shSingleQuote,shHereDoc'

         " Matches search and replace commands/separators in SpRegexSearches.
         " Has some corner case issues but overall works pretty well.
         " May incorrectly match if another separators comes after the end.
         " May incorrectly match if s/ occurs again in other separators.
         execute 'syn match SpRegexSearchesSep' . l:name . ' "\%([%$]\|\<[0-9,]*\)s' . l:sep . '\|' . l:sep . '\%([0-9giIceErnp&]\+\%(\>\|\%([&]\)\@<=\)\)\?\%(\w\|&\)\@!\%(.*' . l:sep . '\)\@!\|' . l:sep . '" contained contains=@NoSpell'
      endfor

   endif
endfunction

