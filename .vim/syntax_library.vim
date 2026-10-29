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

if !exists("g:syntax_on")
  finish
endif

" NOTE: Moved to the top. The guard was preventing the hi link from re-setting.
" NOTE: These need to be above ClusterAllPathsCI or else they will not get
"       added to the cluster since they don't exist yet!!
hi  link    AllCommentLineStart           Comment
hi  link    AllCommentAnywhere            Comment
hi  link    AllMultiLineCommentLineStart  Comment
hi  link    AllMultiLineCommentAnywhere   Comment

hi  link  AllTitles1   Statement
hi  link  AllTitles2   Operator
hi  link  AllTitles3   Label
hi  link  AllTitles4   Special
hi  link  AllTitles5   Title
" hi  link  AllTitles6   Debug
" hi  link  AllTitles7   MoreMsg
" hi  link  AllTitles8   String
" hi  link  AllTitles9   Number
" hi  link  AllTitles0   Structure

syn cluster ClusterCommentsPlusScope contains=.*Comment.*,AllNoteScope,AllViNoteScope,AllTodoScope,AllViTodoScope,AllWarningScope,AllDoNotScope,AllComNoteScope,AllComViNoteScope,AllComTodoScope,AllComViTodoScope,AllComWarningScope,AllComDoNotScope
syn cluster ClusterCommentsPlusComScope contains=.*Comment.*,AllComNoteScope,AllComViNoteScope,AllComTodoScope,AllComViTodoScope,AllComWarningScope,AllComDoNotScope
syn cluster ClusterCommentsPlusNoComScope contains=.*Comment.*,AllNoteScope,AllViNoteScope,AllTodoScope,AllViTodoScope,AllWarningScope,AllDoNotScope

syn cluster ClusterHLWords contains=AllHLAI,AllHLTodo,AllHLNote,AllHLViNote,AllHLViTodo,AllHLWarning,AllHLError,AllNoteScope,AllViNoteScope,AllTodoScope,AllViTodoScope,AllWarningScope,AllDoNotScope,SpAllHLNote,SpAllHLViNote,SpAllHLTodo,SpAllHLViTodo,SpAllHLWarning


" NOTE: Moved to the top. The guard was preventing the cluster from re-setting.
" Common containedin cluster for all path matches
syn cluster ClusterAllPathsCI contains=@ClusterCommentsPlusScope,.*String.*,vimAugroup,vimMapRhs,shSingleQuote,shExpr,shIf,shDo,shLoop,shFor,shDblBrace,@shLoopList,ShDummyRegion,shArrayRegion,shFunctionOne,shFunctionExpr,shDerefPattern,SpVimString1,SpVimString2,cshSnglQuote,AllQuotes,AllQuotesLookbehind,TextQuotesLookbehind,RegexSpChars

" Just in case another file has it set to ignore (like with markdown files)...
syn case match


" NOTE: had to remove otherwise syn cluster ClusterAllPathsCI was not working
" Exit if the file was already loaded
if exists("b:syntax_library_loaded")
   finish
endif
let b:syntax_library_loaded = 1
" echom "syntax library file loaded"

" Some of the functions in this file require comment_leader to be set and this
" file may get loaded before the SetFiletypeComment filetype autocommands
" triggers and after filetype already got defined!
if !exists("b:custom_syntax_loaded")
   source $vim_folder_path/syntax/custom_syntax.vim
end
doautocmd SetFiletypeComment FileType

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
" NOTE: \%#=N at the very start of a pattern forces which regex engine Vim
"       uses for that pattern:
"       \%#=0: automatic (the default; Vim picks)
"       \%#=1: the old backtracking engine
"       \%#=2: the newer NFA engine
" The NFA engine is generally faster on complex patterns, but the backtracking
" engine can win on short, simple ones. When used \%#=N must be the first thing
" in the pattern. The global equivalent is :set regexpengine=1, but the
" per-pattern prefix lets you test one match at a time.
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
function! AllTabsAndSpaces()
   " Highlight chars that you don't want used such as tabs
   hi  link     AllTabs    HLBarelyVisible
   syn match    AllTabs    '\t' containedin=ALL

   if g:performance_mode <= 0
      " Highlight trailing white spaces
      hi  link     AllTrailingSpaces    HLBarelyVisible
      syn match    AllTrailingSpaces    '\%#=1\(\S\|^\)\@<=\s\+\(\n\)\@=' containedin=ALL
   endif
endfunction

function! AllUnwantedCharacters()
   if g:performance_mode <= 0
      hi  link     AllUnwantedCharacters  Error
      syn match    AllUnwantedCharacters  '\%#=1[‘-‟−—–∣]' containedin=ALL

      hi  link     AllNonBreakingSpace  HLGrey30BgB
      syn match    AllNonBreakingSpace  '\%#=1 ' containedin=ALL
   endif
endfunction
"------------------------------------------------------------------------------


" Ignore spell checking for the following matches.
"------------------------------------------------------------------------------
function! AllIgnoreSpellings()
   if g:performance_mode <= 0
      " Ignore spell on words with 1 or more numbers or dashes or underscores or dots.
      hi  link     AllSpellCommColor1  Comment
      syn match    AllSpellCommColor1  "\%#=1\<[a-zA-Z]\+[0-9._-][a-zA-Z0-9._-]*\>\%('\)\@!" contains=@NoSpell,@ClusterHLWords contained containedin=@ClusterCommentsPlusComScope
      syn match    AllSpellCommColor1  "\%#=1\<[a-zA-Z]*[0-9._-][a-zA-Z0-9._-]\+\>\%('\)\@!" contains=@NoSpell,@ClusterHLWords contained containedin=@ClusterCommentsPlusComScope
      syn match    AllSpellTitleColor1 "\%#=1\<[a-zA-Z]*[0-9._-][a-zA-Z0-9._-]*\>\%('\)\@!" contains=@NoSpell contained containedin=AllTitles1,AllTitles2,AllTitles3,AllTitles4,AllTitles5,AllTitles6,AllTitles7,AllTitles8,AllTitles9,AllTitles0 transparent
      syn match    AllSpellNoColor1    "\%#=1\<[a-zA-Z]*[0-9._-][a-zA-Z0-9._-]*\>\%('\)\@!" contains=TOP

      " Ignore spell on words with capital letters not in the first character.
      hi  link     AllSpellCommColor2  Comment
      syn match    AllSpellCommColor2  "\%#=1\<[a-zA-Z0-9._-][a-z0-9._-]*[A-Z][a-zA-Z0-9._-]*\>\%('\)\@!" contains=@NoSpell,@ClusterHLWords contained containedin=@ClusterCommentsPlusComScope
      syn match    AllSpellTiTleColor2 "\%#=1\<[a-zA-Z0-9._-][a-z0-9._-]*[A-Z][a-zA-Z0-9._-]*\>\%('\)\@!" contains=@NoSpell contained containedin=AllTitles1,AllTitles2,AllTitles3,AllTitles4,AllTitles5,AllTitles6,AllTitles7,AllTitles8,AllTitles9,AllTitles0 transparent
      syn match    AllSpellNoColor2    "\%#=1\<[a-zA-Z0-9._-][a-z0-9._-]*[A-Z][a-zA-Z0-9._-]*\>\%('\)\@!" contains=TOP

      " Ignore spell on functions () followed by () or arrays [] followed by [].
      " No need to match dashes or numbers or capitals as that is covered above...
      hi  link     AllSpellCommColor3  Comment
      syn match    AllSpellCommColor3  "\%#=1\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=@NoSpell,@ClusterHLWords contained containedin=@ClusterCommentsPlusComScope
      syn match    AllSpellNoColor3    "\%#=1\<[a-z][a-z]\+\>\%(\s*\%(()\|\[\]\)\)\@=" contains=TOP

      " Ignore spell on functions( immediately followed by ( with no spaces.
      " No need to match dashes or numbers or capitals as that is covered above...
      hi  link     AllSpellCommColor4  Comment
      syn match    AllSpellCommColor4  "\%#=1\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=@NoSpell,@ClusterHLWords contained containedin=@ClusterCommentsPlusComScope
      syn match    AllSpellNoColor4    "\%#=1\<[a-z][a-z]\+\>\%((\)\@=\%((\%(\%(ie\)\?s\))\)\@!" contains=TOP
   endif
