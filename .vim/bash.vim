"==============================================================================
" File: bash.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all bash files.
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


" Exit if the file was already loaded
if exists("b:bash_loaded")
  finish
endif
let g:bash_loaded = 1


" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
   hi  link    BashKeywords1     AllFilesSystemColor
   syn keyword BashKeywords1     setenv
   syn keyword BashKeywords1     module load

   hi  link    BashKeywords2     AllFilesSystemColor2
   syn keyword BashKeywords2     alias vsp set unset

   hi  link    BashKeywords3     AllFilesSystemColor3
   syn keyword BashKeywords3     status log

   hi  link    BashKeywords4     AllFilesSBrColor
   syn keyword BashKeywords4     topleft

   hi  link    BashKeywords5     AllFilesLoopCondColor
   syn keyword BashKeywords5     in done

   " Match .
   hi  link    BashMatches       AllFilesSpecialColor
   syn match   BashMatches       "\."

   " Match settings such as -r and --some-setting.
   hi  link    BashSettings      AllFilesDefinesColor
   syn match   BashSettings      "\%(^\|\s\+\)\@<=-[a-z0-9A-Z_-]\+"      contains=@NoSpell

   " Match '\'' and ''\'.
   hi  link    BashSlash         AllFilesNumColor
   syn match   BashSlash         "'\\''"
   syn match   BashSlash         "''\\'"

   hi  link    BashDollar        AllFilesDefinesColor
   syn match   BashDollar        "\${.\+}"          contains=@NoSpell containedin=AllPrePaths1,AllPrePaths2

   " # inside ${ } is not a comment.
   hi  link    BashNotComment    AllFilesSpecialColor
   syn match   BashNotComment    "\%(\${.*\)\@<=#\%(.*}\)\@="
   syn match   BashNotComment    "\%(\[.*\)\@<=#\%(.*\]\)\@="
   syn match   BashNotComment    "\%((.*\)\@<=#\%(.*)\)\@="
   syn match   BashNotComment    '\%(".*\)\@<=#\%(.*"\)\@='

" Mix of my custom syntax and default vim settings.
elseif g:select_custom_syntax == 2
   " Slashes
   hi  link    BashSpChars1    AllFilesOpColor
   syn match   BashSpChars1    "\/" contained containedin=shSingleQuote

   hi  link    BashSpChars2    AllFilesSpecialColor2
   syn match   BashSpChars2    "[\\]" contained containedin=shSingleQuote

   " Operators
   hi  link    BashSpChars6    AllFilesOpColor
   syn match   BashSpChars6    "\%(\/\)\@<!\*\%(\/\)\@!" contained containedin=shSingleQuote
   syn match   BashSpChars6    "[*]" contained containedin=shSingleQuote
   syn match   BashSpChars6    "[+]" contained containedin=shSingleQuote
   syn match   BashSpChars6    "[%^]" contained containedin=shSingleQuote
   syn match   BashSpChars6    "[&|]" contained containedin=shSingleQuote
   syn match   BashSpChars6    "[~]" contained containedin=shSingleQuote
   syn match   BashSpChars6    "-" contained containedin=shSingleQuote

   " Parenthesis/brackets
   hi  link    BashSpParen     AllFilesFuncColor
   syn match   BashSpParen     "[)(]" contained containedin=shSingleQuote

   hi  link    BashSpSBr       AllFilesSBrColor
   syn match   BashSpSBr       "[[\]]" contained containedin=shSingleQuote

   hi  link    BashSpCBr       AllFilesCBrColor
   syn match   BashSpCBr       "[}{]" contained containedin=shSingleQuote

   hi  link    BashSpTBr       AllFilesTBrColor
   syn match   BashSpTBr       "[><]" contained containedin=shSingleQuote

   " Equalities
   hi  link    BashSpChars7    AllFilesEqualityColor
   syn match   BashSpChars7    "=" contained containedin=shSingleQuote
   syn match   BashSpChars7    ">=" contained containedin=shSingleQuote
   syn match   BashSpChars7    "<=" contained containedin=shSingleQuote

   " Special characters
   hi  link    BashSpChars9    AllFilesSpecialColor2
   syn match   BashSpChars9    "[@]" contained containedin=shSingleQuote
   syn match   BashSpChars9    "[#]" contained containedin=shSingleQuote
   syn match   BashSpChars9    "[!?]" contained containedin=shSingleQuote
   syn match   BashSpChars9    "[$]" contains=AllPreDollar contained containedin=shSingleQuote

   hi  link    BashSpChars10   AllFilesSpecialColor2
   syn match   BashSpChars10   "[:;]" contained containedin=shSingleQuote

   hi  link    BashOptions   shOption
   syn match   BashOptions   "\(\s\)\@<=-\(\w\|-\)\+" contained containedin=shSingleQuote

   hi  link    BashCommands  AllFilesSystemColor2
   syn match   BashCommands  "\<\(apt\|sleep\|tmux\|history\|gvim\|nvim\|history\|ls\|echo\|find\|tkdiff\|cd\|svn\|git\|systemctl\)\>" contained containedin=shSingleQuote

   " Highlight sudo keyword
   hi  link  BashSudo  AllFilesSpecialColorB
   syn match BashSudo  "\<sudo\>" containedin=ALL
