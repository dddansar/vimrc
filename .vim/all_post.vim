
" Highligh VI words
"-------------------------------------------------------------------
" syn case ignore
" syn match   Orange2bg             "\<Do not\>"  contains=@NoSpell containedin=CommentColor
syn match   Orange2bg             "\<DO NOT\>"  contains=@NoSpell containedin=CommentColor
syn match   Orange2bg             "\<WARNING\>" contains=@NoSpell containedin=CommentColor
syn match   LightOrangebg         "\<FIXME\>"   contains=@NoSpell containedin=CommentColor
syn match   LightOrangebg         "\<HACK\>"    contains=@NoSpell containedin=CommentColor
syn match   LightOrangebg         "\<TODO\>"    contains=@NoSpell containedin=CommentColor
syn match   Yellow3bg             "\<VITODO\>"  contains=@NoSpell containedin=CommentColor
syn match   Green0bg              "\<NOTE\>"    contains=@NoSpell containedin=CommentColor
syn match   FluoGreen0bg          "\<VINOTE\>"  contains=@NoSpell containedin=CommentColor
syn match   FluoGreen0bg          "\<VI\>"      contains=@NoSpell containedin=CommentColor
syn match   Error                 "\<ERROR\>"   contains=@NoSpell containedin=CommentColor
syn match   Error                 "\<WRONG\>"   contains=@NoSpell containedin=CommentColor
" with space
syn match   FluoGreen0bg          "\<\(VI \)\@<=NOTE\>" contains=@NoSpell containedin=CommentColor
syn match   Yellow3bg             "\<\(VI \)\@<=TODO\>" contains=@NoSpell containedin=CommentColor
syn match   Yellow3bg             "\<VI\( TODO\)\@=\>"  contains=@NoSpell containedin=CommentColor
" non word characters
syn match   LightOrangebg         "???*" containedin=CommentColor
syn match   Yellow3bg             "?????*" containedin=CommentColor
syn match   Green0bg              "!!!*" containedin=CommentColor
syn match   FluoGreen0bg          "!!!!!*" containedin=CommentColor
syn match   Orange2bg             "\(\<WARNING\>.*\)\@<=!!!*" containedin=CommentColor
syn match   Orange2bg             "\(\<DO NOT\>.*\)\@<=!!!*" containedin=CommentColor
syn match   Error                 "\(\<ERROR\>.*\)\@<=!!!*" containedin=CommentColor
syn match   Error                 "\(\<WRONG\>.*\)\@<=!!!*" containedin=CommentColor
syn match   LightOrangebg         "\(\<TODO\>.*\)\@<=!!!*" containedin=CommentColor
syn match   Yellow3bg             "\(\<VITODO\>.*\)\@<=!!!*" containedin=CommentColor
syn match   Green0bg              "\(\<NOTE\>.*\)\@<=!!!*" containedin=CommentColor
syn match   FluoGreen0bg          "\(\<VINOTE\>.*\)\@<=!!!*" containedin=CommentColor
" syn case match
"-------------------------------------------------------------------


" special linux command that needs to be highlighted separately
"------------------------------------------------------------------
syn match RedColorb  "\<sudo\>" contains=@NoSpell
"-------------------------------------------------------------------



" Matches titles:
" 2. Some Title Example with " or # or // or -- comments
" 2.1. Some Title Example with " or # or // or -- comments
" 2.1.1. Some Title Example with " or # or // or -- comments
" 2.1.1.1. Some Title Example with " or # or // or -- comments
"-------------------------------------------------------------------
if g:performance_mode <= 0
   syn match    BoldAndUnderlineOrange2   '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineYellow    '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineFluoGreen '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineBlue      '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlinePink      '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineOrange    '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlinePeach     '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineGreen     '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineCyan      '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   syn match    BoldAndUnderlineFuchsia   '\(^\s*\)\@<=\%(\/\/\+\|--\+\|\"\+\|#\+\|\)\s*[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\.\s.*'    contains=@NoSpell
   "syn match    BoldAndUnderlineLightBrown
   "syn match    BoldAndUnderlineFluoYellowGreen
   "syn match    BoldAndUnderlineGreen2
   "syn match    BoldAndUnderlineTeal
   "syn match    BoldAndUnderlinePink2
endif
"-------------------------------------------------------------------


" match first \ in new line
syn match   BlueColor        '\(^\s*\)\@<=\\'
" match last \ in line
syn match   BlueColor        '\\\(\s*$\)\@='

