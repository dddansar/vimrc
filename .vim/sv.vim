" iskeyword is an option that defines which characters are considered part of a word
" setlocal iskeyword=@,48-57,_,192-255,+,-,? " NOTE: DO NOT set or will consider word++ one word!!!

" A bunch of useful Verilog keywords
syn keyword YellowColorb      disable assign deassign force release
syn keyword YellowColorb      parameter localparam function endfunction
syn keyword YellowColorb      always initial module endmodule
syn keyword YellowColorb      task endtask
syn keyword YellowColorb      input output inout
syn keyword YellowColorb      posedge negedge wait
syn keyword YellowColorb      buf pullup pull0 pull1 pulldown
syn keyword FluoGreenColorb   tri0 tri1 tri trireg reg wire tranif0 tranif1 triand trior
syn keyword FluoGreenColorb   weak0 weak1 wand wor triand trior supply0 supply supply1
syn keyword YellowColorb      defparam untyped signed unsigned
syn keyword GreenColorb       or and not xor xnor

syn keyword OrangeColorb      strong weak triggered matched sequence_method constraint with automatic
syn keyword OrangeColorb      accept_on reject_on sync_accept_on sync_reject_on
syn keyword YellowColorb      nexttime s_nexttime s_always s_eventually eventually
syn keyword YellowColorb      until s_until until_with s_until_with implies

syn keyword GreenColorb       find find_index find_first find_last find_last_index
syn keyword GreenColorb       find_first_index min max unique unique_index
syn keyword GreenColorb       sum product sample
syn keyword GreenColorb       first last next prev num name
syn keyword GreenColorb       len putc getc toupper tolower compare icompare substr atoi
syn keyword GreenColorb       atohex atooct atobin atoreal itoa hextoa octtoa bintoa realtoa

syn keyword GreenColorb       weight goal comment at_least auto_bin_max cross_num_print_missing
syn keyword GreenColorb       detect_overlap option type_option per_instance strobe
syn keyword GreenColorb       merge_instances get_inst_coverage

" System Verilog extensions
syn keyword FluoGreenColorb   integer real int longint shortint bins binsof bit byte
syn keyword FluoGreenColorb   logic modport shortreal string void
syn keyword FluoGreenColorb   time realtime event chandle

syn keyword YellowColorb      alias always_ff always_comb always_latch assert assume restrict
syn keyword YellowColorb      before bind break clocking const
syn keyword YellowColorb      contraint context continue cover covergroup coverpoint
syn keyword YellowColorb      cross dist do endclocking endgroup
syn keyword YellowColorb      package program endpackage endprogram checker endchecker
syn keyword YellowColorb      expect export extends extern final
syn keyword YellowColorb      first_match foreach  ignore_bins illegal_bins
syn keyword YellowColorb      import inside intersect
syn keyword YellowColorb      local matches new null  packed priority program
syn keyword YellowColorb      protected pure rand randc randcase
syn keyword YellowColorb      randsequence ref return  solve static super
syn keyword YellowColorb      tagged this throughout timeprecision timeunit type
syn keyword YellowColorb      var virtual wait_order wildcard within

syn keyword YellowColorb      generate genvar endgenerate
syn keyword YellowColorb      CGwParameter

syn keyword OrangeColorb      signal_force signal_release uvm_hdl_force uvm_report_info

syn keyword GreenColorb       property endproperty sequence endsequence

syn keyword DarkGreen2Colorb  begin end fork join forkjoin join_any join_none
syn keyword DarkGreen2Colorb  if else case casex casez default endcase iff
syn keyword DarkGreen2Colorb  forever repeat while for
syn keyword LightBrownColorb  struct union enum class endclass interface endinterface
syn keyword FluoGreenColorb   type typedef

syn keyword BlueColorb        dut_shell m_tx_env m_rx_env

