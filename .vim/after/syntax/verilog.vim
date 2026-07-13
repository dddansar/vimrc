"==============================================================================
" File: verilog.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all verilog and
"              system verilog files.
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


" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:verilog_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if !exists("g:syntax_on")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "verilog.vim syntax file loaded"
endif
let b:verilog_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "verilog"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   call AllFilesDefaultSyntax()
endif

" Keep autoindent, but remove cindent
" set nocindent

hi! link verilogLabel         Repeat
hi! link systemverilogLabel   Repeat


hi  link    SvUvmKeywords Statement
syn keyword SvUvmKeywords uvm_report_info uvm_report_warning uvm_report_error uvm_report_fatal uvm_hdl_force uvm_hdl_release uvm_hdl_check_path uvm_hdl_deposit uvm_hdl_force_time uvm_hdl_release_and_read uvm_hdl_read build_phase connect_phase end_of_elaboration_phase start_of_simulation_phase Run Clean check_phase report_phase final_phase uvm_env uvm_agent uvm_driver uvm_monitor uvm_sequencer uvm_scoreboard uvm_subscriber and uvm_test

hi  link    SvKeywords2 Type
syn keyword SvKeywords2  tri0 tri1 tri trireg reg wire tranif0 tranif1 triand trior strong weak weak0 weak1 wand wor triand trior supply0 supply supply1 signed unsigned integer real int longint shortint bins binsof bit byte logic modport shortreal string void time realtime event chandle
syn keyword SvKeywords2 nexttime s_nexttime s_always s_eventually eventually until s_until until_with s_until_with implies within throughout intersect wait

hi  link    SvKeywords3 Function
syn keyword SvKeywords3  find find_index find_first find_last find_last_index find_first_index min max unique unique_index sum product sample first last next prev num name len putc getc toupper tolower compare icompare substr atoi atohex atooct atobin atoreal itoa hextoa octtoa bintoa realtoa or and not xor xnor super new

hi  link    SvKeywords4 Label
syn keyword SvKeywords4 constraint weight goal comment at_least auto_bin_max cross_num_print_missing detect_overlap option type_option per_instance strobe merge_instances get_inst_coverage property endproperty sequence endsequence accept_on reject_on sync_accept_on sync_reject_o triggered matched sequence_method

hi  link    SvKeywords5 Structure
syn keyword SvKeywords5  struct union enum

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "verilog"
   call AllTime()
   call AllOperators()
   call AllShiftOp()
   call AllEqualities()
   call AllParenBr()
   call AllArrows()
   call AllSeparators()
   call AllDefineTick()
   call AllLabel()
endif

