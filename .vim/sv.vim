"==============================================================================
" File: sv.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all verilog and
"              system verilog files.
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
if exists("b:sv_loaded")
  finish
endif
let g:sv_loaded = 1


" iskeyword is an option that defines which characters are considered part of
" a word. NOTE: Below will consider var++ one word!!!
" setlocal iskeyword=@,48-57,_,192-255,+,-,?

hi  link  SvKeywords1 Statement
hi  link  SvKeywords2 Type
hi  link  SvKeywords3 Conditional
hi  link  SvKeywords4 Define
hi  link  SvKeywords5 Conditional
hi  link  SvKeywords6 Statement
hi  link  SvKeywords7 Special
hi  link  SvKeywords8 Structure

" A bunch of useful Verilog keywords
syn keyword SvKeywords1  disable assign deassign force release
syn keyword SvKeywords1  parameter localparam
syn keyword SvKeywords1  input output inout
syn keyword SvKeywords1  posedge negedge wait
syn keyword SvKeywords1  buf pullup pull0 pull1 pulldown
syn keyword SvKeywords1  defparam
syn keyword SvKeywords1  nexttime s_nexttime s_always s_eventually eventually
syn keyword SvKeywords1  until s_until until_with s_until_with implies

syn keyword SvKeywords2  tri0 tri1 tri trireg reg wire tranif0 tranif1 triand
syn keyword SvKeywords2  trior weak0 weak1 wand wor triand trior
syn keyword SvKeywords2  supply0 supply1
" syn keyword SvKeywords2  signed unsigned automatic

syn keyword SvKeywords3  find find_index find_first find_last find_last_index
syn keyword SvKeywords3  find_first_index min max unique unique_index
syn keyword SvKeywords3  sum product sample
syn keyword SvKeywords3  first last next prev num name len putc getc
syn keyword SvKeywords3  toupper tolower compare icompare substr
syn keyword SvKeywords3  atoi atohex atooct atobin atoreal
syn keyword SvKeywords3  itoa hextoa octtoa bintoa realtoa

syn keyword SvKeywords3  weight goal comment at_least auto_bin_max
syn keyword SvKeywords3  cross_num_print_missing detect_overlap
syn keyword SvKeywords3  option type_option per_instance strobe
syn keyword SvKeywords3  merge_instances get_inst_coverage

" syn keyword SvKeywords4  or and not xor xnor

syn keyword SvKeywords4  strong weak triggered matched sequence_method
syn keyword SvKeywords4  constraint with
syn keyword SvKeywords4  accept_on reject_on sync_accept_on sync_reject_on

syn keyword SvKeywords5  always initial

syn keyword SvKeywords6  module endmodule
syn keyword SvKeywords6  task endtask
syn keyword SvKeywords6  function endfunction

" System Verilog extensions
syn keyword SvKeywords1  alias assert assume
syn keyword SvKeywords1  before bind break clocking restrict
syn keyword SvKeywords1  constraint context continue cover covergroup coverpoint
syn keyword SvKeywords1  cross dist endclocking endgroup checker endchecker
syn keyword SvKeywords1  package program endpackage endprogram
syn keyword SvKeywords1  expect export extends extern final
syn keyword SvKeywords1  first_match ignore_bins illegal_bins
syn keyword SvKeywords1  import inside intersect
syn keyword SvKeywords1  matches new null  packed priority program
syn keyword SvKeywords1  protected pure rand randc randcase
syn keyword SvKeywords1  randsequence ref return solve super
syn keyword SvKeywords1  tagged this throughout timeprecision timeunit type
syn keyword SvKeywords1  var virtual wait_order wildcard within

syn keyword SvKeywords1  generate genvar endgenerate

syn keyword SvKeywords2  integer real int longint shortint bins binsof
syn keyword SvKeywords2  logic modport shortreal string bit byte void
syn keyword SvKeywords2  time realtime event chandle const local static

syn keyword SvKeywords3  property endproperty sequence endsequence
syn keyword SvKeywords3  expression_or_dist
syn keyword SvKeywords3  sequence_expr
syn keyword SvKeywords3  property_expr

syn keyword SvKeywords4  uvm_hdl_force uvm_report_info

syn keyword SvKeywords5  begin end fork join join_any join_none
syn keyword SvKeywords5  if else case casex casez default endcase iff
syn keyword SvKeywords5  forever repeat do while for foreach
syn keyword SvKeywords5  always_ff always_comb always_latch

