"==============================================================================
" File: all_pre.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all file types
"              BEFORE the respective file settings have been applied.
"              Gets loaded by .vimrc when opening any file with a vim GUI.
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
if exists("b:all_pre_loaded")
  finish
endif
let g:all_pre_loaded = 1

let g:supports_regex=0

" Just in case another file has it set to ignore...
syn case match

" VINOTE: By using hi link (along with statusline in vimrc), vim will display
"         in the statusline the name of the matching syntax group and what
"         color it links to. This is very useful to debug which syntax group
"         is causing any issues. The filename or a shortened version is then
"         used in the synax group name to know which file the syntax group is
"         located in.

hi  link    AllPreComments2   SpecialComment
hi  link    AllPreComments    Comment
hi  link    CMultiLineComment Comment


"------------------------------------------------------------------------------
" Highlight chars that you don't want used such as tabs
hi  link     AllPreTabs    AllFilesBarelyVisible
syn match    AllPreTabs    '\t'       contains=@NoSpell containedin=ALL
" Highlight trailing white spaces
hi  link     AllPreTrailingSpaces    AllFilesBarelyVisible
syn match    AllPreTrailingSpaces    '\s\+\(\S\|\s\)\@!'       contains=@NoSpell containedin=ALL
"------------------------------------------------------------------------------


" " Add default matches for special chars, many will be overridden later.
" "------------------------------------------------------------------------------
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   " Slashes
   hi  link    AllPreSpChars1    Operator
   syn match   AllPreSpChars1    "/""

   hi  link    AllPreSpChars2    Exception
   syn match   AllPreSpChars2    "[\\]"

   " Quotes
   " hi  link    AllPreSpChars3    String
   " syn match   AllPreSpChars3    "\%(\w\|\s\)\@<=`\w\@!" contained containedin=.*Comment.*
   " syn match   AllPreSpChars3    "\%(\w\)\@<!`\%(\w\|\s\|$\)\@=" contained containedin=.*Comment.*

   hi  link    AllPreSpChars4    Identifier
   syn match   AllPreSpChars4    '\%(\s\|(\|^\|\[\|{\)\@<="'
   syn match   AllPreSpChars4    '"\%(\s\|)\|$\|\]\|}\|.\|,\|;\|:\|!\|?\)\@='

   hi  link    AllPreSpChars5    Character
   syn match   AllPreSpChars5    "\%(\s\|(\|^\|\[\|{\)\@<='"
   syn match   AllPreSpChars5    "'\%(\s\|)\|$\|\]\|}\|.\|,\|;\|:\|!\|?\)\@="
endif

" Operators
hi  link    AllPreSpChars6    Operator
syn match   AllPreSpChars6    "[*]"
syn match   AllPreSpChars6    "&&"
syn match   AllPreSpChars6    "||"

if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   syn match   AllPreSpChars6    "\%(\/\)\@<!\*\%(\/\)\@!"
   syn match   AllPreSpChars6    "[+]"
   syn match   AllPreSpChars6    "[%^]"
   syn match   AllPreSpChars6    "[&|]"
   syn match   AllPreSpChars6    "[~]"
   syn match   AllPreSpChars6    "-"

   " Parenthesis/brackets
   hi  link    AllPreSpParen     Function
   syn match   AllPreSpParen     "[)(]"

   hi  link    AllPreSpSBr       StorageClass
   syn match   AllPreSpSBr       "[[\]]"

   hi  link    AllPreSpCBr       PreProc
   syn match   AllPreSpCBr       "[}{]"

   hi  link    AllPreSpTBr       Define
   syn match   AllPreSpTBr       "[><]"
endif

hi  link    AllPreSpTBr       Define
syn match   AllPreSpTBr       ">>"
syn match   AllPreSpTBr       "<<"

" Equalities
hi  link    AllPreSpChars7    Define
syn match   AllPreSpChars7    "="
syn match   AllPreSpChars7    "=="
syn match   AllPreSpChars7    ">="
syn match   AllPreSpChars7    "<="
syn match   AllPreSpChars7    "!="
syn match   AllPreSpChars7    "\\n"

hi  link    AllPreSpChars8    Define
syn match   AllPreSpChars8    "=>"
syn match   AllPreSpChars8    "|=>"
syn match   AllPreSpChars8    "<=>"

