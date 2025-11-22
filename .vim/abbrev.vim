"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
"------------------------------------------------  Abbreviations  --------------------------------------------
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------


" :helpgrep Eatchar
"-------------------------------------------------------------------------------------------------------------
" to consume the space typed after an abbreviation:
" add   <c-r>=Eatchar('\s')<cr>   at end of abbreviation
if !exists("g:eatcharloaded")
   let g:eatcharloaded=1
   func Eatchar(pat)
      let c = nr2char(getchar(0))
      return (c =~ a:pat) ? '' : c
   endfunc
endif
"-------------------------------------------------------------------------------------------------------------


" NOTE: To make sure a Vim abbreviation does not trigger existing mappings, use the noreabbrev (inorea) command instead of the abbrev (ia) command.

"-------------------------------------------------------------------------------------------------------------
"                                              generic abbreviations
"-------------------------------------------------------------------------------------------------------------

" can you call an abbreviation from another?
" YES!!!! works!! the extra "a" is to enter insert mode
inorea iatest    <esc>:normal  asvhead<cr>


" svbegin?
inorea beginend  begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>


inorea bparen    {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea sparen    [<cr>
            \    <bs><cr>
            \<bs><bs><bs>]<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea tparen    <<cr>
            \    <bs><cr>
            \<bs><bs><bs>><up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea cparen    (<cr>
            \    <bs><cr>
            \<bs><bs><bs>)<up><esc>$a<c-r>=Eatchar('\s')<cr>



" go inside parenthesis
inorea () ()<esc>i<c-r>=Eatchar('\s')<cr>
inorea [] []<esc>i<c-r>=Eatchar('\s')<cr>
inorea {} {}<esc>i<c-r>=Eatchar('\s')<cr>
inorea <> <><esc>i<c-r>=Eatchar('\s')<cr>

" ① ② ③ ④ ⒈ ⒉ ⒊ ➀ ➁ ➂  🄐 🅐 ♳♴♷   🄰 🅰
inorea _l1          (1)
inorea _l2          (2)
inorea _l3          (3)
inorea _l4          (4)
inorea _l5          (5)
inorea _l6          (6)
inorea _l7          (7)
inorea _l8          (8)
inorea _l9          (9)

inorea _lA          (A)
inorea _lB          (B)
inorea _lC          (C)
inorea _lD          (D)
inorea _lE          (E)
inorea _lF          (F)
inorea _lG          (G)
inorea _lH          (H)
inorea _lI          (I)

"inorea __1         ===============================<c-r>=Eatchar('\s')<cr>
"inorea __2         -------------------------------<c-r>=Eatchar('\s')<cr>
"inorea __3         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<c-r>=Eatchar('\s')<cr>
"inorea __4         ―――――――――――――――――――――――――――――――<c-r>=Eatchar('\s')<cr>
"inorea __5         –––––––––––––––––––––––––––––––<c-r>=Eatchar('\s')<cr>
"inorea __6         ‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒‒<c-r>=Eatchar('\s')<cr>
"inorea __7         ———————————————————————————————<c-r>=Eatchar('\s')<cr>
"inorea __8         ‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐‐<c-r>=Eatchar('\s')<cr>
"inorea __9         ‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑‑<c-r>=Eatchar('\s')<cr>

inorea _c0 //------------------<c-r>=Eatchar('\s')<cr>
inorea _c1 //------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _c2 //------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _c3 //------------------------------------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>

inorea _v0 "-------------------<c-r>=Eatchar('\s')<cr>
inorea _v1 "-------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _v2 "-------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _v3 "-------------------------------------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>

inorea __0 --------------------<c-r>=Eatchar('\s')<cr>
inorea __1 --------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea __2 --------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea __3 --------------------------------------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>


"-----------------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
"                                                c abbreviations
"-------------------------------------------------------------------------------------------------------------

inorea chead  //------------------------------------------------------------------------------<cr>
            \// File       :<cr>
            \//------------------------------------------------------------------------------<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<esc>o<c-r>=Eatchar('\s')<cr>

inorea cfunc0    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \void function_name(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea cfuncvv    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \void function_name(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea cfunc     //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \void function_name(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea cfuncv    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \void function_name(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea cfunci0   //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \int function_name(void) {<cr>
            \ <bs><cr>
            \return function_name;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea cfunci    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \int function_name(int a, int b) {<cr>
            \ <bs><cr>
            \return function_name;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

" We can write the main function in many ways in C language:
"    int main(){}    int main(void){}
"    main(){}    void main(){}    main(void){}    void main(void){}
" Main can also take command line arguments
"    main(int argc, char *argv[]) {}
" The main function in C and C++ is declared with an int return type because it is expected to return an integer value to the operating system
" By convention, a return value of 0 from main indicates that the program executed successfully without any errors.
" The C and C++ standards explicitly define main as returning an int. While some compilers might allow void main(), it is not standard-compliant and can lead to portability issues or undefined behavior.
inorea cmain    //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(void) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea cmainarg //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(int argc, char *argv[]) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<c-r>=Eatchar('\s')<cr>


" function declaration
inorea cfdec0   void function_name(void);<c-r>=Eatchar('\s')<cr>
inorea cfdec    void function_name(int a, int b);<c-r>=Eatchar('\s')<cr>
inorea cfdeci0  int function_name(void);<c-r>=Eatchar('\s')<cr>
inorea cfdeci   int function_name(int a, int b);<c-r>=Eatchar('\s')<cr>

inorea cincl    #include <stdio.h><c-r>=Eatchar('\s')<cr>
inorea cdefi    #define DEFINEVAR VARVAL<c-r>=Eatchar('\s')<cr>

inorea ctype typedef struct struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<c-r>=Eatchar('\s')<cr>
inorea ctype2 typedef struct struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} struct_var;<c-r>=Eatchar('\s')<cr>
inorea ctype3 typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} struct_var;<c-r>=Eatchar('\s')<cr>
inorea cstruct  struct struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<c-r>=Eatchar('\s')<cr>
inorea cstruct2  struct struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} struct_var;<c-r>=Eatchar('\s')<cr>
inorea cstruct3  struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} struct_var;<c-r>=Eatchar('\s')<cr>
inorea cunion  union union_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<c-r>=Eatchar('\s')<cr>
inorea cunion2  union union_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} union_var;<c-r>=Eatchar('\s')<cr>
inorea cunion3  union {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} union_var;<c-r>=Eatchar('\s')<cr>

