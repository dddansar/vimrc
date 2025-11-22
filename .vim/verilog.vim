
syn keyword YellowColor      always and assign automatic buf
syn keyword YellowColor      bufif0 bufif1 cell cmos
syn keyword YellowColor      config deassign defparam design
syn keyword YellowColor      disable edge endconfig
syn keyword YellowColor      endfunction
syn keyword YellowColor      endprimitive endspecify endtable endtask
syn keyword YellowColor      event force function
syn keyword YellowColor      genvar highz0 highz1 ifnone
syn keyword YellowColor      incdir include initial inout input
syn keyword YellowColor      instance integer large liblist
syn keyword YellowColor      library  macromodule medium
syn keyword YellowColor      nand negedge nmos nor
syn keyword YellowColor      noshowcancelled not notif0 notif1 or
syn keyword YellowColor      output  pmos posedge primitive
syn keyword YellowColor      pull0 pull1 pulldown pullup
syn keyword YellowColor      pulsestyle_onevent pulsestyle_ondetect
syn keyword YellowColor      rcmos real realtime release
syn keyword YellowColor      rnmos rpmos rtran
syn keyword YellowColor      scalared showcancelled signed small
syn keyword YellowColor      specify specparam strong0 strong1
syn keyword YellowColor      table task time tran
syn keyword YellowColor      unsigned use vectored wait
syn keyword YellowColor      xnor xor
syn keyword FluoGreenColor   tri0 tri1 tri trireg reg wire rtranif0 tranif0 tranif1
syn keyword FluoGreenColor   wand weak0 weak1 wor triand trior supply0 supply1 supply
syn keyword FluoGreenColor   fork join
syn keyword VioletColor      end
syn keyword RedColor         begin
syn keyword RedColor         generate endgenerate endmodule module
syn keyword CyanColor        parameter localparam
syn keyword DarkGreen2Color  if else case casex casez default endcase
syn keyword DarkGreen2Color  forever repeat while for

"------------------------------------------------------------------
syn region OrangeColor oneline start="vcomp" end=' '
"------------------------------------------------------------------
syn region none        start="// psl" end=';'
syn region OrangeColor oneline start="// psl default clock" end=';'
syn region OrangeColor start="// psl" end=';$'
"------------------------------------------------------------------


let b:match_words='\<begin\>:\<end\>,\<if\>:\<else\>,\<module\>:\<endmodule\>,\<primitive\>:\<endprimitive\>,
        \ \<specify\>:\<endspecify\>,\<generate\>:\<endgenerate\>,\<function\>:\<endfunction\>,\<task\>:\<endtask\>,
        \ \<case\>\|\<casex\>\|\<casez\>:\<endcase\>,\<fork\>:\<join\>\|\<join_any\>\|\<join_none\>,`ifdef\>:`else\>:`endif\>,\<generate\>:\<endgenerate\>'

