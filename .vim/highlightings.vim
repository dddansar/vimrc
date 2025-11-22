
" NOTE: The colors in the keywords are being set in colors.vim

"NOTE: see ":help highlight-groups" for all the default highlighting groups in vim
"NOTE: You can see the current settings with the ":highlight" command.
" need to clear some of the colors, otherwise it will not override with hi link
hi clear Pmenu
hi clear PmenuSel
hi clear PmenuSbar
hi clear PmenuThumb
hi clear Search
hi clear IncSearch
hi clear Cursor
hi clear Visual
hi clear NonText
hi clear Ignore
hi clear Comment
hi clear LineNr
hi clear Constant
hi clear Special
hi clear Statement
hi clear Type
hi clear PreProc
hi clear String
hi clear Function
hi clear Repeat
hi clear Operator
hi clear Exception
hi clear Label
hi clear Macro
hi clear PreCondit
hi clear StorageClass
hi clear Tag
hi clear Float
hi clear SpecialComment
hi clear Debug
hi clear Structure
hi clear Question
hi clear Character
hi clear Number
hi clear Boolean
hi clear Conditional
hi clear Keyword
hi clear Include
hi clear Define
hi clear Typedef
hi clear SpecialChar
hi clear Delimiter
hi clear Error

hi Pmenu                                                 guibg=grey10
hi PmenuSel                                              guibg=grey20
hi PmenuSbar                                             guibg=white
hi PmenuThumb                                            guibg=green
"hi Normal                              guifg=grey95      guibg=grey5  " moved to main .vimrc file
hi Search                                                guibg=grey50
" hi IncSearch                                             guibg=grey50
hi Cursor                              guifg=black       guibg=white
hi NonText                    gui=bold guifg=red         guibg=grey10

hi link Visual                FluoGreenbg
hi link Ignore                Normal
hi link IncSearch             Whitebg

hi link Comment               FuchsiaColor
hi link LineNr                GreyColor
hi link Constant              CyanColor
hi link Special               BlueColor

hi link Statement             YellowColorb
hi link Type                  FluoGreenColorb
hi link PreProc               OrangeColorb
hi link String                GreenColorb

hi link Function              PinkColorb
hi link Repeat                DarkBlueColorb
hi link Operator              RedColorb
hi link Exception             OliveColorb

hi link Label                 DarkGreenColorb
hi link Macro                 PurpleColorb
hi link PreCondit             LightOliveColorb
hi link StorageClass          DarkYellowColorb

hi link Tag                   YellowColorb
hi link Float                 MaroonColorb
hi link SpecialComment        BrownColorb
hi link Debug                 TealColorb

hi link Structure             LightbrownColorb
hi link Question              VioletColorb

hi link Character             CyanColor
hi link Number                CyanColor
hi link Boolean               CyanColor
hi link Conditional           OrangeColorb
hi link Keyword               YellowColorb
hi link Include               OrangeColorb
hi link Define                OrangeColorb
hi link Typedef               FluoGreenColorb
hi link SpecialChar           BlueColor
hi link Delimiter             BlueColor
hi link Error                 Redbg


