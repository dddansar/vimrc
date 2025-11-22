
if exists("g:spell_check_en")
   " see how to setup a custom dictionary below
   setlocal spelllang+=math
endif


" Vim's internal dictionary is not perfect and may not align with your writing style. The dictionary can fortunately be overridden with a local dictionary. A local dictionary is automatically created whenever a word is added or ignored.

" The location of this file is in ~/.vim/spell/, and is named based on the defined language, e.g. ~/.vim/spell/en.utf-8.add.

"-------------------------------------------------------------------
"Setting up a custom dictionary !!!!
"-------------------------------------------------------------------

" A custom dictionary can be created and defined like so:
" setlocal spell spelllang=custom_file.spl
" Where custom_file.spl is the path to the custom dictionary.

" will highlight spelling mistakes, NOTE: spellcheck != autocorrect
" 1)
" if exists("g:spell_check_en")
"    setlocal spelllang+=custom_file
" endif

" 2)
" create file ~/.vim/spell/custom_file.utf-8.add

" 3) It should be noted that the *.spl extension is a compressed format. To generate a *.spl file, the mkspell command can be used like so:
":mkspell! custom_file.utf-8.add

" 4)
" can't find the file custom_file.utf-8.spl  (because it's called custom_file.utf-8.add.spl !!)
" so create a link to it
" cd ~/.vim/spell/
" ln -s ~/.vim/spell/custom_file.utf-8.add.spl custom_file.utf-8.spl
"-------------------------------------------------------------------


