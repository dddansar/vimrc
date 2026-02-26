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

if !has('nvim')
   if exists("g:spell_check_en") && filereadable(expand($vim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
else
   if exists("g:spell_check_en") && filereadable(expand($nvim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
endif

hi  link    LeanCommentColor CommentColor
hi  link    LeanComment2Color Comment2Color
syn match   LeanCommentColor  "\<h[abcxyzpqrntfaos]\+\>\%(:\)\@!" contains=@NoSpell contained containedin=CommentColor
syn match   LeanComment2Color "\<h[abcxyzpqrntfaos]\+\>\%(:\)\@!" contains=@NoSpell contained containedin=Comment2Color
syn match   LeanNoColor       "\<h[abcxyzpqrntfaos]\+\>\%(:\)\@!" contains=@NoSpell

hi  link    LeanKeywords1     AllFilesSystemColor
syn keyword LeanKeywords1     true false variables
syn keyword LeanKeywords1     True False

hi  link    LeanKeywords2     AllFilesFuncColor
syn keyword LeanKeywords2     function endfunction instance
syn keyword LeanKeywords2     or and not xor xnor nor nand non fun
syn keyword LeanKeywords2     Or And Not Xor Xnor Nor Nand Non

hi  link    LeanKeywords3     AllFilesNumColor
syn keyword LeanKeywords3     inputs outputs inouts input output inout ports

hi  link    LeanKeywords4     AllFilesLoopCondColor
syn keyword LeanKeywords4     If Then Else if then else iff case elseif endif
syn keyword LeanKeywords4     for loop while loops repeat endfor endwhile
syn keyword LeanKeywords4     section end namespace open close import
syn keyword LeanKeywords4     set_option open_locale

hi  link    LeanKeywords5     AllFilesFuncColor
syn keyword LeanKeywords5     Type type Set set Prop Nat Bool String inductive
syn keyword LeanKeywords5     _ Proof axiom theorem proof lemma

hi  link    LeanKeywords6     AllFilesSystemColor2
syn keyword LeanKeywords6     example

hi  link    LeanKeywords7     AllFilesSpecialColorB
syn keyword LeanKeywords7     sorry

hi  link    LeanKeywords8     AllFilesNumColor
syn keyword LeanKeywords8     def variable universe structure

hi  link    LeanKeywords9     AllFilesSystemColor3
syn keyword LeanKeywords9     show from where

hi  link    LeanKeywords10    AllFilesSystemColor3
syn keyword LeanKeywords10    linter id List Vector

" Lean tactics
hi  link    LeanKeywords11    AllFilesSystemColor4
syn keyword LeanKeywords11    apply assumption by_cases by_contra cases change
syn keyword LeanKeywords11    constructor exact exfalso ext have intro intros
syn keyword LeanKeywords11    left linarith nlinarith norm_num nth_rewrite
syn keyword LeanKeywords11    obtain rcases refine refl right ring rintro rw
syn keyword LeanKeywords11    simp simpa specialize split triv trivial use
syn keyword LeanKeywords11    contradiction rfl let tauto simp_rw rwa
syn keyword LeanKeywords11    squeeze_simp calc by


" WARNING: DO NOT add CommentColor in contains, otherwise if -- is found it
"          will not match the end!!
syn region  LeanCommentColor start="\/-" end="-\/"


