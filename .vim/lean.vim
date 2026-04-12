"==============================================================================
" File: lean.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all lean files.
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
if exists("b:lean_loaded")
  finish
endif
let g:lean_loaded = 1


if !has('nvim')
   if exists("g:spell_check_en") && filereadable(expand($vim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
else
   if exists("g:spell_check_en") && filereadable(expand($nvim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
endif


hi  link    LeanKeywords1     Statement
syn keyword LeanKeywords1     true false variables
syn keyword LeanKeywords1     True False

hi  link    LeanKeywords2     Function
syn keyword LeanKeywords2     function endfunction instance

hi  link    LeanKeywords3     Constant
syn keyword LeanKeywords3     inputs outputs inouts input output inout ports
syn keyword LeanKeywords3     Type type Set set Prop Nat inductive
syn keyword LeanKeywords3     _ Proof axiom theorem proof lemma

hi  link    LeanKeywords4     Conditional
syn keyword LeanKeywords4     If Then Else if then else iff case elseif endif
syn keyword LeanKeywords4     for loop while loops repeat endfor endwhile
syn keyword LeanKeywords4     section end namespace open close import
syn keyword LeanKeywords4     set_option open_locale

hi  link    LeanKeywords5     Function
syn keyword LeanKeywords5     or and not xor xnor nor nand non fun
syn keyword LeanKeywords5     Or And Not Xor Xnor Nor Nand Non Bool String

hi  link    LeanKeywords6     Type
syn keyword LeanKeywords6     example done

hi  link    LeanKeywords7     NonText
syn keyword LeanKeywords7     sorry

hi  link    LeanKeywords8     Constant
syn keyword LeanKeywords8     def variable universe structure

hi  link    LeanKeywords9     Conditional
syn keyword LeanKeywords9     show from where

hi  link    LeanKeywords10    Conditional
syn keyword LeanKeywords10    linter id List Vector

" Lean tactics
hi  link    LeanKeywords11    Debug
syn keyword LeanKeywords11    apply assumption by_cases by_contra cases change
syn keyword LeanKeywords11    constructor exact exfalso ext have intro intros
syn keyword LeanKeywords11    left linarith nlinarith norm_num nth_rewrite
syn keyword LeanKeywords11    obtain rcases refine refl right ring rintro rw
syn keyword LeanKeywords11    simp simpa specialize split triv trivial use
syn keyword LeanKeywords11    contradiction rfl let tauto simp_rw rwa
syn keyword LeanKeywords11    squeeze_simp calc by