endfunction
" function! ClearAllIgnoreSpellings()
"    if hlexists('AllSpellCommColor1')
"       syn clear AllSpellCommColor1
"    endif
"    if hlexists('AllSpellNoColor1')
"       syn clear AllSpellNoColor1
"    endif
"    if hlexists('AllSpellCommColor2')
"       syn clear AllSpellCommColor2
"    endif
"    if hlexists('AllSpellNoColor2')
"       syn clear AllSpellNoColor2
"    endif
"    if hlexists('AllSpellCommColor3')
"       syn clear AllSpellCommColor3
"    endif
"    if hlexists('AllSpellNoColor3')
"       syn clear AllSpellNoColor3
"    endif
"    if hlexists('AllSpellCommColor4')
"       syn clear AllSpellCommColor4
"    endif
"    if hlexists('AllSpellNoColor4')
"       syn clear AllSpellNoColor4
"    endif
" endfunction
"------------------------------------------------------------------------------


" Add default matches for special characters.
"------------------------------------------------------------------------------
" Math various Operators
function! AllOperators()
   hi  link    AllOperators    Function
   syn match   AllOperators    "\%#=1[&|]"
   syn match   AllOperators    "\%#=1&&"
   syn match   AllOperators    "\%#=1||"

   syn match   AllOperators    "\%#=1\*"
   syn match   AllOperators    "\%#=1+"
   if (!exists("b:comment_leader") || b:comment_leader[0] != '-') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '-')
      syn match   AllOperators    "\%#=1-"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '%') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '%')
      syn match   AllOperators    "\%#=1%"
   endif
   syn match   AllOperators    "\%#=1\^"
   syn match   AllOperators    "\%#=1\~"

   syn match   AllOperators    "\%#=1?"

   if (!exists("b:comment_leader") || b:comment_leader != '!') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '!')
      syn match   AllOperators    "\%#=1!"
   endif
endfunction

" Match the shift operator
function! AllShiftOp()
   hi  link    AllShiftOp       Function
   if (!exists("b:comment_leader") || b:comment_leader[0] != '>') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '>')
      syn match   AllShiftOp       "\%#=1\%(>\)\@<!>>\%(>\)\@!"
   endif
   if (!exists("b:comment_leader") || b:comment_leader[0] != '<') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '<')
      syn match   AllShiftOp       "\%#=1\%(<\)\@<!<<\%(<\)\@!"
   endif
endfunction

" Match various equalities and inequalities
function! AllEqualities()
   hi  link    AllEquality       Operator
   if (!exists("b:comment_leader") || b:comment_leader[0] != '>') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '>')
      syn match   AllEquality    "\%#=1\%(>\)\@<!>\%(>\)\@!"
      syn match   AllEquality    "\%#=1>="
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '<') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '<')
      syn match   AllEquality    "\%#=1\%(<\)\@<!<\%(<\)\@!"
      syn match   AllEquality    "\%#=1<="
      syn match   AllEquality    "\%#=1<=>"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '=') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '=')
      syn match   AllEquality    "\%#=1="
      syn match   AllEquality    "\%#=1=="
      syn match   AllEquality    "\%#=1=>"
   endif

   if (!exists("b:comment_leader") || b:comment_leader != '!') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '!')
      syn match   AllEquality    "\%#=1!="
   endif

   syn match   AllEquality    "\%#=1|=>"
endfunction


" Arrows
function! AllArrows()
   hi  link    AllArrows   Question
   syn match   AllArrows   "\%#=1->"  containedin=perlVarPlain
   syn match   AllArrows   "\%#=1|->"
   syn match   AllArrows   "\%#=1<-"
   syn match   AllArrows   "\%#=1<->"
endfunction


" Special Chars like @ # $ `
function! AllSpecial()
   hi  link    AllSpChars   Function
   if (!exists("b:comment_leader") || b:comment_leader != '@') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '@')
      syn match   AllSpChars    "\%#=1@"
   endif
   if (!exists("b:comment_leader") || b:comment_leader != '#') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '#')
      syn match   AllSpChars    "\%#=1#"
   endif
   syn match   AllSpChars    "\%#=1\$"
   syn match   AllSpChars    "\%#=1`"
endfunction


" Separators like : ; . ,
function! AllSeparators()
   hi  link    AllSeparators   Delimiter
   syn match   AllSeparators   "\%#=1[:;,.]\%($\)\@!"
endfunction
function! AllSeparators2()
   hi  link    AllSeparators2  Delimiter
   syn match   AllSeparators2  "\%#=1[:;,.]"
endfunction

" Match a . if surrounded by words like in word.word or item[i].value
function! AllDotInWords()
   if g:performance_mode <= 1
      hi  link    AllDotInWords     Delimiter
      syn match   AllDotInWords     "\%#=1\([a-zA-Z0-9\])]\)\@<=\%(\.\|::\?\)\([a-zA-Z]\)\@="
   endif
endfunction


" Slashes
function! AllSlashes()
   " messes with perl /
   if (!exists("b:comment_leader") || b:comment_leader[0] != '/') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '/')
      hi  link    AllSpChars1    Operator
      syn match   AllSpChars1    "\%#=1\/"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '\\') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '\\')
      hi  link    AllSpChars2    Exception
      syn match   AllSpChars2    "\%#=1\\"

      hi  link    AllSpChars3  SpecialChar
      syn match   AllSpChars3  "\%#=1\\n"
   endif
endfunction


" Parenthesis/brackets
function! AllParenBr()
   if (!exists("b:comment_leader") || b:comment_leader[0] != '(') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '(')
      hi  link    AllParen       Delimiter
      syn match   AllParen       "\%#=1[)(]"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '[') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '[')
      hi  link    AllParenSBr         Delimiter
      syn match   AllParenSBr         "\%#=1[[\]]"
   endif

   if (!exists("b:comment_leader") || b:comment_leader[0] != '{') && (!exists("b:multi_line_comment_start") || b:multi_line_comment_start[0] != '{')
      hi  link    AllParenCBr         Delimiter
      syn match   AllParenCBr         "\%#=1[}{]"
   endif
endfunction
"------------------------------------------------------------------------------


" Match UPPERCASE words.
"------------------------------------------------------------------------------
function! AllCaps()
   if g:performance_mode <= 1
      " Matches words like ABC, ABCs, DON'T and I'M
      hi  link     AllCaps Constant
      syn match    AllCaps "\%#=1\<[A-Z][A-Z0-9_]\+\%('[A-Z]\|s\)\?\%(\>\|\W\)\@=" contains=@NoSpell containedin=@ClusterCommentsPlusScope,AllSpellCommColor1,AllSpellCommColor2,AllSpellCommColor3,AllSpellCommColor4,texChapterZone,@texFoldGroup,@texChapterGroup,jsonStringMatch,jsonString
      syn match    AllCaps "\%#=1\<[A-Z]'[A-Z]\>" contains=@NoSpell containedin=@ClusterCommentsPlusScope,AllSpellCommColor1,AllSpellCommColor2,AllSpellCommColor3,AllSpellCommColor4,texChapterZone,@texFoldGroup,@texChapterGroup,jsonStringMatch,jsonString
   endif
endfunction
"------------------------------------------------------------------------------


" Match defines or special variables.
" Moved bach to _pre so `quotes` would work, is this needed to go elsewhere?
"------------------------------------------------------------------------------
function! AllDefineHash()
   " Matches words like #define.
   hi  link    AllDefineHash     Define
   syn match   AllDefineHash     "\%#=1#[a-zA-Z0-9_]\+\>" contains=@NoSpell
endfunction

" Matches $myVariable123 and ${myVariable123}
function! AllDefineDollar()
   hi  link    AllDefineDollar   Define
   syn match   AllDefineDollar   "\%#=1\$[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=tclVarRef,shDoubleQuote,shSingleQuote,RegexPatSepPerl
   syn match   AllDefineDollar   "\%#=1\${[a-zA-Z0-9_]\+}" contains=@NoSpell
endfunction

" Matches `abc123
function! AllDefineTick()
   hi  link    AllDefineTick     Define
   syn match   AllDefineTick     "\%#=1`[a-zA-Z0-9_]\+\>\%(`\)\@!"  contains=@NoSpell
endfunction

" Matches @abc123
function! AllDefineAt()
   hi  link    AllDefineAt       Number
   syn match   AllDefineAt       "\%#=1@[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches %abc123
function! AllDefinePercent()
   hi  link    AllDefinePercent  Number
   syn match   AllDefinePercent  "\%#=1%[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches &abc123
