"==============================================================================
" File: syntax_library.vim
"------------------------------------------------------------------------------
" Description: This file adds generic syntax highlighting for all file types.
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
if exists("b:syntax_library_loaded")
  finish
endif
let b:syntax_library_loaded = 1

" Just in case another file has it set to ignore...
syn case match


" NOTE:
" \< means beginning of word.
" \> means end of word.
" \d means decimal.
" \+ means one or more match.
" \s means white space or tab.
" \| means or.
" \%( and \) lets you create a grouping.
" \%( instead of \( means make group non capturing.
" \? means match 0 or 1 times.
" Inside a character class like [ ], the dot and $ loses its special
" meaning and matches a literal dot and $. Otherwise . means any charater
" and $ means end of line and ^ means start of file

"------------------------------------------------------------------------------
" https://vimdoc.sourceforge.net/htmldoc/syntax.html
" The :syntax commands that define syntax items take a number of arguments.
" Not all commands accept all arguments.  This table shows which arguments
" can not be used for all commands:
"                    contains    oneline  fold  display  extend   concealends  contained  containedin
" :syntax keyword    -           -        -     -        -        -            yes        yes
" :syntax match      yes         -        yes   yes      yes      -            yes        yes
" :syntax region     yes         yes      yes   yes      yes      yes          yes        yes
" NOTE: Can't use "syntax keyword" with "contains=@NoSpell".
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
function! AllTabsAndSpaces()
   " Highlight chars that you don't want used such as tabs
   hi  link     AllTabs    HLBarelyVisible
   syn match    AllTabs    '\t' containedin=ALL

   if g:performance_mode <= 0
      " Highlight trailing white spaces
      hi  link     AllTrailingSpaces    HLBarelyVisible
      " NOTE: using \n insead of $ fixes an issue of matches extending comments
      " to the next line...
    " syn match    AllTrailingSpaces    '\s\+\($\)\@='  containedin=ALL
      syn match    AllTrailingSpaces    '\s\+\(\n\)\@=' containedin=ALL
   endif
endfunction
"------------------------------------------------------------------------------


" Ignore spell checking for the following matches.
"------------------------------------------------------------------------------
function! AllIgnoreSpellings()
   if g:performance_mode <= 0
      " Ignore spell on words with 1 or more numbers or dashes or underscores or dots.
      hi  link     AllSpellCommColor1  Comment
      syn match    AllSpellCommColor1  "\<[a-zA-Z]\+\([0-9]\|[._-]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell contained containedin=.*Comment.*
      syn match    AllSpellCommColor1  "\<[a-zA-Z]*\([0-9]\|[._-]\)[a-zA-Z0-9._-]\+\>\('\)\@!" contains=@NoSpell contained containedin=.*Comment.*
      syn match    AllSpellNoColor1    "\<[a-zA-Z]*\([0-9]\|[._-]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=TOP

      " Ignore spell on words with capital letters not in the first character.
      hi  link     AllSpellCommColor2  Comment
      syn match    AllSpellCommColor2  "\<[a-zA-Z0-9._-]\+\([A-Z]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=@NoSpell contained containedin=.*Comment.*
      syn match    AllSpellNoColor2    "\<[a-zA-Z0-9._-]\+\([A-Z]\)[a-zA-Z0-9._-]*\>\('\)\@!" contains=TOP

      " Ignore spell on functions () followed by () or arrays [] followed by [].
      " No need to match dashes or numbers or capitals as that is covered above...
      hi  link     AllSpellCommColor3  Comment
      syn match    AllSpellCommColor3  "\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=@NoSpell contained containedin=.*Comment.*
      syn match    AllSpellNoColor3    "\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=TOP

      " Ignore spell on functions( immediately followed by ( with no spaces.
      " No need to match dashes or numbers or capitals as that is covered above...
      hi  link     AllSpellCommColor4  Comment
      syn match    AllSpellCommColor4  "\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=@NoSpell contained containedin=.*Comment.*
      syn match    AllSpellNoColor4    "\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=TOP
   endif
endfunction
"------------------------------------------------------------------------------


