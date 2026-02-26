"==============================================================================
" File: vhdl.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all vhdl files.
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

" VHDL keywords
hi  link    VerKeywords1 AllFilesDefinesColor
syn keyword VerKeywords1 alias assert label library use generate

hi  link    VerKeywords2 AllFilesArrayColor
syn keyword VerKeywords2 architecture array attribute package procedure process

hi  link    VerKeywords3 AllFilesSystemColor3
syn keyword VerKeywords3 component configuration constant register
syn keyword VerKeywords3 select signal

hi  link    VerKeywords4 AllFilesSystemColor
syn keyword VerKeywords4 access after block body buffer bus disconnect
syn keyword VerKeywords4 entity generic group guarded impure in downto file
syn keyword VerKeywords4 inertial is linkage literal new next null of on
syn keyword VerKeywords4 others out range postponed pure record reject report
syn keyword VerKeywords4 severity shared subtype to transport type unaffected
syn keyword VerKeywords4 wait when with note warning error failure units

hi  link    VerKeywords5 AllFilesLoopCondColor
syn keyword VerKeywords5 all elsi until use until elsif

hi  link  VerKeywords7 AllFilesSystemColor2
" Predefined VHDL types, standard IEEE VHDL types, non standard VHDL types.
syn keyword VerKeywords7 bit bit_vector character boolean integer real time
syn keyword VerKeywords7 positive natural signed unsigned line text
syn keyword VerKeywords7 std_ulogic std_ulogic_vector std_logic
syn keyword VerKeywords7 std_logic_vector qsim_state qsim_state_vector
syn keyword VerKeywords7 qsim_12state qsim_12state_vector qsim_strength
syn keyword VerKeywords7 mux_bit mux_vector reg_bit reg_vector wor_bit
syn keyword VerKeywords7 wor_vector string severity_level

" Array attributes
syn match VerKeywords7 "\'high"
syn match VerKeywords7 "\'left"
syn match VerKeywords7 "\'length"
syn match VerKeywords7 "\'low"
syn match VerKeywords7 "\'range"
syn match VerKeywords7 "\'reverse_range"
syn match VerKeywords7 "\'right"
syn match VerKeywords7 "\'ascending"

" Block attributes
syn match VerKeywords7 "\'behaviour"
syn match VerKeywords7 "\'structure"
syn match VerKeywords7 "\'simple_name"
syn match VerKeywords7 "\'instance_name"
syn match VerKeywords7 "\'path_name"
syn match VerKeywords7 "\'foreign"

" Signal attribute
syn match VerKeywords7 "\'active"
syn match VerKeywords7 "\'delayed"
syn match VerKeywords7 "\'event"
syn match VerKeywords7 "\'last_active"
syn match VerKeywords7 "\'last_event"
syn match VerKeywords7 "\'last_value"
syn match VerKeywords7 "\'quiet"
syn match VerKeywords7 "\'stable"
syn match VerKeywords7 "\'transaction"
syn match VerKeywords7 "\'driving"
syn match VerKeywords7 "\'driving_value"
" Type attributes
syn match VerKeywords7 "\'base"
syn match VerKeywords7 "\'high"
syn match VerKeywords7 "\'left"
syn match VerKeywords7 "\'leftof"
syn match VerKeywords7 "\'low"
syn match VerKeywords7 "\'pos"
syn match VerKeywords7 "\'pred"
syn match VerKeywords7 "\'rightof"
syn match VerKeywords7 "\'succ"
syn match VerKeywords7 "\'val"
syn match VerKeywords7 "\'image"
syn match VerKeywords7 "\'value"

hi  link  VerKeywords8 AllFilesNumColor
" Values for standard VHDL types
syn case match
syn match VerKeywords8 "\'[0L1HXWZU\-\?]\'"
syn case ignore

" Floating numbers
syn match VerKeywords8 "0*2#[01_]\+\.[01_]\+#\%(E[+\-]\=\d\+\)\="
syn match VerKeywords8 "0*16#[0-9a-f_]\+\.[0-9a-f_]\+#\%(E[+\-]\=\d\+\)\="
syn match VerKeywords8 "0*2#[01_]\+#\%(E[+\-]\=\d\+\)\="
syn match VerKeywords8 "0*16#[0-9a-f_]\+#\%(E[+\-]\=\d\+\)\="

" Operators
hi  link    VerKeywords9 AllFilesSystemColor2
syn keyword VerKeywords9 rol ror sla sll sra srl
syn keyword VerKeywords9 mod rem abs
syn match   VerKeywords9 "[&><=:+\-*\/|]"

hi  link  VerKeywords10 AllFilesVarColor
syn match VerKeywords10 "[().,;]"

"------------------------------------------------------------------------------
hi  link   VerKeywords11 AllFilesDefinesColor
syn region VerKeywords11 oneline start="-- psl default clock" end=';'
syn region VerKeywords11 start="-- psl" end=';'
"------------------------------------------------------------------------------