function! AllDefineAnd()
   hi  link    AllDefineAnd      Identifier
   syn match   AllDefineAnd      "\%#=1&[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=vimGroupList
endfunction

" Matches %h %d in Strings
function! AllSpecifiersInQuotes()
   hi  link  AllSpecifiers SpecialChar
   syn match AllSpecifiers "\%#=1%[0-9.]*[bBoOdDhHxXsScCfFeEgGtTmMlLvVpPuUzZ%]"  contained containedin=.*String.*
endfunction
"------------------------------------------------------------------------------


" Matches: Titles/Labels
"------------------------------------------------------------------------------
" Titles/Labels outside Comments
function! AllLabel()
   " Matches word: if first word on line
   hi  link    AllLabel   PreProc
   syn match   AllLabel   "\%#=1^\s*\<[a-zA-Z][a-zA-Z0-9_-]\+:\%(\s\|$\)\@=\%(NOTE\?:\|TODO:\|WARNING:\)\@<!" contains=@NoSpell,AllOperators,@ClusterHLWords
   " Matches "word": if first word on line
   hi  link    AllLabel2  PreProc
   syn match   AllLabel2  "\%#=1^\s*\"[a-zA-Z][a-zA-Z0-9_-]\+\":\%(\s\|$\)\@=\%(NOTE\?:\|TODO:\|WARNING:\)\@<!" contains=@NoSpell,AllOperators,@ClusterHLWords
endfunction

" Titles/Labels
function! AllMultiWordLabel(contained_en)
   if exists("b:comment_leader")
      " Matches Word1 Word2: if every word is capitalized.
      " hs=s+1 defines the highlight start for the match. hs means highlight
      " start, s start of the match, +1 offset by 1 character forward.
      " NOTE: need to add :\@= because bash adds : as a iskeyword, so \> will
      "       not match a word ending if it's followed by :!
      hi  link    AllMultiWordLabel  PreProc
      execute 'syn match   AllMultiWordLabel  +\%#=1' . (a:contained_en ? b:comment_leader : '^') .
         \ '\%(\s*\<\%([A-ZÀ-ß][a-zA-ZÀ-ÿ0-9_-]*\|[0-9]\+[a-zA-Z]\?\)' .
         \         '\%(\>\|:\@=\)[+-]*\%( & \@=\|, \@=\|[./][A-ZÀ-ß0-9]\@=\|''[a-z]\>\)*' .
         \ '\)\+:\%(\s\|$\)\@=\%(NOTE\?:\|TODO:\|WARNING:\)\@<!+' .
         \ (a:contained_en ? 'hs=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*' : '') .
         \ ' contains=@NoSpell,@ClusterHLWords keepend'
      " Matching Examples:
      " Chapter 1:
      " Part 2b:
      " Q3 Report:
      " H2O Facts:
      " 3D Models:
      " 2024-10-14:
      " Section 3.1.4:
      " Input/Output:
      " A.B.C:
      " Hello, World:
      " Tom & Jerry:
      " To Do:
      " A:
      " Well-Known Fact:
      " Snake_Case_Name:
      " ALL CAPS HERE:
      " 1 Intro:
      " 1.Intro:
      " C++ Notes:
      " C-- Notes:
      "     Indented Titles:
      " Résumé Tips:
      " Über Cool:
      " Naïve Bayes:
      " Doctor's Note:

      " Does not currently match:
      " Pros and Cons:
      " (Draft) Notes:
      " (1) Intro:
      " A) Intro:
      " Adults (60+):
      " "Quoted Title":
      " - Item:
      " 1st Place:
      " 3DS Max:
      " Q&A:
      " Dr. Smith:
      " Hello!:
      " Hello World :
      " Hello World:text
      " & Title:
      " Hello,World:
      " A.B.C.:
      " ( Draft):
      " été:
      " Upper And lowercase:
   endif
endfunction
"------------------------------------------------------------------------------


" Match paths
"------------------------------------------------------------------------------
" Matches paths that start with / or ./ or ../ or ~/
function! AllPaths1(contained_en)
   " NOTE: using \n insead of $ fixes an issue of matches extending comments
   " to the next line...

   " NOTE: added a cluster so that I can add specific groups later!
   " Match ~/path/file or /path/file or ./$path/file or ../path/file or /a/b or
   " ~/path/file.ext or /path/file.ext or ./$path/file.ext or /a/b/c/d/e/f.g or
   " ~/path/path/ or /path/path/ or ./$path/path/ or ../path/path/ or /a/b/c/d/
   " Don't match /word or /2 or /(2/32) but match /2/32 and /2(2/32)
   " The [!#-&*-+--.0-9?-Z^-z~] matches all ASCII characters except \ / ' " , ; : = | <> () {} []
   " The [!#-&(-+--.0-9?-[\]-z~] matches all ASCII characters except \ / ' " , ; : = <> {}
   " \%([)}\]>]\)\@<! is needed to not close on parenthesis which messes with
   " bash causing matches to incorrectly continue on the following lines.
   " NOTE: Removed {} as that can be problematic with bash when ":-\?" is used.
   if g:performance_mode <= 0
      hi  link     AllPaths1 Directory
      execute 'syn match AllPaths1 "' .
         \ '\%#=1\%(^\|\s\|["''(={[;<>,]\|:-\?\)\@<=' .
         \ '\%(\~\|\.\.\?\)\?' .
         \ '\%(\/[a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\)\{2,}\/\?' .
         \ '\%([)}\]>]\)\@<!' .
         \ '\%(\s\|\n\|["''),}\]:;<>*]\)\@=" ' .
         \ 'contains=@NoSpell ' .
         \ (a:contained_en ? 'contained ' : '') .
         \ 'containedin=@ClusterAllPathsCI keepend'

   endif
endfunction

" WARNING: AllPaths2 has the worst performance profiling of all the paths
" functions... and that is because it can match almost any ASCII character at
" the start whereas others have a fixed number of starting options...
function! AllPaths2(contained_en)
   " No ~/ or / or ./ at start as that is covered in AllPaths1 but must end with
   " a file extension like in $USER/path/file.ext or a/b/c.txt or a slash like
   " in path/path/ or a/b/ path/file.ext/ or $USER/path/ or path/$USER/
   " Don't match abc/ or 3/2.1 or option1/option2/option3 or 0.123/1.234 or
   " path/file.ext or option1/option2/... or (123/456)/(7890/123.45).
   " Don't match /word or 1/2 or 2/(2/32)
   if g:performance_mode <= 0
      hi  link     AllPaths2 Directory
      execute 'syn match AllPaths2 "' .
         \ '\%#=1\%(^\|\s\|["''(={[;<>,]\|:-\?\)\@<=' .
         \ '\%([a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\/\)\{2,}' .
         \ '\%([a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\.[a-zA-Z0-9]\+\)\?' .
         \ '\%([)}\]>]\)\@<!' .
         \ '\%(\s\|\n\|["''),}\]:;<>*]\)\@=" ' .
         \ 'contains=@NoSpell ' .
         \ (a:contained_en ? 'contained ' : '') .
         \ 'containedin=@ClusterAllPathsCI keepend'
   endif
endfunction

function! AllPathsWin(contained_en)
   " Match simple Windows paths C:\Users\name\AppData\ or D:\Users or
   " A:\path\file or ..\Users\file.ext
   " Does not match paths like \Users\file without the C:\ or ..\
   if g:performance_mode <= 0
      hi  link     AllPathsWin Directory
      hi  link     AllPathsWin Directory
      execute 'syn match AllPathsWin "\%#=1\%(\<[A-E]:\|\.\.\)\%(\\[a-zA-Z0-9_.-]\+\)\+\%(\\\?\|\>\)" contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=@ClusterAllPathsCI keepend'
   endif
endfunction

function! AllPathsSingleSlashStart(contained_en)
   " Must start with ~/ or ./ or ../. (but not / by itself). Similar to
   " AllPaths1 but only matches a single slash like in:
   " ./word or ~/path or ../path or ~/.bash_history
   if g:performance_mode <= 0
      hi  link     AllPathsS1 Directory
      execute 'syn match AllPathsS1 "' .
         \ '\%#=1\%(^\|\s\|["''(={[;<>,]\|:-\?\)\@<=' .
         \ '\%(\~\|\.\.\?\)\/' .
         \ '\%([a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\)\/\?' .
         \ '\%([)}\]>]\)\@<!' .
         \ '\%(\s\|\n\|["''),}\]:;<>*]\)\@=" ' .
         \ 'contains=@NoSpell ' .
         \ (a:contained_en ? 'contained ' : '') .
         \ 'containedin=@ClusterAllPathsCI keepend'
   endif