endif



"------------------------------------------------------------------------------
"                              Bash abbreviations
"------------------------------------------------------------------------------
" Bash uses 2 [[ ]], posix uses 1 [ ], bash is compatible with both but bash
" has additional functionality. For clarity best to keep $VAR in { }, but they
" both work.
inorea _shif      if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shifel    if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shifelif  if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shifelifel if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shaddvar VAR1=${V}:add1:add2<left><right><c-r>=Eatchar('\s')<cr>


inorea _shfunc    #------------------------------------------------------------------------------<cr>
            \# Function: function_name<cr>
            \#<cr>
            \#------------------------------------------------------------------------------<cr>
            \function_name() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _shfunc2   #------------------------------------------------------------------------------<cr>
            \# Function: function_name<cr>
            \#<cr>
            \#------------------------------------------------------------------------------<cr>
            \function function_name {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shcase    case ${V} in<cr>
            \   abc)<cr>
            \   command0<cr>
            \command1<cr>
            \;;<cr>
            \cef)<cr>
            \   command2 ;;<cr>
            \*)<cr>
            \   command3<cr>
            \command4<cr>
            \;;<cr>
            \esac<left><right><c-r>=Eatchar('\s')<cr>

inorea _shfor     for ((i = 0; i < ${V}; i++)); do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _shfor2    for i in LIST; do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shwhile   while [[ ${V} <= a ]]; do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _shdo      while true; do<cr>
            \   if [[ a >= b ]]; then<cr>
            \   break<cr>
            \<bs><bs><bs>fi<cr>
            \<bs><bs><bs>done<up><up><up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _shinfo   echo "message ${V}"<left><right><c-r>=Eatchar('\s')<cr>
inorea _sherror  echo -e "ERROR : message ${V}"<left><right><c-r>=Eatchar('\s')<cr>

inorea _shalias  alias aname='command'<left><right><c-r>=Eatchar('\s')<cr>
inorea _shalias2 alias aname='command1 \| command2 \| command3'<left><right><c-r>=Eatchar('\s')<cr>
inorea _shalias3 alias aname='command1; command2; command3'<left><right><c-r>=Eatchar('\s')<cr>
inorea _shalias4 alias vicmd='gvim ~/file1 -c '\''vsp ~/file2 \| vsp ~/file3 \| topleft split ~/file4 \| vsp ~/file5 \| set titlestring=TITLE \| winpos 0 0 \| wincmd b \| wincmd _ \| wincmd \|'\'''<left><right><c-r>=Eatchar('\s')<cr>

inorea _shvar    VAR1=1<left><right><c-r>=Eatchar('\s')<cr>
inorea _shvar2   VARS="%Y-%m-%d %T "<left><right><c-r>=Eatchar('\s')<cr>
inorea _shvar3   VARD=/home/$USER/Desktop/<left><right><c-r>=Eatchar('\s')<cr>


" Posix
inorea _posif     if [ ${V} == a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _posif2    if [ ${V} -eq a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _posif3    if [ "${V}" = "string" ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _posifel   if [ ${V} == a ]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _posifelif if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _posifelifel if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------

