

" enable spell checking if g:spell_check_en is set
"------------------------------------------------------------------
let g:spell_check_en=1
if exists("g:spell_check_en") && g:spell_check_en
   setlocal spell
   setlocal spelllang+=en_us
   " ignore uppercase of first word.
   setlocal spellcapcheck=
endif
"------------------------------------------------------------------

