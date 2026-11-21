"==============================================================================
" File: spell.vim
"------------------------------------------------------------------------------
" Description: This file adds spell checking settings for files that have
"              spell checking enabled.
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
" if exists("b:spell_loaded")
"    finish
" endif
" if exists("b:disable_after_syntax")
"    finish
" endif
if !exists("g:syntax_on")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "spell.vim syntax file loaded"
endif
let b:spell_loaded = 1

"------------------------------------------------------------------------------
setlocal spell
setlocal spelllang=en,en_us
if exists("b:spell_loaded") && filereadable(expand($vim_spell_path . "/math.utf-8.spl"))
   setlocal spelllang+=math
endif
if exists("b:spell_loaded") && filereadable(expand($vim_spell_path . "/programming.utf-8.spl"))
   setlocal spelllang+=programming
endif
" Ignore uppercase of first word.
" Default: spellcapcheck=[.?!]\_[\])'"^I ]\+
" Reset: setlocal spellcapcheck&
setlocal spellcapcheck=
"------------------------------------------------------------------------------


" Enable vim-you-autocorrect, auto-corrects if spell triggered
runtime autoload/vim_you_autocorrect.vim
if exists('*vim_you_autocorrect#enable_autocorrect') && g:use_autocorrect
   call vim_you_autocorrect#enable_autocorrect()
endif


function! SpellCapCheckEn()
   " Reset spellcapcheck to default effectively enabling it
   setlocal spellcapcheck&
endfunction

function! SpellCapCheckDsb() abort
   " Disable spellcapcheck and clear mappings and syntax
   setlocal spellcapcheck=
   silent! iunmap <buffer> <space>
   silent! iunmap <buffer> <cr>
   silent! iunmap <buffer> '
   silent! hi  clear SpellWordCapError
   silent! hi  clear SpellWordCapError2
   silent! syn clear SpellWordCapErrorCom
   silent! syn clear SpellWordCapError
   silent! syn clear SpellWordCapError2
   silent! syn clear SpellWordCapErrorCom
   silent! syn clear SpellNoCapSpell
endfunction


" NOTE: The functions SpellCapCheckAdd() and LineStartCap(key) below are
" intended to complement vim_you_autocorrect and correct additional cases.
" Match capital spell errors on new lines not matched by spellcapcheck.
" LineStartCap() will then automatically fix them on space or enter.
function! SpellCapCheckAdd() abort
   " Detect lower case at beginning of line
   hi  link    SpellWordCapError  SpellRare
   syn match   SpellWordCapError  "\%#=1^\s*\zs\<[a-z]\+\>"
   " Also correct cap spell in comments
   if exists("b:comment_leader")
      " Use the same color as the comment highlight regardless of colorscheme.
      let l:fg      = synIDattr(synIDtrans(hlID('Comment')), 'fg#')
      let l:ctermfg = synIDattr(synIDtrans(hlID('Comment')), 'fg', 'cterm')

      " WARNING: Can cause errors if the terminal can't provide the color.
      "          E254: Cannot allocate colour 4
      " Fix: Need to add a try/catch guard:
      try
         execute 'highlight SpellCapCheckCom'
                  \ . ' guifg=' . (empty(l:fg) ? 'NONE' : l:fg)
                  \ . ' ctermfg=' . (empty(l:ctermfg) ? 'NONE' : l:ctermfg)
                  \ . ' gui=undercurl cterm=underline'
                  \ . ' guisp=' . (empty(l:fg) ? 'NONE' : l:fg)
      catch /E254/
      endtry

      " Detect lower case at beginning of comments
      hi  link    SpellWordCapErrorCom  SpellCapCheckCom
      execute 'syn match   SpellWordCapErrorCom  "' . b:comment_leader . '\s*\zs\<[a-z]\+\>" containedin=.*Comment.*'
      hi  link    SpellWordCapErrorCom2 SpellCapCheckCom
      syn match   SpellWordCapErrorCom2 "\<[a-z]\+\>" contained
   endif
   " Detect lower case after a titled colon ":"
   hi  link    SpellWordCapError2 SpellRare
   syn match   SpellWordCapError2 "\<[a-z]\+\>" contained
   " Allow these words to remain lowercase, skip cap checking them.
   syn match   SpellNoCapSpell "\%#=1^\s*\<\%(else\|elif\|elseif\|end\|endif\|for\|while\|and\|alias\|xor\|xnor\|not\|nand\|nor\)\>" contains=@NoSpell
   " LineStartCap is applied after one of these characters is pressed.
   inoremap <buffer> <expr> <space> LineStartCap("\<space>")
   inoremap <buffer> <expr> <cr>    LineStartCap("\<cr>")
   inoremap <buffer> <expr> '       LineStartCap("'")
   " My edits to vim_you_autocorrect means it does not autocorrect words in
   " syntax groups. Below are the syntax groups I want it to autocorrect in.
   let b:vim_you_autocorrect_include_groups = get(b:, 'vim_you_autocorrect_include_groups', [])
   let b:vim_you_autocorrect_include_groups += ['Comment']
   let b:vim_you_autocorrect_include_groups += ['String']
   let b:vim_you_autocorrect_include_groups += ['SpellWordCapError']
   let b:vim_you_autocorrect_include_groups += ['SpellWordCapError2']