" Add default matches for special characters.
"------------------------------------------------------------------------------
" Math various Operators
function! AllOperators()
   hi  link    AllOperators    Function
   syn match   AllOperators    "[&|]"
   syn match   AllOperators    "&&"
   syn match   AllOperators    "||"

   syn match   AllOperators    "\*"
   syn match   AllOperators    "+"
   if (!exists("b:comment_leader") || b:comment_leader[0] != '-') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '-')
      syn match   AllOperators    "-"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '%') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '%')
      syn match   AllOperators    "%"
   endif
   syn match   AllOperators    "\^"
   syn match   AllOperators    "\~"

   syn match   AllOperators    "?"

   if (!exists("b:comment_leader") || b:comment_leader != '!') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '!')
      syn match   AllOperators    "!"
   endif
endfunction

" Match the shift operator
function! AllShiftOp()
   hi  link    AllShiftOp       Function
   if (!exists("b:comment_leader") || b:comment_leader[0] != '>') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '>')
      syn match   AllShiftOp       ">>"
   endif
   if (!exists("b:comment_leader") || b:comment_leader[0] != '<') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '<')
      syn match   AllShiftOp       "<<"
   endif
endfunction

" Match various equalities and inequalities
function! AllEqualities()
   hi  link    AllEquality       Operator
   if (!exists("b:comment_leader") || b:comment_leader[0] != '>') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '>')
      syn match   AllEquality    "\%(>\)\@<!>\%(>\)\@!"
      syn match   AllEquality    ">="
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '<') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '<')
      syn match   AllEquality    "\%(<\)\@<!<\%(<\)\@!"
      syn match   AllEquality    "<="
      syn match   AllEquality    "<=>"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '=') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '=')
      syn match   AllEquality    "="
      syn match   AllEquality    "=="
      syn match   AllEquality    "=>"
   endif

   if (!exists("b:comment_leader") || b:comment_leader != '!') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '!')
      syn match   AllEquality    "!="
   endif

   syn match   AllEquality    "|=>"
endfunction


" Arrows
function! AllArrows()
   hi  link    AllArrows   Question
   syn match   AllArrows   "->"  containedin=perlVarPlain
   syn match   AllArrows   "|->"
   syn match   AllArrows   "<-"
   syn match   AllArrows   "<->"
endfunction


" Special Chars like @ # $ `
function! AllSpecial()
   hi  link    AllSpChars   SpecialChar
   if (!exists("b:comment_leader") || b:comment_leader != '@') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '@')
      syn match   AllSpChars    "@"
   endif
   if (!exists("b:comment_leader") || b:comment_leader != '#') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '#')
      syn match   AllSpChars    "#"
   endif
   syn match   AllSpChars    "\$"
   syn match   AllSpChars    "`"
endfunction


" Separators like : ; . ,
function! AllSeparators()
   hi  link    AllSeparators   Delimiter
   syn match   AllSeparators   "[:;,.]\%($\)\@!"
endfunction
function! AllSeparators2()
   hi  link    AllSeparators2  Delimiter
   syn match   AllSeparators2  "[:;,.]"
endfunction

" Match a . if surrounded by words like in word.word or item[i].value
function! AllDotInWords()
   if g:performance_mode <= 1
      hi  link    AllDotInWords     Delimiter
      syn match   AllDotInWords     "\([a-zA-Z0-9\])]\)\@<=\%(\.\|::\?\)\([a-zA-Z]\)\@="
   endif
endfunction


" Slashes
function! AllSlashes()
   " messes with perl /
   if (!exists("b:comment_leader") || b:comment_leader[0] != '/') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '/')
      hi  link    AllSpChars1    Operator
      syn match   AllSpChars1    "/"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '\\') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '\\')
      hi  link    AllSpChars2    Exception
      syn match   AllSpChars2    "\\"

      hi  link    AllSpChars3  SpecialChar
      syn match   AllSpChars3  "\\n"
   endif
endfunction


" Parenthesis/brackets
function! AllParenBr()
   if (!exists("b:comment_leader") || b:comment_leader[0] != '(') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '(')
      hi  link    AllParen       Delimiter
      syn match   AllParen       "[)(]"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '[') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '[')
      hi  link    AllParenSBr         Delimiter
      syn match   AllParenSBr         "[[\]]"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '{') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '{')
      hi  link    AllParenCBr         Delimiter
      syn match   AllParenCBr         "[}{]"
   endif
endfunction
"------------------------------------------------------------------------------


