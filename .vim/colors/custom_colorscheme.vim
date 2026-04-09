"==============================================================================
" File: custom_colorscheme.vim
"------------------------------------------------------------------------------
" Description: Creates a new colorscheme called custom_colorscheme. This file
"              edits the colors of the built-in vim highlighting groups. Gets
"              loaded by vim if the colorscheme is set to custom_colorscheme.
" NOTE: See also colors.vim.
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
if exists("b:highlightings_loaded")
  finish
endif
let g:colors_name = 'custom_colorscheme'
let g:highlightings_loaded = 1

" NOTE: If you change the colors here, you change them in all files for all
"       relevant groups.

set background=dark

" Vim default groups
"------------------------------------------------------------------------------
" NOTE: See ":help highlight-groups" for all the default highlighting groups.
" NOTE: You can see the current settings with the ":highlight" command.

" Set background color to black (grey1) and foreground to white (grey80).
hi Normal                              ctermfg=252 guifg=grey80 ctermbg=NONE guibg=grey1
hi Ignore                              ctermfg=252 guifg=grey80 ctermbg=NONE guibg=grey1
hi EndOfBuffer                         ctermfg=236 guifg=grey30 ctermbg=233  guibg=grey5

hi Comment                             ctermfg=201          guifg=fuchsia
hi LineNr                              ctermfg=236          guifg=grey30
hi Constant                            ctermfg=Cyan         guifg=cyan
hi Special                             ctermfg=33           guifg=dodgerblue

hi Statement       cterm=bold gui=bold ctermfg=184          guifg=yellow
hi Type            cterm=bold gui=bold ctermfg=46           guifg=green
hi PreProc         cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi String                              ctermfg=28           guifg=forestgreen

hi Function        cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi Repeat          cterm=bold gui=bold ctermfg=22           guifg=darkgreen
hi Operator        cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi Exception                           ctermfg=Red          guifg=red2
hi NonText         cterm=bold gui=bold ctermfg=Red          guifg=red2

hi Label           cterm=bold gui=bold ctermfg=22           guifg=darkgreen
hi Macro           cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi PreCondit       cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi StorageClass    cterm=bold gui=bold ctermfg=208          guifg=orange

hi Tag             cterm=bold gui=bold ctermfg=184          guifg=yellow
hi Float                               ctermfg=cyan         guifg=cyan
hi SpecialComment                      ctermfg=165          guifg=purple
hi Debug           cterm=bold gui=bold ctermfg=DarkCyan     guifg=teal
hi Structure       cterm=bold gui=bold ctermfg=130          guifg=sienna
hi Question        cterm=bold gui=bold ctermfg=205          guifg=hotpink

hi Identifier      cterm=bold gui=bold ctermfg=46           guifg=green
hi Character                           ctermfg=cyan         guifg=cyan
hi Number                              ctermfg=cyan         guifg=cyan
hi Boolean                             ctermfg=cyan         guifg=cyan
hi Conditional     cterm=bold gui=bold ctermfg=22           guifg=darkgreen
hi Keyword         cterm=bold gui=bold ctermfg=184          guifg=yellow
hi Include         cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi Define          cterm=bold gui=bold ctermfg=208          guifg=darkorange
hi Typedef         cterm=bold gui=bold ctermfg=46           guifg=green
hi SpecialChar                         ctermfg=33           guifg=dodgerblue
hi Delimiter       cterm=bold gui=bold ctermfg=33           guifg=dodgerblue
hi Underlined                          ctermfg=DarkYellow   guifg=olive

hi StatusLine      cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=white guibg=white
" Caused visibility issues in one of the sessions.
" hi StatusLineNC                        ctermfg=white  guifg=black ctermbg=246   guibg=grey60
" hi VertSplit                           ctermfg=white  guifg=black ctermbg=246   guibg=grey60
hi Pmenu                               ctermfg=white              ctermbg=234   guibg=grey10
hi PmenuSel                            ctermfg=white              ctermbg=235   guibg=grey20
hi PmenuSbar                           ctermfg=16                 ctermbg=White guibg=white
hi PmenuThumb                          ctermfg=16                 ctermbg=46    guibg=green
hi Search                                                         ctermbg=240   guibg=grey40
hi Cursor                              ctermfg=16     guifg=black ctermbg=White guibg=white
hi ColorColumn                                                    ctermbg=240   guibg=grey40
hi Visual          cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=46    guibg=green1
hi IncSearch       cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=240   guibg=grey40

hi SpellBad        cterm=underline                                ctermbg=16
hi Error           cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=Red   guibg=red2
hi Todo            cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=184   guibg=yellow3
hi Note            cterm=bold gui=bold ctermfg=16     guifg=black ctermbg=46    guibg=green
"------------------------------------------------------------------------------