" Special characters
hi  link    AllPreSpChars9    Operator
syn match   AllPreSpChars9    "[?]"
if exists("b:comment_leader") && b:comment_leader != '!'
   syn match   AllPreSpChars9    "[!]"
endif

if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   syn match   AllPreSpChars9    "[@]"
   syn match   AllPreSpChars9    "[#]"
   syn match   AllPreSpChars9    "[$]"
endif

" Match ;:, inside parenthesis
if g:performance_mode <= 1
   hi  link    AllPreSpChars10   Keyword
   syn match   AllPreSpChars10 "\((.*\)\@<=[:;,]\(.*)\)\@="

   " Match . between words
   hi  link    AllPreSpChars11   NonText
   syn match   AllPreSpChars11   "\([a-zA-Z0-9\])]\)\@<=\.\([a-zA-Z]\)\@="
endif
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" only enabled if spellchecking is on
" Ignore spell checking for the following matches.
function! IgnoreSpellings()
   " Ignore spell on words with 1 or more numbers or dashes or underscores or dots.
   hi  link     AllPreSpellCommentColor1  Comment
   syn match    AllPreSpellCommentColor1  "\<[a-zA-Z]*\([0-9]\|[._-]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell contained containedin=.*Comment.*
   syn match    AllPreSpellNoColor1       "\<[a-zA-Z]*\([0-9]\|[._-]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell

   " Ignore spell on words with capital letters not in the first character.
   hi  link     AllPreSpellCommentColor2  Comment
   syn match    AllPreSpellCommentColor2  "\<[a-zA-Z0-9._-]\+\([A-Z]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell contained containedin=.*Comment.*
   syn match    AllPreSpellNoColor2       "\<[a-zA-Z0-9._-]\+\([A-Z]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell

   " Ignore spell on functions () followed by () or arrays [] followed by [].
   " No need to match dashes or numbers or capitals as that is covered above...
   hi  link     AllPreSpellCommentColor3  Comment
   syn match    AllPreSpellCommentColor3  "\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=@NoSpell contained containedin=.*Comment.*
   syn match    AllPreSpellNoColor3       "\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=@NoSpell

   " Ignore spell on functions( immediately followed by ( with no spaces.
   " No need to match dashes or numbers or capitals as that is covered above...
   hi  link     AllPreSpellCommentColor4  Comment
   syn match    AllPreSpellCommentColor4  "\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=@NoSpell contained containedin=.*Comment.*
   syn match    AllPreSpellNoColor4       "\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=@NoSpell
endfunction
" if exists("g:spell_check_en") && g:spell_check_en && &spell
"    call IgnoreSpellings()
" endif
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Arrows
hi  link    AllPreSpChars12   Question
syn match   AllPreSpChars12   "->"
syn match   AllPreSpChars12   "|->"
syn match   AllPreSpChars12   "<-"
syn match   AllPreSpChars12   "<->"
"------------------------------------------------------------------------------


" Match CAPITAL words.
"------------------------------------------------------------------------------
if g:performance_mode <= 1
   " Matches ABC and ABC123ABC and ABC_123A_BC  but not 123ABC or 1A2B3C
   " Also Matches words like ABCs, DON'T and WOULD'VE
   hi  link     AllPreCapital1 Special
   syn match    AllPreCapital1 "\<[A-Z][A-Z0-9_]\+\%('[A-Z][A-Z]\?\|s\)\?\%(\W\|\>\)\@=" contains=@NoSpell containedin=.*Comment.*
endif
"------------------------------------------------------------------------------