" Match CAPITAL words.
"------------------------------------------------------------------------------
function! AllCaps()
   if g:performance_mode <= 1
      " Matches words like ABC, ABCs, DON'T and I'M
      hi  link     AllCaps Constant
      syn match    AllCaps "\<[A-Z][A-Z0-9_]\+\%('[A-Z]\|s\)\?\>" contains=@NoSpell containedin=.*Comment.*,AllSpellCommColor1,AllSpellCommColor2,AllSpellCommColor3,AllSpellCommColor4,texChapterZone,@texFoldGroup,@texChapterGroup
      syn match    AllCaps "\<[A-Z]'[A-Z]\>" contains=@NoSpell containedin=.*Comment.*,AllSpellCommColor1,AllSpellCommColor2,AllSpellCommColor3,AllSpellCommColor4,texChapterZone,@texFoldGroup,@texChapterGroup
   endif
endfunction
"------------------------------------------------------------------------------


" Match defines or special variables.
" Moved bach to _pre so `quotes` would work, is this needed to go elsewhere?
"------------------------------------------------------------------------------
function! AllDefineHash()
   " Matches words like #define.
   hi  link    AllDefineHash     Define
   syn match   AllDefineHash     "#[a-zA-Z0-9_]\+\>" contains=@NoSpell
endfunction

" Matches $myVariable123 and ${myVariable123}
function! AllDefineDollar()
   hi  link    AllDefineDollar   Define
   syn match   AllDefineDollar   "[$][a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=tclVarRef
   syn match   AllDefineDollar   "\${[a-zA-Z0-9_]\+}"  contains=@NoSpell
endfunction

" Matches `abc123
function! AllDefineTick()
   hi  link    AllDefineTick     Define
   syn match   AllDefineTick     "`[a-zA-Z0-9_]\+\>\%(`\)\@!"  contains=@NoSpell
endfunction

" Matches @abc123
function! AllDefineAt()
   hi  link    AllDefineAt       Number
   syn match   AllDefineAt       "@[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches %abc123
function! AllDefinePercent()
   hi  link    AllDefinePercent  Number
   syn match   AllDefinePercent  "%[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches &abc123
function! AllDefineAnd()
   hi  link    AllDefineAnd      Identifier
   syn match   AllDefineAnd      "&[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches %h %d in Strings
function! AllSpecifiersInQuotes()
   hi  link  AllSpecifiers SpecialChar
   syn match AllSpecifiers "%[0-9.]*[bBoOdDhHxXsScCfFeEgGtTmMlLvVpPuUzZ%]"  contained containedin=.*String.*
endfunction
"------------------------------------------------------------------------------


" Matches: Labels
"------------------------------------------------------------------------------
" Labels outside Comments
function! AllLabel()
   " Matches word: if first word on line
   hi  link    AllLabel   PreProc
   syn match   AllLabel   "^\s*\<[a-zA-Z][a-zA-Z0-9_-]\+:\%(\s\|$\)\@=\%(NOTE:\|TODO:\|WARNING:\)\@<!" contains=@NoSpell,AllOperators
   " Matches "word": if first word on line
   hi  link    AllLabel2  PreProc
   syn match   AllLabel2  "^\s*\"[a-zA-Z][a-zA-Z0-9_-]\+\":\%(\s\|$\)\@=\%(NOTE:\|TODO:\|WARNING:\)\@<!" contains=@NoSpell,AllOperators
   " Matches Word1 Word2 ... WordN: if every word is capitalized.
   hi  link    AllLabel3  PreProc
   syn match   AllLabel3  "^\%(\s*\<[A-Z][a-zA-Z0-9_-]*\>\)\+:\%(\s\|$\)\@=\%(NOTE:\|TODO:\|WARNING:\)\@<!" contains=@NoSpell
endfunction

" Labels in Comments
function! AllComLabel()
   if exists("b:comment_leader")
      " Matches Word1 Word2: if every word is capitalized in a comment.
      " hs=s+1 defines the highlight start for the match. hs means highlight
      " start, s start of the match, +1 offset by 1 character forward.
      hi  link    AllComLabel  PreProc
      execute 'syn match   AllComLabel  +' . b:comment_leader . '\%(\s*\<[A-Z][a-zA-Z0-9_-]*\>\)\+:\%(\s\|$\)\@=\%(NOTE:\|TODO:\|WARNING:\)\@<!+hs=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
   endif
endfunction
"------------------------------------------------------------------------------


" Match paths
"------------------------------------------------------------------------------