endfunction

function! AllPathsDollar(contained_en)
   " Identicial to AllPaths2, but must start with $path.
   " Matches $path/file or $path/path2/file.txt or $USER/path/ or $path/$file
   " not these? $(path)/file, ${path}/file.txt, ${path}/${file}, $a/b
   " does not match: ${path/path/file}, ${path}
   " Match at least 1 [a-zA-Z] before the first slash -> don't match $10/bbl
   if g:performance_mode <= 0
      hi  link    AllPathsDollar Directory
      execute 'syn match AllPathsDollar "' .
         \ '\%#=1\%(^\|\s\|["''(={[;<>,]\|:-\?\)\@<=\$' .
         \ '\%([0-9_.-]*[a-zA-Z]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)\+\)' .
         \ '\%(\/[a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\)\+\/\?' .
         \ '\%([)}\]>]\)\@<!' .
         \ '\%(\s\|\n\|["''),}\]:;<>*]\)\@=" ' .
         \ 'contains=@NoSpell ' .
         \ (a:contained_en ? 'contained ' : '') .
         \ 'containedin=@ClusterAllPathsCI keepend'

      " Matches $(..)/... and ${...}/...
      " hi  link    AllPathsDollar2 Directory
      " execute 'syn match AllPathsDollar2 "' .
      "    \ '\%(^\|\s\|["''(={[;<>,]\|:-\?\)\@<=\$[({]' .
      "    \ '\%([a-zA-Z0-9_.-]\%([a-zA-Z0-9_.()[\]$-]\|\\ \)*\)[)}]' .
      "    \ '\%(\/[a-zA-Z0-9_.$-]\%([a-zA-Z0-9_.()[\]{}$-]\|\\ \)*\)\+\/\?' .
      "    \ '\%([)}\]>]\)\@<!' .
      "    \ '\%(\s\|\n\|["''),}\]:;<>*]\)\@=" ' .
      "    \ 'contains=@NoSpell ' .
      "    \ (a:contained_en ? 'contained ' : '') .
      "    \ 'containedin=@ClusterAllPathsCI keepend'
   endif
endfunction
"------------------------------------------------------------------------------