" Match defines or special variables.
" Moved bach to _pre so `quotes` would work, is this needed to go elsewhere?
"------------------------------------------------------------------------------
if g:performance_mode <= 1
   if exists("b:comment_leader") && b:comment_leader != '#'
      " Matches words like #define.
      hi  link    AllPreHash     Define
      syn match   AllPreHash     "\%(#\)\@<!#[a-zA-Z0-9_]\+\>" contains=@NoSpell

      " Matches hex #329AF.
      hi  link    AllPreHashHex  Constant
      syn match   AllPreHashHex  "\%(#\)\@<!#[a-fA-F0-9_]\+\>" contains=@NoSpell
   endif

   " Matches $myVariable123
   hi  link    AllPreDollar      Define
   syn match   AllPreDollar      "[$][a-zA-Z0-9_]\+\>"         contains=@NoSpell
   " Matches ${myVariable123}
   syn match   AllPreDollar      "\${[a-zA-Z0-9_]\+}"          contains=@NoSpell

   hi  link    AllPreTick        Define
   syn match   AllPreTick        "`[a-zA-Z0-9_]\+\>\%(`\)\@!"  contains=@NoSpell

   " Matches @abc123
   hi  link    AllPreAt          Constant
   syn match   AllPreAt          "@[a-zA-Z0-9_]\+\>"           contains=@NoSpell

   " Matches %ld
   hi  link    AllPrePercent     Type
   syn match   AllPrePercent     "%[a-zA-Z0-9.]*[a-zA-Z]\>"    contains=@NoSpell

   " Matches word: if first word on line
   hi  link    AllPreDirective   Conditional
   syn match   AllPreDirective   "\%(^\s*\)\@<=\<\w\+:\%(\s\|$\)\@=" contains=@NoSpell
   " Matches "word": if first word on line
   hi  link    AllPreDirective2  Conditional
   syn match   AllPreDirective2  "\%(^\s*\)\@<=\"\w\+\":\%(\s\|$\)\@=" contains=@NoSpell

   if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5 && exists("b:comment_leader")
      " Word: is matched if it's the first word in a comment
      hi  link    AllPreDirective3  Function
      execute 'syn match   AllPreDirective3  +\%(\s*' . b:comment_leader . '\s*\)\@<=\w\w*:\%(\s\|$\)\@=+ contains=@NoSpell contained containedin=.*Comment.*'
   endif
endif
"------------------------------------------------------------------------------


" Matches linux paths.
" WARNING: Can slow down/reduce performance.
"------------------------------------------------------------------------------
if g:performance_mode <= 0 && &filetype != '' && &filetype != 'html'

   " Removed the lookbehind...
   " NOTE: Although adding \%(\s\|^\) incorrectly matches a space or new line,
   " it drastically improves performance by matching only full words without
   " using an expensive/slow lookbehind.

   " Don't match if preceded py certain chars with lookbehind \@<!
   " Match ~/path/file or /path/file or ./$path/file or ../path/ or /a/b or
   " ~/path/file.ext or /path/file.ext or ./$path/file.ext or /a/b/c/d/e/f.g
   " Match ~/path/file/ or /path/file/ or ./$path/file/ or ../path/ or /a/b/ or
   " ~/path/file.ext/ or /path/file.ext/ or ./$path/file.ext/ or /a/b/c/d/e/f.g/
   " Don't match /word or /2
   " Can't be preceded by: [0-9a-zA-Z]!#$%&/)*+,\-./;>?@\]^_|}~
   " Can   be preceded by: spaces"'(:<=[`{ and non-ASCII unicode characters...
   " The [!-'*-.0-[\]-~] matches all ASCII characters except \ / ( )

   " Part 1: Must start with / or ~/ or ./ or ../
   hi  link     AllPrePaths1 Underlined
   syn match    AllPrePaths1 "\
      \%(\s\|^\)\
      \%(\~\|\.\.\?\)\?\/\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\
      \%(\/\%([!-'*-.0-[\]-~]\|\\ \)\+\)\+\
      \%(\/\)\?\
      \%([!-~]\)\@!" contains=@NoSpell containedin=AllPreDollar,.*Comment.*

   " Don't match if preceded by certain chars with lookbehind \@<!
   " No ~/ or / or ./ at start as that is covered above but must end with a
   " file extension like in $USER/path/file.ext or a/b/c.txt or a slash like in
   " path/path/ or a/b/ path/file.ext/ or $USER/path/
   " Don't match abc/ or 3/2.1 or option1/option2/option3 or 0.123/1.234 or
   " path/file.ext or option1/option2/... (Must have more than 1 slash)...
   " Don't match (123/456)/(7890/123.45) -> Don't match round parenthesis...

   " Part 2: Must start with non slashes
   hi  link     AllPrePaths2 Underlined
   syn match    AllPrePaths2 "\
      \%(\s\|^\)\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\
      \%(\/\%([!-'*-.0-[\]-~]\|\\ \)\+\)\+\/\
      \%(\%([!-'*-.0-[\]-~]\|\\ \)\+\.\%([!-'*-.0-[\]-~]\|\\ \)\+\)\?\
      \%(\.\.\?\)\?\
      \%(\.\.\.\)\@<!\%([!-~]\)\@!" contains=@NoSpell containedin=AllPreDollar,.*Comment.*

   " Match simple Windows paths C:\Users\name\AppData\ D:\Users E:\path\file
   " Does not match paths like \Users\file without the C:\
   hi  link     AllPreWinPaths Underlined
   syn match    AllPreWinPaths "\<[C-E]:\%(\\[a-zA-Z0-9_.-]\+\)\+\%(\\\?\|\>\)" contains=@NoSpell containedin=AllPreDollar,.*Comment.*