" Common containedin cluster for all path matches
syn cluster ClusterAllPathsCI contains=.*Comment.*,.*String.*,vimAugroup,vimMapRhs,shSingleQuote,shExpr,shIf,shDo,shLoop,shFor,shDblBrace,@shLoopList,ShDummyRegion,shArrayRegion,shFunctionOne,SpVimString1,SpVimString2,cshSnglQuote

function! AllPaths1(contained_en)
   " NOTE: using \n insead of $ fixes an issue of matches extending comments
   " to the next line...

   " NOTE: added a cluster so that I can add specific groups later!
   " Match ~/path/file or /path/file or ./$path/file or ../path/ or /a/b or
   " ~/path/file.ext or /path/file.ext or ./$path/file.ext or /a/b/c/d/e/f.g
   " Match ~/path/file/ or /path/file/ or ./$path/file/ or ../path/ or /a/b/ or
   " ~/path/file.ext/ or /path/file.ext/ or ./$path/file.ext/ or /a/b/c/d/e/f.g/
   " Don't match /word or /2 or /(2/32) but match /2/32 and /2(2/32)
   " The [!#-&*-+--.0-9?-Z^-z~] matches all ASCII characters except \ / ' " , ; : = | <> () {} []
   " The [!#-&(-+--.0-9?-[\]-z~] matches all ASCII characters except \ / ' " , ; : = <> {}
   if g:performance_mode <= 0
      hi  link     AllPaths1 Underlined
      execute 'syn match AllPaths1 "' .
          \ '\%(^\|\s\|\%(["''(={[:;<>]\)\@<=\)' .
          \ '\%(\~\|\.\.\?\)\?\/' .
          \ '\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*' .
          \ '\%(\/\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*\)\+' .
          \ '\%(\/\)\?' .
          \ '\%([)}\]>]\)\@<!' .
          \ '\%(\s\|\n\|["''),}\]:;<>]\)\@=" ' .
          \ 'contains=@NoSpell ' .
          \ (a:contained_en ? 'contained ' : '') .
          \ 'containedin=@ClusterAllPathsCI'
   endif
endfunction

" AllPaths2 has the worst performance profiling of all the paths functions...
" and that because it can match almost any ASCII character at the start whereas
" others have a fixed number of starting options...
function! AllPaths2(contained_en)
   " No ~/ or / or ./ at start as that is covered in AllPaths1 but must end with
   " a file extension like in $USER/path/file.ext or a/b/c.txt or a slash like
   " in path/path/ or a/b/ path/file.ext/ or $USER/path/ or path/$USER/
   " Don't match abc/ or 3/2.1 or option1/option2/option3 or 0.123/1.234 or
   " path/file.ext or option1/option2/... or (123/456)/(7890/123.45).
   " Don't match /word or 1/2 or 2/(2/32)
   if g:performance_mode <= 0
      hi  link     AllPaths2 Underlined
      execute 'syn match    AllPaths2 "' .
          \ '\%(^\|\s\|\%(["''(={[:;<>]\)\@<=\)' .
          \ '\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*' .
          \ '\%(\/\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*\)\+' .
          \ '\%(\/\|\%([''"]\%(\W\|\n\)\)\@=\)' .
          \ '\%(\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*\%(\.\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)*\|\%([''"]\%(\W\|\n\)\)\@=\)\)\?' .
          \ '\%(\.\.\?\)\?' .
          \ '\%(\.\.\.\|[)}\]>]\)\@<!' .
          \ '\%(\s\|\n\|["''),}\]:;<>]\)\@="' .
          \ '  contains=@NoSpell' .
          \ (a:contained_en ? ' contained' : '') .
          \ ' containedin=@ClusterAllPathsCI'
   endif
endfunction

function! AllPathsWin(contained_en)
   " Match simple Windows paths C:\Users\name\AppData\ or D:\Users or A:\path\file
   " Does not match paths like \Users\file without the C:\
   if g:performance_mode <= 0
      hi  link     AllPathsWin Underlined
      hi  link     AllPathsWin Underlined
      execute 'syn match AllPathsWin "\<[A-E]:\%(\\[a-zA-Z0-9_.-]\+\)\+\%(\\\?\|\>\)" contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=@ClusterAllPathsCI'
   endif
endfunction