" match highlight group names to colors
hi default WhiteColorb              gui=bold             guifg=white
hi default RedColorb                gui=bold             guifg=red
hi default Red2Colorb               gui=bold             guifg=#aa0000
hi default RedOrangeColorb          gui=bold             guifg=#ff3300
" hi default OrangeColorUnicodeb      gui=bold             guifg=#ff7701
hi default OrangeColorb             gui=bold             guifg=#ff7700
hi default Orange2Colorb            gui=bold             guifg=#ff6600
hi default Orange3Colorb            gui=bold             guifg=#ff5500
hi default LightOrangeColorb        gui=bold             guifg=#e6A200
hi default LightOrange2Colorb       gui=bold             guifg=#cc8800
hi default DarkYellowColorb         gui=bold             guifg=#ffbb00
hi default YellowColorb             gui=bold             guifg=#ffff00
hi default FluoYellowGreenColorb    gui=bold             guifg=#ccff00
hi default LightYellowColorb        gui=bold             guifg=#ffff60
hi default LightGreenColorb         gui=bold             guifg=LightGreen
hi default FluoGreen0Colorb         gui=bold             guifg=#00ff00
hi default FluoGreenColorb          gui=bold             guifg=#00dd00
hi default FluoGreen2Colorb         gui=bold             guifg=#00bb00
hi default Green0Colorb             gui=bold             guifg=#00aa00
hi default GreenColorb              gui=bold             guifg=#009900
hi default Green2Colorb             gui=bold             guifg=#008000
hi default DarkGreenColorb          gui=bold             guifg=#006600
hi default DarkGreen2Colorb         gui=bold             guifg=#005500
hi default TealColorb               gui=bold             guifg=#339999
hi default CyanColorb               gui=bold             guifg=cyan
hi default Blue0Colorb              gui=bold             guifg=#00bbff
hi default BlueColorb               gui=bold             guifg=#0099ff
hi default Blue2Colorb              gui=bold             guifg=#0077ff
hi default Blue3Colorb              gui=bold             guifg=#0055ff
hi default DarkBlueColorb           gui=bold             guifg=blue
hi default DarkBlue2Colorb          gui=bold             guifg=#000099
hi default DarkBlue3Colorb          gui=bold             guifg=#000055
hi default PinkColorb               gui=bold             guifg=#ff0099
hi default Pink2Colorb              gui=bold             guifg=#ff5599
hi default FuchsiaColorb            gui=bold             guifg=#ff1fef
hi default Fuchsia2Colorb           gui=bold             guifg=#cc00ff
hi default LightOliveColorb         gui=bold             guifg=#999900
hi default xLightOliveColorb        gui=bold             guifg=#999955
hi default LightBrownColorb         gui=bold             guifg=#996600
hi default OliveColorb              gui=bold             guifg=#666600
hi default MaroonColorb             gui=bold             guifg=#660000
hi default BrownColorb              gui=bold             guifg=#663300
hi default Brown2Colorb             gui=bold             guifg=brown
hi default GreyColorb               gui=bold             guifg=#555555
hi default Grey2Colorb              gui=bold             guifg=#777777
hi default Grey3Colorb              gui=bold             guifg=#999999
hi default Grey4Colorb              gui=bold             guifg=#aaaaaa
hi default Grey5Colorb              gui=bold             guifg=#cccccc
hi default VioletColorb             gui=bold             guifg=#6600ff
hi default PurpleColorb             gui=bold             guifg=#660099
hi default Purple2Colorb            gui=bold             guifg=#770099
hi default Peach5Colorb             gui=bold             guifg=#ff3333
hi default Peach4Colorb             gui=bold             guifg=#ff4444
hi default Peach3Colorb             gui=bold             guifg=#ff5555
hi default Peach2Colorb             gui=bold             guifg=#ff6666
hi default PeachColorb              gui=bold             guifg=#ff7777
hi default LightPeachColorb         gui=bold             guifg=#ffaaaa
hi default BeigeColorb              gui=bold             guifg=#f5f5aa
hi default LightPurpleColorb        gui=bold             guifg=#ff80ff
hi default LightBlueColorb          gui=bold             guifg=#80a0ff
hi default LightVioletColorb        gui=bold             guifg=#9988ff
hi default DarkMagentaColorb        gui=bold             guifg=DarkMagenta
hi default LightRedColorb           gui=bold             guifg=lightred


