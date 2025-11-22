
" if exists("g:spell_check_en")
"    setlocal spelllang+=lean
" endif

syn match   CommentColor    "\<h[abcxyzpqrntfaos]\+\>\(:\)\@!" contains=@NoSpell contained containedin=CommentColor
syn match   NoColor         "\<h[abcxyzpqrntfaos]\+\>\(:\)\@!" contains=@NoSpell

syn keyword YellowColor       true false variables
syn keyword YellowColor       True False
syn keyword OrangeColor       function endfunction instance
syn keyword OrangeColor       or and not xor xnor nor nand non fun
syn keyword OrangeColor       Or And Not Xor Xnor Nor Nand Non
syn keyword BlueColor         inputs outputs inouts input output inout ports
syn keyword DarkGreen2Color   If Then Else if then else iff case elseif endif
syn keyword DarkGreen2Color   for loop while loops repeat endfor endwhile
syn keyword DarkGreen2Color   section end namespace open close import set_option open_locale
syn keyword DarkYellowColor   Type type Set set Prop Nat Bool String inductive
syn keyword DarkYellowColor   _ Proof axiom theorem proof lemma
syn keyword FluoGreenColorb   example
syn keyword RedColor          sorry

"syn region  TealColor         oneline start="#" end=" "
syn keyword CyanColor         def variable universe structure
syn keyword LightPurpleColor  show from where

syn keyword LightBlueColor    linter id List Vector

" lean tactics
syn keyword TealColor         apply assumption by_cases by_contra cases change constructor exact exfalso ext have intro intros left linarith nlinarith norm_num nth_rewrite obtain rcases refine refl right ring rintro rw simp simpa specialize split triv trivial use
syn keyword TealColor         contradiction rfl let tauto simp_rw rwa squeeze_simp calc by

syn region  CommentColor start="\/-" end="-\/"


