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

" Highlight VI words.
"------------------------------------------------------------------------------
" syn case ignore
syn match   HLOrangered1BgB      "\<DO NOT\>"  contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLOrangered1BgB      "\<WARNING\>" contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLOrangeBgB          "\<FIXME\>"   contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLOrangeBgB          "\<HACK\>"    contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLOrangeBgB          "\<TODO\>"    contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLYellow3BgB         "\<VITODO\>"  contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLGreen3BgB          "\<NOTE\>"    contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLGreen1BgB          "\<VINOTE\>"  contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLGreen1BgB          "\<VI\>"      contains=@NoSpell containedin=CommentColor,Comment2Color
" syn match   HLRedBgB             "\<ERROR\>"   contains=@NoSpell containedin=CommentColor,Comment2Color
" syn match   HLRedBgB             "\<WRONG\>"   contains=@NoSpell containedin=CommentColor,Comment2Color
" With space.
syn match   HLGreen1BgB          "\<\%(VI \)\@<=NOTE\>" contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLYellow3BgB         "\<\%(VI \)\@<=TODO\>" contains=@NoSpell containedin=CommentColor,Comment2Color
syn match   HLYellow3BgB         "\<VI\%( TODO\)\@=\>"  contains=@NoSpell containedin=CommentColor,Comment2Color
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
syn match   HLOrangeBgB          "???*" containedin=CommentColor,Comment2Color
syn match   HLYellow3BgB         "?????*" containedin=CommentColor,Comment2Color
syn match   HLGreen3BgB          "!!!*" containedin=CommentColor,Comment2Color
syn match   HLGreen1BgB          "!!!!!*" containedin=CommentColor,Comment2Color
syn match   HLOrangered1BgB      "\%(\<WARNING\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
syn match   HLOrangered1BgB      "\%(\<DO NOT\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
" syn match   HLRedBgB             "\%(\<ERROR\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
" syn match   HLRedBgB             "\%(\<WRONG\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
syn match   HLOrangeBgB          "\%(\<TODO\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
syn match   HLYellow3BgB         "\%(\<VITODO\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
syn match   HLGreen3BgB          "\%(\<NOTE\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
syn match   HLGreen1BgB          "\%(\<VINOTE\>.*\)\@<=!!!*" containedin=CommentColor,Comment2Color
" syn case match
"------------------------------------------------------------------------------


" Special linux command that needs to be highlighted separately.
"------------------------------------------------------------------------------
hi  link  AllPostKeywords  AllFilesSpecialColorB
syn match AllPostKeywords  "\<sudo\>" contains=@NoSpell
"------------------------------------------------------------------------------


" Matches titles:
" 2. Some Title Example with " or # or // or -- comments
" 2.1. Some Title Example with " or # or // or -- comments
" 2.1.1. Some Title Example with " or # or // or -- comments
" 2.1.1.1. Some Title Example with " or # or // or -- comments
"------------------------------------------------------------------------------
" if g:performance_mode <= 0
"    hi  link  AllPostTitles1   HLDarkorange3BU
"    syn match AllPostTitles1   '\%(^\s*\)\@<=[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles2   HLYellowBU
"    syn match AllPostTitles2   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles3   HLGreenBU
"    syn match AllPostTitles3   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles4   HLDodgerblueBU
"    syn match AllPostTitles4   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles5   HLHotpinkBU
"    syn match AllPostTitles5   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles6   HLDarkorangeBU
"    syn match AllPostTitles6   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles7   HLIndianredBU
"    syn match AllPostTitles7   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles8   HLForestgreenBU
"    syn match AllPostTitles8   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles9   HLCyanBU
"    syn match AllPostTitles9   '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
"    hi  link  AllPostTitles10  HLFuchsiaBU
"    syn match AllPostTitles10  '\%(^\s*\)\@<=[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
" endif
"------------------------------------------------------------------------------


" Match last \ in line.
hi  link    AllPostSlash   AllFilesSpecialColor2
syn match   AllPostSlash   '\\\%(\s*$\)\@='