hi default WhiteColor                                    guifg=white
hi default RedColor                                      guifg=red
hi default Red2Color                                     guifg=#aa0000
hi default RedOrangeColor                                guifg=#ff3300
" hi default OrangeColorUnicode                            guifg=#ff7701
hi default OrangeColor                                   guifg=#ff7700
hi default Orange2Color                                  guifg=#ff6600
hi default Orange3Color                                  guifg=#ff5500
hi default LightOrangeColor                              guifg=#e6A200
hi default LightOrange2Color                             guifg=#cc8800
hi default DarkYellowColor                               guifg=#ffbb00
hi default YellowColor                                   guifg=#ffff00
hi default FluoYellowGreenColor                          guifg=#ccff00
hi default LightYellowColor                              guifg=#ffff60
hi default LightGreenColor                               guifg=LightGreen
hi default FluoGreen0Color                               guifg=#00ff00
hi default FluoGreenColor                                guifg=#00dd00
hi default FluoGreen2Color                               guifg=#00bb00
hi default Green0Color                                   guifg=#00aa00
hi default GreenColor                                    guifg=#009900
hi default Green2Color                                   guifg=#008000
hi default DarkGreenColor                                guifg=#006600
hi default DarkGreen2Color                               guifg=#005500
hi default TealColor                                     guifg=#339999
hi default CyanColor                                     guifg=cyan
hi default Blue0Color                                    guifg=#00bbff
hi default BlueColor                                     guifg=#0099ff
hi default Blue2Color                                    guifg=#0077ff
hi default Blue3Color                                    guifg=#0055ff
hi default DarkBlueColor                                 guifg=blue
hi default DarkBlue2Color                                guifg=#000099
hi default DarkBlue3Color                                guifg=#000055
hi default FuchsiaColor                                  guifg=#ff1fef
hi default Fuchsia2Color                                 guifg=#cc00ff
hi default PinkColor                                     guifg=#ff0099
hi default Pink2Color                                    guifg=#ff5599
hi default OliveColor                                    guifg=#666600
hi default PurpleColor                                   guifg=#660099
hi default Purple2Color                                  guifg=#770099
hi default LightOliveColor                               guifg=#999900
hi default xLightOliveColor                              guifg=#999955
hi default GreyColor                                     guifg=#555555
hi default Grey2Color                                    guifg=#777777
hi default Grey3Color                                    guifg=#999999
hi default Grey4Color                                    guifg=#aaaaaa
hi default Grey5Color                                    guifg=#cccccc
hi default MaroonColor                                   guifg=#660000
hi default BrownColor                                    guifg=#663300
hi default Brown2Color                                   guifg=brown
hi default LightBrownColor                               guifg=#996600
hi default VioletColor                                   guifg=#6600ff
hi default Peach5Color                                   guifg=#ff3333
hi default Peach4Color                                   guifg=#ff4444
hi default Peach3Color                                   guifg=#ff5555
hi default Peach2Color                                   guifg=#ff6666
hi default PeachColor                                    guifg=#ff7777
hi default LightPeachColor                               guifg=#ffaaaa
hi default BeigeColor                                    guifg=#f5f5aa
hi default LightPurpleColor                              guifg=#ff80ff
hi default LightBlueColor                                guifg=#80a0ff
hi default LightVioletColor                              guifg=#9988ff
hi default LightRedColor                                 guifg=lightred
hi default DarkMagentaColor                              guifg=DarkMagenta



" NOTE: to see available colors use:
" :runtime syntax/colortest.vim
" opens file: /usr/share/vim/vim82/syntax/colortest.vim
hi Whitebg                  gui=bold guifg=black     guibg=white
hi Redbg                    gui=bold guifg=black     guibg=red
hi Red2bg                   gui=bold guifg=black     guibg=#aa0000
hi RedOrangebg              gui=bold guifg=black     guibg=#ff3300
hi Orangebg                 gui=bold guifg=black     guibg=#ff7700
hi Orange2bg                gui=bold guifg=black     guibg=#ff6600
hi LightOrangebg            gui=bold guifg=black     guibg=#e6A200
hi LightOrange2bg           gui=bold guifg=black     guibg=#cc8800
hi DarkYellowbg             gui=bold guifg=black     guibg=#ffbb00
hi Yellow3bg                gui=bold guifg=black     guibg=#ffcc00
hi Yellow2bg                gui=bold guifg=black     guibg=#ffdd00
hi Yellow1bg                gui=bold guifg=black     guibg=#ffee00
hi Yellowbg                 gui=bold guifg=black     guibg=#ffff00
hi Todo                     gui=bold guifg=black     guibg=#ffff00
hi FluoYellowGreenbg        gui=bold guifg=black     guibg=#ccff00
hi LightYellowbg            gui=bold guifg=black     guibg=#ffff60
hi LightGreenbg             gui=bold guifg=black     guibg=LightGreen
hi FluoGreen0bg             gui=bold guifg=black     guibg=#00ff00
hi FluoGreenbg              gui=bold guifg=black     guibg=#00dd00
hi Note                     gui=bold guifg=black     guibg=#00dd00
hi FluoGreen2bg             gui=bold guifg=black     guibg=#00bb00
hi Green0bg                 gui=bold guifg=black     guibg=#00aa00
hi Greenbg                  gui=bold guifg=black     guibg=#009900
hi Green2bg                 gui=bold guifg=black     guibg=#008000
hi DarkGreenbg              gui=bold guifg=black     guibg=#006600
hi DarkGreen2bg             gui=bold guifg=black     guibg=#005500
hi Tealbg                   gui=bold guifg=black     guibg=#339999
hi Cyanbg                   gui=bold guifg=black     guibg=cyan
hi Blue0bg                  gui=bold guifg=black     guibg=#00bbff
hi Bluebg                   gui=bold guifg=black     guibg=#0099ff
hi Blue2bg                  gui=bold guifg=black     guibg=#0077ff
hi Blue3bg                  gui=bold guifg=black     guibg=#0055ff
hi DarkBluebg               gui=bold guifg=black     guibg=blue
hi DarkBlue2bg              gui=bold guifg=black     guibg=#000099
hi DarkBlue3bg              gui=bold guifg=black     guibg=#000055
hi Pinkbg                   gui=bold guifg=black     guibg=#ff0099
hi Pink2bg                  gui=bold guifg=black     guibg=#ff5599
hi Fuchsiabg                gui=bold guifg=black     guibg=#ff1fef
hi Fuchsia2bg               gui=bold guifg=black     guibg=#cc00ff
hi LightOlivebg             gui=bold guifg=black     guibg=#999900
hi xLightOlivebg            gui=bold guifg=black     guibg=#999955
hi LightBrownbg             gui=bold guifg=black     guibg=#996600
hi Olivebg                  gui=bold guifg=black     guibg=#666600
hi Maroonbg                 gui=bold guifg=black     guibg=#660000
hi Brownbg                  gui=bold guifg=black     guibg=#663300
hi Brown2bg                 gui=bold guifg=black     guibg=brown
hi Greybg                   gui=bold guifg=black     guibg=#555555
hi Grey2bg                  gui=bold guifg=black     guibg=#777777
hi Grey3bg                  gui=bold guifg=black     guibg=#999999
hi Grey4bg                  gui=bold guifg=black     guibg=#aaaaaa
hi Grey5bg                  gui=bold guifg=black     guibg=#cccccc
hi Violetbg                 gui=bold guifg=black     guibg=#6600ff
hi Purplebg                 gui=bold guifg=black     guibg=#660099
hi Purple2bg                gui=bold guifg=black     guibg=#770099
hi Peachbg                  gui=bold guifg=black     guibg=#ff7777
hi LightPeachbg             gui=bold guifg=black     guibg=#ffaaaa
hi Beigebg                  gui=bold guifg=black     guibg=#f5f5aa
hi LightPurplebg            gui=bold guifg=black     guibg=#ff80ff
hi LightBluebg              gui=bold guifg=black     guibg=#80a0ff
hi LightVioletbg            gui=bold guifg=black     guibg=#9988ff
hi DarkMagentabg            gui=bold guifg=black     guibg=DarkMagenta
hi LightRedbg               gui=bold guifg=black     guibg=lightred

