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


let g:supports_regex=0

" VINOTE: By using hi link (along with statusline in vimrc), vim will display
"         the name of the link and what it links to in the statusline. This is
"         very useful to debug which syntax group is causing any issues. And
"         for the "hi link", I add the file name "AllPre" first, to know which
"         file the syntax group is located in.

"------------------------------------------------------------------------------
" Highlight chars that you don't want used such as tabs
hi  link     AllPreTabs    HLGray10BgB
syn match    AllPreTabs    '\t'       contains=@NoSpell containedin=CommentColor,Comment2Color
" Highlight trailing white spaces
hi  link     AllPreTrailingSpaces    HLGray10BgB
syn match    AllPreTrailingSpaces    '\s\+$'       contains=@NoSpell containedin=CommentColor,Comment2Color
"------------------------------------------------------------------------------

" Add default matches for special chars, many will be overridden later.
"------------------------------------------------------------------------------
" Slashes
hi  link    AllPreSpChars1    AllFilesOpColor
syn match   AllPreSpChars1    "/"        containedin=AllPrePaths

hi  link    AllPreSpChars2    AllFilesSpecialColor
syn match   AllPreSpChars2    "[\\]"     containedin=AllPrePaths

" Quotes
hi  link    AllPreSpChars3    AllFilesQuotesColor1
syn match   AllPreSpChars3    "\%(\w\|\s\)\@<=`\%(\w\)\@!" contained containedin=CommentColor
syn match   AllPreSpChars3    "\%(\w\)\@<!`\%(\w\|\s\|$\)\@=" contained containedin=CommentColor

hi  link    AllPreSpChars4    AllFilesQuotesColor2
syn match   AllPreSpChars4    '\%(\s\|(\|^\|\[\|{\)\@<="'
syn match   AllPreSpChars4    '"\%(\s\|)\|$\|\]\|}\|.\|,\|;\|:\|!\|?\)\@='

hi  link    AllPreSpChars5    AllFilesQuotesColor3
syn match   AllPreSpChars5    "\%(\s\|(\|^\|\[\|{\)\@<='"
syn match   AllPreSpChars5    "'\%(\s\|)\|$\|\]\|}\|.\|,\|;\|:\|!\|?\)\@="

" Operators
hi  link    AllPreSpChars6    AllFilesOpColor
syn match   AllPreSpChars6    "\%(\/\)\@<!\*\%(\/\)\@!"
syn match   AllPreSpChars6    "[*]"
syn match   AllPreSpChars6    "[+]"
syn match   AllPreSpChars6    "[%^]"
syn match   AllPreSpChars6    "[&|]"
syn match   AllPreSpChars6    "[~]"
syn match   AllPreSpChars6    "-"

" Parenthesis/brackets
hi  link    AllPreSpParen     AllFilesFuncColor
syn match   AllPreSpParen     "[)(]"

hi  link    AllPreSpSBr       AllFilesSBrColor
syn match   AllPreSpSBr       "[[\]]"

hi  link    AllPreSpCBr       AllFilesCBrColor
syn match   AllPreSpCBr       "[}{]"

hi  link    AllPreSpTBr       AllFilesTBrColor
syn match   AllPreSpTBr       "[><]"

" Equalities
hi  link    AllPreSpChars7    AllFilesEquality
syn match   AllPreSpChars7    "="
syn match   AllPreSpChars7    ">="
syn match   AllPreSpChars7    "<="

" Special characters
hi  link    AllPreSpChars9    AllFilesSpecialColor
syn match   AllPreSpChars9    "[@]"
syn match   AllPreSpChars9    "[#]"
syn match   AllPreSpChars9    "[!?]"
syn match   AllPreSpChars9    "[$]"

hi  link    AllPreSpChars10   AllFilesSpecialColor2
syn match   AllPreSpChars10   "[:;]"

" Arrows
hi  link    AllPreSpChars8    AllFilesArrowsColor
syn match   AllPreSpChars8    "=>"
syn match   AllPreSpChars8    "<=>"

hi  link    AllPreSpChars12   AllFilesArrowsColor
syn match   AllPreSpChars12   "->"
syn match   AllPreSpChars12   "<-"
syn match   AllPreSpChars12   "<->"
"------------------------------------------------------------------------------


