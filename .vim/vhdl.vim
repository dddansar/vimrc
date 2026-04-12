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


" Exit if the file was already loaded
if exists("b:vhdl_loaded")
  finish
endif
let g:vhdl_loaded = 1


" VHDL keywords
hi  link    VhdlKeywords1 Define
syn keyword VhdlKeywords1 alias assert label library use generate

hi  link    VhdlKeywords2 Title
syn keyword VhdlKeywords2 architecture array attribute package procedure process

hi  link    VhdlKeywords3 Conditional
syn keyword VhdlKeywords3 component configuration constant register
syn keyword VhdlKeywords3 select signal

hi  link    VhdlKeywords4 Statement
syn keyword VhdlKeywords4 access after block body buffer bus disconnect
syn keyword VhdlKeywords4 entity generic group guarded impure in downto file
syn keyword VhdlKeywords4 inertial is linkage literal new next null of on
syn keyword VhdlKeywords4 others out range postponed pure record reject report
syn keyword VhdlKeywords4 severity shared subtype to transport type unaffected
syn keyword VhdlKeywords4 wait with note warning failure units

hi  link    VhdlKeywords5 Conditional
syn keyword VhdlKeywords5 all until until elsif when

" Predefined VHDL types, standard IEEE VHDL types, non standard VHDL types.
hi  link  VhdlKeywords7 Type
syn keyword VhdlKeywords7 bit bit_vector character boolean integer real time
syn keyword VhdlKeywords7 positive natural signed unsigned line text
syn keyword VhdlKeywords7 std_ulogic std_ulogic_vector std_logic
syn keyword VhdlKeywords7 std_logic_vector
syn keyword VhdlKeywords7 string severity_level

" Array attributes
syn match VhdlKeywords7 "\'high"
syn match VhdlKeywords7 "\'left"
syn match VhdlKeywords7 "\'length"
syn match VhdlKeywords7 "\'low"
syn match VhdlKeywords7 "\'range"
syn match VhdlKeywords7 "\'reverse_range"
syn match VhdlKeywords7 "\'right"
syn match VhdlKeywords7 "\'ascending"

" Block attributes
syn match VhdlKeywords7 "\'behaviour"
syn match VhdlKeywords7 "\'structure"
syn match VhdlKeywords7 "\'simple_name"
syn match VhdlKeywords7 "\'instance_name"
syn match VhdlKeywords7 "\'path_name"
syn match VhdlKeywords7 "\'foreign"

" Signal attribute
syn match VhdlKeywords7 "\'active"
syn match VhdlKeywords7 "\'delayed"
syn match VhdlKeywords7 "\'event"
syn match VhdlKeywords7 "\'last_active"
syn match VhdlKeywords7 "\'last_event"
syn match VhdlKeywords7 "\'last_value"
syn match VhdlKeywords7 "\'quiet"
syn match VhdlKeywords7 "\'stable"
syn match VhdlKeywords7 "\'transaction"
syn match VhdlKeywords7 "\'driving"
syn match VhdlKeywords7 "\'driving_value"
" Type attributes
syn match VhdlKeywords7 "\'base"
syn match VhdlKeywords7 "\'high"
syn match VhdlKeywords7 "\'left"
syn match VhdlKeywords7 "\'leftof"
syn match VhdlKeywords7 "\'low"
syn match VhdlKeywords7 "\'pos"
syn match VhdlKeywords7 "\'pred"
syn match VhdlKeywords7 "\'rightof"
syn match VhdlKeywords7 "\'succ"
syn match VhdlKeywords7 "\'val"
syn match VhdlKeywords7 "\'image"
syn match VhdlKeywords7 "\'value"

hi  link  VhdlKeywords8 Constant

" Operators
hi  link    VhdlKeywords9 Type
" syn keyword VhdlKeywords9 and nand or nor xor xnor
syn keyword VhdlKeywords9 rol ror sla sll sra srl
syn keyword VhdlKeywords9 mod rem abs