hi wBlackbg                 gui=bold guifg=white     guibg=black
hi wRedbg                   gui=bold guifg=white     guibg=red
hi wRed2bg                  gui=bold guifg=white     guibg=#aa0000
hi wRedOrangebg             gui=bold guifg=white     guibg=#ff3300
hi wOrangebg                gui=bold guifg=white     guibg=#ff7700
hi wOrange2bg               gui=bold guifg=white     guibg=#ff6600
hi wLightOrangebg           gui=bold guifg=white     guibg=#e6A200
hi wLightOrange2bg          gui=bold guifg=white     guibg=#cc8800
hi wDarkYellowbg            gui=bold guifg=white     guibg=#ffbb00
hi wFluoYellowGreenbg       gui=bold guifg=white     guibg=#ccff00
hi wYellowbg                gui=bold guifg=white     guibg=#ffff00
hi wLightGreenbg            gui=bold guifg=white     guibg=LightGreen
hi wFluoGreen0bg            gui=bold guifg=white     guibg=#00ff00
hi wFluoGreenbg             gui=bold guifg=white     guibg=#00dd00
hi wFluoGreen2bg            gui=bold guifg=white     guibg=#00bb00
hi wGreen0bg                gui=bold guifg=white     guibg=#00aa00
hi wGreenbg                 gui=bold guifg=white     guibg=#009900
hi wGreen2bg                gui=bold guifg=white     guibg=#008000
hi wDarkGreenbg             gui=bold guifg=white     guibg=#006600
hi wDarkGreen2bg            gui=bold guifg=white     guibg=#005500
hi wTealbg                  gui=bold guifg=white     guibg=#339999
hi wCyanbg                  gui=bold guifg=white     guibg=cyan
hi wBlue0bg                 gui=bold guifg=white     guibg=#00bbff
hi wBluebg                  gui=bold guifg=white     guibg=#0099ff
hi wBlue2bg                 gui=bold guifg=white     guibg=#0077ff
hi wBlue3bg                 gui=bold guifg=white     guibg=#0055ff
hi wDarkBluebg              gui=bold guifg=white     guibg=blue
hi wDarkBlue2bg             gui=bold guifg=white     guibg=#000099
hi wDarkBlue3bg             gui=bold guifg=white     guibg=#000055
hi wPinkbg                  gui=bold guifg=white     guibg=#ff0099
hi wPink2bg                 gui=bold guifg=white     guibg=#ff5599
hi wFuchsiabg               gui=bold guifg=white     guibg=#ff1fef
hi wFuchsia2bg              gui=bold guifg=white     guibg=#cc00ff
hi wLightOlivebg            gui=bold guifg=white     guibg=#999900
hi wxLightOlivebg           gui=bold guifg=white     guibg=#999955
hi wLightBrownbg            gui=bold guifg=white     guibg=#996600
hi wOlivebg                 gui=bold guifg=white     guibg=#666600
hi wMaroonbg                gui=bold guifg=white     guibg=#660000
hi wBrownbg                 gui=bold guifg=white     guibg=#663300
hi wBrown2bg                gui=bold guifg=white     guibg=brown
hi wGreybg                  gui=bold guifg=white     guibg=#555555
hi wGrey2bg                 gui=bold guifg=white     guibg=#777777
hi wGrey3bg                 gui=bold guifg=white     guibg=#999999
hi wGrey4bg                 gui=bold guifg=white     guibg=#aaaaaa
hi wGrey5bg                 gui=bold guifg=white     guibg=#cccccc
hi wVioletbg                gui=bold guifg=white     guibg=#6600ff
hi wPurplebg                gui=bold guifg=white     guibg=#660099
hi wPurple2bg               gui=bold guifg=white     guibg=#770099
hi wPeachbg                 gui=bold guifg=white     guibg=#ff7777
hi wLightPeachbg            gui=bold guifg=white     guibg=#ffaaaa
hi wBeigebg                 gui=bold guifg=white     guibg=#f5f5aa
hi wLightYellowbg           gui=bold guifg=white     guibg=#ffff60
hi wLightPurplebg           gui=bold guifg=white     guibg=#ff80ff
hi wLightBluebg             gui=bold guifg=white     guibg=#80a0ff
hi wLightVioletbg           gui=bold guifg=white     guibg=#9988ff
hi wDarkMagentabg           gui=bold guifg=white     guibg=DarkMagenta
hi wLightRedbg              gui=bold guifg=white     guibg=lightred

