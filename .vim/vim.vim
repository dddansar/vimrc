"==============================================================================
" File: vim.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all vim files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
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

" This is needed when loading multiple files at the same time, with some .vim
" extension files and others with spell enabled.
setlocal nospell

" Override default coloring of the syn/ia/au commands and any following text.
"------------------------------------------------------------------------------
hi  link    VimMatch1   AllFilesSystemColor
syn match   VimMatch1   '\<\%(syn\|synt\|synta\|syntax\|augroup\|au\|autocmd\)\>'  contains=@NoSpell
syn match   VimMatch1   '\<\%(ia\|iabbrev\|ab\|norea\|ca\|cnorea\|inorea\|abbrev\|noreabrev\|cabrev\|cnoreabrev\|inoreabrev\)\>'  contains=@NoSpell

syn match   VimNoColor1    "\%(syn\%(t\|ta\|tax\)\=\s\+\%(keyword\|region\|match\)\s\+\)\@<=[a-zA-Z0-9_]\+\%(\s\)\@="  contains=@NoSpell
syn match   VimNoColor1    "\%(hi\%(light\)\=\s\+\%(link\)\s\+\)\@<=[a-zA-Z0-9_]\+\%(\s\)\@="  contains=@NoSpell


hi  link    VimMatch2   AllFilesSystemColor2
syn match   VimMatch2   '\<\%(BufNewFile\|BufRead\|FileType\|keyword\|region\|match\|ignore\)\>'  contains=@NoSpell

hi  link    VimMatch3   AllFilesVarColor
syn match   VimMatch3   "\<contains="
syn match   VimMatch3   "\<contained\>"
syn match   VimMatch3   "\<containedin="

hi  link    VimDirections  AllFilesVarColor
syn match   VimDirections  "\%(<\)\@<=\%(left\|right\|up\|down\)\%(>\)\@="  contains=@NoSpell

" [!-~] matches the main ASCII characters
syn match   VimNoColor1    "\%(ia\%(bbrev\)\=\s\+\)\@<=[!-~]\+\%(\s\)\@="  contains=@NoSpell
"------------------------------------------------------------------------------

" Override default coloring of the map commands.
"------------------------------------------------------------------------------
hi  link    VimMatch4   AllFilesSystemColor
syn match   VimMatch4   '\<\%(map\|nmap\|vmap\|imap\|cmap\|omap\|smap\|xmap\|noremap\|nnoremap\|vnoremap\|inoremap\|cnoremap\|onoremap\|snoremap\|xnoremap\|nore\)\>'  contains=@NoSpell
syn match   VimMatch4   '\<\%(hi\|highlight\)\>'  contains=@NoSpell

hi  link    VimMatch5   AllFilesSystemColor2
syn match   VimMatch5   '\<\%(link\|bold\|underline\)\>'  contains=@NoSpell
"------------------------------------------------------------------------------

" Keywords
"------------------------------------------------------------------------------
hi  link    VimMatch6   AllFilesNumColor
syn match   VimMatch6   '\<\%(normal\|exe\|execute\|search\|silent\|exclude\|dir\|copen\|call\)\>'  contains=@NoSpell
syn match   VimMatch6   '\<\%(let\|unlet\|set\|setlocal\|unset\)\>'  contains=@NoSpell
syn match   VimMatch6   '\<\%(source\|windo\|bufdo\|shellescape\|expand\|mode\|so\|source\)\>'  contains=@NoSpell

hi  link    VimMatch7   AllFilesFuncColor
syn match   VimMatch7   '\<\%(gui\|guifg\|guibg\|guisp\|guifont\)\>'  contains=@NoSpell
syn match   VimMatch7   '\<\%(function\|endfunction\|endfun\|matchgroup\|skip\)\>'  contains=@NoSpell

hi  link    VimMatch8   AllFilesLoopCondColor
syn match   VimMatch8   '\<start\>'  contains=@NoSpell