function! AllPathsSingleSlashStart(contained_en)
   " Must start with / or ~/ or ./ or ../. Identical to AllPaths1 but
   " only matches a single slash like in ./word or /2 or ~/path or ../path.
   if g:performance_mode <= 0
      hi  link     AllPathsS1 Underlined
      execute 'syn match AllPathsS1 "' .
          \ '\%(^\|\s\|\%(["''(={[:;<>]\)\@<=\)' .
          \ '\%(\~\|\.\.\?\)\?\/' .
          \ '\%([!#-&*-+--.0-9?-Z^-z~]\|\\ \)\%([!#-&(-+--.0-9?-[\]-~]\|\\ \)*' .
          \ '\%([)}\]>]\)\@<!' .
          \ '\%(\s\|\n\|["''),}\]:;<>]\)\@=" contains=@NoSpell' .
          \ (a:contained_en ? ' contained' : '') .
          \ ' containedin=@ClusterAllPathsCI'
   endif
endfunction

function! AllPathsDollar(contained_en)
   " Identicial to AllPaths2, but must start with $path.
   " Matches $path/file or $path/path2/file.txt or $USER/path/
   if g:performance_mode <= 0
      hi  link    AllPathsDollar2 Underlined
      execute 'syn match   AllPathsDollar2 "' .
          \ '\%(^\|\s\|\%(["''(={[:;<>]\)\@<=\)\$' .
          \ '\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)\+' .
          \ '\%(\/\%([!#-&(-+--.0-9?-[\]-z~]\|\\ \)\+\)\+' .
          \ '\%(\/\?\)' .
          \ '\%(\s\|\n\|["''),}\]:;<>]\)\@="' .
          \ '  contains=@NoSpell' .
          \ (a:contained_en ? ' contained' : '') .
          \ ' containedin=@ClusterAllPathsCI'
   endif
endfunction
"------------------------------------------------------------------------------


" Match websites and emails.
"------------------------------------------------------------------------------
function! AllWebsites(contained_en)
   " Match links like www.vim.org
   hi  link     AllWebLinks1  Underlined
   execute 'syn match    AllWebLinks1  "\<www\.[a-zA-Z0-9.?!\-_=\/~@()]\+"  contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=.*Comment.*,.*String.*'
   " Match links like https://www.vim.org/download.php or ftp://example.com
   hi  link     AllWebLinks2  Underlined
   execute 'syn match    AllWebLinks2  "\<\w\+:\/\/[A-Za-z0-9\-._~:/?#\[\]@!$&()*+,;=%]\+" contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=.*Comment.*,.*String.*'
endfunction


function! AllEmails(contained_en)
   " Match emails like abcd@efg.com
   hi  link     AllEmails  Tag
   execute 'syn match AllEmails "\<[a-zA-Z][a-zA-Z0-9_.-]\+@[a-zA-Z0-9_-]\+\.[a-zA-Z0-9_.-]\+" contains=@NoSpell ' . (a:contained_en ? 'contained ' : '') . 'containedin=.*Comment.*,.*String.*'
endfunction
"------------------------------------------------------------------------------


" Matches numbers.
"------------------------------------------------------------------------------
function! AllNumbers()

   " Matches hex #329AF.
   hi  link    AllHashHex  Number
   syn match   AllHashHex  "#[a-fA-F0-9_]\+\>" contains=@NoSpell

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
      hi  link  AllNumbers1   Number
      syn match AllNumbers1   "\<\%(\d*\)\?\.\?\d\+\%(\%([eE]\|x10\^\|\^\)[-+±∓]\?\d\+\)\?\%(\w\)\@!\%('\w\)\@!" contains=@NoSpell
   endif

   " Matches hex numbers such as 0x12ad4 or x8732FFA8 or x87_32FFA8 or 0xDEAD_C0DE
   " but not x_123_45 or 0x123_ or 0x123__456
   hi  link  AllNumbers2   Number
   syn match AllNumbers2   "\<0[x][0-9A-Fa-f]\%(_\?[0-9A-Fa-f]\)\+\>"   contains=@NoSpell
   syn match AllNumbers2   "\<[x][0-9A-F]\%(_\?[0-9A-F]\)\+\>"       contains=@NoSpell,MathXInNum

   " Matches 19'd1238  19'h1238af 32'b01010111 8'o3241
   " Matches   'd1238    'h1238af   'b01010111  'o3241
   " Matches 19'd12?8  19'h?238af 32'b??10?1? 8'o?241
   " Matches   'd123?    'h??38af   'b???1???  'o32??
   hi  link  AllNumbers3   Number
   syn match AllNumbers3   "\%(\<\d\+\|\)'\%([bB][0-1_?]\+\|[oO][0-7_?]\+\|[dD][0-9_?]\+\|[hH][0-9a-fA-F_?]\+\)\%(?\|\>\)" contains=@NoSpell

   " Matches undercores in numbers.
   " 1_2_3_4 or 123_456_789 or 12345_67890
   " but not _123_45 or 123_ or 123__456
   hi  link  AllNumbers4   Number
   syn match AllNumbers4   "\<[0-9]\+\%(_[0-9]\+\)\+\>" contains=@NoSpell