" bg mixes
hi CyanOnGrey               gui=bold guifg=Cyan      guibg=#555555
hi CyanOnGrey3              gui=bold guifg=Cyan      guibg=#888888
hi CyanOnGrey2              gui=bold guifg=Cyan      guibg=DarkGrey
hi CyanOnLightGrey          gui=bold guifg=Cyan      guibg=Grey
hi DarkBlueOnTeal           gui=bold guifg=Blue      guibg=DarkCyan
hi LightGreyOnGrey          gui=bold guifg=LightGrey guibg=DarkGrey



" *bold* *italic* *underline* *undercurl* *strikethrough*
" *underdouble* *underdotted* *underdashed* (not available!)
" *standout* *nocombine* *inverse*

" bold and underline
hi default BoldAndUnderline                   gui=bold,underline
hi default BoldAndUnderlineWhite              gui=bold,underline guifg=white
hi default BoldAndUnderlineRed                gui=bold,underline guifg=red
hi default BoldAndUnderlineRed2               gui=bold,underline guifg=#aa0000
hi default BoldAndUnderlineRedOrange          gui=bold,underline guifg=#ff3300
hi default BoldAndUnderlineOrange             gui=bold,underline guifg=#ff7700
hi default BoldAndUnderlineOrange2            gui=bold,underline guifg=#ff5500
hi default BoldAndUnderlineLightOrange        gui=bold,underline guifg=#e6A200
hi default BoldAndUnderlineLightOrange2       gui=bold,underline guifg=#cc8800
hi default BoldAndUnderlineDarkYellow         gui=bold,underline guifg=#ffbb00
hi default BoldAndUnderlineYellow             gui=bold,underline guifg=#ffff00
hi default BoldAndUnderlineFluoYellowGreen    gui=bold,underline guifg=#ccff00
hi default BoldAndUnderlineLightYellow        gui=bold,underline guifg=#ffff60
hi default BoldAndUnderlineLightGreen         gui=bold,underline guifg=LightGreen
hi default BoldAndUnderlineFluoGreen0         gui=bold,underline guifg=#00ff00
hi default BoldAndUnderlineFluoGreen          gui=bold,underline guifg=#00dd00
hi default BoldAndUnderlineFluoGreen2         gui=bold,underline guifg=#00bb00
hi default BoldAndUnderlineGreen0             gui=bold,underline guifg=#00aa00
hi default BoldAndUnderlineGreen              gui=bold,underline guifg=#009900
hi default BoldAndUnderlineGreen2             gui=bold,underline guifg=#008000
hi default BoldAndUnderlineDarkGreen          gui=bold,underline guifg=#006600
hi default BoldAndUnderlineDarkGreen2         gui=bold,underline guifg=#005500
hi default BoldAndUnderlineTeal               gui=bold,underline guifg=#339999
hi default BoldAndUnderlineBlue               gui=bold,underline guifg=#0099ff
hi default BoldAndUnderlineBlue2              gui=bold,underline guifg=#00bbff
hi default BoldAndUnderlineCyan               gui=bold,underline guifg=cyan
hi default BoldAndUnderlineDarkBlue           gui=bold,underline guifg=blue
hi default BoldAndUnderlineFuchsia            gui=bold,underline guifg=#ff1fef
hi default BoldAndUnderlineFuchsia2           gui=bold,underline guifg=#cc00ff
hi default BoldAndUnderlinePink               gui=bold,underline guifg=#ff0099
hi default BoldAndUnderlinePink2              gui=bold,underline guifg=#ff5599
hi default BoldAndUnderlineOlive              gui=bold,underline guifg=#666600
hi default BoldAndUnderlinePurple             gui=bold,underline guifg=#660099
hi default BoldAndUnderlinePurple2            gui=bold,underline guifg=#770099
hi default BoldAndUnderlineLightOlive         gui=bold,underline guifg=#999900
hi default BoldAndUnderlinexLightOlive        gui=bold,underline guifg=#999955
hi default BoldAndUnderlineGrey               gui=bold,underline guifg=#555555
hi default BoldAndUnderlineMaroon             gui=bold,underline guifg=#660000
hi default BoldAndUnderlineBrown              gui=bold,underline guifg=#663300
hi default BoldAndUnderlineBrown2             gui=bold,underline guifg=brown
hi default BoldAndUnderlineLightBrown         gui=bold,underline guifg=#996600
hi default BoldAndUnderlineViolet             gui=bold,underline guifg=#6600ff
hi default BoldAndUnderlinePeach              gui=bold,underline guifg=#ff7777
hi default BoldAndUnderlineLightPeach         gui=bold,underline guifg=#ffaaaa
hi default BoldAndUnderlineBeige              gui=bold,underline guifg=#f5f5aa
hi default BoldAndUnderlineLightPurple        gui=bold,underline guifg=#ff80ff
hi default BoldAndUnderlineLightBlue          gui=bold,underline guifg=#80a0ff
hi default BoldAndUnderlineLightViolet        gui=bold,underline guifg=#9988ff
hi default BoldAndUnderlineLightRed           gui=bold,underline guifg=lightred
hi default BoldAndUnderlineDarkMagenta        gui=bold,underline guifg=DarkMagenta