endif
"------------------------------------------------------------------------------


" Match websites.
"------------------------------------------------------------------------------
if g:performance_mode <= 1
   " Match links like www.vim.org
   hi  link     AllPreWebLinks1  Underlined
   syn match    AllPreWebLinks1  "\<www\.[a-zA-Z0-9.?!\-_=\/~@()]\+"  contains=@NoSpell containedin=.*Comment.*
   " Match links like https://www.vim.org/download.php or ftp://example.com
   hi  link     AllPreWebLinks2  Underlined
   syn match    AllPreWebLinks2  '\<\w\+:\/\/[A-Za-z0-9\-._~:/?#\[\]@!$&''()*+,;=%]\+'      contains=@NoSpell containedin=.*Comment.*
endif
"------------------------------------------------------------------------------


" Match emails
"------------------------------------------------------------------------------
if g:performance_mode <= 0
   " Match emails like abcd@efg.com
   hi  link     AllPreEmails  Tag
   syn match    AllPreEmails  "\<[a-zA-Z][a-zA-Z0-9_.-]\+@[a-zA-Z0-9_-]\+\.[a-zA-Z0-9_-]\+"  contains=@NoSpell containedin=.*Comment.*
endif
"------------------------------------------------------------------------------


" Matches numbers.
"------------------------------------------------------------------------------
" \%( and \) lets you create a grouping.
" \< means beginning of word.
" \> means end of word.
" \d means decimal.
" \+ means one or more match.
" \s means white space or tab.
" |\ means or but it followed by nothing so match with or without anything.
" %( means make group non capturing.
" \= means match 0 or 1 times.
" \? means match 0 or 1 times.
" Inside a character class like [ ], the dot and $ loses its special
" meaning and matches a literal dot and $.