endfunction
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
function! AllTime()
   " Matches 34ns 34ps 34fs 34us 34ms 34s 3ns 4us
   " Matches 34sec 34min 34hr
   " Matches 34.23ns 34.23ps 34.23fs 34.23us 34.23ms 34.23s
   " Matches 34.23sec 34.23min 34.23hr
   hi  link  AllTime    Debug
   syn match AllTime    "\<\d\+\%(\.\?\d\+\)\?\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
endfunction
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
function! AllTruth()
   " Common Keywords
   hi  link    AllKeywords  Statement
   syn keyword AllKeywords  true TRUE false FALSE null NULL
endfunction

function! AllSudo()
   " Highlight sudo keyword
   hi  link    AllSudo      NonText
   syn keyword AllSudo      sudo containedin=.*Comment.*,.*String.*,shSingleQuote
endfunction
"------------------------------------------------------------------------------


" Add comments for files that don't have any.
"------------------------------------------------------------------------------
hi  link    AllCommentsLine      Comment
hi  link    AllComments          Comment
hi  link    AllCommentsMulti     Comment
hi  link    AllCommentsMultiLine Comment

" cluster ClusterAllCommentsCS is empty?
function! AllCommentLeader()
   if !exists('b:SetFiletypeComment_loaded')
      doautocmd SetFiletypeComment BufNewFile,BufRead,FileType
   endif
   if exists("b:comment_leader")
      " Matches comments if it's the first character on the line.
      execute 'syn match AllCommentsLine  +^\s*' . b:comment_leader . '.*+    contains=@ClusterAllCommentsCS'
      " Matches comments anywhere on the line as long as it is contained.
      execute 'syn match AllComments      +'     . b:comment_leader . '.*+    contains=@ClusterAllCommentsCS contained'
   endif
endfunction

" Matches comments starting from anywhere on the line.
function! AllCommentLeaderTop()
   if !exists('b:SetFiletypeComment_loaded')
      doautocmd SetFiletypeComment BufNewFile,BufRead,FileType
   endif
   if exists("b:comment_leader")
      execute 'syn match AllComments      +'     . b:comment_leader . '.*+    contains=@ClusterAllCommentsCS'
   endif
endfunction

" Multi-line Comments.
function! AllMultiLineComment()
   if !exists('b:SetFiletypeComment_loaded')
      doautocmd SetFiletypeComment BufNewFile,BufRead,FileType
   endif
   if exists("b:multi_line_comment_start") && exists("b:multi_line_comment_end")
      " Matches multi-line comments if it's the first character on the line.
      execute 'syn region AllCommentsMultiLine start="^\s*' . b:multi_line_comment_start .  '" end="' . b:multi_line_comment_end . '"    contains=@ClusterAllCommentsCS'
      " execute 'syn region AllCommentsMulti start="' . b:multi_line_comment_start .  '" end="' . b:multi_line_comment_end . '"    contains=@ClusterAllCommentsCS'
   endif
endfunction
"------------------------------------------------------------------------------


" Highlight words that require attention like NOTE, TODO and WARNING.
"------------------------------------------------------------------------------
function! AllHLWords()
   hi  link    AllHLNote        HLGreen3BgB
   hi  link    AllHLViNote      HLGreen1BgB
   hi  link    AllHLTodo        HLOrangeBgB
   hi  link    AllHLViTodo      HLYellow3BgB
   hi  link    AllHLWarning     HLOrangered1BgB
   hi  link    AllHLError       Exception
 " hi  link    AllHLError       HLRedBgB

   syn match AllHLTodo    "\<TODO\>"    contains=@NoSpell containedin=.*Comment.*
   syn match AllHLNote    "\<NOTE\>"    contains=@NoSpell containedin=.*Comment.*
   syn match AllHLViNote  "\<VINOTE\>"  contains=@NoSpell containedin=.*Comment.*
   syn match AllHLViTodo  "\<VITODO\>"  contains=@NoSpell containedin=.*Comment.*
   syn match AllHLWarning "\<WARNING\>" contains=@NoSpell containedin=.*Comment.*
   syn match AllHLWarning "\<DO NOT\>"  contains=@NoSpell containedin=.*Comment.*
   syn match AllHLTodo    "\<FIXME\>"   contains=@NoSpell containedin=.*Comment.*
   syn match AllHLTodo    "\<HACK\>"    contains=@NoSpell containedin=.*Comment.*
   syn match AllHLError   "\<ERROR\>"   contains=@NoSpell containedin=.*String.*