inorea cifdef #ifdef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea cifndef  #ifndef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea carray   int array_name[] = {0, 1, 2, 3};<c-r>=Eatchar('\s')<cr>
inorea carray2  int array_name[][] = {{00, 01, 02, 03},<cr>
            \                   {10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>};<c-r>=Eatchar('\s')<cr>
inorea carray3   int array_name[][][] = {{{00, 01, 02, 03},<cr>
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
            \<bs>};<c-r>=Eatchar('\s')<cr>

inorea cinf     printf("\n");<esc>bb<left>i<c-r>=Eatchar('\s')<cr>
inorea cinfo    printf(" = %d\n", );<esc>bbbbbbb<left>i<c-r>=Eatchar('\s')<cr>
inorea cprintf  printf(" = %d\n", );<esc>bbbbbbb<left>i<c-r>=Eatchar('\s')<cr>
inorea center   printf("Entering \n");<esc>bbbi<c-r>=Eatchar('\s')<cr>
inorea cexit    printf("Exiting \n");<esc>bbbi<c-r>=Eatchar('\s')<cr>
inorea cerro    printf("ERROR: \n");<esc>bbbi<c-r>=Eatchar('\s')<cr>
inorea cerror   printf("ERROR: = %d\n", );<esc>bbbbbbb<left>i<c-r>=Eatchar('\s')<cr>
inorea cerr     fprintf(stderr, "ERROR: \n");<cr>
            \exit(1);<esc>k$bbbi<c-r>=Eatchar('\s')<cr>
inorea cerr2    fprintf(stderr, "ERROR: %s\n", msg);<cr>
            \exit(1);<esc>k$bb<c-r>=Eatchar('\s')<cr>
inorea cstderr  fprintf(stderr, "ERROR: %s\n", strerror(errno));<esc>bbbbbbbbbi<c-r>=Eatchar('\s')<cr>
inorea cfperr   if (fp == NULL) {<cr>
            \fprintf(stderr, "File error: %s\n", strerror(errno));<cr>
            \exit(EXIT_FAILURE);<cr>
            \<bs><bs><bs>}<c-r>=Eatchar('\s')<cr>

inorea cif      if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>
inorea cifel    if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>
inorea cifelif  if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>
inorea cifelifel if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>
inorea cfor     for (int i=0; i<; i++) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left><left><left><left><left><left>a<c-r>=Eatchar('\s')<cr>
inorea cwhile   while () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>

inorea cdo do {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} while ();<esc>$<left><left>a<c-r>=Eatchar('\s')<cr>
inorea ccase    switch () {<cr>
            \case 0:<cr>
            \break;<cr>
            \<bs><bs><bs>case 1:<cr>
            \break;<cr>
            \<bs><bs><bs>default:<cr>
            \break;<cr>
            \<bs><bs><bs><bs><bs><bs>}<up><up><up><up><up><up><up><esc>$<left><left><left>a<c-r>=Eatchar('\s')<cr>

" NOTE: in c, free() is allowed to be called with a NULL pointer
            " if (p_ptr == NULL) {
            " \fprintf(stderr, "ERROR: NULL Pointer before free!!!\n");
            " \ exit(1);
            " \}<cr>
inorea cfree free(p_ptr);<cr>
            \p_ptr = NULL;<esc>kkbbi<c-r>=Eatchar('\s')<cr>
inorea cmalloc p_ptr = malloc(num * sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<esc>k_<c-r>=Eatchar('\s')<cr>
inorea cmalloc2 p_c_ptr = malloc(num * sizeof(*p_c_ptr));<cr>
            \if (p_c_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_c_ptr[num-1] = '\0';<esc>kk_<c-r>=Eatchar('\s')<cr>
inorea cmall    <esc>:normal  acmalloc<cr>jo <bs><esc>:normal acfree<cr>kk_<c-r>=Eatchar('\s')<cr>
inorea ccalloc p_ptr = calloc(num, sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after calloc!!!\n");
            \ exit(1);
            \}<esc>k_<c-r>=Eatchar('\s')<cr>
" NOTE: in realloc p_cp_from can be NULL
" NOTE: if successful realloc will free p_cp_from and set to NULL
" if p_cp_from is null, what is sizeof(*p_cp_from)?
"    sizeof on a dereferenced null pointer, such as sizeof(*ptr) where ptr is a null pointer, does not result in a runtime error or undefined behavior. This is because the sizeof operator is a compile-time operator and does not actually evaluate its operand at runtime.
" If realloc fails, the following occurs:
"    Return Value: realloc returns a NULL pointer. This is the primary indicator of failure.
"    Original Memory Block: The original memory block pointed to by the first argument to realloc remains untouched and valid. It is neither freed nor modified.
inorea crealloc p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = NULL;<esc>kk_<c-r>=Eatchar('\s')<cr>
inorea crealloc2 p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = p_cp_to;<cr>
            \p_cp_to = NULL;<esc>kkk_<c-r>=Eatchar('\s')<cr>
"-------------------------------------------------------------------------------------------------------------



"-------------------------------------------------------------------------------------------------------------
"                                          system verilog abbreviations
"-------------------------------------------------------------------------------------------------------------
inorea svhead  //------------------------------------------------------------------------------<cr>
            \// Title      :<cr>
            \// Project    :<cr>
            \//------------------------------------------------------------------------------<cr>
            \// File       :<cr>
            \// Author     :<cr>
            \// Company    :<cr>
            \// Platform   :<cr>
            \//------------------------------------------------------------------------------<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>


inorea svadesc   //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion:<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svsva     //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \a_name : assert property (@(posedge clk) disable iff(reset_n == 0 \|\| !enable_assertions)<cr>
            \         \|=><cr>
            \) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svprop    //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   logic [7:0] expected_data; // local variable to sample model data<cr>
            \@(clocking_event) disable iff (disable_expr)<cr>
            \(condition, expected_data=value) \|=> (result == expected_data);<cr>
            \<bs><bs><bs>endproperty<cr>
            \a_name: assert property (p_name()) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svseq     //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \sequence s_name (disable_expr, clocking_event, x, y, min, max, delay1);<cr>
            \   @(clocking_event)<cr>
            \x ##delay1 y[*min:max];<cr>
            \<bs><bs><bs>endsequence<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   @(clocking_event) disable iff (disable_expr)<cr>
            \s_name(disable, posedge clk, in1, in2, in3, in4, in5) \|=> (result);<cr>
            \<bs><bs><bs>endproperty<cr>
            \a_name: assert property (p_name(disable, posedge clk, in1, in2)) else `VIP_ASSERTION_ERROR_FULL("a_name")<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svaf    //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \always_comb begin<cr>
            \   if (enable_assertions) begin<cr>
            \   a_name : assert final (<cr>
            \<bs><bs><bs>enable_assertions &&<cr>
            \val1 === val2<cr>
            \<bs><bs><bs>) else assert_error("a_name", 1);<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>end<up><up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svafn   //------------------------------------------------------------------------------<cr>
            \// immediate assertion error messages are not limited by questa<cr>
            \//------------------------------------------------------------------------------<cr>
            \byte immediate_sva_cnt_limit [10:0];<cr>
            \function void assert_error(string assertion_name, int id);<cr>
            \   if (immediate_sva_cnt_limit[id] < 10) begin<cr>
            \   -> `ASSERTION_ERROR;<cr>
            \immediate_sva_cnt_limit[id] ++;<cr>
            \$error ("ASSERTION ERROR: %s : %0t", assertion_name, $time);<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>endfunction<c-r>=Eatchar('\s')<cr>

inorea svaif   //--------------------------------------------------------------------------------------------------------------<cr>
            \// Assertion: a_name<cr>
            \// Specification:<cr>
            \// Version:<cr>
            \// Section:<cr>
            \// Description:<cr>
            \// Condition:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \sva_vip_async_signal_compare_if #(.SIG_SIZE ($bits()))  a_name();<cr>
            \   assign a_name.disable_expr  = ();<cr>
            \assign a_name.sig0          = ();<cr>
            \assign a_name.sig1          = ();<c-r>=Eatchar('\s')<cr>

inorea svcprop   //--------------------------------------------------------------------------------------------------------------<cr>
            \// Cover Property: c_name<cr>
            \// Description:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \property p_name(disable_expr, clocking_event, in1, in2);<cr>
            \   @(clocking_event) disable iff (disable_expr)<cr>
            \(condition) \|=> (result);<cr>
            \<bs><bs><bs>endproperty<cr>
            \c_name: cover property(p_name(disable, posedge clk, in1, in2, in3, in4, in5);<c-r>=Eatchar('\s')<cr>

inorea svcovif   //--------------------------------------------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
            \cg_vip_all_values_hit_if #(.SIG_SIZE ($bits(sig_name)))   cg_name();<cr>
            \   assign cg_name.cover_signal       = sig_name;<cr>
            \assign cg_name.enable_coverpoints = m_enable_coverpoints && reset_n;<c-r>=Eatchar('\s')<cr>

inorea svcg      //--------------------------------------------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
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
            \cg_name m_cg_name = new;<c-r>=Eatchar('\s')<cr>

inorea svcg2     //--------------------------------------------------------------------------------------------------------------<cr>
            \// Cover Property: cg_name<cr>
            \// Description:<cr>
            \//--------------------------------------------------------------------------------------------------------------<cr>
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
            \<bs><bs><bs>end<c-r>=Eatchar('\s')<cr>

inorea svcp      cp_sig_name: coverpoint sig_name<cr>
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
            \}<c-r>=Eatchar('\s')<cr>

inorea svbins    bins C_00 = {2'b00};<cr>
            \bins C_01 = {2'b01};<cr>
            \bins C_10 = {2'b10};<cr>
            \bins C_11 = {2'b11};<c-r>=Eatchar('\s')<cr>
inorea svbins2   bins RISING  = (1'b0 => 1'b1);<cr>
            \bins FALLING = (1'b1 => 1'b0);<c-r>=Eatchar('\s')<cr>
inorea svbins3   bins MIN  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID1 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID2 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID3 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MID4 = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<cr>
            \bins MAX  = { [0:{SIG_WIDTH{1'b1}}] } iff (condition);<c-r>=Eatchar('\s')<cr>
inorea svbins4   bins MIN = {0};                 // min value = 0<cr>
            \bins MAX = {(2**SIG_SIZE) - 1}; // max value = '{SIG_SIZE{1'b1}}.<cr>
            \bins Q_1 = {[ 1                 : (2**SIG_SIZE)*1/4 - 1 ]}; // first quadrant excluding 0.<cr>
            \bins Q_2 = {[(2**SIG_SIZE)*1/4  : (2**SIG_SIZE)*2/4 - 1 ]};<cr>
            \bins Q_3 = {[(2**SIG_SIZE)*2/4  : (2**SIG_SIZE)*3/4 - 1 ]};<cr>
            \bins Q_4 = {[(2**SIG_SIZE)*3/4  : (2**SIG_SIZE)*4/4 - 2 ]}; // fourth quadrant excluding the max value '{SIG_SIZE{1'b1}}.<c-r>=Eatchar('\s')<cr>
inorea svbins5   bins ALL_VALUES[] = {[COVER_MIN:COVER_MAX]};<c-r>=Eatchar('\s')<cr>
inorea svwbins   wildcard bins ONE_BIT0  = { 4'b???1 };<cr>
            \wildcard bins ONE_BIT1  = { 4'b??1? };<cr>
            \wildcard bins ONE_BIT2  = { 4'b?1?? };<cr>
            \wildcard bins ONE_BIT3  = { 4'b1??? };<cr>
            \wildcard bins ZERO_BIT0 = { 4'b???0 };<cr>
            \wildcard bins ZERO_BIT1 = { 4'b??0? };<cr>
            \wildcard bins ZERO_BIT2 = { 4'b?0?? };<cr>
            \wildcard bins ZERO_BIT3 = { 4'b0??? };<c-r>=Eatchar('\s')<cr>
inorea svwbins2  wildcard bins F110_ONE_BEFORE = ({5'b1?_011} => {5'b10_101} => {5'b10_011} => {5'b10_001} [*127] => {5'b10_010});<c-r>=Eatchar('\s')<cr>

inorea svigbins  ignore_bins ignore_condition_0 = {2'b01} iff (condition);<c-r>=Eatchar('\s')<cr>
inorea svigbins2 ignore_bins ignore_cross_0 = binsof(sig1) intersect {val1}  && binsof(sig2) intersect {val2};<c-r>=Eatchar('\s')<cr>
inorea svigbins3 wildcard ignore_bins ignore_conditions_0 = {4'b11xx};<c-r>=Eatchar('\s')<cr>

inorea svilbins  illegal_bins   ERR_LOW  = {1'b1} iff (condition);<c-r>=Eatchar('\s')<cr>
inorea svilbins2 illegal_bins   ERR_LOW  = {3'b11x} iff (condition);<c-r>=Eatchar('\s')<cr>

inorea svtask    //------------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \task task_name (input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svtask0   //------------------------------------------------------------------------------<cr>
            \// Task: task_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \task task_name ();<cr>
            \   .<cr>
            \<bs><bs><bs>endtask : task_name<up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svfunc    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function void function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svfunc0   //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function void function_name();<cr>
            \   .<cr>
            \<bs><bs><bs>endfunction : function_name<up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svfunci   //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function int function_name(input int in1 = , input int in2 = , input int in3 = );<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svfunci0  //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function int function_name();<cr>
            \   .<cr>
            \return function_name;<cr>
            \<bs><bs><bs>endfunction : function_name<up><up><esc>$a<bs><c-r>=Eatchar('\s')<cr>

inorea svbegin   begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svif     if () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<c-r>=Eatchar('\s')<cr>
inorea svifel   if () begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<c-r>=Eatchar('\s')<cr>
inorea svifelif if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end<up><up><up><up><esc>$bba<c-r>=Eatchar('\s')<cr>
inorea svifelifel if () begin<cr>
            \   <cr>
            \end else if() begin<cr>
            \   <cr>
            \end else begin<cr>
            \   <cr>
            \end<up><up><up><up><up><up><esc>$bba<c-r>=Eatchar('\s')<cr>

inorea svfor    for (int i=0; i<; i++) begin<cr>
            \   <cr>
            \end<up><up><esc>$bbbba<c-r>=Eatchar('\s')<cr>
inorea svwhile  while () begin<cr>
            \   <cr>
            \end<up><up><esc>$bba<c-r>=Eatchar('\s')<cr>
inorea svdo     do begin<cr>
            \   <cr>
            \end while ();<esc>$ba<c-r>=Eatchar('\s')<cr>

inorea svcase   case ()<cr>
            \0: begin<cr>
            \   <cr>
            \end<cr>
            \1: begin<cr>
            \   <cr>
            \end<cr>
            \default: begin<cr>
            \   <cr>
            \end<cr>
            \<bs><bs><bs>endcase<up><up><up><up><up><up><up><up><up><up><esc>$ba<c-r>=Eatchar('\s')<cr>
inorea svcase0  case ()<cr>
            \0: ;<cr>
            \ <bs>1: ;<cr>
            \default: ;<cr>
            \<bs><bs><bs>endcase<up><up><up><up><esc>$ba<c-r>=Eatchar('\s')<cr>

inorea svinf       $display("Entering ");<left><left><left><c-r>=Eatchar('\s')<cr>
inorea sventer     $display("Entering ");<left><left><left><c-r>=Eatchar('\s')<cr>
inorea svexit      $display("Exiting ");<left><left><left><c-r>=Eatchar('\s')<cr>
inorea svinfo      $display("Message %0d : %0t", v, $time);<esc>11bi<c-r>=Eatchar('\s')<cr>
inorea sverror     $error("ERROR Message %0d : %0t", v, $time)<esc>10bi<c-r>=Eatchar('\s')<cr>
inorea svuinf      `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<c-r>=Eatchar('\s')<cr>
inorea svuenter    `uvm_info(get_type_name(), $sformatf("Entering "), UVM_LOW)<esc>2bi<c-r>=Eatchar('\s')<cr>
inorea svuexit     `uvm_info(get_type_name(), $sformatf("Exiting "), UVM_LOW)<esc>2bi<c-r>=Eatchar('\s')<cr>
inorea svuinfo     `uvm_info(get_type_name(), $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<c-r>=Eatchar('\s')<cr>
inorea svuinfo2    `uvm_info("filename", $sformatf("Message %0d", v), UVM_LOW)<esc>6bi<c-r>=Eatchar('\s')<cr>
inorea svuerror    `uvm_error(get_type_name(), $sformatf("ERROR Message %0d", v))<esc>5bi<c-r>=Eatchar('\s')<cr>
inorea svuerror2   `uvm_error("filename", $sformatf("ERROR Message %0d", v))<esc>5bi<c-r>=Eatchar('\s')<cr>

inorea svforce     force `PATH_TO_SIG = force_val;<c-r>=Eatchar('\s')<cr>
inorea svuforce    void'(uvm_hdl_force(`STRING(`PATH_TO_SIG), uvm_hdl_data_t'(force_val)));<c-r>=Eatchar('\s')<cr>
inorea svdforce    void'(dpi_signal_force(`STRING(`PATH_TO_SIG), force_val, 0));<c-r>=Eatchar('\s')<cr>
inorea svdforce2   void'(dpi_signal_force({`STRING(`PATH_TO_SIG), $sformatf(".SIG_NAME[%0d]", a)}, force_val, 0));<c-r>=Eatchar('\s')<cr>

inorea svrmem      $readmemh(file_in, var_out, start_addr, end_addr);<c-r>=Eatchar('\s')<cr>

inorea svstrc     {string1, $sformatf("%0d", v), string2}

inorea svimport  import name_pkg::*;<c-r>=Eatchar('\s')<cr>
inorea svinc     `include "filename.ext"<c-r>=Eatchar('\s')<cr>
inorea svdef     `define DEFINEVAR VARVAL<c-r>=Eatchar('\s')<cr>
inorea svparam   parameter PARAMNAME = 1;<c-r>=Eatchar('\s')<cr>
inorea svifdef   `ifdef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifndef  `ifndef DEFINEVAR<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifdefel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifndefel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifdefelif `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifndefelif `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifdefelifel `ifdef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svifndefelifel `ifndef DEFINEVAR<cr>
            \   <cr>
            \`elsif DEFINEVAR2<cr>
            \   <cr>
            \`else<cr>
            \   <cr>
            \`endif<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svtype typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<c-r>=Eatchar('\s')<cr>
inorea svstruct struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} t_struct_name;<c-r>=Eatchar('\s')<cr>
inorea svenum   enum {<cr>
            \VAR0 = 0,<cr>
            \VAR1 = 1,<cr>
            \VAR2 = 2,<cr>
            \VAR3 = 3<cr>
            \} e_math_oper_type;<c-r>=Eatchar('\s')<cr>

inorea svarray   int array_name[3:0] = '{0, 1, 2, 3};<c-r>=Eatchar('\s')<cr>
inorea svarray2  int array_name[2:0][3:0] = '{'{00, 01, 02, 03},<cr>
            \                         '{10, 11, 12, 13},<cr>
            \'{20, 21, 22, 23}<cr>
            \<bs>};<c-r>=Eatchar('\s')<cr>
inorea svarray3  int array_name[2:0][2:0][3:0] = '{'{'{000, 001, 002, 003},<cr>
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
            \                                 };<c-r>=Eatchar('\s')<cr>

inorea svalw  always @(posedge sys_clk) begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svalw2 always @(*) begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svalwc always_comb begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svinit   initial begin<cr>
            \   <cr>
            \end<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svgen generate<cr>
            \for (genvar i = 0; i < MAX; i++) begin : genvar_name<cr>
            \   <cr>
            \end<cr>
            \endgenerate<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svintf   `include "verification_defs.svh"<cr>
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
            \endinterface<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svmod  `include "verification_defs.svh"<cr>
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
            \endmodule<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svbind    bind `PRJ_DIG_TOP(0).rtl_block interface_name #(<cr>
            \<bs><bs><bs>.PARAM_1   (0),<cr>
            \.PARAM_2   (3)<cr>
            \<bs><bs><bs>) interface_name_0 (<cr>
            \.sys_clk                                     (`PRJ_DIG_TOP(0).sys_clk),<cr>
            \.sys_clk_reset_n                             (`PRJ_DIG_TOP(0).sys_clk_reset_n),<cr>
            \<cr>
            \.func_cov_if                                 (dut_shell.m_func_cov_if)<cr>
            \<bs><bs><bs>);<up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svpkg     package dut_pkg;<cr>
            \   // coverage never<cr>
            \<cr>
            \   import other_pkg::*;<cr>
            \<cr>
            \`include "include.svh"<cr>
            \<cr>
            \<bs><bs><bs>endpackage : dut_pkg<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svfork    fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \end<cr>
            \<bs><bs><bs>join_none<up><up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea svfork2   fork<cr>
            \   begin : proc1<cr>
            \   <cr>
            \   disable proc2;<cr>
            \<bs><bs><bs>end<cr>
            \begin : proc2<cr>
            \   <cr>
            \   disable proc1;<cr>
            \<bs><bs><bs>end<cr>
            \<bs><bs><bs>join_any<up><up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea svconst constraint c_name  {<cr>
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
            \}<c-r>=Eatchar('\s')<cr>
"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
"                                              vim abbreviations
"-------------------------------------------------------------------------------------------------------------
inorea vimfunc   " some description<cr>
            \function! funcname(some_input)<cr>
            \    <bs><cr>
\endfunction<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea vimfunc0  " some description<cr>
            \function! funcname()<cr>
            \    <bs><cr>
            \endfunction<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea vimif     if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea vimifel   if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea vimifelif if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea vimifelifel if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea vimifexists  if exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea vimifnexists if !exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea vimmatch  syn match   OrangeColor      ""<c-r>=Eatchar('\s')<cr>
inorea vimregion syn region  OrangeColor start="x" end="y" contains=@NoSpell<c-r>=Eatchar('\s')<cr>
inorea vimkey    syn keyword OrangeColor           word1 word2<c-r>=Eatchar('\s')<cr>
inorea vimhilink hi  link     LinkName OrangeColor<c-r>=Eatchar('\s')<cr>
inorea vimhi     hi default OrangeColor                                   guifg=#ff7700<c-r>=Eatchar('\s')<cr>
inorea vimhib    hi default OrangeColorb             gui=bold             guifg=#ff7700<c-r>=Eatchar('\s')<cr>
inorea vimia     inorea replace_word   replace_with<c-r>=Eatchar('\s')<cr>


inorea vimso    so $HOME/.vim/filename.vim<c-r>=Eatchar('\s')<cr>
inorea vimauso  au  BufNewFile,BufRead * so $HOME/.vim/filename.vim<c-r>=Eatchar('\s')<cr>
inorea vimaulet au  BufNewFile,BufRead * let b:v = 'val'<c-r>=Eatchar('\s')<cr>

inorea vimaug " description<cr>
            \augroup group_name<cr>
            \    <bs><cr>
            \   " If you want to clear a group, use autocmd!/au! inside the group<cr>
            \au!<cr>
            \ <bs><cr>
            \autocmd BufNewFile,BufRead * command_here<cr>
            \ <bs><cr>
            \<bs><bs><bs>augroup END<up><up><esc>$a<c-r>=Eatchar('\s')<cr>
"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
"                                              bash abbreviations
"-------------------------------------------------------------------------------------------------------------
" bash uses 2 [[ ]], posix uses 1 [ ], bash is compatible with both but bash has additional functionality
" for clarity best to keep $VAR in { }, but they both work.
inorea shif      if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shifel    if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shifelif  if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shifelifel if [[ ${V} == a ]]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shaddvar VAR1=${V}:add1:add2<c-r>=Eatchar('\s')<cr>


"posix
inorea posif     if [ ${V} == a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea posif2    if [ ${V} -eq a ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea posif3    if [ "${V}" = "string" ]; then<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea posifel   if [ ${V} == a ]; then<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea posifelif if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea posifelifel if [ ${V} == a ]; then<cr>
            \   <cr>
            \elif<cr>
            \   <cr>
            \else<cr>
            \   <cr>
            \fi<up><esc>$a<c-r>=Eatchar('\s')<cr>


inorea shfunc    //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function_name() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea shfunc2   //------------------------------------------------------------------------------<cr>
            \// Function: function_name<cr>
            \//<cr>
            \//------------------------------------------------------------------------------<cr>
            \function function_name {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shcase    case ${V} in<cr>
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
            \esac<c-r>=Eatchar('\s')<cr>

inorea shfor     for ((i = 0; i < ${V}; i++)); do<cr>
            \   <cr>
            \done<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea shfor2    for i in LIST; do<cr>
            \   <cr>
            \done<up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shwhile   while [[ ${V} <= a ]]; do<cr>
            \   <cr>
            \done<up><esc>$a<c-r>=Eatchar('\s')<cr>
inorea shdo      while true; do<cr>
            \   if [[ a >= b ]]; then<cr>
            \   break<cr>
            \<bs><bs><bs>fi<cr>
            \<bs><bs><bs>done<up><up><up><up><esc>$a<c-r>=Eatchar('\s')<cr>

inorea shinfo   echo "message ${V}"<c-r>=Eatchar('\s')<cr>
inorea sherror  echo -e "ERROR : message ${V}"<c-r>=Eatchar('\s')<cr>

inorea shalias  alias aname='command'<c-r>=Eatchar('\s')<cr>
inorea shalias2 alias aname='command1 \| command2 \| command3'<c-r>=Eatchar('\s')<cr>
inorea shalias3 alias aname='command1; command2; command3'<c-r>=Eatchar('\s')<cr>
inorea shalias4 alias vicmd='gvim ~/file1 -c '\''vsp ~/file2 \| vsp ~/file3 \| topleft split ~/file4 \| vsp ~/file5 \| set titlestring=TITLE \| winpos 0 0 \| wincmd b \| wincmd _ \| wincmd \|'\'''<c-r>=Eatchar('\s')<cr>

inorea shvar    VAR1=1<c-r>=Eatchar('\s')<cr>
inorea shvar2   VARS="%Y-%m-%d %T "<c-r>=Eatchar('\s')<cr>
inorea shvar3   VARD=/home/$USER/Desktop/<c-r>=Eatchar('\s')<cr>


"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
