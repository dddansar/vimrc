"==============================================================================
" File: more_colors.vim
"------------------------------------------------------------------------------
" Description: This file adds additional highlighting groups that may get used
"              throughout the .vim files.
" NOTE: For the main colorschemes, see also colors/ddd_*.vim.
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
if exists("b:more_colors_loaded")
  finish
endif
let g:more_colors_loaded = 1


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
hi default HLBlue                cterm=NONE gui=NONE ctermfg=20  guifg=blue
hi default HLBlueB               cterm=bold gui=bold ctermfg=20  guifg=blue
hi default HLMediumslateblueB    cterm=bold gui=bold ctermfg=99  guifg=mediumslateblue
hi default HLDeepskyblue4B       cterm=bold gui=bold ctermfg=24  guifg=deepskyblue4
hi default HLDodgerblueB         cterm=bold gui=bold ctermfg=33  guifg=dodgerblue
hi default HLDeepskyblueB        cterm=bold gui=bold ctermfg=45  guifg=deepskyblue
hi default HLCyanB               cterm=bold gui=bold ctermfg=51  guifg=cyan
hi default HLYellowB             cterm=bold gui=bold ctermfg=184 guifg=yellow
hi default HLYellowgreenB        cterm=bold gui=bold ctermfg=148 guifg=yellowgreen
hi default HLGreen               cterm=NONE gui=NONE ctermfg=46  guifg=green
hi default HLGreenB              cterm=bold gui=bold ctermfg=46  guifg=green
hi default HLGreen3              cterm=NONE gui=NONE ctermfg=34  guifg=green3
hi default HLGreen3B             cterm=bold gui=bold ctermfg=34  guifg=green3
hi default HLOlive               cterm=NONE gui=NONE ctermfg=100 guifg=olive
hi default HLOliveB              cterm=bold gui=bold ctermfg=100 guifg=olive
hi default HLKhaki4              cterm=NONE gui=NONE ctermfg=101 guifg=khaki4
hi default HLKhaki4B             cterm=bold gui=bold ctermfg=101 guifg=khaki4

hi default HLGrey30              cterm=NONE gui=NONE ctermfg=236 guifg=grey30
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

hi default HLGrey10BgB           cterm=bold gui=bold ctermfg=16 guifg=black ctermbg=234 guibg=grey10
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

" Highlight Links
hi link    HLBarelyVisible         HLGrey10BgB
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