syn keyword SvKeywords6  class endclass interface endinterface

syn keyword SvKeywords8  struct union enum typedef

syn match   SvNoColor    ";"

" sv system functions
syn match   SvKeywords4  "$finish"
syn match   SvKeywords4  "$stop"
syn match   SvKeywords4  "$exit"
syn match   SvKeywords4  "$realtime"
syn match   SvKeywords4  "$stime"
syn match   SvKeywords4  "$time"
syn match   SvKeywords4  "$printtimescale"
syn match   SvKeywords4  "$timeformat"
syn match   SvKeywords4  "$bitstoreal"
syn match   SvKeywords4  "$realtobits"
syn match   SvKeywords4  "$bitstoshortreal"
syn match   SvKeywords4  "$shortrealtobits"
syn match   SvKeywords4  "$itor"
syn match   SvKeywords4  "$rtoi"
syn match   SvKeywords4  "$signed"
syn match   SvKeywords4  "$unsigned"
syn match   SvKeywords4  "$cast"
syn match   SvKeywords4  "$bits"
syn match   SvKeywords4  "$isunbounded"
syn match   SvKeywords4  "$typename"
syn match   SvKeywords4  "$unpacked_dimensions"
syn match   SvKeywords4  "$dimensions"
syn match   SvKeywords4  "$left"
syn match   SvKeywords4  "$right"
syn match   SvKeywords4  "$low"
syn match   SvKeywords4  "$high"
syn match   SvKeywords4  "$increment"
syn match   SvKeywords4  "$size"
syn match   SvKeywords4  "$clog2"
syn match   SvKeywords4  "$asin"
syn match   SvKeywords4  "$ln"
syn match   SvKeywords4  "$acos"
syn match   SvKeywords4  "$log10"
syn match   SvKeywords4  "$atan"
syn match   SvKeywords4  "$exp"
syn match   SvKeywords4  "$atan2"
syn match   SvKeywords4  "$sqrt"
syn match   SvKeywords4  "$hypot"
syn match   SvKeywords4  "$pow"
syn match   SvKeywords4  "$sinh"
syn match   SvKeywords4  "$floor"
syn match   SvKeywords4  "$cosh"
syn match   SvKeywords4  "$ceil"
syn match   SvKeywords4  "$tanh"
syn match   SvKeywords4  "$sin"
syn match   SvKeywords4  "$asinh"
syn match   SvKeywords4  "$cos"
syn match   SvKeywords4  "$acosh"
syn match   SvKeywords4  "$tan"
syn match   SvKeywords4  "$atanh"
syn match   SvKeywords4  "$countbits"
syn match   SvKeywords4  "$countones"
syn match   SvKeywords4  "$onehot"
syn match   SvKeywords4  "$onehot0"
syn match   SvKeywords4  "$isunknown"
syn match   SvKeywords4  "$fatal"
syn match   SvKeywords4  "$error"
syn match   SvKeywords4  "$warning"
syn match   SvKeywords4  "$info"
syn match   SvKeywords4  "$fatal"
syn match   SvKeywords4  "$error"
syn match   SvKeywords4  "$warning"
syn match   SvKeywords4  "$info"
syn match   SvKeywords4  "$asserton"
syn match   SvKeywords4  "$assertoff"
syn match   SvKeywords4  "$assertkill"
syn match   SvKeywords4  "$assertcontrol"
syn match   SvKeywords4  "$assertpasson"
syn match   SvKeywords4  "$assertpassoff"
syn match   SvKeywords4  "$assertfailon"
syn match   SvKeywords4  "$assertfailoff"
syn match   SvKeywords4  "$assertnonvacuouson"
syn match   SvKeywords4  "$assertvacuousoff"
syn match   SvKeywords4  "$sampled"
syn match   SvKeywords4  "$rose"
syn match   SvKeywords4  "$fell"
syn match   SvKeywords4  "$stable"
syn match   SvKeywords4  "$changed"
syn match   SvKeywords4  "$past"
syn match   SvKeywords4  "$past_gclk"
syn match   SvKeywords4  "$rose_gclk"
syn match   SvKeywords4  "$fell_gclk"
syn match   SvKeywords4  "$stable_gclk"
syn match   SvKeywords4  "$changed_gclk"
syn match   SvKeywords4  "$future_gclk"
syn match   SvKeywords4  "$rising_gclk"
syn match   SvKeywords4  "$falling_gclk"
syn match   SvKeywords4  "$steady_gclk"
syn match   SvKeywords4  "$changing_gclk"
syn match   SvKeywords4  "$coverage_control"
syn match   SvKeywords4  "$coverage_get_max"
syn match   SvKeywords4  "$coverage_get"
syn match   SvKeywords4  "$coverage_merge"
syn match   SvKeywords4  "$coverage_save"
syn match   SvKeywords4  "$get_coverage"
syn match   SvKeywords4  "$set_coverage_db_name"
syn match   SvKeywords4  "$load_coverage_db"
syn match   SvKeywords4  "$random"
syn match   SvKeywords4  "$dist_chi_square"
syn match   SvKeywords4  "$dist_erlang"
syn match   SvKeywords4  "$dist_exponential"
syn match   SvKeywords4  "$dist_normal"
syn match   SvKeywords4  "$dist_poisson"
syn match   SvKeywords4  "$dist_t"
syn match   SvKeywords4  "$dist_uniform"
syn match   SvKeywords4  "$q_initialize"
syn match   SvKeywords4  "$q_add"
syn match   SvKeywords4  "$q_remove"
syn match   SvKeywords4  "$q_full"
syn match   SvKeywords4  "$q_exam"
syn match   SvKeywords4  "$async$and$array"
syn match   SvKeywords4  "$async$and$plane"
syn match   SvKeywords4  "$async$nand$array"
syn match   SvKeywords4  "$async$nand$plane"
syn match   SvKeywords4  "$async$or$array"
syn match   SvKeywords4  "$async$or$plane"
syn match   SvKeywords4  "$async$nor$array"
syn match   SvKeywords4  "$async$nor$plane"
syn match   SvKeywords4  "$sync$and$array"
syn match   SvKeywords4  "$sync$and$plane"
syn match   SvKeywords4  "$sync$nand$array"
syn match   SvKeywords4  "$sync$nand$plane"
syn match   SvKeywords4  "$sync$or$array"
syn match   SvKeywords4  "$sync$or$plane"
syn match   SvKeywords4  "$sync$nor$array"
syn match   SvKeywords4  "$sync$nor$plane"
syn match   SvKeywords4  "$system"
syn match   SvKeywords4  "$display"
syn match   SvKeywords4  "$write"
syn match   SvKeywords4  "$displayb"
syn match   SvKeywords4  "$writeb"
syn match   SvKeywords4  "$displayh"
syn match   SvKeywords4  "$writeh"
syn match   SvKeywords4  "$displayo"
syn match   SvKeywords4  "$writeo"
syn match   SvKeywords4  "$strobe"
syn match   SvKeywords4  "$monitor"
syn match   SvKeywords4  "$strobeb"
syn match   SvKeywords4  "$monitorb"
syn match   SvKeywords4  "$strobeh"
syn match   SvKeywords4  "$monitorh"
syn match   SvKeywords4  "$strobeo"
syn match   SvKeywords4  "$monitoro"
syn match   SvKeywords4  "$monitoroff"
syn match   SvKeywords4  "$monitoron"
syn match   SvKeywords4  "$fclose"
syn match   SvKeywords4  "$fopen"
syn match   SvKeywords4  "$fdisplay"
syn match   SvKeywords4  "$fwrite"
syn match   SvKeywords4  "$fdisplayb"
syn match   SvKeywords4  "$fwriteb"
syn match   SvKeywords4  "$fdisplayh"
syn match   SvKeywords4  "$fwriteh"
syn match   SvKeywords4  "$fdisplayo"
syn match   SvKeywords4  "$fwriteo"
syn match   SvKeywords4  "$fstrobe"
syn match   SvKeywords4  "$fmonitor"
syn match   SvKeywords4  "$fstrobeb"
syn match   SvKeywords4  "$fmonitorb"
syn match   SvKeywords4  "$fstrobeh"
syn match   SvKeywords4  "$fmonitorh"
syn match   SvKeywords4  "$fstrobeo"
syn match   SvKeywords4  "$fmonitoro"
syn match   SvKeywords4  "$swrite"
syn match   SvKeywords4  "$sformat"
syn match   SvKeywords4  "$swriteb"
syn match   SvKeywords4  "$sformatf"
syn match   SvKeywords4  "$swriteh"
syn match   SvKeywords4  "$fgetc"
syn match   SvKeywords4  "$swriteo"
syn match   SvKeywords4  "$ungetc"
syn match   SvKeywords4  "$fscanf"
syn match   SvKeywords4  "$fgets"
syn match   SvKeywords4  "$fread"
syn match   SvKeywords4  "$sscanf"
syn match   SvKeywords4  "$fseek"
syn match   SvKeywords4  "$rewind"
syn match   SvKeywords4  "$fflush"
syn match   SvKeywords4  "$ftell"
syn match   SvKeywords4  "$feof"
syn match   SvKeywords4  "$ferror"
syn match   SvKeywords4  "$readmemb"
syn match   SvKeywords4  "$readmemh"
syn match   SvKeywords4  "$writememb"
syn match   SvKeywords4  "$writememh"
syn match   SvKeywords4  "$test$plusargs"
syn match   SvKeywords4  "$value$plusargs"
syn match   SvKeywords4  "$dumpfile"
syn match   SvKeywords4  "$dumpvars"
syn match   SvKeywords4  "$dumpoff"
syn match   SvKeywords4  "$dumpon"
syn match   SvKeywords4  "$dumpall"
syn match   SvKeywords4  "$dumplimit"
syn match   SvKeywords4  "$dumpflush"
syn match   SvKeywords4  "$dumpports"
syn match   SvKeywords4  "$dumpportsoff"
syn match   SvKeywords4  "$dumpportson"
syn match   SvKeywords4  "$dumpportsall"
syn match   SvKeywords4  "$dumpportslimit"
syn match   SvKeywords4  "$dumpportsflush"