" Match scientific/exponent/floating point notation/number.
if g:performance_mode <= 1
   " matches 1 123
   " matches 329E+32 32E-32 32E32
   " matches .329E+32 .32E-32 .32 .32E32
   " matches 234.23 2332.329e-32 2323.32e+32 2332.32e32
   " matches        2332.329E+32 2323.32E-32
   " matches 329x10^32 32x10^-32 32x10^32
   " matches .329x10^+32 .32x10^-32 .32x10^32
   " matches 2332.329x10^-32 2323.32x10^+32 2332.32x10^32 2332.32x10^32
   " matches 2332.329x10^+32 2323.32x10^-32
   " and also matches 2^14 2.32^43
   hi  link  AllPreNumbers1   Number
   syn match AllPreNumbers1   "\<\%(\d*\)\?\.\?\d\+\%(\%([eE]\|x10\^\|\^\)[-+±∓]\?\d\+\)\?\%(\w\)\@!\%('\w\)\@!" contains=@NoSpell
   " NOTE: 4-5x slower... what was the reason again??
   " syn match AllPreNumbers1   "\%(\w\)\@<!\%(\d*\)\?\.\?\d\+\%(\%([eE]\|x10\^\|\^\)[-+±∓]\?\d\+\)\?\%(\w\)\@!\%('\w\)\@!" contains=@NoSpell
endif

" Matches hex numbers such as 0x12ad4 or x8732FFA8 or x87_32FFA8 or 0xDEAD_C0DE
" but not x_123_45 or 0x123_ or 0x123__456
hi  link  AllPreNumbers2   Number
syn match AllPreNumbers2   "\<0[x][0-9A-Fa-f]\%(_\?[0-9A-Fa-f]\)\+\>"   contains=@NoSpell
syn match AllPreNumbers2   "\<[x][0-9A-F]\%(_\?[0-9A-F]\)\+\>"       contains=@NoSpell,MathXInNum

" Matches 19'd1238  19'h1238af 32'b01010111 8'o3241
" Matches   'd1238    'h1238af   'b01010111  'o3241
" Matches 19'd12?8  19'h?238af 32'b??10?1? 8'o?241
" Matches   'd123?    'h??38af   'b???1???  'o32??
hi  link  AllPreNumbers3   Number
syn match AllPreNumbers3   "\%(\<\d\+\|\)'\%([bB][0-1_?]\+\|[oO][0-7_?]\+\|[dD][0-9_?]\+\|[hH][0-9a-fA-F_?]\+\)\%(?\|\>\)" contains=@NoSpell

" Matches undercores in numbers.
" 1_2_3_4 or 123_456_789 or 12345_67890
" but not _123_45 or 123_ or 123__456
hi  link  AllPreNumbers4   Number
syn match AllPreNumbers4   "\<[0-9]\+\%(_[0-9]\+\)\+\>" contains=@NoSpell
"------------------------------------------------------------------------------


" Matches time
"------------------------------------------------------------------------------
if g:performance_mode <= 0 && g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   " Matches 34ns 34ps 34fs 34us 34ms 34s
   " Matches 34sec 34min 34hr
   " Matches 34.23ns 34.23ps 34.23fs 34.23us 34.23ms 34.23s
   " Matches 34.23sec 34.23min 34.23hr
   hi  link  AllPreTime    Debug
   syn match AllPreTime    "\<\d\+\.\?\d\+\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
endif
"------------------------------------------------------------------------------


" Match common keywords in programming languages.
"------------------------------------------------------------------------------
" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5

   "------------------------------------------------------------------------------
   " https://vimdoc.sourceforge.net/htmldoc/syntax.html
   " The :syntax commands that define syntax items take a number of arguments.
   " Not all commands accept all arguments.  This table shows which arguments
   " can not be used for all commands:
   "                    contains    oneline  fold  display  extend   concealends  contained  containedin
   " :syntax keyword    -           -        -     -        -        -            yes  !!!   yes  !!!
   " :syntax match      yes         -        yes   yes      yes      -            yes        yes
   " :syntax region     yes         yes      yes   yes      yes      yes          yes        yes
   " NOTE: Can't use "syntax keyword" with "contains=@NoSpell".
   "------------------------------------------------------------------------------

   " NOTE: Using match instead of keyword as it is easier to override.

   " Functions and operators
   hi  link  AllPreKeywords1  Function
   syn match AllPreKeywords1  "\<x\?n\?or\>" contains=@NoSpell
   syn match AllPreKeywords1  "\<n\?and\>"   contains=@NoSpell
   syn match AllPreKeywords1  "\<not\>"      contains=@NoSpell

   " Major blocks of code
   hi  link  AllPreKeywords2  Statement
   syn match AllPreKeywords2  "\<\%(end\)\?\%(function\|interface\|class\|module\|task\)\>" contains=@NoSpell

   " Common Literals
   hi  link  AllPreKeywords3  Statement
   syn match AllPreKeywords3  "\<true\>"
   syn match AllPreKeywords3  "\<TRUE\>"
   syn match AllPreKeywords3  "\<false\>"
   syn match AllPreKeywords3  "\<FALSE\>"
   syn match AllPreKeywords3  "\<null\>"
   syn match AllPreKeywords3  "\<NULL\>"

   " Common system keywords
   syn match AllPreKeywords3  "\<open\>"
   syn match AllPreKeywords3  "\<close\>"
   syn match AllPreKeywords3  "\<import\>"
   syn match AllPreKeywords3  "\<system\>"

   " jumps
   syn match AllPreKeywords3  "\<break\>"
   syn match AllPreKeywords3  "\<continue\>"
   syn match AllPreKeywords3  "\<goto\>"     contains=@NoSpell
   syn match AllPreKeywords3  "\<return\>"
   syn match AllPreKeywords3  "\<exit\>"

   " Error
   " hi  link  AllPreError      NonText
   " syn match AllPreError      "\<error\>"
   " syn match AllPreError      "\<ERROR\>"

   hi  link  AllPreWarning    Define
   syn match AllPreWarning    "\<warning\>"

   " Loops and conditionals
   hi  link  AllPreKeywords4  Conditional
   syn match AllPreKeywords4  "\<[iI]ff\?\>"                         contains=@NoSpell
   syn match AllPreKeywords4  "\<then\>"
   syn match AllPreKeywords4  "\<el\%(se\|seif\|if\)\>"              contains=@NoSpell
   syn match AllPreKeywords4  "\<end\%(if\|for\|while\|case\)\?\>"   contains=@NoSpell
   syn match AllPreKeywords4  "\<fi\>"                               contains=@NoSpell
   syn match AllPreKeywords4  "\<for\%(each\|ever\)\?\>"
   syn match AllPreKeywords4  "\<while\>"
   syn match AllPreKeywords4  "\<do\>\%( not\)\@!"
   syn match AllPreKeywords4  "\<repeat\>"
   syn match AllPreKeywords4  "\<case\>"
   syn match AllPreKeywords4  "\<default\>"
   syn match AllPreKeywords4  "\<switch\>"
   syn match AllPreKeywords4  "\<esac\>"              contains=@NoSpell
   syn match AllPreKeywords4  "\<begin\>"

   " Common data types in programming languages
   hi  link  AllPreKeywords5  Type
   syn match AllPreKeywords5  "\<int\%(eger\)\?\>"    contains=@NoSpell
   syn match AllPreKeywords5  "\<char\>"              contains=@NoSpell
   syn match AllPreKeywords5  "\<float\>"             contains=@NoSpell
   syn match AllPreKeywords5  "\<double\>"            contains=@NoSpell
   syn match AllPreKeywords5  "\<real\>"              contains=@NoSpell
   syn match AllPreKeywords5  "\<bit\>"               contains=@NoSpell
   syn match AllPreKeywords5  "\<byte\>"              contains=@NoSpell
   syn match AllPreKeywords5  "\<void\>"              contains=@NoSpell
   syn match AllPreKeywords5  "\<bool\%(ean\)\?\>"    contains=@NoSpell

   syn match AllPreKeywords5  "\<const\>"             contains=@NoSpell
   syn match AllPreKeywords5  "\<signed\>"            contains=@NoSpell
   syn match AllPreKeywords5  "\<unsigned\>"          contains=@NoSpell

   syn match AllPreKeywords5  "\<auto\%(matic\)\?\>"  contains=@NoSpell
   syn match AllPreKeywords5  "\<static\>"
   syn match AllPreKeywords5  "\<global\>"
   syn match AllPreKeywords5  "\<local\>"

   hi  link  AllPreKeywords6  Structure
   syn match AllPreKeywords6  "\<typedef\>"  contains=@NoSpell
   syn match AllPreKeywords6  "\<struct\>"   contains=@NoSpell
   syn match AllPreKeywords6  "\<enum\>"     contains=@NoSpell
   syn match AllPreKeywords6  "\<union\>"    contains=@NoSpell

   " Highlight sudo keyword
   hi  link  AllPreSudo       NonText
   syn match AllPreSudo       "\<sudo\>"     contains=@NoSpell containedin=.*Comment.*

endif
"------------------------------------------------------------------------------


" Comments leader and second.
"------------------------------------------------------------------------------
" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   if exists("b:comment_second")
      execute 'syn match   AllPreComments2    +' . b:comment_second . '.*+    contains=AllPreComments2,AllPreWebLinks,AllPrePaths1,AllPrePaths2'
   endif
   if exists("b:comment_leader")
      execute 'syn match   AllPreComments     +' . b:comment_leader . '.*+    contains=AllPreComments,AllPreWebLinks,AllPrePaths1,AllPrePaths2'
   endif
endif

" Multi-line Comments
" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   if exists("b:multi_line_comment_start") && exists("b:multi_line_comment_end")
      execute 'syn region CMultiLineComment start="' . b:multi_line_comment_start .  '" end="' . b:multi_line_comment_end . '"    contains=AllPreWebLinks,AllPrePaths1,AllPrePaths2'
   endif
endif
"------------------------------------------------------------------------------


" Match each layer of matching parenthesis with different colors:
" ((())) [[[]]] {{{}}}
" WARNING: Rainbow parenthesis ignores spell checking inside parenthesis or if
"          matching parenthesis is not closed!!
"------------------------------------------------------------------------------
if g:performance_mode <= 0 && !exists("g:spell_check_en") && exists("g:supports_regex") && g:supports_regex == 0
   call Highlight_rainbow_round_parenthesis ()
   call Highlight_rainbow_square_parenthesis ()
   call Highlight_rainbow_bracket_parenthesis ()
endif
"------------------------------------------------------------------------------