" Match websites and emails
"------------------------------------------------------------------------------
" Match websites
function! AllWebsites(contained_en)
   " Valid Website Characters
   " Alphanumeric:              All lowercase letters (a-z), uppercase letters (A-Z), and digits (0-9).
   " Special Symbols:           Hyphen (-), Underscore (_), Period (.), and Tilde (~)
   " Path & Query Delimiters:   / ? # Separates paths, starts query strings, or marks fragment anchors.
   " Sub-component Delimiters:  & = + Separates and assigns key-value pairs in query parameters.
   " Authority Delimiters:      : @   Separates ports from hostnames, or credentials from domains.
   " Formatting & Brackets:     [ ] [ ] , ; $ ! * ' ( ) Used for IPv6 addresses, array data, or legacy sub-delimiters.
   " Unsafe Website Characters
   " Spaces:                    Must be encoded as %20 or +.
   " Control / Non-ASCII:       Quotes ("), brackets (< > { }), symbols (^, \, |, `), and all non-ASCII characters.
   " Websites Must Not End On These Special Character
   " .,)!?'"]#&=\@:;%$*         Punctuation followed by other text

   " Match links that start with www like www.vim.org
   hi  link     AllWebLinks1  Underlined
   execute 'syn match    AllWebLinks1  "\%#=1\<www\.[a-zA-Z0-9._~:/?#\[\]@!$&''()*+,;=%-]\+[a-zA-Z0-9_/~-]"  contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=@ClusterCommentsPlusScope,.*String.* keepend'

   " Match links like https://www.vim.org/download.php or ftp://example.com
   hi  link     AllWebLinks2  Underlined
   execute 'syn match    AllWebLinks2  "\%#=1\<\w\+:\/\/[a-zA-Z0-9._~:/?#\[\]@!$&''()*+,;=%-]\+[a-zA-Z0-9_/~-]" contains=@NoSpell' . (a:contained_en ? ' contained' : '') . ' containedin=@ClusterCommentsPlusScope,.*String.* keepend'
endfunction

" Match emails
function! AllEmails(contained_en)
   " Valid email characters
   " 1. Local Part (Before the @)
   "    Letters & Numbers: a-z, A-Z, 0-9
   "    Special: ! # \$ % & ' * + / = ? ^ _ ` { | } ~ -
   "    Period: Period "." can't be the first/last char or repeat consecutively
   " 2. Domain Part (After the @)
   "    Letters & Numbers: a-z, A-Z, 0-9
   "    Hyphen: Hyphens "-" can't be the first or last character
   "    Period: Period "." can't be the first/last char or repeat consecutively
   "    Top-Level Domain: After the last "." no hyphens or numbers allowed.

   " Match emails like abcd@efg.com
   hi  link     AllEmails  Tag
   execute 'syn match AllEmails "\%#=1' .
      \ '\%(^\|\s\)' .
      \ '[a-zA-Z0-9!#$%&''*+/=?^_`{|}~-]\+\%(\.[a-zA-Z0-9!#$%&''*+/=?^_`{|}~-]\+\)*@' .
      \ '\%([a-zA-Z0-9]\+\%(-[a-zA-Z0-9]\+\)*\.\)\+[a-zA-Z]\+" ' .
      \ 'contains=@NoSpell ' . (a:contained_en ? 'contained ' : '') .
      \ 'containedin=@ClusterCommentsPlusScope,.*String.* keepend'

   " Valid Emails:
   " simple@example.com, abc.def.123@domain.org, user+mailbox@gmail.com,
   " admin_panel@sub.company.net, x@y.z, admin@s-u-b-c-o-m-p-a-n-y.net
   " #!$%&'*+-/=?^_{|}~@example.org: Technically valid but rarely used.
   " Invalid Emails:
   " Contains a space: abc def@example.com, abc.def@exam ple.com, abcdef @example.com
   " Missing local/domain part: abc.def@example, @domain.com, abc.def@:
   " Incorrect period usage: abc..def@example.com, .abc@example.com, abc@example..com
   " Domain part starts/ends with a hyphen: abc@example-.com, abc@-example.com
endfunction
"------------------------------------------------------------------------------


" Matches numbers.
"------------------------------------------------------------------------------
function! AllNumbers()

   " Match scientific/exponent/floating point notation/number.
   if g:performance_mode <= 1
      " Matches 1          123
      " Matches 329E+32    32E-32         32E32
      " Matches 0.329E+32  0.32E-32       0.32           0.32E32
      " Matches 234.23     2332.329e-32   2323.32e+32    2332.32e32
      " Matches            2332.329E+32   2323.32E-32
      " Also matches 1.2.3.4
      hi  link  AllNumbersSci Number
      syn match AllNumbersSci "\%#=1\<\d\+\%(\.\d\+\)*\%([eE][-+±∓]\?\d\+\)\?\%(\w\)\@!\%('\w\)\@!" contains=@NoSpell
   endif

   " Matches underscores in numbers.
   " 1_2_3_4 or 123_456_789 or 12345_67890
   " but not _123_45 or 123_ or 123__456
   hi  link  AllNumbersUnd  Number
   syn match AllNumbersUnd  "\%#=1\<[0-9]\+\%(_[0-9]\+\)\+\>" contains=@NoSpell
endfunction

function! AllNumbersHex()
   " Matches hex #329AF.
   hi  link  AllNumbersHex1 Number
   syn match AllNumbersHex1 "\%#=1#[a-fA-F0-9_]\+\>" contains=@NoSpell

   " Matches hex numbers such as 0x12ad4 or x8732FFA8 or x87_32FFA8 or 0xDEAD_C0DE or 0xF
   " but not x_123_45 or 0x123_ or 0x123__456
   hi  link  AllNumbersHex2 Number
   syn match AllNumbersHex2 "\%#=1\<0[x][0-9A-Fa-f]\%(_\?[0-9A-Fa-f]\)*\>"   contains=@NoSpell,MathXInNum
   syn match AllNumbersHex2 "\%#=1\<[x][0-9A-F]\%(_\?[0-9A-F]\)*\>"       contains=@NoSpell,MathXInNum

   " Matches 19'd1238  19'h1238af 32'b01010111 8'o3241
   " Matches   'd1238    'h1238af   'b01010111  'o3241
   " Matches 19'd12?8  19'h?238af 32'b??10?1? 8'o?241
   " Matches   'd123?    'h??38af   'b???1???  'o32??
   hi  link  AllNumbersTick Number
   syn match AllNumbersTick "\%#=1\%(\<\d\+\|\)'\%([bB][0-1_?]\+\|[oO][0-7_?]\+\|[dD][0-9_?]\+\|[hH][0-9a-fA-F_?]\+\)\%(?\|\>\)" contains=@NoSpell
endfunction
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
function! AllTime()
   " Matches 34ns 34ps 34fs 34us 34ms 34s 3ns 4us
   " Matches 34sec 34min 34hr
   " Matches 34.23ns 34.23ps 34.23fs 34.23us 34.23ms 34.23s
   " Matches 34.23sec 34.23min 34.23hr
   hi  link  AllTime    Debug
   syn match AllTime    "\%#=1\<\d\+\%(\.\d\+\)\?\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
endfunction
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
function! AllTruth()
   " Common Keywords
   hi  link    AllKeywords  Statement
   syn keyword AllKeywords  true TRUE false FALSE null NULL
endfunction

function! AllCopyright()
   " Common Keywords
   hi  link    AllCopyright Statement
   syn match   AllCopyright "\%#=1Copyright"         containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1Copyright\s*(c).*" containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1MIT LICENSE"       containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1MIT License"       containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1Apache License"    containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1Creative Commons"  containedin=@ClusterCommentsPlusComScope
   syn match   AllCopyright "\%#=1©"                 containedin=@ClusterCommentsPlusComScope
endfunction

function! AllSudo()
   " Highlight sudo keyword
   hi  link    AllSudo    NonText
   " syn keyword AllSudo    sudo containedin=@ClusterCommentsPlusScope,.*String.*,shSingleQuote
   syn match   AllSudo    "\%#=1\<sudo\>" contains=@NoSpell containedin=@ClusterCommentsPlusScope,.*String.*,shSingleQuote
endfunction
"------------------------------------------------------------------------------


" Quotes/Strings
"------------------------------------------------------------------------------
" Match Quotes
" keepend needed to prevent regex from extending match region!
function! AllQuotes(contained_en)
   " Match quotes with region (region is non-greedy by default).
   hi link    AllQuotes String
   execute 'syn region AllQuotes start=+\%#=1\%(\s\|^\)"+ms=e skip=+\%#=1""+ end=+\%#=1"\%(\W\|$\)\@=+ oneline ' . (a:contained_en ? 'contained ' : '') . 'containedin=@ClusterCommentsPlusScope keepend'
   execute 'syn region AllQuotes start=+\%#=1\%(\s\|^\)''+ms=e skip=+\%#=1''''+ end=+\%#=1''\%(\W\|$\)\@=+ oneline ' . (a:contained_en ? 'contained ' : '') . 'containedin=@ClusterCommentsPlusScope keepend'
endfunction

" Can't match ='quote' or other characters with AllQuotes() if the '=' is
" already matched from elsewhere -> Need to use lookbehind to match instead.
function! AllQuotesLookbehind(contained_en)
   hi link    AllQuotesLookbehind String
   execute 'syn region AllQuotesLookbehind start=+\%#=1\%(\%(\s\|^\|[([{,=]\)\@<=\)"+ms=s skip=+\%#=1""+ end=+\%#=1"\%(\W\|$\)\@=+ oneline ' . (a:contained_en ? 'contained ' : '') . 'containedin=@ClusterCommentsPlusScope keepend'
   execute 'syn region AllQuotesLookbehind start=+\%#=1\%(\%(\s\|^\|[([{,=]\)\@<=\)''+ms=s skip=+\%#=1''''+ end=+\%#=1''\%(\W\|$\)\@=+ oneline ' . (a:contained_en ? 'contained ' : '') . 'containedin=@ClusterCommentsPlusScope keepend'
endfunction
"------------------------------------------------------------------------------


" Add comments for files that don't have any.
"------------------------------------------------------------------------------
" Matches comments if it's the first non-space character on the line.
function! AllCommentLineStart()
   if exists("b:comment_leader")
      execute 'syn match AllCommentLineStart +\%#=1^\s*' . b:comment_leader . '.*+'
   endif
endfunction

" Matches comments starting from anywhere on the line.
function! AllCommentAnywhere()
   if exists("b:comment_leader")
      execute 'syn match AllCommentAnywhere +\%#=1' . b:comment_leader . '.*+'
   endif
endfunction

" Matches multi-line comments if it's the first non-space character on the line.
function! AllMultiLineCommentLineStart()
   if exists("b:multi_line_comment_start") && exists("b:multi_line_comment_end")
      execute 'syn region AllMultiLineCommentLineStart start="\%#=1^\s*' . b:multi_line_comment_start . '" end="\%#=1' . b:multi_line_comment_end . '"'
   endif
endfunction

" Matches multi-line comments starting from anywhere on the line.
function! AllMultiLineCommentAnywhere()
   if exists("b:multi_line_comment_start") && exists("b:multi_line_comment_end")
      execute 'syn region AllMultiLineCommentAnywhere start="\%#=1' . b:multi_line_comment_start . '" end="\%#=1' . b:multi_line_comment_end . '"'
   endif
endfunction
"------------------------------------------------------------------------------


" Highlight words that require attention like NOTE, TODO and WARNING.
"------------------------------------------------------------------------------
function! AllHLWords()
   hi  link    AllHLAI          HLDodgerBlueBgB
   hi  link    AllHLNote        HLGreen3BgB
   hi  link    AllHLViNote      HLGreen1BgB
   hi  link    AllHLTodo        HLOrangeBgB
   hi  link    AllHLViTodo      HLYellow3BgB
   hi  link    AllHLWarning     HLOrangered1BgB
   hi  link    AllHLError       Exception
 " hi  link    AllHLError       HLRedBgB

   " NOTE: needs to be match, not keyword, so that AllHLExclamations can work.
   " NOTE: need to add :\@= because bash adds : as a iskeyword, so \> will
   "       not match a word ending if it's followed by :!
   syn match AllHLAI      "\%#=1\<CLAUDE\%(\>\|:\@=\)"  contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLAI      "\%#=1\<CHATGPT\%(\>\|:\@=\)" contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLAI      "\%#=1\<GEMINI\%(\>\|:\@=\)"  contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLTodo    "\%#=1\<TODO\%(\>\|:\@=\)"    contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLNote    "\%#=1\<NOTE\%(\>\|:\@=\)"    contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLViNote  "\%#=1\<VINOTE\%(\>\|:\@=\)"  contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLViTodo  "\%#=1\<VITODO\%(\>\|:\@=\)"  contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLWarning "\%#=1\<WARNING\%(\>\|:\@=\)" contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLWarning "\%#=1\<DO NOT\%(\>\|:\@=\)"  contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLTodo    "\%#=1\<FIXME\%(\>\|:\@=\)"   contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLTodo    "\%#=1\<HACK\%(\>\|:\@=\)"    contains=@NoSpell containedin=@ClusterCommentsPlusScope
   syn match AllHLError   "\%#=1\<ERROR\%(\>\|:\@=\)"   contains=@NoSpell containedin=.*String.*
endfunction

" Highlights '!!!' and '???' if they follow one of the AllHLWords.
" Like in NOTE: ... !!! or TODO: ... ??? or WARNING: ... !!!
" Does not work well with comment titles/labels like in:
" NOTE: ... !!! -> syn clear vimCommentTitle
function! AllHLExclamations()
   if g:performance_mode <= 0

      hi  link   SpAllHLNote        HLGreen3BgB
      hi  link   SpAllHLViNote      HLGreen1BgB
      hi  link   SpAllHLTodo        HLOrangeBgB
      hi  link   SpAllHLViTodo      HLYellow3BgB
      hi  link   SpAllHLWarning     HLOrangered1BgB
      hi  link   SpAllHLError       HLRedBgB

      " Span from keyword to !!!/??? but end at other keywords
      " NOTE: Also contains things in comments like "strings" , www.websites.com, ~/paths/file.txt and CAPS!!!
      " NOTE: ......... !!! The !!! should match the NOTE color !!!
      " NOTE: TODO: ... !!! The !!! should match the TODO color !!! not NOTE !!!
      " TODO: NOTE: ... !!! The !!! should match the NOTE color !!! not TODO !!!
      " TODO: NOTE: WARNING: ... !!! The !!! should match the WARNING color !!! not TODO !!!    or NOTE !!!
      " WARNING: TODO: NOTE: ... !!! The !!! should match the NOTE    color !!! not WARNING !!! or TODO !!!
      " NOTE: WARNING: TODO: ... !!! The !!! should match the TODO    color !!! not NOTE !!!    or WARNING !!!
      syn region AllComNoteScope    matchgroup=SpAllHLNote     start="\%#=1\<NOTE\%(:\|\>\)\@="      skip="\%#=1!!\+\ze.*!!"  end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom
      syn region AllComViNoteScope  matchgroup=SpAllHLViNote   start="\%#=1\<VINOTE\%(:\|\>\)\@="    skip="\%#=1!!\+\ze.*!!"  end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom
      syn region AllComTodoScope    matchgroup=SpAllHLTodo     start="\%#=1\<TODO\%(:\|\>\)\@="      skip="\%#=1[!?][!?]\+\ze.*[!?][!?]" end="\%#=1[!?][!?][!?]*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom
      syn region AllComViTodoScope  matchgroup=SpAllHLViTodo   start="\%#=1\<VITODO\%(:\|\>\)\@="    skip="\%#=1[!?][!?]\+\ze.*[!?][!?]" end="\%#=1[!?][!?][!?]*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom
      syn region AllComWarningScope matchgroup=SpAllHLWarning  start="\%#=1\<WARNING\%(:\|\>\)\@="   skip="\%#=1!!\+\ze.*!!"  end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom
      syn region AllComDoNotScope   matchgroup=SpAllHLWarning  start="\%#=1\<DO NOT\%(:\|\>\)\@="    skip="\%#=1!!\+\ze.*!!"  end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contained containedin=.*Comment.* contains=vimCommentString,SpUnicodeNoSpellCom


      " NOTE: When not contained in comment, need to contain TOP!!!
      syn region AllNoteScope    matchgroup=SpAllHLNote     start="\%#=1\<NOTE\%(:\|\>\)\@="      skip="\%#=1!!\+\ze.*!!" end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP
      syn region AllViNoteScope  matchgroup=SpAllHLViNote   start="\%#=1\<VINOTE\%(:\|\>\)\@="    skip="\%#=1!!\+\ze.*!!" end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP
      syn region AllTodoScope    matchgroup=SpAllHLTodo     start="\%#=1\<TODO\%(:\|\>\)\@="      skip="\%#=1[!?][!?]\+\ze.*[!?][!?]" end="\%#=1[!?][!?][!?]*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP
      syn region AllViTodoScope  matchgroup=SpAllHLViTodo   start="\%#=1\<VITODO\%(:\|\>\)\@="    skip="\%#=1[!?][!?]\+\ze.*[!?][!?]" end="\%#=1[!?][!?][!?]*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP
      syn region AllWarningScope matchgroup=SpAllHLWarning  start="\%#=1\<WARNING\%(:\|\>\)\@="   skip="\%#=1!!\+\ze.*!!" end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP
      syn region AllDoNotScope   matchgroup=SpAllHLWarning  start="\%#=1\<DO NOT\%(:\|\>\)\@="    skip="\%#=1!!\+\ze.*!!" end="\%#=1!!!*" end="\%#=1\ze\<\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\>" keepend transparent oneline contains=TOP



      " NOTE: This works but has worse performance!!!
      " syn match AllNoteScope    "\<NOTE\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLNote,AllHLNote
      " syn match AllViNoteScope  "\<VINOTE\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLViNote,AllHLViNote
      " syn match AllTodoScope    "\<TODO\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLTodo,AllHLTodo
      " syn match AllViTodoScope  "\<VITODO\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLViTodo,AllHLViTodo
      " syn match AllWarningScope "\<WARNING\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLWarning,AllHLWarning
      " syn match AllDoNotScope   "\<DO NOT\%(:\|\>\)\@=\%(.\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!\)*!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLWarning,AllHLWarning


      " NOTE: This does not correctly match!!
      " syn match AllNoteScope    "\<NOTE\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLNote,AllHLNote
      " syn match AllViNoteScope  "\<VINOTE\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLViNote,AllHLViNote
      " syn match AllTodoScope    "\<TODO\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLTodo,AllHLTodo
      " syn match AllViTodoScope  "\<VITODO\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLViTodo,AllHLViTodo
      " syn match AllWarningScope "\<WARNING\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLWarning,AllHLWarning
      " syn match AllDoNotScope   "\<DO NOT\%(:\|\>\)\@=.*\%(TODO\|VINOTE\|VITODO\|WARNING\|DO NOT\|NOTE\)\@<!!!!*" keepend transparent containedin=.*Comment.* contains=SpAllHLWarning,AllHLWarning


      " NOTE: Allows multiple !!! occurrences per keyword !!! - WARNING: matches !!! with closest !!! keyword !!!
      syn match SpAllHLNote    "\%#=1!!!*"              contained containedin=AllComNoteScope,AllNoteScope
      syn match SpAllHLViNote  "\%#=1!!!*"              contained containedin=AllComViNoteScope,AllViNoteScope
      syn match SpAllHLTodo    "\%#=1\%(!!!*\|???*\)"   contained containedin=AllComTodoScope,AllTodoScope
      syn match SpAllHLViTodo  "\%#=1\%(!!!*\|???*\)"   contained containedin=AllComViTodoScope,AllViTodoScope
      syn match SpAllHLWarning "\%#=1!!!*"              contained containedin=AllComWarningScope,AllWarningScope
      syn match SpAllHLWarning "\%#=1!!!*"              contained containedin=AllComDoNotScope,AllDoNotScope

   endif
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
         execute 'syn match AllTitles1 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
         execute 'syn match AllTitles2 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
         execute 'syn match AllTitles3 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
         execute 'syn match AllTitles4 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
         execute 'syn match AllTitles5 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
       " execute 'syn match AllTitles6 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
       " execute 'syn match AllTitles7 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
       " execute 'syn match AllTitles8 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
       " execute 'syn match AllTitles9 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
       " execute 'syn match AllTitles0 ''\%#=1' . b:comment_leader . '\s\+[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*''ms=s+' . len(b:comment_leader) . ' contained containedin=.*Comment.*'
      endif
   endif
endfunction
" Same as AllTitles() but matches in textfiles where there are no comments
" and therefor have no need for contained...
function! AllTitlesNotContained()
   if g:performance_mode <= 0
      if exists("b:comment_leader")
         execute 'syn match AllTitles1 ''\%#=1^\s*[0-9][0-9]\?\.\s.*'''
         execute 'syn match AllTitles2 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
         execute 'syn match AllTitles3 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
         execute 'syn match AllTitles4 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
         execute 'syn match AllTitles5 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
       " execute 'syn match AllTitles6 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
       " execute 'syn match AllTitles7 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
       " execute 'syn match AllTitles8 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
       " execute 'syn match AllTitles9 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
       " execute 'syn match AllTitles0 ''\%#=1^\s*[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'''
      endif
   endif
endfunction
function! AllTitlesMarkdown()
   hi link AllTitlesMarkdown1 AllTitles1
   hi link AllTitlesMarkdown2 AllTitles2
   hi link AllTitlesMarkdown3 AllTitles3
   hi link AllTitlesMarkdown4 AllTitles4
   hi link AllTitlesMarkdown5 AllTitles5
 " hi link AllTitlesMarkdown6 AllTitles6
 " hi link AllTitlesMarkdown7 AllTitles7
 " hi link AllTitlesMarkdown8 AllTitles8
 " hi link AllTitlesMarkdown9 AllTitles9
 " hi link AllTitlesMarkdown0 AllTitles0
   syntax match AllTitlesMarkdown1 "\%#=1^\s*# .*"
   syntax match AllTitlesMarkdown2 "\%#=1^\s*## .*"
   syntax match AllTitlesMarkdown3 "\%#=1^\s*### .*"
   syntax match AllTitlesMarkdown4 "\%#=1^\s*#### .*"
   syntax match AllTitlesMarkdown5 "\%#=1^\s*##### .*"
 " syntax match AllTitlesMarkdown6 "\%#=1^\s*###### .*"
 " syntax match AllTitlesMarkdown7 "\%#=1^\s*####### .*"
 " syntax match AllTitlesMarkdown8 "\%#=1^\s*######## .*"
 " syntax match AllTitlesMarkdown9 "\%#=1^\s*######### .*"
 " syntax match AllTitlesMarkdown0 "\%#=1^\s*########## .*"
endfunction
"------------------------------------------------------------------------------


" Add font styles
"------------------------------------------------------------------------------
function! AllFontStyles(contained_en)

   " NOTE: To hide the pattern start/end in normal mode use:
      set conceallevel=2   " Used by AllFontStyles() to hide start/end of match
      set concealcursor=n  " Used by AllFontStyles() to hide start/end of match

   "---------------------------------------------------------------------------
   " Markdown-like font style syntax
   "---------------------------------------------------------------------------
   if a:contained_en != 1
      hi  link    AllMdFontItalic     HLItalic
      syn match   AllMdFontItalic     "\%#=1\%( \|^\)\@<=\*\%(\S\&[^*]\).\{-1,}\%(\S\&[^*]\)\*\%([ .:;,!?)\]}'"]\|\n\)\@="         contains=@NoSpell,AllMdFontHideSA1,AllMdFontHideEA1

      hi  link    AllMdFontBold       HLBold
      syn match   AllMdFontBold       "\%#=1\%( \|^\)\@<=\*\*\%(\S\&[^*]\).\{-1,}\%(\S\&[^*]\)\*\*\%([ .:;,!?)\]}'"]\|\n\)\@="     contains=@NoSpell,AllMdFontHideSA2,AllMdFontHideEA2

      hi  link    AllMdFontBoldItalic HLBoldItalic
      syn match   AllMdFontBoldItalic "\%#=1\%( \|^\)\@<=\*\*\*\%(\S\&[^*]\).\{-1,}\%(\S\&[^*]\)\*\*\*\%([ .:;,!?)\]}'"]\|\n\)\@=" contains=@NoSpell,AllMdFontHideSA3,AllMdFontHideEA3

      hi  link    AllMdFontUline      HLUnderline
      syn match   AllMdFontUline      "\%#=1\%( \|^\)\@<=__\%(\S\&[^_]\).\{-1,}\%(\S\&[^_]\)__\%([ .:;,!?)\]}'"]\|\n\)\@="         contains=@NoSpell,AllMdFontHideSU2,AllMdFontHideEU2

      hi  link    AllMdFontBoldUline  HLBoldUnderline
      syn match   AllMdFontBoldUline  "\%#=1\%( \|^\)\@<=___\%(\S\&[^_]\).\{-1,}\%(\S\&[^_]\)___\%([ .:;,!?)\]}'"]\|\n\)\@="       contains=@NoSpell,AllMdFontHideSU3,AllMdFontHideEU3

      hi  link    AllMdFontUndercurl  HLUndercurl
      syn match   AllMdFontUndercurl  "\%#=1\%( \|^\)\@<=\~\%(\S\&[^~]\).\{-1,}\%(\S\&[^~]\)\~\%([ .:;,!?)\]}'"]\|\n\)\@="         contains=@NoSpell,AllMdFontHideST1,AllMdFontHideET1

      hi  link    AllMdFontStrike     HLStrikeThroughGrey
      syn match   AllMdFontStrike     "\%#=1\%( \|^\)\@<=\~\~\%(\S\&[^~]\).\{-1,}\%(\S\&[^~]\)\~\~\%([ .:;,!?)\]}'"]\|\n\)\@="     contains=@NoSpell,AllMdFontHideST2,AllMdFontHideET2

      hi  link    AllMdFontStrikeLine HLStrikeThroughGrey
      syn match   AllMdFontStrikeLine "\%#=1\%( \|^\)\@<=\~\~\~\%([^~]\).*" contains=@NoSpell,AllMdFontHideST3

      " Hides the pattern start/end in normal mode, to apply use:
      "    set conceallevel=2
      "    set concealcursor=n
      syn match AllMdFontHideSA1 "\%#=1\%( \|^\)\@<=\*\%(\S\&[^*]\)\@=" contained conceal
      syn match AllMdFontHideEA1 "\%#=1\%(\S\&[^*]\)\@<=\*\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      syn match AllMdFontHideST1 "\%#=1\%( \|^\)\@<=\~\%(\S\&[^~]\)\@=" contained conceal
      syn match AllMdFontHideET1 "\%#=1\%(\S\&[^~]\)\@<=\~\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      " syn match AllMdFontHideSU1 "\%#=1\%( \|^\)\@<=_\%(\S\&[^_]\)\@=" contained conceal
      " syn match AllMdFontHideEU1 "\%#=1\%(\S\&[^_]\)\@<=_\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal

      syn match AllMdFontHideSA2 "\%#=1\%( \|^\)\@<=\*\*\%(\S\&[^*]\)\@=" contained conceal
      syn match AllMdFontHideEA2 "\%#=1\%(\S\&[^*]\)\@<=\*\*\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      syn match AllMdFontHideST2 "\%#=1\%( \|^\)\@<=\~\~\%(\S\&[^~]\)\@=" contained conceal
      syn match AllMdFontHideET2 "\%#=1\%(\S\&[^~]\)\@<=\~\~\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      syn match AllMdFontHideSU2 "\%#=1\%( \|^\)\@<=__\%(\S\&[^_]\)\@=" contained conceal
      syn match AllMdFontHideEU2 "\%#=1\%(\S\&[^_]\)\@<=__\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal

      syn match AllMdFontHideSA3 "\%#=1\%( \|^\)\@<=\*\*\*\%(\S\&[^*]\)\@=" contained conceal
      syn match AllMdFontHideEA3 "\%#=1\%(\S\&[^*]\)\@<=\*\*\*\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      syn match AllMdFontHideST3 "\%#=1\%( \|^\)\@<=\~\~\~\%([^~]\)\@=" contained conceal
      " syn match AllMdFontHideET3 "\%#=1\%(\S\&[^~]\)\@<=\~\~\~\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
      syn match AllMdFontHideSU3 "\%#=1\%( \|^\)\@<=___\%(\S\&[^_]\)\@=" contained conceal
      syn match AllMdFontHideEU3 "\%#=1\%(\S\&[^_]\)\@<=___\%([ .:;,!?)\]}'"]\|\n\)\@=" contained conceal
   endif

   "---------------------------------------------------------------------------
   " Alphabet font style syntax
   "---------------------------------------------------------------------------

   " Can't be contained in AllFontPat and needs to be before AllFontPat
   hi  link    AllFontStrikeLine HLStrikeThroughGrey
   execute 'syn match AllFontStrikeLine "\%#=1\%( \|^\)\@<=\/s .*" contains=@NoSpell,AllFontHideStart,AllFontHideEnd ' . (a:contained_en == 1 ? 'contained containedin=@ClusterCommentsPlusScope' : '')


   " This makes pattern matching more efficient by only searching for the main
   " pattern once.
   " NOTE: using \n insead of $ fixes an issue of matches extending comments
   hi  link    AllFontPatCom Comment
   execute 'syn match AllFontPat' . (a:contained_en == 1 ? 'Com' : '') . ' "\%#=1\%( \|^\)\@<=\/[a-z] .\{-1,} [a-z]\/\%([ .:;,!?)\]}''"]\|\n\)\@=" keepend ' . (a:contained_en == 1 ? 'contained containedin=@ClusterCommentsPlusScope' : '')

   " NOTE: Using the following notation for alphabetical font matching:
   " normal         + color /c col/
   " bold           + color /b col/
   " italic         + color /i col/
   " underline      + color /u col/
   " bold italic    + color /x col/ " x-treme slant
   " bold underline + color /d col/ " double
   " ital underline + color /n col/ " slanted underline
   " bold ital und  + color /a col/ " all
   " curl           + color /w col/ " wavy
   " strikethrough  + color /s col/
   " highlight      + color /h col/
   " where col/ is the color tag like r/ for red, g/ for green...

   " Using \%(\%( [a-z]\/\)\@!.\)\{-1,} instead of .\{-1,} to not match
   " different patterns on the same line with the same color:
   "   Red /c font styles r/ yellow /c font styles y/ green /b font styles g/ patterns

   " normal         + color /c col/
   hi  link    AllFontRed          HLRed2
   syn match   AllFontRed          "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} r\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontOrange       HLOrangered
   syn match   AllFontOrange       "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} o\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontYellow       HLYellow
   syn match   AllFontYellow       "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} y\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontGreen        HLGreen
   syn match   AllFontGreen        "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} g\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontCyan         HLCyan
   syn match   AllFontCyan         "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} c\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontDodgerBlue   HLDodgerblue
   syn match   AllFontDodgerBlue   "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} b\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontPink         HLDeeppink
   syn match   AllFontPink         "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} p\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontGreyOut      HLGreyOut
   syn match   AllFontGreyOut      "\%#=1\/c \%(\%( [a-z]\/\)\@!.\)\{-1,} e\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " bold           + color /b col/
   hi  link    AllFontBold         HLBold
   syn match   AllFontBold         "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontRedB         HLRed2B
   syn match   AllFontRedB         "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} r\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontOrangeB      HLOrangeredB
   syn match   AllFontOrangeB      "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} o\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontYellowB      HLYellowB
   syn match   AllFontYellowB      "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} y\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontGreenB       HLGreenB
   syn match   AllFontGreenB       "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} g\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontCyanB        HLCyanB
   syn match   AllFontCyanB        "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} c\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontDodgerBlueB  HLDodgerblueB
   syn match   AllFontDodgerBlueB  "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} b\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontPinkB        HLDeeppinkB
   syn match   AllFontPinkB        "\%#=1\/b \%(\%( [a-z]\/\)\@!.\)\{-1,} p\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " italic         + color /i col/
   hi  link    AllFontItalic       HLItalic
   syn match   AllFontItalic       "\%#=1\/i \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " underline      + color /u col/
   hi  link    AllFontUline        HLUnderline
   syn match   AllFontUline        "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineRed     HLRedU
   syn match   AllFontUlineRed     "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} r\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineOrange  HLOrangeredU
   syn match   AllFontUlineOrange  "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} o\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineYellow  HLYellowU
   syn match   AllFontUlineYellow  "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} y\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineGreen   HLGreenU
   syn match   AllFontUlineGreen   "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} g\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineBlue    HLDodgerblueU
   syn match   AllFontUlineBlue    "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} b\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlinePink    HLDeeppinkU
   syn match   AllFontUlinePink    "\%#=1\/u \%(\%( [a-z]\/\)\@!.\)\{-1,} p\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " bold italic    + color /x col/ " x-treme slant
   hi  link    AllFontBoldItalic   HLBoldItalic
   syn match   AllFontBoldItalic   "\%#=1\/x \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " bold underline + color /d col/ " double
   hi  link    AllFontBoldUline    HLBoldUnderline
   syn match   AllFontBoldUline    "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontBUlineRed    HLRedBU
   syn match   AllFontBUlineRed    "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} r\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontBUlineOrange HLOrangeredBU
   syn match   AllFontBUlineOrange "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} o\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontBUlineYellow HLYellowBU
   syn match   AllFontBUlineYellow "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} y\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontBUlineGreen  HLGreenBU
   syn match   AllFontBUlineGreen  "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} g\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlineBlue    HLDodgerblueBU
   syn match   AllFontUlineBlue    "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} b\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontUlinePink    HLDeeppinkBU
   syn match   AllFontUlinePink    "\%#=1\/d \%(\%( [a-z]\/\)\@!.\)\{-1,} p\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " ital underline + color /n col/ " slanted underline
   hi  link    AllFontItalUline    HLItalUnderline
   syn match   AllFontItalUline    "\%#=1\/n \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " bold ital und  + color /a col/ " all
   hi  link    AllFontBoldItalUnd  HLBoldItalUnder
   syn match   AllFontBoldItalUnd  "\%#=1\/a \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " curl           + color /w col/ " wavy
   hi  link    AllFontUndercurl    HLUndercurl
   syn match   AllFontUndercurl    "\%#=1\/w \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " strikethrough  + color /s col/
   hi  link    AllFontStrikeW      HLStrikethrough
   syn match   AllFontStrikeW      "\%#=1\/s \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontStrikeG      HLStrikeThroughGrey
   syn match   AllFontStrikeG      "\%#=1\/s \%(\%( [a-z]\/\)\@!.\)\{-1,} e\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " highlight      + color /h col/
   hi  link    AllFontHighWhiteB   HLStandout
   syn match   AllFontHighWhiteB   "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} w\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighRedB     HLRedBgB
   syn match   AllFontHighRedB     "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} r\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighOrRedB   HLOrangered1BgB
   syn match   AllFontHighOrRedB   "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} o\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighYellB    HLYellowBgB
   syn match   AllFontHighYellB    "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} y\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighGreenB   HLGreen1BgB
   syn match   AllFontHighGreenB   "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} g\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighCyanB    HLCyanBgB
   syn match   AllFontHighCyanB    "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} c\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighBlueB    HLDodgerBlueBgB
   syn match   AllFontHighBlueB    "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} b\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighPinkB    HLDeepPinkBgB
   syn match   AllFontHighPinkB    "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} p\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom
   hi  link    AllFontHighGreyB    HLGrey15BgB
   syn match   AllFontHighGreyB    "\%#=1\/h \%(\%( [a-z]\/\)\@!.\)\{-1,} e\/"   contains=@NoSpell,AllFontHideStart,AllFontHideEnd contained containedin=AllFontPat,AllFontPatCom

   " Hides the pattern start/end in normal mode, to apply use:
   "    set conceallevel=2
   "    set concealcursor=n
   syn match AllFontHideStart "\%#=1\/[a-z] " contained conceal
   syn match AllFontHideEnd   "\%#=1 [a-z]\/" contained conceal

   " Tests for markdown-like style patterns
   " Testing *font styles* patterns Testing ***font styles*** patterns
   " Testing **font styles** patterns Testing __font styles__ patterns
   " Testing ***font styles*** patterns Testing *font styles* patterns
   " Testing __font styles__ patterns Testing ~~font styles~~ patterns
   " Testing ___font styles___ patterns Testing ~font styles~ patterns
   " Testing ~font styles~ patterns Testing ___font styles___ patterns
   " Testing ~~~font styles patterns Testing ~~~font styles patterns
   " Testing ~~font styles~~ patterns Testing **font styles** patterns

   " Tests for alphabet style patterns
   " Testing /b font styles w/ patterns Testing /b font styles r/ patterns
   " Testing /i font styles w/ patterns Testing /b font styles o/ patterns
   " Testing /x font styles w/ patterns Testing /b font styles y/ patterns
   " Testing /u font styles w/ patterns Testing /b font styles g/ patterns
   " Testing /d font styles w/ patterns Testing /b font styles c/ patterns
   " Testing /w font styles w/ patterns Testing /b font styles b/ patterns
   " Testing /s font styles w/ patterns Testing /n font styles w/ patterns
   " Testing /s font styles e/ patterns Testing /a font styles w/ patterns
   " Testing /s font styles patterns Testing /s font styles patterns
   " Testing /h font styles w/ patterns Testing /b font styles p/ patterns
   " Testing /h font styles r/ patterns Testing /u font styles r/ patterns
   " Testing /h font styles o/ patterns Testing /u font styles o/ patterns
   " Testing /h font styles y/ patterns Testing /u font styles y/ patterns
   " Testing /h font styles g/ patterns Testing /u font styles g/ patterns
   " Testing /h font styles c/ patterns Testing /u font styles b/ patterns
   " Testing /h font styles b/ patterns Testing /u font styles p/ patterns
   " Testing /h font styles p/ patterns Testing /h font styles e/ patterns
   " Testing /c font styles e/ patterns Testing /s font styles patterns
   " Testing /c font styles r/ patterns Testing /d font styles r/ patterns
   " Testing /c font styles o/ patterns Testing /d font styles o/ patterns
   " Testing /c font styles y/ patterns Testing /d font styles y/ patterns
   " Testing /c font styles g/ patterns Testing /d font styles g/ patterns
   " Testing /c font styles c/ patterns Testing /d font styles b/ patterns
   " Testing /c font styles b/ patterns Testing /d font styles p/ patterns
   " Testing /c font styles p/ patterns Testing /d font styles r/ patterns
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
   call AllMultiWordLabel(1)
   if (&filetype == 'text' || &filetype == 'markdown')
      " call AllPaths1(0) " moved inside the files
      " call AllPathsWin(0)
      " call AllPathsDollar(0)
      call AllWebsites(0)
      call AllEmails(0)
   elseif (&filetype == 'html' || &filetype == 'sh')
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
   " call AllHLExclamations()
   call AllTitles()
   call AllSudo()
   call AllCopyright()
   " call AllUnwantedCharacters()
   call AllFontStyles(1)
endfunction