syn match   SvKeywords4  "$urandom"
syn match   SvKeywords4  "$urandom_range"
syn match   SvKeywords4  "$root"
syn match   SvKeywords4  "$fdumpfile"
syn match   SvKeywords4  "$get_initial_random_seed"
syn match   SvKeywords4  "$psprintf"


"------------------------------------------------------------------------------
"                           System Verilog abbreviations
"------------------------------------------------------------------------------
inorea _svhead  //-----------------------------------------------------------------------------<cr>
            \// Title      :<cr>
            \// Project    :<cr>
            \//-----------------------------------------------------------------------------<cr>
            \// File       :<cr>
            \// Author     :<cr>
            \// Company    :<cr>
            \// Platform   :<cr>
            \//-----------------------------------------------------------------------------<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>


inorea _svadesc   //-----------------------------------------------------------------------------<cr>
            \// Assertion:<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svsva     //-----------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \a_name : assert property (@(posedge clk) disable iff(reset_n == 0 \|\| !enable_assertions)<cr>
            \         \|=><cr>
            \) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svprop    //-----------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   logic [7:0] expected_data; // local variable to sample model data<cr>
            \@(clocking_event) disable iff (disable_expr)<cr>
            \(condition, expected_data=value) \|=> (result == expected_data);<cr>
            \<bs><bs><bs>endproperty<cr>
            \a_name: assert property (p_name()) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svseq     //-----------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \sequence s_name (disable_expr, clocking_event, x, y, min, max, delay1);<cr>
            \   @(clocking_event)<cr>
            \x ##delay1 y[*min:max];<cr>
            \<bs><bs><bs>endsequence<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   @(clocking_event) disable iff (disable_expr)<cr>
            \s_name(disable, posedge clk, in1, in2, in3, in4, in5) \|=> (result);<cr>
            \<bs><bs><bs>endproperty<cr>
            \a_name: assert property (p_name(disable, posedge clk, in1, in2)) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svaf    //-----------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \always_comb begin<cr>
            \   if (enable_assertions) begin<cr>
            \   a_name : assert final (<cr>
            \<bs><bs><bs>enable_assertions &&<cr>
            \val1 === val2<cr>
            \<bs><bs><bs>) else assert_error("a_name", 1);<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>end<up><up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svafn   //-----------------------------------------------------------------------------<cr>
            \// immediate assertion error messages are not limited by questa<cr>
            \//-----------------------------------------------------------------------------<cr>
            \byte immediate_sva_cnt_limit [10:0];<cr>
            \function void assert_error(string assertion_name, int id);<cr>
            \   if (immediate_sva_cnt_limit[id] < 10) begin<cr>
            \   -> `ASSERTION_ERROR;<cr>
            \immediate_sva_cnt_limit[id] ++;<cr>
            \$error ("ASSERTION ERROR: %s : %0t", assertion_name, $time);<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>endfunction<left><right><c-r>=Eatchar('\s')<cr>

inorea _svaif   //-----------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \sva_vip_async_signal_compare_if #(.SIG_SIZE ($bits()))  a_name();<cr>
            \   assign a_name.disable_expr  = ();<cr>
            \assign a_name.sig0          = ();<cr>
            \assign a_name.sig1          = ();<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcprop   //-----------------------------------------------------------------------------<cr>
            \// Cover Property: c_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   @(clocking_event) disable iff (disable_expr)<cr>
            \(condition) \|=> (result);<cr>
            \<bs><bs><bs>endproperty<cr>
            \c_name: cover property(p_name(disable, posedge clk, in1, in2, in3, in4, in5);<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcovif   //-----------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \cg_vip_all_values_hit_if #(.SIG_SIZE ($bits(sig_name)))   cg_name();<cr>
            \   assign cg_name.cover_signal       = sig_name;<cr>
            \assign cg_name.enable_coverpoints = m_enable_coverpoints && reset_n;<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcg      //-----------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \covergroup cg_name @(sig_name or m_enable_coverpoints);<cr>
            \   type_option.strobe = 1;<cr>
            \type_option.weight = 1; // NOTE: Weight represents the number of coverpoints in this covergroup. Edit when the number of coverpoints changes.<cr>
            \<cr>
            \   <bs><bs><bs>cp_sig_name: coverpoint sig_name<cr>
            \iff (m_enable_coverpoints) {<cr>
            \bins LN0   = {4'b1000};<cr>
            \bins LN1   = {4'b0100};<cr>
            \bins LN2   = {4'b0010};<cr>
            \bins LN3   = {4'b0001};<cr>
            \bins ALL   = {{{NUM_OUTPUTS}{1'b1}}};<cr>
            \bins NONE  = {{{NUM_OUTPUTS}{1'b0}}};<cr>
            \bins bin_01 = {[0:1]};<cr>
            \bins bin_23 = {[2:3]};<cr>
            \bins bin_45 = {[4:5]};<cr>
            \bins bin_67 = {[6:7]};<cr>
            \bins others = default;<cr>
            \}<cr>
            \endgroup<cr>
            \cg_name m_cg_name = new;<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcg2     //-----------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \covergroup cg_name (input int i) @(sig_name or m_enable_coverpoints);<cr>
            \   type_option.strobe = 1;<cr>
            \type_option.weight = 3; // NOTE: Weight represents the number of coverpoints in this covergroup. Edit when the number of coverpoints changes.<cr>
            \<cr>
            \   <bs><bs><bs>cp_sig_name : coverpoint (sig_name[i])<cr>
            \iff (enable[i] & clk_reset_n & m_enable_coverpoints) {<cr>
            \bins LN0   = {4'b1000};<cr>
            \bins LN1   = {4'b0100};<cr>
            \bins LN2   = {4'b0010};<cr>
            \bins LN3   = {4'b0001};<cr>
            \bins ALL   = {{{NUM_OUTPUTS}{1'b1}}};<cr>
            \bins NONE  = {{{NUM_OUTPUTS}{1'b0}}};<cr>
            \bins bin_01 = {[0:1]};<cr>
            \bins bin_23 = {[2:3]};<cr>
            \bins bin_45 = {[4:5]};<cr>
            \bins bin_67 = {[6:7]};<cr>
            \bins others = default;<cr>
            \}<cr>
            \endgroup<cr>
            \cg_name m_cg_name[NUM_OUTPUTS];<cr>
            \<cr>
            \initial begin<cr>
            \   foreach (m_cg_name[i]) begin<cr>
            \   m_cg_name[i] = new(i);<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>end<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcp      cp_sig_name: coverpoint sig_name<cr>
            \iff (m_enable_coverpoints) {<cr>
            \bins LN0   = {4'b1000};<cr>
            \bins LN1   = {4'b0100};<cr>
            \bins LN2   = {4'b0010};<cr>
            \bins LN3   = {4'b0001};<cr>
            \bins ALL   = {{{NUM_OUTPUTS}{1'b1}}};<cr>
            \bins NONE  = {{{NUM_OUTPUTS}{1'b0}}};<cr>
            \bins bin_01 = {[0:1]};<cr>
            \bins bin_23 = {[2:3]};<cr>
            \bins bin_45 = {[4:5]};<cr>
            \bins bin_67 = {[6:7]};<cr>
            \bins others = default;<cr>
            \}<left><right><c-r>=Eatchar('\s')<cr>

inorea _svbins    bins C_00 = {2'b00};<cr>
            \bins C_01 = {2'b01};<cr>
            \bins C_10 = {2'b10};<cr>
            \bins C_11 = {2'b11};<left><right><c-r>=Eatchar('\s')<cr>
inorea _svbins2   bins RISING  = (1'b0 => 1'b1);<cr>
            \bins FALLING = (1'b1 => 1'b0);<left><right><c-r>=Eatchar('\s')<cr>
inorea _svbins3   bins MIN  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID1 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID2 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID3 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID4 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MAX  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea _svbins4   bins MIN = {0};                 // min value = 0<cr>
            \bins MAX = {(2**SIG_SIZE) - 1}; // max value = '{SIG_SIZE{1'b1}}.<cr>
            \bins Q_1 = {[ 1                 : (2**SIG_SIZE)*1/4 - 1 ]}; // first quadrant excluding 0.<cr>
            \bins Q_2 = {[(2**SIG_SIZE)*1/4  : (2**SIG_SIZE)*2/4 - 1 ]};<cr>
            \bins Q_3 = {[(2**SIG_SIZE)*2/4  : (2**SIG_SIZE)*3/4 - 1 ]};<cr>
            \bins Q_4 = {[(2**SIG_SIZE)*3/4  : (2**SIG_SIZE)*4/4 - 2 ]}; // fourth quadrant excluding the max value '{SIG_SIZE{1'b1}}.<left><right><c-r>=Eatchar('\s')<cr>
inorea _svbins5   bins ALL_VALUES[] = {[COVER_MIN:COVER_MAX]};<left><right><c-r>=Eatchar('\s')<cr>
inorea _svwbins   wildcard bins ONE_BIT0  = { 4'b???1 };<cr>
            \wildcard bins ONE_BIT1  = { 4'b??1? };<cr>
            \wildcard bins ONE_BIT2  = { 4'b?1?? };<cr>
            \wildcard bins ONE_BIT3  = { 4'b1??? };<cr>
            \wildcard bins ZERO_BIT0 = { 4'b???0 };<cr>
            \wildcard bins ZERO_BIT1 = { 4'b??0? };<cr>
            \wildcard bins ZERO_BIT2 = { 4'b?0?? };<cr>
            \wildcard bins ZERO_BIT3 = { 4'b0??? };<left><right><c-r>=Eatchar('\s')<cr>
inorea _svwbins2  wildcard bins F110_ONE_BEFORE = ({5'b1?_011} => {5'b10_101} => {5'b10_011} => {5'b10_001} [*127] => {5'b10_010});<left><right><c-r>=Eatchar('\s')<cr>

inorea _svigbins  ignore_bins ignore_condition_0 = {2'b01} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea _svigbins2 ignore_bins ignore_cross_0 = binsof(sig1) intersect {val1}  && binsof(sig2) intersect {val2};<left><right><c-r>=Eatchar('\s')<cr>
inorea _svigbins3 wildcard ignore_bins ignore_conditions_0 = {4'b11xx};<left><right><c-r>=Eatchar('\s')<cr>

inorea _svilbins  illegal_bins   ERR_LOW  = {1'b1} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea _svilbins2 illegal_bins   ERR_LOW  = {3'b11x} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>

inorea _svtask    //-----------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \task task_name (input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svtask0   //-----------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \task task_name ();<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svfunc    //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function void function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svfunc0   //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function void function_name();<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svfunci   //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function int function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svfunci0  //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function int function_name();<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea _svbegin   begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svif     if () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifel   if () begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifelif if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifelifel if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>

inorea _svfor    for (int i=0; i<; i++) begin<cr>
            \   <cr>
            \end<up><up><esc>$bbbba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svwhile  while () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svdo     do begin<cr>
            \   <cr>
            \end while ();<esc>$ba<left><right><c-r>=Eatchar('\s')<cr>

inorea _svcase   case ()<cr>
            \0: begin<cr>
            \   <cr>
            \end<cr>
            \1: begin<cr>
            \   <cr>
            \end<cr>
            \default: begin<cr>
            \   <cr>
            \end<cr>
            \<bs><bs><bs>endcase<up><up><up><up><up><up><up><up><up><up><esc>$ba<left><right><c-r>=Eatchar('\s')<cr>
inorea _svcase0  case ()<cr>
            \0: ;<cr>
            \ <bs>1: ;<cr>
            \default: ;<cr>
            \<bs><bs><bs>endcase<up><up><up><up><esc>$ba<left><right><c-r>=Eatchar('\s')<cr>

inorea _svinf       $display("Entering ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea _sventer     $display("Entering ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea _svexit      $display("Exiting ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea _svinfo      $display("Message %0d : %0t", v, $time);<esc>11bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _sverror     $error("ERROR Message %0d : %0t", v, $time)<esc>10bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuinf      `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuenter    `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuexit     `uvm_info(get_type_name(), $sformatf("Exiting "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuinfo     `uvm_info(get_type_name(), $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuinfo2    `uvm_info("filename", $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuerror    `uvm_error(get_type_name(), $sformatf("ERROR Message %0d", v))<esc>5bi<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuerror2   `uvm_error("filename", $sformatf("ERROR Message %0d", v))<esc>5bi<left><right><c-r>=Eatchar('\s')<cr>

inorea _svforce     force `PATH_TO_SIG = force_val;<left><right><c-r>=Eatchar('\s')<cr>
inorea _svuforce    void'(uvm_hdl_force(`STRING(`PATH_TO_SIG), uvm_hdl_data_t'(force_val)));<left><right><c-r>=Eatchar('\s')<cr>
inorea _svdforce    void'(dpi_signal_force(`STRING(`PATH_TO_SIG), force_val, 0));<left><right><c-r>=Eatchar('\s')<cr>
inorea _svdforce2   void'(dpi_signal_force({`STRING(`PATH_TO_SIG), $sformatf(".SIG_NAME[%0d]", a)}, force_val, 0));<left><right><c-r>=Eatchar('\s')<cr>

inorea _svrmem      $readmemh(file_in, var_out, start_addr, end_addr);<left><right><c-r>=Eatchar('\s')<cr>

inorea _svstrc     {string1, $sformatf("%0d", v), string2}

inorea _svimport  import name_pkg::*;<left><right><c-r>=Eatchar('\s')<cr>
inorea _svinc     `include "filename.ext"<left><right><c-r>=Eatchar('\s')<cr>
inorea _svdef     `define DEFINEVAR VARVAL<left><right><c-r>=Eatchar('\s')<cr>
inorea _svparam   parameter PARAMNAME = 1;<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifdef   `ifdef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifndef  `ifndef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifdefel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifndefel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifdefelif `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifndefelif `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifdefelifel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svifndefelifel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svtype typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<left><right><c-r>=Eatchar('\s')<cr>
inorea _svstruct struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<left><right><c-r>=Eatchar('\s')<cr>
inorea _svenum   enum {<cr>
            \VAR0 = 0,<cr>
            \VAR1 = 1,<cr>
            \VAR2 = 2,<cr>
            \VAR3 = 3<cr>
            \} e_math_oper_type;<left><right><c-r>=Eatchar('\s')<cr>

inorea _svarray   int array_name[3:0] = '{0, 1, 2, 3};<left><right><c-r>=Eatchar('\s')<cr>
inorea _svarray2  int array_name[2:0][3:0] = '{'{00, 01, 02, 03},<cr>
            \                         '{10, 11, 12, 13},<cr>
            \'{20, 21, 22, 23}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea _svarray3  int array_name[2:0][2:0][3:0] = '{'{'{000, 001, 002, 003},<cr>
            \                                '{010, 011, 012, 013},<cr>
            \'{020, 021, 022, 023}<cr>
            \<bs>},<cr>
            \<bs>'{'{100, 101, 102, 103},<cr>
            \  '{110, 111, 112, 113},<cr>
            \'{120, 121, 122, 123}<cr>
            \<bs>},<cr>
            \<bs>'{'{200, 201, 202, 203},<cr>
            \  '{210, 211, 212, 213},<cr>
            \'{220, 221, 222, 223}<cr>
            \<bs>}<cr>
            \                                 };<left><right><c-r>=Eatchar('\s')<cr>

inorea _svalw  always @(posedge sys_clk) begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svalw2 always @(*) begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svalwc always_comb begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svinit   initial begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svgen generate<cr>
            \for (genvar i = 0; i < MAX; i++) begin : genvar_name<cr>
            \   <cr>
            \end<cr>
            \endgenerate<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svintf   `include "verification_defs.svh"<cr>
            \`include "vip_generic_interfaces.svh"<cr>
            \`include "vip_generic_covergroups.svh"<cr>
            \<cr>
            \interface interface_name #(<cr>
            \<bs><bs><bs>parameter                  PARAM_1 = 7,<cr>
            \parameter            [6:0] PARAM_2 = {7{1'b1}}<cr>
            \<bs><bs><bs>) (<cr>
            \// coverage never<cr>
            \<cr>
            \input  wire                sys_clk,<cr>
            \input  wire                sys_clk_reset_n,<cr>
            \<cr>
            \interface                  func_cov_if<cr>
            \<bs><bs><bs>);<cr>
            \<cr>
            \`include "verification_params.svh"<cr>
            \`include "vip_generic_properties.svh"<cr>
            \<cr>
            \endinterface<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svmod  `include "verification_defs.svh"<cr>
            \`include "vip_generic_interfaces.svh"<cr>
            \`include "vip_generic_covergroups.svh"<cr>
            \<cr>
            \module module_name #(<cr>
            \<bs><bs><bs>parameter                  PARAM_1 = 7,<cr>
            \parameter            [6:0] PARAM_2 = {7{1'b1}}<cr>
            \<bs><bs><bs>) (<cr>
            \// coverage never<cr>
            \<cr>
            \input  wire                sys_clk,<cr>
            \input  wire                sys_clk_reset_n,<cr>
            \<cr>
            \interface                  func_cov_if<cr>
            \<bs><bs><bs>);<cr>
            \<cr>
            \`include "verification_params.svh"<cr>
            \`include "vip_generic_properties.svh"<cr>
            \<cr>
            \endmodule<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svbind    bind `PRJ_DIG_TOP(0).rtl_block interface_name #(<cr>
            \<bs><bs><bs>.PARAM_1   (0),<cr>
            \.PARAM_2   (3)<cr>
            \<bs><bs><bs>) interface_name_0 (<cr>
            \.sys_clk                                     (`PRJ_DIG_TOP(0).sys_clk),<cr>
            \.sys_clk_reset_n                             (`PRJ_DIG_TOP(0).sys_clk_reset_n),<cr>
            \<cr>
            \.func_cov_if                                 (dut_shell.m_func_cov_if)<cr>
            \<bs><bs><bs>);<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svpkg     package dut_pkg;<cr>
            \   // coverage never<cr>
            \<cr>
            \   import other_pkg::*;<cr>
            \<cr>
            \`include "include.svh"<cr>
            \<cr>
            \<bs><bs><bs>endpackage : dut_pkg<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svfork    fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \end<cr>
            \<bs><bs><bs>join_none<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _svfork2   fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \   disable proc2;<cr>
            \<bs><bs><bs>end<cr>
            \begin : proc2<cr>
            \   <cr>
            \   disable proc1;<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>join_any<up><up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _svconst constraint c_name  {<cr>
            \m_sig0 == val;<cr>
            \m_sig1 inside {0, 1, 2, 3, 4, 5, 6};<cr>
            \m_sig1 dist {2 := 10, 3 := 5 , 4 := 5, 5 := 2, 6 :=2};<cr>
            \if (m_sig2 == 1) {<cr>
            \m_sig3 == 1;<cr>
            \} else {<cr>
            \m_sig3 == 0;<cr>
            \}<cr>
            \foreach (m_array[i]) {<cr>
            \m_array[i][31:0] != 0;<cr>
            \(m_sig4[i] == 0) -> sig5 == val5;<cr>
            \(m_sig4[i] == 0) -> sig6 == val6;<cr>
            \}<cr>
            \}<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------


" let b:match_words='\<if\>\|\<for\>\|\<for\>\|\<while\>\|\<do\>:\<begin\>:\<else\>:\<end\>,\<if\>:\<else\>,
let b:match_words='\<begin\>:\<end\>,\<clocking\>:\<endclocking\>,
        \ \<property\>:\<endproperty\>,\<sequence\>:\<endsequence\>,\<covergroup\>:\<endgroup\>,
        \ \<specify\>:\<endspecify\>,\<generate\>:\<endgenerate\>,\<function\>:\<endfunction\>,\<task\>:\<endtask\>,
        \ \<case\>\|\<casex\>\|\<casez\>:\<endcase\>,\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,`ifdef\>\|`ifndef\>:`else\>:`endif\>'

