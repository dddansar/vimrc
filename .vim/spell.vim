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


" Exit if the file was already loaded
if exists("b:spell_loaded")
  finish
endif
let b:spell_loaded = 1


" Enable spell checking if b:spell_check_en is set.
"------------------------------------------------------------------------------
setlocal spell
setlocal spelllang+=en_us
" Ignore uppercase of first word.
" setlocal spellcapcheck=
"------------------------------------------------------------------------------

" call AllIgnoreSpellings()

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
" if exists("b:spell_check_en") && filereadable(expand($vim_spell_path . "/custom_spell.utf-8.spl"))
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