hi default BoldAndUnderlineBgWhite              gui=bold,underline guifg=black guibg=white
hi default BoldAndUnderlineBgRed                gui=bold,underline guifg=black guibg=red
hi default BoldAndUnderlineBgRed2               gui=bold,underline guifg=black guibg=#aa0000
hi default BoldAndUnderlineBgRedOrange          gui=bold,underline guifg=black guibg=#ff3300
hi default BoldAndUnderlineBgOrange             gui=bold,underline guifg=black guibg=#ff7700
hi default BoldAndUnderlineBgOrange2            gui=bold,underline guifg=black guibg=#ff5500
hi default BoldAndUnderlineBgLightOrange        gui=bold,underline guifg=black guibg=#e6A200
hi default BoldAndUnderlineBgLightOrange2       gui=bold,underline guifg=black guibg=#cc8800
hi default BoldAndUnderlineBgDarkYellow         gui=bold,underline guifg=black guibg=#ffbb00
hi default BoldAndUnderlineBgYellow             gui=bold,underline guifg=black guibg=#ffff00
hi default BoldAndUnderlineBgFluoYellowGreen    gui=bold,underline guifg=black guibg=#ccff00
hi default BoldAndUnderlineBgLightYellow        gui=bold,underline guifg=black guibg=#ffff60
hi default BoldAndUnderlineBgLightGreen         gui=bold,underline guifg=black guibg=LightGreen
hi default BoldAndUnderlineBgFluoGreen0         gui=bold,underline guifg=black guibg=#00ff00
hi default BoldAndUnderlineBgFluoGreen          gui=bold,underline guifg=black guibg=#00dd00
hi default BoldAndUnderlineBgFluoGreen2         gui=bold,underline guifg=black guibg=#00bb00
hi default BoldAndUnderlineBgGreen0             gui=bold,underline guifg=black guibg=#00aa00
hi default BoldAndUnderlineBgGreen              gui=bold,underline guifg=black guibg=#009900
hi default BoldAndUnderlineBgGreen2             gui=bold,underline guifg=black guibg=#008000
hi default BoldAndUnderlineBgDarkGreen          gui=bold,underline guifg=black guibg=#006600
hi default BoldAndUnderlineBgDarkGreen2         gui=bold,underline guifg=black guibg=#005500
hi default BoldAndUnderlineBgTeal               gui=bold,underline guifg=black guibg=#339999
hi default BoldAndUnderlineBgBlue               gui=bold,underline guifg=black guibg=#0099ff
hi default BoldAndUnderlineBgBlue2              gui=bold,underline guifg=black guibg=#00bbff
hi default BoldAndUnderlineBgCyan               gui=bold,underline guifg=black guibg=cyan
hi default BoldAndUnderlineBgDarkBlue           gui=bold,underline guifg=black guibg=blue
hi default BoldAndUnderlineBgFuchsia            gui=bold,underline guifg=black guibg=#ff1fef
hi default BoldAndUnderlineBgPink               gui=bold,underline guifg=black guibg=#ff0099
hi default BoldAndUnderlineBgOlive              gui=bold,underline guifg=black guibg=#666600
hi default BoldAndUnderlineBgPurple             gui=bold,underline guifg=black guibg=#660099
hi default BoldAndUnderlineBgLightOlive         gui=bold,underline guifg=black guibg=#999900
hi default BoldAndUnderlineBgxLightOlive        gui=bold,underline guifg=black guibg=#999955
hi default BoldAndUnderlineBgGrey               gui=bold,underline guifg=black guibg=#555555
hi default BoldAndUnderlineBgMaroon             gui=bold,underline guifg=black guibg=#660000
hi default BoldAndUnderlineBgBrown              gui=bold,underline guifg=black guibg=#663300
hi default BoldAndUnderlineBgBrown2             gui=bold,underline guifg=black guibg=brown
hi default BoldAndUnderlineBgLightBrown         gui=bold,underline guifg=black guibg=#996600
hi default BoldAndUnderlineBgViolet             gui=bold,underline guifg=black guibg=#6600ff
hi default BoldAndUnderlineBgPeach              gui=bold,underline guifg=black guibg=#ff7777
hi default BoldAndUnderlineBgLightPeach         gui=bold,underline guifg=black guibg=#ffaaaa
hi default BoldAndUnderlineBgPurple2            gui=bold,underline guifg=black guibg=#770099
hi default BoldAndUnderlineBgFuchsia2           gui=bold,underline guifg=black guibg=#cc00ff
hi default BoldAndUnderlineBgPink2              gui=bold,underline guifg=black guibg=#ff5599
hi default BoldAndUnderlineBgBeige              gui=bold,underline guifg=black guibg=#f5f5aa
hi default BoldAndUnderlineBgLightPurple        gui=bold,underline guifg=black guibg=#ff80ff
hi default BoldAndUnderlineBgLightBlue          gui=bold,underline guifg=black guibg=#80a0ff
hi default BoldAndUnderlineBgLightViolet        gui=bold,underline guifg=black guibg=#9988ff
hi default BoldAndUnderlineBgLightRed           gui=bold,underline guifg=black guibg=lightred
hi default BoldAndUnderlineBgDarkMagenta        gui=bold,underline guifg=black guibg=DarkMagenta


