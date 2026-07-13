"==============================================================================
" File: txt.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all txt files.
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
" if exists("b:txt_loaded")
"    finish
" endif
if exists("g:debug_syntax")
   echom "text.vim syntax file loaded"
endif
if !exists("g:syntax_on")
  finish
endif
let b:txt_loaded = 1

if !exists("b:current_syntax") || b:current_syntax == ""
   let b:current_syntax = "text"
endif

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "text"
   let b:comment_leader = '//'
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
   endif

   call AllFilesDefaultSyntax()
endif

" smartindent in Vim is an indentation option that provides automatic
" indentation when starting a new line.
setlocal nosmartindent

" Keep autoindent, but remove cindent
setlocal nocindent


" Match parenthesis
hi  link    TxtParen     Function
syn match   TxtParen     "[)(]"

hi  link    TxtSBr       StorageClass
syn match   TxtSBr       "[[\]]"

hi  link    TxtCBr       Define
syn match   TxtCBr       "[}{]"


" Match (+) (-) (~)
"------------------------------------------------------------------------------
hi  link    TxtPlusParen      StorageClass
syn match   TxtPlusParen      "(+)"
hi  link    TxtMinusParen     Function
syn match   TxtMinusParen     "(-)"
hi  link    TxtTildaParen     Define
syn match   TxtTildaParen     "(\~)"
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

" Make lines beginning with # as titles
hi link TxtTitles1 AllTitles1
hi link TxtTitles2 AllTitles2
hi link TxtTitles3 AllTitles3
hi link TxtTitles4 AllTitles4
hi link TxtTitles5 AllTitles5
syntax match TxtTitles1 "^\s*# .*"
syntax match TxtTitles2 "^\s*## .*"
syntax match TxtTitles3 "^\s*### .*"
syntax match TxtTitles4 "^\s*#### .*"
syntax match TxtTitles5 "^\s*##### .*"

hi  link    TxtOperators    Operator
syn match   TxtOperators    "[$–]"

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
" Call syntax functions
if exists("b:current_syntax") && b:current_syntax == "text"
   call AllOperators()
   call AllEqualities()
   call AllArrows()
   call AllSeparators2()
   call AllParenBr()
   " call AllWebsites(0)
   call AllLabel()
   call AllNumbers()
   call AllSlashes()
   call StrikeoutEn()
   call AllCommentLeader()
   call AllHLWords()
   call AllTitlesNotContained()

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
hi  link    TxtNumberParen    Function
hi  link    TxtLetterParen    Question
syn match   TxtNumberParen    "^\s*-\?\s*(\?[0-9]\+)" contains=@NoSpell
syn match   TxtLetterParen    "^\s*-\?\s*(\?[A-Z])" contains=@NoSpell
syn match   TxtNumberParen    "\s\+([0-9]\+)" contains=@NoSpell
syn match   TxtLetterParen    "\s\+([A-Z])" contains=@NoSpell
"------------------------------------------------------------------------------

" if hlexists('SpAllHLNoteNC')
"    syn clear SpAllHLNoteNC
"    syn clear SpAllHLViNoteNC
"    syn clear SpAllHLTodoNC
"    syn clear SpAllHLViTodoNC
"    syn clear SpAllHLWarningNC
"    syn clear SpAllHLWarningNC
"    syn clear SpAllHLTodoNC
"    syn clear SpAllHLViTodoNC
" endif
" syn match SpAllHLNoteNC    "\%(^\|.\)\<NOTE\>.\+!!!*"    contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLNote,AllHLNote       transparent
" syn match SpAllHLViNoteNC  "\%(^\|.\)\<VINOTE\>.\+!!!*"  contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLViNote,AllHLViNote   transparent
" syn match SpAllHLTodoNC    "\%(^\|.\)\<TODO\>.\+!!!*"    contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLTodo,AllHLTodo       transparent
" syn match SpAllHLViTodoNC  "\%(^\|.\)\<VITODO\>.\+!!!*"  contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLViTodo,AllHLViTodo   transparent
" syn match SpAllHLWarningNC "\%(^\|.\)\<WARNING\>.\+!!!*" contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLWarning,AllHLWarning transparent
" syn match SpAllHLWarningNC "\%(^\|.\)\<DO NOT\>.\+!!!*"  contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLWarning,AllHLWarning transparent
" syn match SpAllHLTodoNC    "\%(^\|.\)\<TODO\>.\+???*"    contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLTodo,AllHLTodo       transparent
" syn match SpAllHLViTodoNC  "\%(^\|.\)\<VITODO\>.\+???*"  contains=Txt.*,AllArrows,AllCaps,AllEquality,AllSeparators2,SpAllHLViTodo,AllHLViTodo   transparent

" syn match SpAllHLNoteNC    "\%(^\|.\)\<NOTE\>.\+!!!*"    contains=ALL,AllOperators
" syn match SpAllHLViNoteNC  "\%(^\|.\)\<VINOTE\>.\+!!!*"  contains=ALL,AllOperators
" syn match SpAllHLTodoNC    "\%(^\|.\)\<TODO\>.\+!!!*"    contains=ALL,AllOperators
" syn match SpAllHLViTodoNC  "\%(^\|.\)\<VITODO\>.\+!!!*"  contains=ALL,AllOperators
" syn match SpAllHLWarningNC "\%(^\|.\)\<WARNING\>.\+!!!*" contains=ALL,AllOperators
" syn match SpAllHLWarningNC "\%(^\|.\)\<DO NOT\>.\+!!!*"  contains=ALL,AllOperators
" syn match SpAllHLTodoNC    "\%(^\|.\)\<TODO\>.\+???*"    contains=ALL,AllOperators
" syn match SpAllHLViTodoNC  "\%(^\|.\)\<VITODO\>.\+???*"  contains=ALL,AllOperators