endfunction
"------------------------------------------------------------------------------


" Matches titles in comments:
" 2. Some Title
" 2.8. Some Title
" 1.3.1. Some Title
" 7.1.3.1. Some Title
" 4.3.1.9.3. Some Title
" 3.4.3.1.9.3. Some Title
" 9.7.8.2.1.1.1. Some Title
" 1.9.7.8.2.1.1.1. Some Title
" 3.10.9.7.8.2.1.3.5. Some Title
" 4.3.10.9.7.8.2.1.3.5. Some Title
"------------------------------------------------------------------------------
function! AllTitles()
   if g:performance_mode <= 0
      if exists("b:comment_leader")
         hi  link  AllTitles1   Statement
         execute 'syn match AllTitles1 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
         hi  link  AllTitles2   Operator
         execute 'syn match AllTitles2 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
         hi  link  AllTitles3   Label
         execute 'syn match AllTitles3 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
         hi  link  AllTitles4   Special
         execute 'syn match AllTitles4 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
         hi  link  AllTitles5   Title
         execute 'syn match AllTitles5 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
       " hi  link  AllTitles6   Debug
       " execute 'syn match AllTitles6 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
       " hi  link  AllTitles7   MoreMsg
       " execute 'syn match AllTitles7 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
       " hi  link  AllTitles8   String
       " execute 'syn match AllTitles8 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
       " hi  link  AllTitles9   Number
       " execute 'syn match AllTitles9 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
       " hi  link  AllTitles0  Structure
       " execute 'syn match AllTitles0 ''\%(' . b:comment_leader . '\s\+\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contains=@NoSpell contained containedin=.*Comment.*'
      endif
   endif
endfunction
" Same as AllTitles() but matches in textfiles where there are no comments
" and therefor have no need for contained...
function! AllTitlesNotContained()
   if g:performance_mode <= 0
      if exists("b:comment_leader")
         hi  link  AllTitles1   Statement
         execute 'syn match AllTitles1 ''\%(^\s*\)[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
         hi  link  AllTitles2   Operator
         execute 'syn match AllTitles2 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
         hi  link  AllTitles3   Label
         execute 'syn match AllTitles3 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
         hi  link  AllTitles4   Special
         execute 'syn match AllTitles4 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
         hi  link  AllTitles5   Title
         execute 'syn match AllTitles5 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
       " hi  link  AllTitles6   Debug
       " execute 'syn match AllTitles6 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
       " hi  link  AllTitles7   MoreMsg
       " execute 'syn match AllTitles7 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
       " hi  link  AllTitles8   String
       " execute 'syn match AllTitles8 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
       " hi  link  AllTitles9   Number
       " execute 'syn match AllTitles9 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
       " hi  link  AllTitles0  Structure
       " execute 'syn match AllTitles0 ''\%(^\s*\)[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell'
      endif
   endif
endfunction
"------------------------------------------------------------------------------


function! AllFilesDefaultSyntax()
   let b:AllFilesDefaultSyntax_loaded = 1
   if &filetype !=# 'help'
      call AllTabsAndSpaces()
   endif
   if (&filetype != 'csv')
      call AllCaps()
   endif
   call AllComLabel()
   if (&filetype == 'text' || &filetype == 'markdown')
      call AllPaths1(0)
      call AllPathsWin(0)
      call AllPathsDollar(0)
      call AllWebsites(0)
      call AllEmails(0)
   elseif (&filetype == 'html')
      call AllWebsites(1)
      call AllEmails(1)
   else
      call AllPaths1(1)
      call AllPathsWin(1)
      call AllPathsDollar(1)
      call AllWebsites(1)
      call AllEmails(1)
   endif
   call AllHLWords()
   call AllTitles()
   call AllSudo()
endfunction


