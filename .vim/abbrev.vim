"==============================================================================
" File: abbrev.vim
"------------------------------------------------------------------------------
" Description: Generic abbreviations for all files.
"              Gets loaded by .vimrc when opening any file with a vim GUI.
" NOTE: Some extension specific *.vim files also have their own abbreviations.
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
if exists("b:abbrev_loaded")
  finish
endif
let g:abbrev_loaded = 1


" NOTE: To make sure a Vim abbreviation does not trigger existing mappings,
"       use the noreabbrev (inorea) command instead of the abbrev (ia) command.

" Can you call an abbreviation from another?
" YES!!!! works!! The extra "a" is to enter insert mode.
inorea _iatest    <esc>:normal  a_c0<cr>

" NOTE: Using   <c-r>=Eatchar('\s')<cr>   to consume the space typed after an
"       abbreviation.

" svbegin?
inorea _beginend  begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _bparen    {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _sparen    [<cr>
            \    <bs><cr>
            \<bs><bs><bs>]<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _tparen    <<cr>
            \    <bs><cr>
            \<bs><bs><bs>><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cparen    (<cr>
            \    <bs><cr>
            \<bs><bs><bs>)<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

" Go inside parenthesis.
" inorea () ()<esc>i<left><right><c-r>=Eatchar('\s')<cr>
" inorea [] []<esc>i<left><right><c-r>=Eatchar('\s')<cr>
" inorea {} {}<esc>i<left><right><c-r>=Eatchar('\s')<cr>
" inorea <> <><esc>i<left><right><c-r>=Eatchar('\s')<cr>
" inorea || ||<esc>i<left><right><c-r>=Eatchar('\s')<cr>

inorea _c0 //-----------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _c1 //-----------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _c2 //-----------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _c3 //---------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _c4 //-------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _c5 //-----------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>

inorea _v0 "------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _v1 "------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _v2 "------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _v3 "----------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _v4 "--------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _v5 "------------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>

inorea _n0 -------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _n1 -------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _n2 -------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _n3 -----------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _n4 ---------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea _n5 -------------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>


inorea _head  //-----------------------------------------------------------------------------<cr>
            \// File:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \// Authors:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \// Copyright:<cr>
            \//-----------------------------------------------------------------------------<esc>o<left><right><c-r>=Eatchar('\s')<cr>

            " \// Title:<cr>
            " \// License:<cr>
            " \// Date:<cr>
            " \// Version:<cr>
            " \// Revision:<cr>
            " \// HeadURL:<cr>
            " \// Project:<cr>
            " \// Company:<cr>
            " \// Platform:<cr>

inorea _func0    //-----------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _funcvv    //-----------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _func     //-----------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _funcv    //-----------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _funci0   //-----------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \int i_fname(void) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _funci    //-----------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \int i_fname(int a, int b) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _if      if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _ifel    if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _ifelif  if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _ifelifel if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _for     for (int i=0; i<; i++) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left><left><left><left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _while   while () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

inorea _do do {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} while ();<esc>$<left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _case    switch () {<cr>
            \case 0:<cr>
            \break;<cr>
            \<bs><bs><bs>case 1:<cr>
            \break;<cr>
            \<bs><bs><bs>default:<cr>
            \break;<cr>
            \<bs><bs><bs><bs><bs><bs>}<up><up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

" Common regex abbreviations
" Non-capuring groups
inorea r_p        \%(\)<left><right><c-r>=Eatchar('\s')<cr>
inorea r_po       \%(\\|\)<left><right><c-r>=Eatchar('\s')<cr>
inorea r_op       \%(\\|\)<left><right><c-r>=Eatchar('\s')<cr>
" Positive/negative look ahead/behind
inorea r_pb       \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>
inorea r_bp       \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>
inorea r_pa       \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea r_ap       \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea r_nb       \%(\)\@<!<left><right><c-r>=Eatchar('\s')<cr>
inorea r_bn       \%(\)\@<!<left><right><c-r>=Eatchar('\s')<cr>
inorea r_na       \%(\)\@!<left><right><c-r>=Eatchar('\s')<cr>
inorea r_an       \%(\)\@!<left><right><c-r>=Eatchar('\s')<cr>
" Word boundaries
inorea r_b        \<\><left><right><c-r>=Eatchar('\s')<cr>
" Common ranges
inorea r_az       [a-z]<left><right><c-r>=Eatchar('\s')<cr>
inorea r_AZ       [A-Z]<left><right><c-r>=Eatchar('\s')<cr>
inorea r_aZ       [a-zA-Z]<left><right><c-r>=Eatchar('\s')<cr>
inorea r_a9       [a-z0-9]<left><right><c-r>=Eatchar('\s')<cr>
inorea r_A9       [A-Z0-9]<left><right><c-r>=Eatchar('\s')<cr>
inorea r_aZ9      [a-zA-Z0-9]<left><right><c-r>=Eatchar('\s')<cr>
" Matches 2 letters in a row
inorea r_2l       \([a-z]\)\1<left><right><c-r>=Eatchar('\s')<cr>
" Matches a 5 letter palindrome
inorea r_5p       \([a-z]\)\([a-z]\)[a-z]\2\1<left><right><c-r>=Eatchar('\s')<cr>
" Matches at least n times and at most m times the previous match
inorea r_nm       \{n,m}<left><right><c-r>=Eatchar('\s')<cr>
" non-greedy version
inorea r_ngnm     \{-n,m}<left><right><c-r>=Eatchar('\s')<cr>