syn keyword VioletColorb      expression_or_dist
syn keyword PinkColorb        sequence_expr
syn keyword PurpleColorb      property_expr

syn match   GreenColorb       "`ifdef"
syn match   GreenColorb       "`ifndef"
syn match   GreenColorb       "`else"
syn match   GreenColorb       "`endif"

syn match   OrangeColorb      "@"
syn match   NoColor           ";"
syn match   OrangeColorb      "\$"
syn match   FluoGreen2Color "'"

 
syn match   OrangeColorb      "$finish"
syn match   OrangeColorb      "$stop"
syn match   OrangeColorb      "$exit"
syn match   OrangeColorb      "$realtime"
syn match   OrangeColorb      "$stime"
syn match   OrangeColorb      "$time"
syn match   OrangeColorb      "$printtimescale"
syn match   OrangeColorb      "$timeformat"
syn match   OrangeColorb      "$bitstoreal"
syn match   OrangeColorb      "$realtobits"
syn match   OrangeColorb      "$bitstoshortreal"
syn match   OrangeColorb      "$shortrealtobits"
syn match   OrangeColorb      "$itor"
syn match   OrangeColorb      "$rtoi"
syn match   OrangeColorb      "$signed"
syn match   OrangeColorb      "$unsigned"
syn match   OrangeColorb      "$cast"
syn match   OrangeColorb      "$bits"
syn match   OrangeColorb      "$isunbounded"
syn match   OrangeColorb      "$typename"
syn match   OrangeColorb      "$unpacked_dimensions"
syn match   OrangeColorb      "$dimensions"
syn match   OrangeColorb      "$left"
syn match   OrangeColorb      "$right"
syn match   OrangeColorb      "$low"
syn match   OrangeColorb      "$high"
syn match   OrangeColorb      "$increment"
syn match   OrangeColorb      "$size"
syn match   OrangeColorb      "$clog2"
syn match   OrangeColorb      "$asin"
syn match   OrangeColorb      "$ln"
syn match   OrangeColorb      "$acos"
syn match   OrangeColorb      "$log10"
syn match   OrangeColorb      "$atan"
syn match   OrangeColorb      "$exp"
syn match   OrangeColorb      "$atan2"
syn match   OrangeColorb      "$sqrt"
syn match   OrangeColorb      "$hypot"
syn match   OrangeColorb      "$pow"
syn match   OrangeColorb      "$sinh"
syn match   OrangeColorb      "$floor"
syn match   OrangeColorb      "$cosh"
syn match   OrangeColorb      "$ceil"
syn match   OrangeColorb      "$tanh"
syn match   OrangeColorb      "$sin"
syn match   OrangeColorb      "$asinh"
syn match   OrangeColorb      "$cos"
syn match   OrangeColorb      "$acosh"
syn match   OrangeColorb      "$tan"
syn match   OrangeColorb      "$atanh"
syn match   OrangeColorb      "$countbits"
syn match   OrangeColorb      "$countones"
syn match   OrangeColorb      "$onehot"
syn match   OrangeColorb      "$onehot0"
syn match   OrangeColorb      "$isunknown"
syn match   OrangeColorb      "$fatal"
syn match   OrangeColorb      "$error"
syn match   OrangeColorb      "$warning"
syn match   OrangeColorb      "$info"
syn match   OrangeColorb      "$fatal"
syn match   OrangeColorb      "$error"
syn match   OrangeColorb      "$warning"
syn match   OrangeColorb      "$info"
syn match   OrangeColorb      "$asserton"
syn match   OrangeColorb      "$assertoff"
syn match   OrangeColorb      "$assertkill"
syn match   OrangeColorb      "$assertcontrol"
syn match   OrangeColorb      "$assertpasson"
syn match   OrangeColorb      "$assertpassoff"
syn match   OrangeColorb      "$assertfailon"
syn match   OrangeColorb      "$assertfailoff"
syn match   OrangeColorb      "$assertnonvacuouson"
syn match   OrangeColorb      "$assertvacuousoff"
syn match   OrangeColorb      "$sampled"
syn match   OrangeColorb      "$rose"
syn match   OrangeColorb      "$fell"
syn match   OrangeColorb      "$stable"
syn match   OrangeColorb      "$changed"
syn match   OrangeColorb      "$past"
syn match   OrangeColorb      "$past_gclk"
syn match   OrangeColorb      "$rose_gclk"
syn match   OrangeColorb      "$fell_gclk"
syn match   OrangeColorb      "$stable_gclk"
syn match   OrangeColorb      "$changed_gclk"
syn match   OrangeColorb      "$future_gclk"
syn match   OrangeColorb      "$rising_gclk"
syn match   OrangeColorb      "$falling_gclk"
syn match   OrangeColorb      "$steady_gclk"
syn match   OrangeColorb      "$changing_gclk"
syn match   OrangeColorb      "$coverage_control"
syn match   OrangeColorb      "$coverage_get_max"
syn match   OrangeColorb      "$coverage_get"
syn match   OrangeColorb      "$coverage_merge"
syn match   OrangeColorb      "$coverage_save"
syn match   OrangeColorb      "$get_coverage"
syn match   OrangeColorb      "$set_coverage_db_name"
syn match   OrangeColorb      "$load_coverage_db"
syn match   OrangeColorb      "$random"
syn match   OrangeColorb      "$dist_chi_square"
syn match   OrangeColorb      "$dist_erlang"
syn match   OrangeColorb      "$dist_exponential"
syn match   OrangeColorb      "$dist_normal"
syn match   OrangeColorb      "$dist_poisson"
syn match   OrangeColorb      "$dist_t"
syn match   OrangeColorb      "$dist_uniform"
syn match   OrangeColorb      "$q_initialize"
syn match   OrangeColorb      "$q_add"
syn match   OrangeColorb      "$q_remove"
syn match   OrangeColorb      "$q_full"
syn match   OrangeColorb      "$q_exam"
syn match   OrangeColorb      "$async$and$array"
syn match   OrangeColorb      "$async$and$plane"
syn match   OrangeColorb      "$async$nand$array"
syn match   OrangeColorb      "$async$nand$plane"
syn match   OrangeColorb      "$async$or$array"
syn match   OrangeColorb      "$async$or$plane"
syn match   OrangeColorb      "$async$nor$array"
syn match   OrangeColorb      "$async$nor$plane"
syn match   OrangeColorb      "$sync$and$array"
syn match   OrangeColorb      "$sync$and$plane"
syn match   OrangeColorb      "$sync$nand$array"
syn match   OrangeColorb      "$sync$nand$plane"
syn match   OrangeColorb      "$sync$or$array"
syn match   OrangeColorb      "$sync$or$plane"
syn match   OrangeColorb      "$sync$nor$array"
syn match   OrangeColorb      "$sync$nor$plane"
syn match   OrangeColorb      "$system"
syn match   OrangeColorb      "$display"
syn match   OrangeColorb      "$write"
syn match   OrangeColorb      "$displayb"
syn match   OrangeColorb      "$writeb"
syn match   OrangeColorb      "$displayh"
syn match   OrangeColorb      "$writeh"
syn match   OrangeColorb      "$displayo"
syn match   OrangeColorb      "$writeo"
syn match   OrangeColorb      "$strobe"
syn match   OrangeColorb      "$monitor"
syn match   OrangeColorb      "$strobeb"
syn match   OrangeColorb      "$monitorb"
syn match   OrangeColorb      "$strobeh"
syn match   OrangeColorb      "$monitorh"
syn match   OrangeColorb      "$strobeo"
syn match   OrangeColorb      "$monitoro"
syn match   OrangeColorb      "$monitoroff"
syn match   OrangeColorb      "$monitoron"
syn match   OrangeColorb      "$fclose"
syn match   OrangeColorb      "$fopen"
syn match   OrangeColorb      "$fdisplay"
syn match   OrangeColorb      "$fwrite"
syn match   OrangeColorb      "$fdisplayb"
syn match   OrangeColorb      "$fwriteb"
syn match   OrangeColorb      "$fdisplayh"
syn match   OrangeColorb      "$fwriteh"
syn match   OrangeColorb      "$fdisplayo"
syn match   OrangeColorb      "$fwriteo"
syn match   OrangeColorb      "$fstrobe"
syn match   OrangeColorb      "$fmonitor"
syn match   OrangeColorb      "$fstrobeb"
syn match   OrangeColorb      "$fmonitorb"
syn match   OrangeColorb      "$fstrobeh"
syn match   OrangeColorb      "$fmonitorh"
syn match   OrangeColorb      "$fstrobeo"
syn match   OrangeColorb      "$fmonitoro"
syn match   OrangeColorb      "$swrite"
syn match   OrangeColorb      "$sformat"
syn match   OrangeColorb      "$swriteb"
syn match   OrangeColorb      "$sformatf"
syn match   OrangeColorb      "$swriteh"
syn match   OrangeColorb      "$fgetc"
syn match   OrangeColorb      "$swriteo"
syn match   OrangeColorb      "$ungetc"
syn match   OrangeColorb      "$fscanf"
syn match   OrangeColorb      "$fgets"
syn match   OrangeColorb      "$fread"
syn match   OrangeColorb      "$sscanf"
syn match   OrangeColorb      "$fseek"
syn match   OrangeColorb      "$rewind"
syn match   OrangeColorb      "$fflush"
syn match   OrangeColorb      "$ftell"
syn match   OrangeColorb      "$feof"
syn match   OrangeColorb      "$ferror"
syn match   OrangeColorb      "$readmemb"
syn match   OrangeColorb      "$readmemh"
syn match   OrangeColorb      "$writememb"
syn match   OrangeColorb      "$writememh"
syn match   OrangeColorb      "$test$plusargs"
syn match   OrangeColorb      "$value$plusargs"
syn match   OrangeColorb      "$dumpfile"
syn match   OrangeColorb      "$dumpvars"
syn match   OrangeColorb      "$dumpoff"
syn match   OrangeColorb      "$dumpon"
syn match   OrangeColorb      "$dumpall"
syn match   OrangeColorb      "$dumplimit"
syn match   OrangeColorb      "$dumpflush"
syn match   OrangeColorb      "$dumpports"
syn match   OrangeColorb      "$dumpportsoff"
syn match   OrangeColorb      "$dumpportson"
syn match   OrangeColorb      "$dumpportsall"
syn match   OrangeColorb      "$dumpportslimit"
syn match   OrangeColorb      "$dumpportsflush"
 
syn match   OrangeColorb      "$urandom"
syn match   OrangeColorb      "$urandom_range"
syn match   OrangeColorb      "$root"
syn match   OrangeColorb      "$fdumpfile"
syn match   OrangeColorb      "$get_initial_random_seed"
syn match   OrangeColorb      "$psprintf"


"let b:match_words='\<if\>\|\<for\>\|\<for\>\|\<while\>\|\<do\>:\<begin\>:\<else\>:\<end\>,\<if\>:\<else\>,
let b:match_words='\<begin\>:\<end\>,\<clocking\>:\<endclocking\>,
        \ \<property\>:\<endproperty\>,\<sequence\>:\<endsequence\>,\<covergroup\>:\<endgroup\>,
        \ \<specify\>:\<endspecify\>,\<generate\>:\<endgenerate\>,\<function\>:\<endfunction\>,\<task\>:\<endtask\>,
        \ \<case\>\|\<casex\>\|\<casez\>:\<endcase\>,\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,`ifdef\>\|`ifndef\>:`else\>:`endif\>'


