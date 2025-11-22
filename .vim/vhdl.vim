
" VHDL keywords
syn keyword OrangeColor       alias all assert elsif label library loop until use
syn keyword RedColor          architecture array attribute begin package procedure process generate
syn keyword CyanColor         case component configuration constant register select signal
syn keyword YellowColor       port map
syn keyword YellowColor       access after block body buffer bus disconnect downto file for
syn keyword YellowColor       function entity exit generic group guarded impure in
syn keyword YellowColor       inertial inout is linkage literal new next null of on open
syn keyword YellowColor       others out range postponed pure record reject report return
syn keyword YellowColor       severity shared subtype then to transport type unaffected units
syn keyword YellowColor       variable wait when while with note warning error failure

syn case match
syn keyword LightOrangeColor  IF
syn keyword OrangeColor       ELSE
syn keyword RedColor          END
syn case ignore

"----------------------------------------------------------------------
" Unless special ("end loop", "end if", etc.), "end" marks the end of a
" begin, package, task etc. Assiging it to adaEnd.
syn match RedColor      "\<end\>"
syn match RedColor      "\<if\>"
syn match RedColor      "\<process\>"

" Special match for "if" and "else" since "else if" shouldn't be highlighted.
" The right keyword is "elsif"
syn match   OrangeColor "\<\%(if\|else\)\>"

" Predifined VHDL types, standard ieee VHDL types, non standard VHDL types
syn keyword FluoGreenColor bit bit_vector character boolean integer real time string severity_level
syn keyword FluoGreenColor positive natural signed unsigned line text std_logic std_logic_vector
syn keyword FluoGreenColor std_ulogic std_ulogic_vector
syn keyword FluoGreenColor qsim_state qsim_state_vector qsim_12state qsim_12state_vector qsim_strength
syn keyword FluoGreenColor mux_bit mux_vector reg_bit reg_vector wor_bit wor_vector

" array attributes
syn match FluoGreenColor "\'high"
syn match FluoGreenColor "\'left"
syn match FluoGreenColor "\'length"
syn match FluoGreenColor "\'low"
syn match FluoGreenColor "\'range"
syn match FluoGreenColor "\'reverse_range"
syn match FluoGreenColor "\'right"
syn match FluoGreenColor "\'ascending"

" block attributes
syn match FluoGreenColor "\'behaviour"
syn match FluoGreenColor "\'structure"
syn match FluoGreenColor "\'simple_name"
syn match FluoGreenColor "\'instance_name"
syn match FluoGreenColor "\'path_name"
syn match FluoGreenColor "\'foreign"

" signal attribute
syn match FluoGreenColor "\'active"
syn match FluoGreenColor "\'delayed"
syn match FluoGreenColor "\'event"
syn match FluoGreenColor "\'last_active"
syn match FluoGreenColor "\'last_event"
syn match FluoGreenColor "\'last_value"
syn match FluoGreenColor "\'quiet"
syn match FluoGreenColor "\'stable"
syn match FluoGreenColor "\'transaction"
syn match FluoGreenColor "\'driving"
syn match FluoGreenColor "\'driving_value"
" type attributes
syn match FluoGreenColor "\'base"
syn match FluoGreenColor "\'high"
syn match FluoGreenColor "\'left"
syn match FluoGreenColor "\'leftof"
syn match FluoGreenColor "\'low"
syn match FluoGreenColor "\'pos"
syn match FluoGreenColor "\'pred"
syn match FluoGreenColor "\'rightof"
syn match FluoGreenColor "\'succ"
syn match FluoGreenColor "\'val"
syn match FluoGreenColor "\'image"
syn match FluoGreenColor "\'value"

syn keyword GreenColor true false

" Values for standard VHDL types
syn case match
syn match GreenColor "\'[0L1HXWZU\-\?]\'"
syn case ignore


" floating numbers
syn match GreenColor "0*2#[01_]\+\.[01_]\+#\%(E[+\-]\=\d\+\)\="
syn match GreenColor "0*16#[0-9a-f_]\+\.[0-9a-f_]\+#\%(E[+\-]\=\d\+\)\="
syn match GreenColor "0*2#[01_]\+#\%(E[+\-]\=\d\+\)\="
syn match GreenColor "0*16#[0-9a-f_]\+#\%(E[+\-]\=\d\+\)\="

" operators
syn keyword FluoGreenColor and nand or nor xor xnor
syn keyword FluoGreenColor rol ror sla sll sra srl
syn keyword FluoGreenColor mod rem abs not
syn match   FluoGreenColor "[&><=:+\-*\/|]"
syn match   BlueColorb  "[().,;]"

"------------------------------------------------------------------
syn region OrangeColor oneline start="-- psl default clock" end=';'
syn region OrangeColor start="-- psl" end=';'
"------------------------------------------------------------------