hi default wBoldAndUnderlineBgWhite              gui=bold,underline guifg=white guibg=white
hi default wBoldAndUnderlineBgRed                gui=bold,underline guifg=white guibg=red
hi default wBoldAndUnderlineBgRed2               gui=bold,underline guifg=white guibg=#aa0000
hi default wBoldAndUnderlineBgRedOrange          gui=bold,underline guifg=white guibg=#ff3300
hi default wBoldAndUnderlineBgOrange             gui=bold,underline guifg=white guibg=#ff7700
hi default wBoldAndUnderlineBgOrange2            gui=bold,underline guifg=white guibg=#ff5500
hi default wBoldAndUnderlineBgLightOrange        gui=bold,underline guifg=white guibg=#e6A200
hi default wBoldAndUnderlineBgLightOrange2       gui=bold,underline guifg=white guibg=#cc8800
hi default wBoldAndUnderlineBgDarkYellow         gui=bold,underline guifg=white guibg=#ffbb00
hi default wBoldAndUnderlineBgYellow             gui=bold,underline guifg=white guibg=#ffff00
hi default wBoldAndUnderlineBgFluoYellowGreen    gui=bold,underline guifg=white guibg=#ccff00
hi default wBoldAndUnderlineBgLightYellow        gui=bold,underline guifg=white guibg=#ffff60
hi default wBoldAndUnderlineBgLightGreen         gui=bold,underline guifg=white guibg=LightGreen
hi default wBoldAndUnderlineBgFluoGreen0         gui=bold,underline guifg=white guibg=#00ff00
hi default wBoldAndUnderlineBgFluoGreen          gui=bold,underline guifg=white guibg=#00dd00
hi default wBoldAndUnderlineBgFluoGreen2         gui=bold,underline guifg=white guibg=#00bb00
hi default wBoldAndUnderlineBgGreen0             gui=bold,underline guifg=white guibg=#00aa00
hi default wBoldAndUnderlineBgGreen              gui=bold,underline guifg=white guibg=#009900
hi default wBoldAndUnderlineBgGreen2             gui=bold,underline guifg=white guibg=#008000
hi default wBoldAndUnderlineBgDarkGreen          gui=bold,underline guifg=white guibg=#006600
hi default wBoldAndUnderlineBgDarkGreen2         gui=bold,underline guifg=white guibg=#005500
hi default wBoldAndUnderlineBgTeal               gui=bold,underline guifg=white guibg=#339999
hi default wBoldAndUnderlineBgBlue               gui=bold,underline guifg=white guibg=#0099ff
hi default wBoldAndUnderlineBgBlue2              gui=bold,underline guifg=white guibg=#00bbff
hi default wBoldAndUnderlineBgCyan               gui=bold,underline guifg=white guibg=cyan
hi default wBoldAndUnderlineBgDarkBlue           gui=bold,underline guifg=white guibg=blue
hi default wBoldAndUnderlineBgFuchsia            gui=bold,underline guifg=white guibg=#ff1fef
hi default wBoldAndUnderlineBgFuchsia2           gui=bold,underline guifg=white guibg=#cc00ff
hi default wBoldAndUnderlineBgPink               gui=bold,underline guifg=white guibg=#ff0099
hi default wBoldAndUnderlineBgOlive              gui=bold,underline guifg=white guibg=#666600
hi default wBoldAndUnderlineBgPurple             gui=bold,underline guifg=white guibg=#660099
hi default wBoldAndUnderlineBgPurple2            gui=bold,underline guifg=white guibg=#770099
hi default wBoldAndUnderlineBgLightOlive         gui=bold,underline guifg=white guibg=#999900
hi default wBoldAndUnderlineBgxLightOlive        gui=bold,underline guifg=white guibg=#999955
hi default wBoldAndUnderlineBgGrey               gui=bold,underline guifg=white guibg=#555555
hi default wBoldAndUnderlineBgMaroon             gui=bold,underline guifg=white guibg=#660000
hi default wBoldAndUnderlineBgBrown              gui=bold,underline guifg=white guibg=#663300
hi default wBoldAndUnderlineBgBrown2             gui=bold,underline guifg=white guibg=brown
hi default wBoldAndUnderlineBgLightBrown         gui=bold,underline guifg=white guibg=#996600
hi default wBoldAndUnderlineBgViolet             gui=bold,underline guifg=white guibg=#6600ff
hi default wBoldAndUnderlineBgPeach              gui=bold,underline guifg=white guibg=#ff7777
hi default wBoldAndUnderlineBgLightPeach         gui=bold,underline guifg=white guibg=#ffaaaa
hi default wBoldAndUnderlineBgPink2              gui=bold,underline guifg=white guibg=#ff5599
hi default wBoldAndUnderlineBgBeige              gui=bold,underline guifg=white guibg=#f5f5aa
hi default wBoldAndUnderlineBgLightPurple        gui=bold,underline guifg=white guibg=#ff80ff
hi default wBoldAndUnderlineBgLightBlue          gui=bold,underline guifg=white guibg=#80a0ff
hi default wBoldAndUnderlineBgLightViolet        gui=bold,underline guifg=white guibg=#9988ff
hi default wBoldAndUnderlineBgLightRed           gui=bold,underline guifg=white guibg=lightred
hi default wBoldAndUnderlineBgDarkMagenta        gui=bold,underline guifg=white guibg=DarkMagenta


" undercurl like in spell errors!
hi default RedUndercurl                          gui=undercurl guisp=Red
hi default DarkBlueUndercurl                     gui=undercurl guisp=Blue
hi default FuchsiaUndercurl                      gui=undercurl guisp=Magenta
hi default CyanUndercurl                         gui=undercurl guisp=Cyan