" Match function names.
hi  link    VimFuncNames   AllFilesSystemColor2
syn match   VimFuncNames   "\w\+\%(\s*(.*)\)\@="  contains=@NoSpell

" Match expr in between < >.
hi  link    VimExpr        AllFilesSystemColor2
syn match   VimExpr        "\%(<\)\@<=expr\%(>\)\@="  contains=@NoSpell
"------------------------------------------------------------------------------

" Match global variables in vim.
hi  link    VimVariables   AllFilesOpColor
syn match   VimVariables   '\%(\%(g\|b\):\)\@<=\w\+'  contains=@NoSpell

" Match hex numbers in vim.
hi  link    VimHexNum   AllFilesNumColor
syn match   VimHexNum   '\%(#\)\@<=[0-9a-fA-F]\+\>'  contains=@NoSpell

" Don't match comments after map or echo or syn keywords (you can match after
" the contain keyword is found!!).
syn match   VimNoColor2 '\%(\%(\<[a-z]\=\%(re\|nore\)\=map\>\|\<echo[a-z]\{,10}\>\|\<exe\>\|\<execute\>\|\<syn\%(t\|ta\|tax\)\=\>\).*\)\@<=\%(\scontain.*\)\@<!"'  contains=@NoSpell

" Don't match comments in parenthesis (" ... ").
syn match   VimNoColor2 '\%((.*\)\@<="\%(.*)\)\@='  contains=@NoSpell
syn match   VimNoColor2 '\%(\'\)\@<="\%(\'\)\@='  contains=@NoSpell

" Don't match comments after =" ".
syn match   VimNoColor2 '\%(=\s*\)\@<="'  contains=@NoSpell
syn match   VimNoColor2 '\%(=\s*".*\)\@<="'  contains=@NoSpell

" Special combinations ctrl/shift/alt.
syn case ignore
   hi  link    VimComb  AllFilesVarColor
   syn match   VimComb  "\%(<\)\@<=\%([csa]\-\)\?\%(bs\|esc\|cr\|tab\|space\|leader\|middlemouse\|leftmouse\|rightmouse\|pageup\|pagedown\|backspace\|bar\)\%(>\)\@=" contains=@NoSpell
   syn match   VimComb  "\%(<\)\@<=[csa]\-[!-~]\%(>\)\@=" contains=@NoSpell
syn case match

" Match first \ in new line.
hi  link    VimFirstSlash   AllFilesSpecialColor2
syn match   VimFirstSlash   '\%(^\s*\)\@<=\\\%(%(\|(\)\@!'  contains=@NoSpell

" NOTE: At work this works...
let b:match_words='\<function\>:\<endfunction\>,
                 \ \<if\>:\<else\>:\<endif\>'

"------------------------------------------------------------------------------
"                               Vim abbreviations
"------------------------------------------------------------------------------
inorea _vimfunc   " Some description<cr>
            \function! funcname(some_input)<cr>
            \    <bs><cr>
\endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimfunc0  " Some description<cr>
            \function! funcname()<cr>
            \    <bs><cr>
            \endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimif     if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifel   if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifelif if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifelifel if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimifexists  if exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifnexists if !exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimia     inorea replace_word   replace_with<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimahead   \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimbehind  \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimso    so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimauso  au  BufNewFile,BufRead * so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimaulet au  BufNewFile,BufRead * let b:v = 'val'<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimaug " Description<cr>
            \augroup group_name<cr>
            \    <bs><cr>
            \   " If you want to clear a group, use "au!" inside the group<cr>
            \au!<cr>
            \ <bs><cr>
            \autocmd BufNewFile,BufRead * command_here<cr>
            \ <bs><cr>
            \<bs><bs><bs>augroup END<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------


" VINOTE: Adding commands like below in a file adds specific vim commands for
"         that file!!!!!! The following line adds the red line at column 80!
" vim: cc+=80

