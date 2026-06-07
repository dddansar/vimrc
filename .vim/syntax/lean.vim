"==============================================================================
" File: lean.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for all lean files.
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


" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:lean_loaded")
"    finish
" endif
if exists("g:debug_syntax")
   echom "lean.vim syntax file loaded"
endif
let b:lean_loaded = 1

if !exists("b:current_syntax") || b:current_syntax == ""
   let b:current_syntax = "lean"
endif

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "lean"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   source $vim_folder_path/after/syntax/shared/math_mappings.vim
   source $vim_folder_path/after/syntax/shared/unicode.vim

   let b:comment_leader = '--'
   let b:multi_line_comment_end = '-\/'
   call AllFilesDefaultSyntax()
endif


if !has('nvim')
   if exists("b:spell_loaded") && filereadable(expand($vim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
else
   if exists("b:spell_loaded") && filereadable(expand($nvim_spell_path . "/lean.utf-8.spl"))
      setlocal spelllang+=lean
   endif
endif


hi  link    LeanKeywords1     Statement
syn keyword LeanKeywords1     true false variables
syn keyword LeanKeywords1     True False
syn keyword LeanKeywords1     with induction

hi  link    LeanKeywords2     Function
syn keyword LeanKeywords2     function endfunction instance

hi  link    LeanKeywords3     Number
syn keyword LeanKeywords3     inputs outputs inouts input output inout ports

syn keyword LeanKeywords4     Type type Set set Prop Nat inductive
syn keyword LeanKeywords4     _ Proof axiom theorem proof lemma

hi  link    LeanKeywords5     Conditional
syn keyword LeanKeywords5     If Then Else if then else iff case elseif endif
syn keyword LeanKeywords5     for loop while loops repeat endfor endwhile
syn keyword LeanKeywords5     section begin end namespace open close import
syn keyword LeanKeywords5     set_option open_locale

hi  link    LeanKeywords6     Function
syn keyword LeanKeywords6     or and not xor xnor nor nand non fun
syn keyword LeanKeywords6     Or And Not Xor Xnor Nor Nand Non Bool String

hi  link    LeanKeywords7     Type
syn keyword LeanKeywords7     example done

hi  link    LeanKeywords8     NonText
syn keyword LeanKeywords8     sorry

hi  link    LeanKeywords9     Number
syn keyword LeanKeywords9     def variable universe structure

hi  link    LeanKeywords10    Conditional
syn keyword LeanKeywords10    show from where

hi  link    LeanKeywords11    Conditional
syn keyword LeanKeywords11    linter id List Vector

" Lean tactics
hi  link    LeanKeywords12    Debug
syn keyword LeanKeywords12    apply assumption by_cases by_contra cases change
syn keyword LeanKeywords12    constructor exact exfalso ext have intro intros
syn keyword LeanKeywords12    left linarith nlinarith norm_num nth_rewrite
syn keyword LeanKeywords12    obtain rcases refine refl right ring rintro rw
syn keyword LeanKeywords12    simp simpa specialize split triv trivial use
syn keyword LeanKeywords12    contradiction rfl let tauto simp_rw rwa
syn keyword LeanKeywords12    squeeze_simp calc by


" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "lean"
   call AllOperators()
   call AllEqualities()
   call AllArrows()
   call AllSpecial()
   call AllSeparators()
   call AllSlashes()
   call AllParenBr()
   call AllCaps()
   call AllDefineHash()
   call AllDefineDollar()
   call AllDefineTick()
   call AllDefineAt()
   call AllLabel()
   call AllSpecifiersInQuotes()
   call AllNumbers()
   call AllTime()
   call AllTruth()
   call AllCommentLeaderTop()
   call AllMultiLineComment()
endif

