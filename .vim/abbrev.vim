"==============================================================================
" File: abbrev.vim
"------------------------------------------------------------------------------
" Description: Generic abbreviations for all files.
" NOTE: Some extension specific *.vim files also have their own abbreviations.
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
if exists("b:abbrev_loaded")
   finish
endif
let b:abbrev_loaded = 1


" NOTE: To make sure a Vim abbreviation does not trigger existing mappings,
"       use the noreabbrev (inorea) command instead of the abbrev (ia) command.

" NOTE: <buffer> makes abbrev local to the current buffer instead of global.

" Can you call an abbreviation from another?
" YES!!!! works!! The extra "a" is to enter insert mode.
inorea <buffer> _iatest    <esc>:normal  a_c0<cr>

" NOTE: Using   <c-r>=Eatchar('\s')<cr>   to consume the space typed after an
"       abbreviation.

inorea <buffer> _c0 //-----------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c1 //-----------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c2 //-----------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c3 //---------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c4 //-------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c5 //-----------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _v0 "------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v1 "------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v2 "------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v3 "----------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v4 "--------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v5 "------------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _n0 -------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n1 -------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n2 -------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n3 -----------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n4 ---------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n5 -------------------------------------------------------------------------------------------------------------<left><right><c-r>=Eatchar('\s')<cr>


"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                           AI Prompt abbreviations
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

" inorea <buffer> _aipc  When writing code, use single line comments for comments, use 3 spaces for indentation, if modifying code then only write what changed and explain where to place the new code, keep previous comments if they are still valid, use named constants instead of magic numbers, use descriptive variable names.<c-r>=Eatchar('\s')<cr>

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                             Regular Expressions
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

" Common regex abbreviations
" Non-capuring groups
inorea <buffer> r_p        \%(\)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_po       \%(\\|\)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_op       \%(\\|\)<left><right><c-r>=Eatchar('\s')<cr>
" Positive/negative look ahead/behind
inorea <buffer> r_pb       \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_bp       \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_pa       \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_ap       \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_nb       \%(\)\@<!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_bn       \%(\)\@<!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_na       \%(\)\@!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_an       \%(\)\@!<left><right><c-r>=Eatchar('\s')<cr>
" Word boundaries
inorea <buffer> r_b        \<\><left><right><c-r>=Eatchar('\s')<cr>
" Common ranges
inorea <buffer> r_az       [a-z]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_AZ       [A-Z]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_aZ       [a-zA-Z]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_a9       [a-z0-9]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_A9       [A-Z0-9]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> r_aZ9      [a-zA-Z0-9]<left><right><c-r>=Eatchar('\s')<cr>
" Matches 2 letters in a row
inorea <buffer> r_2l       \([a-z]\)\1<left><right><c-r>=Eatchar('\s')<cr>
" Matches a 5 letter palindrome
inorea <buffer> r_5p       \([a-z]\)\([a-z]\)[a-z]\2\1<left><right><c-r>=Eatchar('\s')<cr>
" Matches at least n times and at most m times the previous match
inorea <buffer> r_nm       \{n,m}<left><right><c-r>=Eatchar('\s')<cr>
" non-greedy version
inorea <buffer> r_ngnm     \{-n,m}<left><right><c-r>=Eatchar('\s')<cr>


"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                                  C abbreviations
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

inorea <buffer> _cfunch    //-----------------------------------------------------------------------------<cr>
            \// Function: <cr>
            \// Description: <cr>
            \//-----------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfunc0    //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfuncvv   //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cfunc     //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfuncv    //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cfunci0   //------------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int i_fname(void) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cfunci    //------------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int i_fname(int a, int b) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cmain    //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(void) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cmainarg //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(int argc, char *argv[]) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>