hi  link    AllPreCommentColor   CommentColor
hi  link    AllPreComment2Color  Comment2Color
" Ignore spell checking for the following matches.
"------------------------------------------------------------------------------
" if !exists("g:minimal_matching")
if exists("g:spell_check_en") && g:spell_check_en
   " 1 capital letter not at first char.
   syn match    AllPreCommentColor  "\<[a-z]\+[A-Z][a-z]*\>" contains=@NoSpell contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-z]\+[A-Z][a-z]*\>" contains=@NoSpell contained containedin=Comment2Color
   syn match    AllPreCapitalized1  "\<[a-z]\+[A-Z][a-z]*\>" contains=@NoSpell

   " 2 or more capital letters.
   syn match    AllPreCommentColor  "\<[a-zA-Z]*[A-Z][a-zA-Z]*[A-Z][a-zA-Z]*\>"   contains=@NoSpell contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-zA-Z]*[A-Z][a-zA-Z]*[A-Z][a-zA-Z]*\>"   contains=@NoSpell contained containedin=Comment2Color
   syn match    AllPreCapitalized2  "\<[a-zA-Z]*[A-Z][a-zA-Z]*[A-Z][a-zA-Z]*\>"   contains=@NoSpell

   " 1 Capital letter at first char but not at start of line or sentence.
   syn match    AllPreCommentColor  "\%(^\s*\|[\.!?]\s\+\|\-\-\s*\|\/\/\s*\)\@<!\<[A-Z][a-z]*\>"   contains=@NoSpell contained containedin=CommentColor
   syn match    AllPreComment2Color "\%(^\s*\|[\.!?]\s\+\|\-\-\s*\|\/\/\s*\)\@<!\<[A-Z][a-z]*\>"   contains=@NoSpell contained containedin=Comment2Color
   syn match    AllPreCapitalized3  "\%(^\s*\|[\.!?]\s\+\|\-\-\s*\|\/\/\s*\)\@<!\<[A-Z][a-z]*\>"   contains=@NoSpell

   " Contains number.
   syn match    AllPreCommentColor  "\<[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*\>"   contains=@NoSpell contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*\>"   contains=@NoSpell contained containedin=Comment2Color
   syn match    AllPreContainsNumber    "\<[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*\>"   contains=@NoSpell

   " Contains dash or underscore or dots.
   syn match    AllPreCommentColor  "\<[a-zA-Z0-9\._-]*[\._-][a-zA-Z0-9\._-]*\>"  contains=@NoSpell contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-zA-Z0-9\._-]*[\._-][a-zA-Z0-9\._-]*\>"  contains=@NoSpell contained containedin=Comment2Color
   syn match    AllPreDotsUndDash   "\<[a-zA-Z0-9\._-]*[\._-][a-zA-Z0-9\._-]*\>"  contains=@NoSpell,AllFilesCapsColor,AllFilesNumColor,UnicodeVectors

   " Is a function name followed by ().
   hi  link     AllPreFunction      AllFilesFuncColor
   syn match    AllPreCommentColor  "\<[a-z][a-z0-9]\+\>\%(\s*()\)\@="  contains=@NoSpell,AllFilesLoopCondColor contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-z][a-z0-9]\+\>\%(\s*()\)\@="  contains=@NoSpell,AllFilesLoopCondColor contained containedin=Comment2Color
   syn match    AllPreFunction      "\<[a-z][a-z0-9]\+\>\%(\s*()\)\@="  contains=@NoSpell,AllFilesLoopCondColor

   " Is a function name immediately followed by ( with no spaces.
   hi  link     AllPreFunction2     AllFilesFuncColor
   syn match    AllPreCommentColor  "\<[a-z][a-z0-9]\+\>\%((\)\@=\%((\%(i\?e\?s\))\)\@!"  contains=@NoSpell,AllFilesLoopCondColor contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-z][a-z0-9]\+\>\%((\)\@=\%((\%(i\?e\?s\))\)\@!"  contains=@NoSpell,AllFilesLoopCondColor contained containedin=Comment2Color
   syn match    AllPreFunction2     "\<[a-z][a-z0-9]\+\>\%((\)\@=\%((\%(i\?e\?s\))\)\@!"  contains=@NoSpell,AllFilesLoopCondColor

   " Is an array name followed by [].
   syn match    AllPreCommentColor  "\<[a-z][a-z0-9]\+\>\%(\s*\[\]\)\@="  contains=@NoSpell,AllFilesLoopCondColor contained containedin=CommentColor
   syn match    AllPreComment2Color "\<[a-z][a-z0-9]\+\>\%(\s*\[\]\)\@="  contains=@NoSpell,AllFilesLoopCondColor contained containedin=Comment2Color
   syn match    AllPreArray         "\<[a-z][a-z0-9]\+\>\%(\s*\[\]\)\@="  contains=@NoSpell,AllFilesLoopCondColor
" endif
endif
"------------------------------------------------------------------------------



" Match common keywords in programming languages.
"------------------------------------------------------------------------------

" NOTE: Using match instead of keyword as it is easier to override.
hi  link  AllPreKeywords2  AllFilesFuncColor
syn match AllPreKeywords2  "\<or\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<and\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<not\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<xor\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<xnor\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<nor\>"  contains=@NoSpell
syn match AllPreKeywords2  "\<nand\>"  contains=@NoSpell

hi  link  AllPreKeywords6  AllFilesLoopCondColor
syn match AllPreKeywords6  "\<begin\>"
syn match AllPreKeywords6  "\<end\>"
syn match AllPreKeywords6  "\<case\>"
syn match AllPreKeywords6  "\<default\>"
syn match AllPreKeywords6  "\<forever\>"
syn match AllPreKeywords6  "\<then\>"
syn match AllPreKeywords6  "\<repeat\>"

hi  link  AllPreKeywords7  AllFilesSystemColor
syn match AllPreKeywords7  "\<true\>"
syn match AllPreKeywords7  "\<false\>"

syn match AllPreKeywords7  "\<open\>"
syn match AllPreKeywords7  "\<close\>"
syn match AllPreKeywords7  "\<return\>"
syn match AllPreKeywords7  "\<import\>"
syn match AllPreKeywords7  "\<exit\>"
syn match AllPreKeywords7  "\<system\>"
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
hi  link  AllPreKeywords8  AllFilesLoopCondColor
syn match AllPreKeywords8  "\<do\>\%( not\)\@!"  contains=@NoSpell
syn match AllPreKeywords8  "\<iff\>"      contains=@NoSpell
syn match AllPreKeywords8  "\<\%(if\|else\|for\|while\)\>" contains=@NoSpell
syn match AllPreKeywords8  "\<endcase\>"  contains=@NoSpell
syn match AllPreKeywords8  "\<esac\>"     contains=@NoSpell
syn match AllPreKeywords8  "\<elseif\>"   contains=@NoSpell
syn match AllPreKeywords8  "\<endif\>"    contains=@NoSpell
syn match AllPreKeywords8  "\<elif\>"     contains=@NoSpell
syn match AllPreKeywords8  "\<fi\>"       contains=@NoSpell
syn match AllPreKeywords8  "\<endfor\>"   contains=@NoSpell
syn match AllPreKeywords8  "\<endwhile\>" contains=@NoSpell
syn match AllPreKeywords8  "\<foreach\>"  contains=@NoSpell
"------------------------------------------------------------------------------


" Matches decimal/hex/oct/bin numbers.
"------------------------------------------------------------------------------
" NOTE: The characters "\<" and "\>" "anchor" the expression between to only
"       match if it is on a word boundary end.
" Numbers
hi  link  AllPreNumbers1   AllFilesNumColor
syn match AllPreNumbers1   "\<[0-9]\+\>"             contains=@NoSpell
syn match AllPreNumbers1   "\<[0-9]\+\%(\W\)\@="      contains=@NoSpell
syn match AllPreNumbers1   "\<[0-9]\+-[0-9]\+\>"     contains=@NoSpell
syn match AllPreNumbers1   "\<0[x][0-9A-Fa-f]\+\>"   contains=@NoSpell
syn match AllPreNumbers1   "\<[x][0-9A-F]\+\>"       contains=@NoSpell

"\%( and \) lets you create a grouping.
"\< means beginning of word.
"\> means end of word.
"\d means decimal.
"\+ means one or more match.
"\s means white space or tab.
"|\ means or but it followed by nothing so match with or without anything.
"%( means make group non capturing.
"\= means match 0 or 1 times.
"\? means match 0 or 1 times.
" NOTE: Inside a character class like [ ], the dot and $ loses its special
"       meaning and matches a literal dot and $.

" matches 19'd1238  19'h1238af 32'b01010111 8'o3241
" matches   'd1238    'h1238af   'b01010111  'o3241
hi  link  AllPreNumbers2   AllFilesNumColor
syn match AllPreNumbers2   "\%(\<\d\+\|\)'[bB][0-1_?]\+" contains=@NoSpell
syn match AllPreNumbers2   "\%(\<\d\+\|\)'[oO][0-7_?]\+" contains=@NoSpell
syn match AllPreNumbers2   "\%(\<\d\+\|\)'[dD][0-9_?]\+" contains=@NoSpell
syn match AllPreNumbers2   "\%(\<\d\+\|\)'[hH][0-9a-fA-F_?]\+" contains=@NoSpell
"------------------------------------------------------------------------------


" Match scientific/exponent/floating point notation/number.
" (±423.234 x 10±³ ±4243.234E±8)
"------------------------------------------------------------------------------
syn case ignore
" matches 329E+32 32E-32 32E32
" matches .329E+32 .32E-32 .32 .32E32
" matches 234.23 2332.329e-32 2323.32e+32 2332.32e32
" matches        2332.329E+32 2323.32E-32
" matches 329x10^32 32x10^-32 32x10^32
" matches .329x10^+32 .32x10^-32 .32x10^32
" matches 2332.329x10^-32 2323.32x10^+32 2332.32x10^32 2332.32x10^32
" matches 2332.329x10^+32 2323.32x10^-32
" and also matches 2^14 2.32^43
hi  link  AllPreNumbers3   AllFilesNumColor
syn match AllPreNumbers3   "\%(\<\d*\)\?\.\?\<\d\+\%(\%(e\|x10\^\|\^\)[-+±∓]\?\)\?\d\+\>" contains=@NoSpell
syn case match
"------------------------------------------------------------------------------


" Time
"------------------------------------------------------------------------------
" Matches 34ns 34ps 34fs 34us 34ms 34s
" Matches 34sec 34min 34hr
hi  link  AllPreTime    AllFilesTimeColor
syn match AllPreTime    "\<\d\+\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
" syn match AllPreTime    "\<\%(\%([fpnum]s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"

" Matches 34.23ns 34.23ps 34.23fs 34.23us 34.23ms 34.23s
" Matches 34.23sec 34.23min 34.23hr
syn match AllPreTime    "\<\d\+\.\d\+\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
"------------------------------------------------------------------------------


" Color CAPITAL words.
"------------------------------------------------------------------------------
hi  link     AllPreCapital AllFilesCapsColor
syn match    AllPreCapital "\%(^\|\W\|\<[0-9]\+\)\@<=[A-Z][A-Z]\+\%(\W\|$\)\@=\%('[a-zA-Z]\)\@!" contains=@NoSpell
syn match    AllPreCapital "\%(^\|\W\)\@<=[A-Z][A-Z0-9_]\+\%(\W\|$\)\@=" contains=@NoSpell containedin=CommentColor
" Match words like DON'T that have ' in them.
syn match    AllPreCapital "\%(^\|\W\)\@<=[A-Z]\+'[A-Z]\+\%(\W\|$\)\@=" contains=@NoSpell containedin=CommentColor

" Match 's' at end of abbreviations.
syn match   AllPreCapital  "\<[A-Z][A-Z]\+s\>" contains=@NoSpell containedin=CommentColor
"------------------------------------------------------------------------------


" Match defines or special variables.
" Moved bach to _pre so `quotes` would work, is this needed to go elsewhere?
"------------------------------------------------------------------------------
if exists("b:comment_leader") && b:comment_leader != '#'
   " Matches words like #define.
   hi  link    AllPreHash AllFilesDefinesColor
   syn match   AllPreHash "\%(s#.*\|#\)\@<!#[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=CommentColor

   " Matches hex #329AF.
   hi  link    AllPreHashHex  AllFilesNumColor
   syn match   AllPreHashHex  "\%(s#.*\|#\)\@<!#[a-fA-F0-9_]\+\>" contains=@NoSpell containedin=CommentColor
endif

hi  link    AllPreDollar      AllFilesDefinesColor
syn match   AllPreDollar      "[$][a-zA-Z0-9_]\+\>"         contains=@NoSpell containedin=AllPrePaths,CommentColor,Comment2Color
syn match   AllPreDollar      "\${[a-zA-Z0-9_]\+}"          contains=@NoSpell containedin=AllPrePaths,CommentColor,Comment2Color

hi  link    AllPreTick        AllFilesDefinesColor
syn match   AllPreTick        "`[a-zA-Z0-9_]\+\>\%(`\)\@!"   contains=@NoSpell containedin=CommentColor,Comment2Color

hi  link    AllPreAt          AllFilesNumColor
syn match   AllPreAt          "@[a-zA-Z0-9_]\+\>"           contains=@NoSpell containedin=CommentColor,Comment2Color
"------------------------------------------------------------------------------


" Matches linux paths.
" WARNING: Can slow down/reduce performance.
"------------------------------------------------------------------------------
if g:performance_mode <= 0
   hi  link     AllPrePaths   AllFilesPathsColor
   " Match optional ~/ or / at start.
   " Match word/word/... or word/word1\ word2\ .../...
   " Match optional word.extension or .. or . at the end.
   " Lookaheads \@! \@= at the end to make sure it's a proper path.
   syn match    AllPrePaths   "\
      \%(\~\?\/\)\?\
      \%(\%([a-zA-Z0-9_.$]\%([a-zA-Z0-9_.\-]\|\\ \)\+\|[a-zA-Z0-9]\)\/\)\+\
      \%(\%([a-zA-Z0-9_.$]\%([a-zA-Z0-9_.\-]\|\\ \)\+\|[a-zA-Z0-9]\)\.[a-zA-Z0-9]\+\|\.\.\?\)\?\
      \%([a-zA-Z0-9_.\-]\|\\ [a-zA-Z0-9_]\)\@!\
      \%($\|\s\|\'\|\"\)\@=" contains=@NoSpell containedin=CommentColor,Comment2Color
endif
"------------------------------------------------------------------------------


" Match websites.
"------------------------------------------------------------------------------
if g:performance_mode <= 0
   hi  link     AllPreWebLinks   AllFilesPathsColor
   syn match    AllPreWebLinks   "www\.[a-zA-Z0-9.?!\-_=\/~@()]\+"  contains=@NoSpell containedin=CommentColor,Comment2Color
   " No parenthesis or spaces.
   syn match    AllPreWebLinks   '\w\+:\/\/[^[:space:]]\+'      contains=@NoSpell containedin=CommentColor,Comment2Color
endif
"------------------------------------------------------------------------------


" Comments leader and second.
"------------------------------------------------------------------------------
hi  link    Comment2Color  AllFilesComment2Color
hi  link    CommentColor   AllFilesCommentColor
if exists("b:comment_second")
   execute 'syn match   Comment2Color    +' . b:comment_second . '.*+    contains=Comment2Color'
endif
if exists("b:comment_leader")
   execute 'syn match   CommentColor     +' . b:comment_leader . '.*+    contains=CommentColor'
endif
"------------------------------------------------------------------------------

" NOTE: Disables spell checking inside parenthesis or if matching parenthesis
"       is not closed!! Conflicts with one of the Error matches in c.vim if
"       placed inside all_post.vim.
" Match each layer of matching parenthesis with different colors:
" ((())) [[[]]] {{{}}}
"------------------------------------------------------------------------------
if !exists("g:spell_check_en") && exists("g:supports_regex") && g:supports_regex == 0 && g:performance_mode <= 0
   call Highlight_rainbow_round_parenthesis ()
   call Highlight_rainbow_square_parenthesis ()
   call Highlight_rainbow_bracket_parenthesis ()
endif
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Setting up a custom dictionary !!!!
"------------------------------------------------------------------------------
" Vim's internal dictionary is not perfect and may not align with your writing
" style. The dictionary can fortunately be overridden with a local dictionary.
" A local dictionary is automatically created whenever a word is added or
" ignored.

" The location of this file is in ~/.vim/spell/, and is named based on the
" defined language, e.g. ~/.vim/spell/en.utf-8.add.

" A custom dictionary can be created and defined like so:
" setlocal spell spelllang=custom_file.spl
" Where custom_file.spl is the path to the custom dictionary.

" Will highlight spelling mistakes, NOTE: spellcheck != autocorrect.
" 1)
" if exists("g:spell_check_en") && filereadable(expand($vim_spell_path . "/custom_spell.utf-8.spl"))
"    setlocal spelllang+=custom_spell
" endif

" 2)
" Create file ~/.vim/spell/custom_file.utf-8.add

" 3) It should be noted that the *.spl extension is a compressed format. To
"    generate a *.spl file, the mkspell command can be used like so:
":mkspell! custom_file.utf-8.add

" 4)
" Can't find the file custom_file.utf-8.spl  (because it's called
"                                             custom_file.utf-8.add.spl !!)
" So create a link to it:
" cd ~/.vim/spell/
" ln -s ~/.vim/spell/custom_file.utf-8.add.spl custom_file.utf-8.spl
"------------------------------------------------------------------------------