endfunction

" Fix capital spell errors on space or enter.
function! LineStartCap(key) abort
   " The inoremap above in SpellCapCheckAdd() breaks abbreviations, if no
   " spell correction occures, allow abbreviations to apply
   let passthru = "\<c-]>" . a:key
   " If popup menu is visible, don't autocorrect anything
   if pumvisible() | return passthru | endif
   let l = getline('.')
   let c = col('.') - 1
   " Only consider text before the cursor, so mid-line insertions work
   let pre = strpart(l, 0, c)
   " Skip if the word is inside any syntax group except SpellWordCapError
   let start = match(pre, '[a-z]\+$') + 1
   let ok = 0
   " Applies inside SpellWordCapError
   for id in synstack(line('.'), start)
      if synIDattr(id, 'name') =~# '^\%(SpellWordCapError\|SpellWordCapErrorCom\|SpellWordCapError2\)$'
         let ok = 1
      endif
   endfor
   " Also applies on start of line and inside MathNotMultiVars2
   if pre =~# '^\s*[a-z]\+$'
      for id in synstack(line('.'), start)
         if synIDattr(id, 'name') =~# '^\%(MathNotMultiVars2\)$'
            let ok = 1
         endif
      endfor
   endif
   if !ok | return passthru | endif
   let w = matchstr(pre, '[a-z]\+$')
   call timer_start(0, {-> s:FlashWord(line('.'), start, strlen(w))})
   return repeat("\<bs>", strchars(w)) . toupper(w[0]) . w[1:] . a:key
   return passthru
endfunction

" When a word is auto-corrected by LineStartCap(), flash it for 2 seconds.
function! s:FlashWord(lnum, col, len) abort
  let winid = win_getid()
  let id = matchaddpos('DiffAdd', [[a:lnum, a:col, a:len]])
  call timer_start(2000, {-> matchdelete(id, winid)})
endfunction


" Needs to be outside spell.vim in case spell.vim gets sourced
" multiple times and the syntax matching fails to apply
" if !hlexists('AllSpellCommColor1')
"    call AllIgnoreSpellings()
" endif

"------------------------------------------------------------------------------
" Setting up a custom dictionary !!!!
"------------------------------------------------------------------------------
" Vim's internal dictionary is not perfect and may not align with your writing
" style. The dictionary can fortunately be overridden with a local dictionary.
" A local dictionary is automatically created whenever a word is added or
" ignored.

" The location of this file is in ~/.vim/spell/, and is named based on the
" defined language, e.g. ~/.vim/spell/en.utf-8.add.

" A custom dictionary can be created and defined like so:
" setlocal spell spelllang=custom_file.spl
" Where custom_file.spl is the path to the custom dictionary.

" Will highlight spelling mistakes, NOTE: spellcheck != autocorrect
" 1)
" if exists("b:spell_loaded") && filereadable(expand($vim_spell_path . "/custom_spell.utf-8.spl"))
"    setlocal spelllang+=custom_spell
" endif

" 2)
" Create file ~/.vim/spell/custom_file.utf-8.add

" 3) It should be noted that the *.spl extension is a compressed format. To
"    generate a *.spl file, the mkspell command can be used like so:
":mkspell! custom_file.utf-8.add

" 4)
" Can't find the file custom_file.utf-8.spl  (because it's called
"                                             custom_file.utf-8.add.spl !!)
" So create a link to it
" cd ~/.vim/spell/
" ln -s ~/.vim/spell/custom_file.utf-8.add.spl custom_file.utf-8.spl
"------------------------------------------------------------------------------

