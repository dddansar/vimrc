"==============================================================================
" File: text.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all text files.
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
if !isdirectory(expand($vim_folder_path))
   finish
endif

" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:text_loaded")
"    finish
" endif
if exists("g:debug_syntax")
   echom "text.vim syntax file loaded"
endif
if !exists("g:syntax_on")
  finish
endif
let b:text_loaded = 1

if !exists("b:current_syntax") || b:current_syntax == ""
   let b:current_syntax = "text"
endif

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "text"
   let b:comment_leader = '//'
   let b:multi_line_comment_start = '/\*'
   let b:multi_line_comment_end = '\*/'
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   source $vim_folder_path/strikethrough.vim
   source $vim_folder_path/after/syntax/shared/spell.vim
   " Apply spell checking everywhere in text files.
   syntax spell toplevel

   " NOTE: Moving these here to re-source on file/syntax reload.
   if expand('%:t') =~# '\.uni\.txt$'
      source $vim_folder_path/after/syntax/shared/unicode.vim
   endif
   if expand('%:t') =~ '\.uni\.txt$'
      source $vim_folder_path/after/syntax/shared/math.vim
      setlocal nospell
   endif
   " if expand('%:p') =~ '/reference_files/'
   "    source $vim_folder_path/after/syntax/shared/linux.vim
   " endif

   " NOTE: Need to move AllOperators before AllHLExclamations()
   call AllOperators()
   call AllFilesDefaultSyntax()
endif

" smartindent in Vim is an indentation option that provides automatic
" indentation when starting a new line.
setlocal nosmartindent

" Keep autoindent, but remove cindent
setlocal nocindent


" Match parenthesis
hi  link    TextParen     Function
syn match   TextParen     "[)(]"

hi  link    TextSBr       StorageClass
syn match   TextSBr       "[[\]]"

hi  link    TextCBr       Define
syn match   TextCBr       "[}{]"

hi  link    TextOperators  Operator
syn match   TextOperators  "[$–]"
hi  link    TextSlash      Operator
syn match   TextSlash      "\/"


" Match (+) (-) (~)
"------------------------------------------------------------------------------
hi  link    TextPlusParen      StorageClass
syn match   TextPlusParen      "(+)"
hi  link    TextMinusParen     Function
syn match   TextMinusParen     "(-)"
hi  link    TextTildaParen     Define
syn match   TextTildaParen     "(\~)"
"------------------------------------------------------------------------------

