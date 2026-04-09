"==============================================================================
" File: all_post.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all file types
"              AFTER the respective file settings have been applied.
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
if exists("b:all_post_loaded")
  finish
endif
let g:all_post_loaded = 1


" Highlight VI words.
"------------------------------------------------------------------------------
hi  link    AllPostHLNote        HLGreen3BgB
hi  link    AllPostHLViNote      HLGreen1BgB
hi  link    AllPostHLTodo        HLOrangeBgB
hi  link    AllPostHLViTodo      HLYellow3BgB
hi  link    AllPostHLWarning     HLOrangered1BgB
hi  link    AllPostHLError       HLRedBgB

syn match   AllPostHLNote        "\<NOTE\%(:\|\>\)\@="    contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLViNote      "\<VINOTE\%(:\|\>\)\@="  contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLTodo        "\<FIXME\%(:\|\>\)\@="   contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLTodo        "\<HACK\%(:\|\>\)\@="    contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLTodo        "\<TODO\%(:\|\>\)\@="    contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLViTodo      "\<VITODO\%(:\|\>\)\@="  contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLWarning     "\<DO NOT\%(:\|\>\)\@="  contains=@NoSpell containedin=.*Comment.*
syn match   AllPostHLWarning     "\<WARNING\%(:\|\>\)\@=" contains=@NoSpell containedin=.*Comment.*
" syn match   AllPostHLError       "\<ERROR\%(:\|\>\)\@="   contains=@NoSpell containedin=.*Comment.*
" syn match   AllPostHLError       "\<WRONG\%(:\|\>\)\@="   contains=@NoSpell containedin=.*Comment.*
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
" if g:performance_mode <= 0
"    " syn match   AllPostHLTodo        "???*" containedin=.*Comment.*
"    " syn match   AllPostHLViTodo      "?????*" containedin=.*Comment.*
"    " syn match   AllPostHLNote        "!!!*" containedin=.*Comment.*
"    " syn match   AllPostHLViNote      "!!!!!*" containedin=.*Comment.*
"    syn match   AllPostHLNote        "\%(\<NOTE\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
"    syn match   AllPostHLViNote      "\%(\<VINOTE\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
"    syn match   AllPostHLTodo        "\%(\<TODO\%(:\|\>\)\@=.*\)\@<=\%(!!!*\|???*\)" containedin=.*Comment.*
"    syn match   AllPostHLViTodo      "\%(\<VITODO\%(:\|\>\)\@=.*\)\@<=\%(!!!*\|???*\)" containedin=.*Comment.*
"    syn match   AllPostHLWarning     "\%(\<WARNING\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
"    syn match   AllPostHLWarning     "\%(\<DO NOT\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
"    " syn match   AllPostHLError       "\%(\<ERROR\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
"    " syn match   AllPostHLError       "\%(\<WRONG\%(:\|\>\)\@=.*\)\@<=!!!*" containedin=.*Comment.*
" endif
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
if g:performance_mode < 1
   if exists("b:comment_leader")
      hi  link  AllPostTitles1   AllFilesSystemColor
      execute 'syn match AllPostTitles1 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      hi  link  AllPostTitles2   AllFilesEqualityColor
      execute 'syn match AllPostTitles2 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      hi  link  AllPostTitles3   AllFilesTimeColor
      execute 'syn match AllPostTitles3 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      hi  link  AllPostTitles4   AllFilesSystemColor5
      execute 'syn match AllPostTitles4 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      hi  link  AllPostTitles5   AllFilesArrayColor
      execute 'syn match AllPostTitles5 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      " hi  link  AllPostTitles6   AllFilesSystemColor4
      " execute 'syn match AllPostTitles6 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      " hi  link  AllPostTitles7   AllFilesPointerColor
      " execute 'syn match AllPostTitles7 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      " hi  link  AllPostTitles8   AllFilesQuotesColor1
      " execute 'syn match AllPostTitles8 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      " hi  link  AllPostTitles9   AllFilesNumColor
      " execute 'syn match AllPostTitles9 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
      " hi  link  AllPostTitles10  AllFilesStructColor
      " execute 'syn match AllPostTitles10 ''\%(' . b:comment_leader . '\s\+\)\@<=[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.[0-9][0-9]\?\.\s.*'' contains=@NoSpell containedin=.*Comment.*'
   endif
endif
"------------------------------------------------------------------------------


" Match \ if it's the last character in the line.
hi  link    AllPostSlash   AllFilesSpecialColorB
syn match   AllPostSlash   '\\\%(\s*$\)\@='


" Load hl_matchit file that highlights custom match_words pairs when one pair
" is selected.
"------------------------------------------------------------------------------
if !exists("g:HlMatchitLoaded") && exists("g:hl_matchit_enable_on_vim_startup") && exists("b:match_words")
   let g:HlMatchitLoaded=1
   so ${vim_folder_path}hl_matchit.vim
endif
"------------------------------------------------------------------------------

