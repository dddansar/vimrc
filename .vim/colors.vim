"==============================================================================
" File: colors.vim
"------------------------------------------------------------------------------
" Description: This file adds additional highlighting groups that may get used
"              throughout the .vim files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
" NOTE: See also custom_colorscheme.vim.
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
if exists("b:colors_loaded")
  finish
endif
let g:colors_loaded = 1


" Custom syntax highlighting groups
"------------------------------------------------------------------------------
" hi  link    AllFilesDefinesColor    Define
" hi  link    AllFilesFuncColor       Function
" hi  link    AllFilesDefaultColor    StorageClass
" hi  link    AllFilesSBrColor        StorageClass
" hi  link    AllFilesOpColor         Operator
" hi  link    AllFilesCBrColor        PreProc
" hi  link    AllFilesTBrColor        Define
" hi  link    AllFilesEqualityColor   Define
" hi  link    AllFilesPointerColor    MoreMsg
" hi  link    AllFilesArrowsColor     Question
" hi  link    AllFilesArrayColor      Title
" hi  link    AllFilesWarningColor    WarningMsg
" hi  link    AllFilesSpecialColor1   Exception
" hi  link    AllFilesSpecialColorB   NonText
" hi  link    AllFilesSpecialColor2   Keyword
" hi  link    AllFilesSystemColor1    Statement
" hi  link    AllFilesSystemColor2    Type
" hi  link    AllFilesSystemColor3    Conditional
" hi  link    AllFilesSystemColor4    Debug
" hi  link    AllFilesSystemColor5    Delimiter
" hi  link    AllFilesNumColor        Constant
" hi  link    AllFilesCapsColor       Special
" hi  link    AllFilesVarColor        SpecialChar
" hi  link    AllFilesMultVarColor    HLBlue
" hi  link    AllFilesMultOpColor     SpecialKey
" hi  link    AllFilesCommentColor    Comment
" hi  link    AllFilesComment2Color   SpecialComment
" hi  link    AllFilesTimeColor       Label
" hi  link    AllFilesQuotesColor1    String
" hi  link    AllFilesQuotesColor2    Identifier
" hi  link    AllFilesQuotesColor3    Character
" hi  link    AllFilesLoopCondColor   Conditional
" hi  link    AllFilesPathsColor1     Underlined
" hi  link    AllFilesPathsColor2     Tag
" hi  link    AllFilesStructColor     Structure
" hi  link    AllFilesMidGrey         LineNr
hi  link    AllFilesBarelyVisible   HLGrey15BgB
"------------------------------------------------------------------------------


" Custom highlighting groups
"------------------------------------------------------------------------------
hi default HLSiennaB             cterm=bold gui=bold ctermfg=130 guifg=sienna
hi default HLBrownB              cterm=bold gui=bold ctermfg=88  guifg=brown
hi default HLRed2B               cterm=bold gui=bold ctermfg=196 guifg=red2
hi default HLOrangeredB          cterm=bold gui=bold ctermfg=202 guifg=orangered
hi default HLDarkorange3B        cterm=bold gui=bold ctermfg=166 guifg=darkorange3
hi default HLDarkorangeB         cterm=bold gui=bold ctermfg=208 guifg=darkorange
hi default HLOrangeB             cterm=bold gui=bold ctermfg=214 guifg=orange
hi default HLTomato1B            cterm=bold gui=bold ctermfg=203 guifg=tomato1
hi default HLHotpinkB            cterm=bold gui=bold ctermfg=205 guifg=hotpink
hi default HLDeeppinkB           cterm=bold gui=bold ctermfg=198 guifg=deeppink
hi default HLDeeppink4B          cterm=bold gui=bold ctermfg=89  guifg=deeppink4
hi default HLMagenta4B           cterm=bold gui=bold ctermfg=90  guifg=magenta4
hi default HLFuchsiaB            cterm=bold gui=bold ctermfg=201 guifg=fuchsia
hi default HLPurpleB             cterm=bold gui=bold ctermfg=165 guifg=purple
hi default HLPurple4B            cterm=bold gui=bold ctermfg=54  guifg=purple4
hi default HLNavyB               cterm=bold gui=bold ctermfg=17  guifg=navy
hi default HLBlue                                    ctermfg=20  guifg=blue
hi default HLBlueB               cterm=bold gui=bold ctermfg=20  guifg=blue
hi default HLMediumslateblueB    cterm=bold gui=bold ctermfg=99  guifg=mediumslateblue
hi default HLDeepskyblue4B       cterm=bold gui=bold ctermfg=24  guifg=deepskyblue4
hi default HLDodgerblueB         cterm=bold gui=bold ctermfg=33  guifg=dodgerblue
hi default HLDeepskyblueB        cterm=bold gui=bold ctermfg=45  guifg=deepskyblue
hi default HLCyanB               cterm=bold gui=bold ctermfg=51  guifg=cyan
hi default HLYellowB             cterm=bold gui=bold ctermfg=184 guifg=yellow
hi default HLYellowgreenB        cterm=bold gui=bold ctermfg=148 guifg=yellowgreen
hi default HLGreen                                   ctermfg=46  guifg=green
hi default HLGreenB              cterm=bold gui=bold ctermfg=46  guifg=green
hi default HLGreen3                                  ctermfg=34  guifg=green3
hi default HLGreen3B             cterm=bold gui=bold ctermfg=34  guifg=green3
hi default HLOlive                                   ctermfg=100 guifg=olive
hi default HLOliveB              cterm=bold gui=bold ctermfg=100 guifg=olive
hi default HLKhaki4                                  ctermfg=101 guifg=khaki4
hi default HLKhaki4B             cterm=bold gui=bold ctermfg=101 guifg=khaki4