" Function declarations
inorea <buffer> _cfdec0   void v_fname(void);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfdec    void v_fname(int a, int b);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfdeci0  int i_fname(void);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfdeci   int i_fname(int a, int b);<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cincl    #include <stdio.h><left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdefi    #define DEFINEVAR VARVAL<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ctype typedef struct s_struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ctype2 typedef struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ctype3 typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cstruct  struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cstruct2  struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cstruct3  struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cunion  union u_uname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cunion2  union u_uname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} u_uname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cunion3  union {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} u_uname_var;<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cifdef #ifdef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cifndef  #ifndef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _carray   int a_i_aname[] = {0, 1, 2, 3};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _carray2  int a_i_aname[][] = {{00, 01, 02, 03},<cr>
            \                   {10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _carray3   int a_i_aname[][][] = {{{00, 01, 02, 03},<cr>
            \                      {10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>},<cr>
            \                    {{00, 01, 02, 03},<cr>
            \<bs><bs>{10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>},<cr>
            \{{00, 01, 02, 03},<cr>
            \<bs><bs>{10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cinf     printf("\n");<esc>bb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cinfo    printf(" = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cprintf  printf(" = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _centr    printf("Entering \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cexit    printf("Exiting \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cerro    printf("ERROR: \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cerror   printf("ERROR: = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cerr     fprintf(stderr, "ERROR: \n");<cr>
            \exit(1);<esc>k$bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cerr2    fprintf(stderr, "ERROR: %s\n", msg);<cr>
            \exit(1);<esc>k$bb<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cstderr  fprintf(stderr, "ERROR: %s\n", strerror(errno));<esc>bbbbbbbbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfperr   if (fp == NULL) {<cr>
            \fprintf(stderr, "File error: %s\n", strerror(errno));<cr>
            \exit(EXIT_FAILURE);<cr>
            \<bs><bs><bs>}<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cif      if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cifel    if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cifelif  if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cifelifel if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cfor     for (int i=0; i<; i++) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left><left><left><left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cwhile   while () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cdo do {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} while ();<esc>$<left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ccase    switch () {<cr>
            \case 0:<cr>
            \break;<cr>
            \<bs><bs><bs>case 1:<cr>
            \break;<cr>
            \<bs><bs><bs>default:<cr>
            \break;<cr>
            \<bs><bs><bs><bs><bs><bs>}<up><up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cfree free(p_ptr);<cr>
            \p_ptr = NULL;<esc>kkbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cmalloc p_ptr = malloc(num * sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<esc>k_<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cmalloc2 p_c_ptr = malloc(num * sizeof(*p_c_ptr));<cr>
            \if (p_c_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_c_ptr[num-1] = '\0';<esc>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cmall    <esc>:normal  acmalloc<cr>jo <bs><esc>:normal acfree<cr>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ccalloc p_ptr = calloc(num, sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after calloc!!!\n");
            \ exit(1);
            \}<esc>k_<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _crealloc p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = NULL;<esc>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _crealloc2 p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = p_cp_to;<cr>
            \p_cp_to = NULL;<esc>kkk_<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------



"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                           System Verilog abbreviations
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
inorea <buffer> _svhead  //-----------------------------------------------------------------------------<cr>
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


inorea <buffer> _svadesc   //-----------------------------------------------------------------------------<cr>
            \// Assertion:<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//-----------------------------------------------------------------------------<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svsva     //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svprop    //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svseq     //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svaf    //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svafn   //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svaif   //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svcprop   //-----------------------------------------------------------------------------<cr>
            \// Cover Property: c_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   @(clocking_event) disable iff (disable_expr)<cr>
            \(condition) \|=> (result);<cr>
            \<bs><bs><bs>endproperty<cr>
            \c_name: cover property(p_name(disable, posedge clk, in1, in2, in3, in4, in5);<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svcovif   //-----------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//-----------------------------------------------------------------------------<cr>
            \cg_vip_all_values_hit_if #(.SIG_SIZE ($bits(sig_name)))   cg_name();<cr>
            \   assign cg_name.cover_signal       = sig_name;<cr>
            \assign cg_name.enable_coverpoints = m_enable_coverpoints && reset_n;<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svcg      //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svcg2     //-----------------------------------------------------------------------------<cr>
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

inorea <buffer> _svcp      cp_sig_name: coverpoint sig_name<cr>
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

inorea <buffer> _svbins    bins C_00 = {2'b00};<cr>
            \bins C_01 = {2'b01};<cr>
            \bins C_10 = {2'b10};<cr>
            \bins C_11 = {2'b11};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svbins2   bins RISING  = (1'b0 => 1'b1);<cr>
            \bins FALLING = (1'b1 => 1'b0);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svbins3   bins MIN  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID1 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID2 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID3 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID4 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MAX  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svbins4   bins MIN = {0};                 // min value = 0<cr>
            \bins MAX = {(2**SIG_SIZE) - 1}; // max value = '{SIG_SIZE{1'b1}}.<cr>
            \bins Q_1 = {[ 1                 : (2**SIG_SIZE)*1/4 - 1 ]}; // first quadrant excluding 0.<cr>
            \bins Q_2 = {[(2**SIG_SIZE)*1/4  : (2**SIG_SIZE)*2/4 - 1 ]};<cr>
            \bins Q_3 = {[(2**SIG_SIZE)*2/4  : (2**SIG_SIZE)*3/4 - 1 ]};<cr>
            \bins Q_4 = {[(2**SIG_SIZE)*3/4  : (2**SIG_SIZE)*4/4 - 2 ]}; // fourth quadrant excluding the max value '{SIG_SIZE{1'b1}}.<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svbins5   bins ALL_VALUES[] = {[COVER_MIN:COVER_MAX]};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svwbins   wildcard bins ONE_BIT0  = { 4'b???1 };<cr>
            \wildcard bins ONE_BIT1  = { 4'b??1? };<cr>
            \wildcard bins ONE_BIT2  = { 4'b?1?? };<cr>
            \wildcard bins ONE_BIT3  = { 4'b1??? };<cr>
            \wildcard bins ZERO_BIT0 = { 4'b???0 };<cr>
            \wildcard bins ZERO_BIT1 = { 4'b??0? };<cr>
            \wildcard bins ZERO_BIT2 = { 4'b?0?? };<cr>
            \wildcard bins ZERO_BIT3 = { 4'b0??? };<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svwbins2  wildcard bins F110_ONE_BEFORE = ({5'b1?_011} => {5'b10_101} => {5'b10_011} => {5'b10_001} [*127] => {5'b10_010});<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svigbins  ignore_bins ignore_condition_0 = {2'b01} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svigbins2 ignore_bins ignore_cross_0 = binsof(sig1) intersect {val1}  && binsof(sig2) intersect {val2};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svigbins3 wildcard ignore_bins ignore_conditions_0 = {4'b11xx};<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svilbins  illegal_bins   ERR_LOW  = {1'b1} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svilbins2 illegal_bins   ERR_LOW  = {3'b11x} iff (condition);<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svtask    //-----------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \task task_name (input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svtask0   //-----------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \task task_name ();<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfunc    //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function void function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfunc0   //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function void function_name();<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfunci   //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function int function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfunci0  //-----------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//-----------------------------------------------------------------------------<cr>
            \function int function_name();<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svbegin   begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svif     if () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifel   if () begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifelif if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifelifel if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfor    for (int i=0; i<; i++) begin<cr>
            \   <cr>
            \end<up><up><esc>$bbbba<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svwhile  while () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svdo     do begin<cr>
            \   <cr>
            \end while ();<esc>$ba<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svcase   case ()<cr>
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
inorea <buffer> _svcase0  case ()<cr>
            \0: ;<cr>
            \ <bs>1: ;<cr>
            \default: ;<cr>
            \<bs><bs><bs>endcase<up><up><up><up><esc>$ba<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svinf       $display("Entering ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sventer     $display("Entering ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svexit      $display("Exiting ");<left><left><left><left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svinfo      $display("Message %0d : %0t", v, $time);<esc>11bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sverror     $error("ERROR Message %0d : %0t", v, $time)<esc>10bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuinf      `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuenter    `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuexit     `uvm_info(get_type_name(), $sformatf("Exiting "), UVM_LOW)<esc>2bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuinfo     `uvm_info(get_type_name(), $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuinfo2    `uvm_info("filename", $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuerror    `uvm_error(get_type_name(), $sformatf("ERROR Message %0d", v))<esc>5bi<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuerror2   `uvm_error("filename", $sformatf("ERROR Message %0d", v))<esc>5bi<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svforce     force `PATH_TO_SIG = force_val;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svuforce    void'(uvm_hdl_force(`STRING(`PATH_TO_SIG), uvm_hdl_data_t'(force_val)));<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svdforce    void'(dpi_signal_force(`STRING(`PATH_TO_SIG), force_val, 0));<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svdforce2   void'(dpi_signal_force({`STRING(`PATH_TO_SIG), $sformatf(".SIG_NAME[%0d]", a)}, force_val, 0));<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svrmem      $readmemh(file_in, var_out, start_addr, end_addr);<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svstrc     {string1, $sformatf("%0d", v), string2}

inorea <buffer> _svimport  import name_pkg::*;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svinc     `include "filename.ext"<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svdef     `define DEFINEVAR VARVAL<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svparam   parameter PARAMNAME = 1;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifdef   `ifdef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifndef  `ifndef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifdefel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifndefel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifdefelif `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifndefelif `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifdefelifel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svifndefelifel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svtype typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svstruct struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svenum   enum {<cr>
            \VAR0 = 0,<cr>
            \VAR1 = 1,<cr>
            \VAR2 = 2,<cr>
            \VAR3 = 3<cr>
            \} e_math_oper_type;<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svarray   int array_name[3:0] = '{0, 1, 2, 3};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svarray2  int array_name[2:0][3:0] = '{'{00, 01, 02, 03},<cr>
            \                         '{10, 11, 12, 13},<cr>
            \'{20, 21, 22, 23}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svarray3  int array_name[2:0][2:0][3:0] = '{'{'{000, 001, 002, 003},<cr>
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

inorea <buffer> _svalw  always @(posedge sys_clk) begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svalw2 always @(*) begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svalwc always_comb begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svinit   initial begin<cr>
            \   <cr>
            \end<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svgen generate<cr>
            \for (genvar i = 0; i < MAX; i++) begin : genvar_name<cr>
            \   <cr>
            \end<cr>
            \endgenerate<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svintf   `include "verification_defs.svh"<cr>
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
inorea <buffer> _svmod  `include "verification_defs.svh"<cr>
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

inorea <buffer> _svbind    bind `PRJ_DIG_TOP(0).rtl_block interface_name #(<cr>
            \<bs><bs><bs>.PARAM_1   (0),<cr>
            \.PARAM_2   (3)<cr>
            \<bs><bs><bs>) interface_name_0 (<cr>
            \.sys_clk                                     (`PRJ_DIG_TOP(0).sys_clk),<cr>
            \.sys_clk_reset_n                             (`PRJ_DIG_TOP(0).sys_clk_reset_n),<cr>
            \<cr>
            \.func_cov_if                                 (dut_shell.m_func_cov_if)<cr>
            \<bs><bs><bs>);<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svpkg     package dut_pkg;<cr>
            \   // coverage never<cr>
            \<cr>
            \   import other_pkg::*;<cr>
            \<cr>
            \`include "include.svh"<cr>
            \<cr>
            \<bs><bs><bs>endpackage : dut_pkg<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svfork    fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \end<cr>
            \<bs><bs><bs>join_none<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _svfork2   fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \   disable proc2;<cr>
            \<bs><bs><bs>end<cr>
            \begin : proc2<cr>
            \   <cr>
            \   disable proc1;<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>join_any<up><up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _svconst constraint c_name  {<cr>
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


"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                               Vim abbreviations
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
inorea <buffer> _vfunch    "------------------------------------------------------------------------------<cr>
            \" Function: <cr>
            \" Description: <cr>
            \"------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea <buffer> _vfunc   "------------------------------------------------------------------------------<cr>
            \" Function: v_fname<cr>
            \" Description:<cr>
            \"------------------------------------------------------------------------------<cr>
            \function! funcname()<cr>
            \   <cr>
            \<bs><bs><bs>endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vfunci  "------------------------------------------------------------------------------<cr>
            \" Function: v_fname<cr>
            \" Description:<cr>
            \"------------------------------------------------------------------------------<cr>
            \function! funcname(some_input)<cr>
            \   <cr>
            \<bs><bs><bs>endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _vif     if a == b<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vifel   if a == b<cr>
            \   <cr>
            \<bs><bs><bs>else<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vifelif if a == b<cr>
            \   <cr>
            \<bs><bs><bs>elseif c == d<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vifelifel if a == b<cr>
            \   <cr>
            \<bs><bs><bs>elseif c == d<cr>
            \   <cr>
            \<bs><bs><bs>else<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _vifexists  if exists("g:v")<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vifnexists if !exists("g:v")<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _via     inorea <buffer> replace_word   replace_with<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _vso    so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vau    au  BufNewFile,BufRead * so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _vaug " Description<cr>
            \augroup group_name<cr>
            \<cr>
            \   " If you want to clear a group, use "au!" inside the group<cr>
            \au!<cr>
            \<cr>
            \autocmd BufNewFile,BufRead * command_here<cr>
            \<cr>
            \<bs><bs><bs>augroup END<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------



"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"                              Bash abbreviations
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
" Bash uses 2 [[ ]], posix uses 1 [ ], bash is compatible with both but bash
" has additional functionality. For clarity best to keep $VAR in { }, but they
" both work.
inorea <buffer> _shif      if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shifel    if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shifelif  if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shifelifel if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shaddvar VAR1=${V}:add1:add2<left><right><c-r>=Eatchar('\s')<cr>


inorea <buffer> _shfunc    #------------------------------------------------------------------------------<cr>
            \# Function: function_name<cr>
            \#<cr>
            \#------------------------------------------------------------------------------<cr>
            \function_name() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shfunc2   #------------------------------------------------------------------------------<cr>
            \# Function: function_name<cr>
            \#<cr>
            \#------------------------------------------------------------------------------<cr>
            \function function_name {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shcase    case ${V} in<cr>
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

inorea <buffer> _shfor     for ((i = 0; i < ${V}; i++)); do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shfor2    for i in LIST; do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shwhile   while [[ ${V} <= a ]]; do<cr>
            \   <cr>
            \done<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shdo      while true; do<cr>
            \   if [[ a >= b ]]; then<cr>
            \   break<cr>
            \<bs><bs><bs>fi<cr>
            \<bs><bs><bs>done<up><up><up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shinfo   echo "message ${V}"<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sherror  echo -e "ERROR : message ${V}"<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shalias  alias aname='command'<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shalias2 alias aname='command1 \| command2 \| command3'<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shalias3 alias aname='command1; command2; command3'<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shalias4 alias vicmd='gvim ~/file1 -c '\''vsp ~/file2 \| vsp ~/file3 \| topleft split ~/file4 \| vsp ~/file5 \| set titlestring=TITLE \| winpos 0 0 \| wincmd b \| wincmd _ \| wincmd \|'\'''<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _shvar    VAR1=1<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shvar2   VARS="%Y-%m-%d %T "<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _shvar3   VARD=/home/$USER/Desktop/<left><right><c-r>=Eatchar('\s')<cr>


" Posix
inorea <buffer> _posif     if [ ${V} == a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _posif2    if [ ${V} -eq a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _posif3    if [ "${V}" = "string" ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _posifel   if [ ${V} == a ]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _posifelif if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _posifelifel if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------


