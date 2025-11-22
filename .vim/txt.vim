
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

" smartindent in Vim is an indentation option that provides automatic indentation when starting a new line
setlocal nosmartindent

" ---------------------------------------------------------------------------------------------
" these will match special characters that are used as section delimiters or title underscores:
" ---------------------------------------------------------------------------------------------
syn region  OrangeColor       oneline  start=+―+    end=+― *$+
syn region  FuchsiaColor      oneline  start=+–+    end=+– *$+
syn region  TealColor         oneline  start=+‒+    end=+‒ *$+
syn region  LightOrangeColor  oneline  start=+—+    end=+— *$+
syn region  GreenColor        oneline  start=+‐+    end=+‐ *$+
syn region  LightOliveColor   oneline  start=+‑+    end=+‑ *$+
" ---------------------------------------------------------------------------------------------

syn match   OrangeColor      "(+)"
syn match   LightOliveColor  "(-)"
syn match   LightOrangeColor "(\~)"

" quotes with `
if exists("g:spell_check_en") && g:spell_check_en
   syn region  CommentColor   oneline matchgroup=FluoGreen2Color start=+\(^\|\s\|[(\[{]\)\@<=`\(\s\)\@!+  matchgroup=FluoGreen2Color end=+\(\\\)\@<!`\(\s\|$\|[)\]}.!?,;:\-]\)\@=+   contains=@NoSpell contained containedin=CommentColor
endif
hi  link    QuotesSingle2     GreenColor
syn region QuotesSingle2 oneline  start=/\v`/ end=/\v`/ contains=@NoSpell


" quotes with *
if exists("g:spell_check_en") && g:spell_check_en
   syn region  CommentColor   oneline  matchgroup=FluoGreen2Color start=+\(^\|\s\|[(\[{]\)\@<=\*\(\s\)\@!+   matchgroup=FluoGreen2Color end=+\(\\\)\@<!\*\(\s\|$\|[)\]}.!?,;:\-]\)\@=+ contains=@NoSpell contained containedin=CommentColor
endif
hi  link    QuotesSingle3     LightOliveColor
syn region  QuotesSingle3     oneline  start=+\(^\|\s\|[(\[{]\)\@<=\*\(\s\)\@!+  end=+\(\\\)\@<!\*\(\s\|$\|[)\]}.!?,;:\-]\)\@=+ contains=@NoSpell,QuotesSingle3

syn match NoColor  "\(\w\)\@<='\(\w\)\@="


" match 1) A) (2) (B)...
"-------------------------------------------------------------------
" start of line, one or more spaces followed by 0 or 1 "(" followed by number/letter and ")"
syn match   PinkColor    "\(^\s*-\?\s*\)\@<=(\?[0-9]\+)" contains=@NoSpell
syn match   OrangeColor  "\(^\s*-\?\s*\)\@<=(\?[A-Z])" contains=@NoSpell
syn match   PinkColor    "\(\s\+\)\@<=([0-9]\+)" contains=@NoSpell
syn match   OrangeColor  "\(\s\+\)\@<=([A-Z])" contains=@NoSpell
"-------------------------------------------------------------------