" Lowercase p1/p2/p3 (lower case could mean page numbers...).
" P1/P2/P3 for Priorities
syn match Whitebg             "\<P0\>" contains=@NoSpell
syn match RedOrangebg         "\<P1\>" contains=@NoSpell
syn match Orangebg            "\<P2\>" contains=@NoSpell
syn match LightOrangebg       "\<P3\>" contains=@NoSpell
syn match Yellowbg            "\<P4\>" contains=@NoSpell
syn match FluoGreen0bg        "\<P5\>" contains=@NoSpell
syn match FluoGreen2bg        "\<P6\>" contains=@NoSpell
syn match Green2bg            "\<P7\>" contains=@NoSpell
syn match Tealbg              "\<P8\>" contains=@NoSpell
syn match Blue2bg             "\<P9\>" contains=@NoSpell

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
" Call syntax functions
if exists("b:current_syntax") && b:current_syntax == "text"
   call AllEqualities()
   call AllArrows()
   call AllParenBr()
   " call AllWebsites(0)
   call AllLabel()
   call AllNumbers()
   call AllSlashes()
   call AllSeparators2()
   call StrikeoutEn()
   call AllCommentAnywhere()
   call AllMultiLineCommentAnywhere()
   " call AllHLWords()
   " call AllHLExclamations()
   call AllTitlesMarkdown()
   call AllTitlesNotContained()

   if expand('%:t') =~# '.*regex.*\.txt$' || expand('%:t') =~# '^substitution_tutorial\.txt$'
      call AllQuotesLookbehind(1)

      " This helps prevent runaway \* if they are in quotes, and keeps the quotes colorless for regex
      hi link    TextQuotesLookbehind TextNoColor
      syn region TextQuotesLookbehind matchgroup=AllQuotesLookbehind start=+\%(\%(\s\|^\|[([{,=]\)\@<=\)"+ms=s skip=+""+ end=+"\%(\W\|$\)\@=+ oneline keepend contains=AllNumbers1,TextLinuxCommands,AllDefineDollar
      syn region TextQuotesLookbehind matchgroup=AllQuotesLookbehind start=+\%(\%(\s\|^\|[([{,=]\)\@<=\)'+ms=s skip=+''+ end=+'\%(\W\|$\)\@=+ oneline keepend contains=AllNumbers1,TextLinuxCommands,AllDefineDollar

      call RegexMatches(0)
      call RegexMatchesVim(0)
      call RegexMatchesPerl(0)
      " Needs to be after $ is matched from regex
      call AllDefineDollar()
      call AllDefineAt()
      " Needs to be after AllDefineDollar as $s/// is a valid substitution
      call SpRegexSearches(0)

      " Match \{n}, \{n,}, \{,m}, \{n,m}, \{-}, \{-n,}, \{-,m}, \{-n,m}
      syn match   RegexQuant  "\\\?{-\?n\?\%(,m\?\\\?\)\?}"  contains=@NoSpell containedin=@RegexContainedin

      hi  link  TextLinuxCommands Statement
      syn match TextLinuxCommands "\(\.\)\@<!\<grep\%( -\w\+\)*\>"
      syn match TextLinuxCommands "\(\.\)\@<!\<sed\%( -\w\+\)*\>\%(.bak\>\)\?"
      syn match TextLinuxCommands "\(\.\)\@<!\<echo\%( -\w\+\)*\>"
      syn match TextLinuxCommands "\(\.\)\@<!\<awk\%( -\w\+\)*\>"
      syn match TextLinuxCommands "\(\.\)\@<!\<perl\%( -\w\+\)*\>"
      syn match TextLinuxCommands "\(^\||\)\s*\<cat\%( -\w\+\)*\>"
      syn match TextLinuxCommands "\(^\||\)\s*\<print\>"
      syn match TextLinuxCommands "\(^\||\)\s*\<use\>"
      syn match TextLinuxCommands "\(^\||\)\s*\<time\>"
      syn match TextLinuxCommands "\(^\|[|(]\)\s*\<my\>"
      syn keyword TextLinuxCommands syntime timethis
      " Contain in TextQuotesLookbehind
      syn keyword TextLinuxCommands print sub gsub contained

      " Add # comments as well
      syn match AllCommentLineStart +^\s*#.*+

      " Match a hashbang
      hi  link  TextHashBang Define
      syn match TextHashBang +^#!.*+

      " Match programming conditionals and loops
      hi  link  TextPrgmConditionals Conditional
      syn match TextPrgmConditionals +^\s*\%(while\|if\|else\|for\)\%(\s*(\)\@=+
      syn match TextPrgmConditionals +^\s*for\%(\s\+\w\+\s\+in\>\)\@=+

      syn match   AllEquality    "=\~" containedin=RegexPatSepPerl
   else
      call AllQuotesLookbehind(0)
   endif
   " AllPaths needs to be after regex/slashes/operators/separators...
   call AllPaths1(0)
   call AllPathsWin(0)
   call AllPathsDollar(0)

   if expand('%:t') =~# '^claude_history.*\.txt$'
      if exists('*SetupClaudeChatSyntax') | call g:SetupClaudeChatSyntax() | endif
      " let b:current_syntax = "text"
      setlocal nospell
   endif
endif

" Match 1) A) (2) (B)...
"------------------------------------------------------------------------------
" Start of line, one or more spaces followed by 0 or 1 "(" followed by
" number/letter and ")".
hi  link    TextNumberParen    Function
hi  link    TextLetterParen    Question
syn match   TextNumberParen    "^\s*-\?\s*(\?[0-9]\+)" contains=@NoSpell
syn match   TextLetterParen    "^\s*-\?\s*(\?[A-Z])" contains=@NoSpell
syn match   TextNumberParen    "\s\+([0-9]\+)" contains=@NoSpell
syn match   TextLetterParen    "\s\+([A-Z])" contains=@NoSpell
"------------------------------------------------------------------------------

