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

if exists(':EnableAutocorrect') == 2 && g:use_autocorrect
   " Need to call EnableAutocorrect first.
   EnableAutocorrect
   if exists('*vim_you_autocorrect#enable_autocorrect')
      " Enable vim-you-autocorrect, auto-corrects if spell triggered
      silent! call vim_you_autocorrect#enable_autocorrect()
   endif
endif


function! SpellCapCheckEn()
   setlocal spellcapcheck&
endfunction

function! SpellCapCheckDsb() abort
   setlocal spellcapcheck=
   silent! iunmap <buffer> <space>
   silent! iunmap <buffer> <cr>
   silent! syntax clear SpellLineStartLower
   silent! highlight clear SpellLineStartLower
endfunction

" Match capital spell errors on new lines not matched by spellcapcheck.
" LineStartCap() will then automatically fix them on space or enter.
function! SpellCapCheckAdd() abort
   hi link SpellLineStartLower SpellRare
   syntax match SpellLineStartLower "\%#=1^\s*\zs\<\l\w*\>"
   inoremap <buffer> <expr> <space> LineStartCap("\<Space>")
   inoremap <buffer> <expr> <cr>    LineStartCap("\<CR>")
endfunction

" Fix capital spell errors on space or enter.
function! LineStartCap(key) abort
  if pumvisible() | return a:key | endif
  let l = getline('.')
  if col('.') == col('$') && l =~# '^\s*\l\w*$'
    " Skip if the word is inside any syntax group except SpellLineStartLower
    let start = match(l, '\l\w*$') + 1
    for id in synstack(line('.'), start)
      if synIDattr(id, 'name') !=# 'SpellLineStartLower'
        return a:key
      endif
    endfor
    let w = matchstr(l, '\l\w*$')
    return repeat("\<BS>", strchars(w)) . toupper(w[0]) . w[1:] . a:key
  endif
  return a:key
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