hi default HLGrey30                                  ctermfg=236 guifg=grey30
hi default HLGrey30B             cterm=bold gui=bold ctermfg=236 guifg=grey30
hi default HLGrey40B             cterm=bold gui=bold ctermfg=239 guifg=grey40
hi default HLGrey50B             cterm=bold gui=bold ctermfg=242 guifg=grey50
hi default HLWhiteB              cterm=bold gui=bold ctermfg=255 guifg=white

hi default HLGrey60B             cterm=bold gui=bold ctermfg=245 guifg=grey60
hi default HLLightmagentaB       cterm=bold gui=bold ctermfg=177 guifg=lightmagenta
hi default HLSkyblueB            cterm=bold gui=bold ctermfg=81  guifg=skyblue
hi default HLMediumaquamarineB   cterm=bold gui=bold ctermfg=79  guifg=mediumaquamarine
hi default HLSpringgreenB        cterm=bold gui=bold ctermfg=48  guifg=springgreen
hi default HLKhakiB              cterm=bold gui=bold ctermfg=222 guifg=khaki
hi default HLTan1B               cterm=bold gui=bold ctermfg=215 guifg=tan1
hi default HLSalmonB             cterm=bold gui=bold ctermfg=210 guifg=salmon

hi default HLRedBU               cterm=bold,underline gui=bold,underline ctermfg=red guifg=red
hi default HLOrangeredBU         cterm=bold,underline gui=bold,underline ctermfg=202 guifg=orangered
hi default HLYellowBU            cterm=bold,underline gui=bold,underline ctermfg=184 guifg=yellow
hi default HLGreenBU             cterm=bold,underline gui=bold,underline ctermfg=46  guifg=green
hi default HLDodgerblueBU        cterm=bold,underline gui=bold,underline ctermfg=33  guifg=dodgerblue
hi default HLHotpinkBU           cterm=bold,underline gui=bold,underline ctermfg=205 guifg=hotpink

hi default HLGrey15BgB           cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=235 guibg=grey15
hi default HLOrangered1BgB       cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=202 guibg=orangered1
hi default HLOrangeBgB           cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=214 guibg=orange
hi default HLYellow3BgB          cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=184 guibg=yellow3
hi default HLGreen3BgB           cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=34  guibg=green3
hi default HLGreen1BgB           cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=46  guibg=green1
hi default HLRedBgB              cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=red guibg=red
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Undercurl like in spell errors!
" cterm does not support undercurl so using underline instead.
" hi default HLRedUC                 cterm=underline     gui=undercurl                 guisp=red
" hi default HLDarkBlueUC            cterm=underline     gui=undercurl                 guisp=blue
" hi default HLFuchsiaUC             cterm=underline     gui=undercurl                 guisp=magenta
" hi default HLCyanUC                cterm=underline     gui=undercurl                 guisp=cyan

" Strikethrough
hi default HLGreyOut                                                     ctermfg=235 guifg=grey20
hi default HLStrikeThroughDefault  cterm=strikethrough gui=strikethrough
hi default HLStrikeThroughGrey     cterm=strikethrough gui=strikethrough ctermfg=236 guifg=grey30

" Background and foreground mixes
" hi default CyanOnGrey      cterm=bold gui=bold ctermfg=cyan guifg=cyan ctermbg=244      guibg=#555555
" hi default CyanOnGrey3     cterm=bold gui=bold ctermfg=cyan guifg=cyan ctermbg=102      guibg=#888888
" hi default CyanOnGrey2     cterm=bold gui=bold ctermfg=cyan guifg=cyan ctermbg=darkgrey guibg=darkgrey
" hi default CyanOnLightGrey cterm=bold gui=bold ctermfg=cyan guifg=cyan ctermbg=grey     guibg=grey
" hi default DarkBlueOnTeal  cterm=bold gui=bold ctermfg=20   guifg=blue ctermbg=darkcyan guibg=darkcyan
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" List of all possible gui options (many don't work...).
hi default HLSpecial1  gui=bold          guisp=red guifg=grey50
hi default HLSpecial2  gui=underline     guisp=red guifg=grey50
hi default HLSpecial3  gui=undercurl     guisp=red guifg=grey50
hi default HLSpecial4  gui=underdotted   guisp=red guifg=grey50
hi default HLSpecial5  gui=underdouble   guisp=red guifg=grey50
hi default HLSpecial6  gui=underdashed   guisp=red guifg=grey50
hi default HLSpecial7  gui=inverse       guisp=red guifg=grey50
hi default HLSpecial8  gui=italic        guisp=red guifg=grey50
hi default HLSpecial9  gui=standout      guisp=red guifg=grey50
hi default HLSpecial10 gui=nocombine     guisp=red guifg=grey50
hi default HLSpecial11 gui=strikethrough guisp=red guifg=grey50
"------------------------------------------------------------------------------

