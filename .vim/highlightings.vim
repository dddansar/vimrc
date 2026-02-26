"==============================================================================
" File: highlightings.vim
"------------------------------------------------------------------------------
" Description: This file adds highlighting group names that are named based on
"              the color that the group represents. This file also edits the
"              colors of the built-in vim highlighting groups.
"              Gets loaded by .vimrc when opening any file with a vim GUI.
" NOTE: See also colors.vim.
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

" NOTE: If you change the colors here, you change them in all files for all
"       relevant groups.
hi  link    AllFilesFuncColor       HLOrangeB
hi  link    AllFilesDefaultColor    HLDarkorange
hi  link    AllFilesDefinesColor    HLDarkorangeB
hi  link    AllFilesSBrColor        HLDarkorangeB
hi  link    AllFilesOpColor         HLDarkorangeB
hi  link    AllFilesCBrColor        HLDarkorange3B
hi  link    AllFilesTBrColor        HLOrangeredB
hi  link    AllFilesEquality        HLOrangeredB
hi  link    AllFilesArrowsColor     HLHotpinkB
hi  link    AllFilesArrayColor      HLOrangeB
hi  link    AllFilesPointerColor    HLTomato1B
hi  link    AllFilesSpecialColor    HLRed
hi  link    AllFilesSpecialColorB   HLRedB
hi  link    AllFilesSpecialColor2   HLYellowB
hi  link    AllFilesSystemColor     HLYellowB
hi  link    AllFilesSystemColor2    HLGreenB
hi  link    AllFilesSystemColor3    HLForestgreenB
hi  link    AllFilesSystemColor4    HLTealB
hi  link    AllFilesWarningColor    HLRedBU
hi  link    AllFilesNumColor        HLCyan
hi  link    AllFilesCapsColor       HLDodgerblue
hi  link    AllFilesVarColor        HLDodgerblue
hi  link    AllFilesMultVarColor    HLBlue
hi  link    AllFilesMultOpColor     HLBlueB
hi  link    AllFilesCommentColor    HLFuchsia
hi  link    AllFilesComment2Color   HLPurple
hi  link    AllFilesTimeColor       HLForestgreen
hi  link    AllFilesQuotesColor1    HLForestgreen
hi  link    AllFilesQuotesColor2    HLGreen
hi  link    AllFilesQuotesColor3    HLGreen3
hi  link    AllFilesLoopCondColor   HLDarkgreenB
hi  link    AllFilesPathsColor      HLOlive
hi  link    AllFilesPathsColor2     HLKhaki4


" NOTE: See ":help highlight-groups" for all the default highlighting groups.
" NOTE: You can see the current settings with the ":highlight" command.
" I need to clear some of the colors first and then re-link them, otherwise it
" may not be override with hi link.
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
hi clear Todo

" Moved "hi Normal" to main .vimrc file.
" hi Normal                              guifg=grey95      guibg=grey5
hi Pmenu                                                 guibg=grey10
hi PmenuSel                                              guibg=grey20
hi PmenuSbar                                             guibg=white
hi PmenuThumb                                            guibg=green
hi Search                                                guibg=grey50
hi Cursor                              guifg=black       guibg=white
hi NonText                    gui=bold guifg=red         guibg=grey10

hi link Visual                HLGreen1BgB
hi link Ignore                Normal
hi link IncSearch             HLGrey50BgB

hi link Comment               HLFuchsia
hi link LineNr                HLGrey30
hi link Constant              HLCyan
hi link Special               HLDodgerblue

hi link Statement             HLYellowB
hi link Type                  HLGreenB
hi link PreProc               HLDarkorangeB
hi link String                HLForestgreenB

hi link Function              HLHotpinkB
hi link Repeat                HLBlueB
hi link Operator              HLRedB
hi link Exception             HLOliveB

hi link Label                 HLDarkgreenB
hi link Macro                 HLPurpleB
hi link PreCondit             HLKhaki4B
hi link StorageClass          HLGold3B

hi link Tag                   HLYellowB
hi link Float                 HLMaroonB
hi link SpecialComment        HLBrownB
hi link Debug                 HLTealB

hi link Structure             HLSiennaB
hi link Question              HLVioletB

hi link Character             HLCyan
hi link Number                HLCyan
hi link Boolean               HLCyan
hi link Conditional           HLDarkorangeB
hi link Keyword               HLYellowB
hi link Include               HLDarkorangeB
hi link Define                HLDarkorangeB
hi link Typedef               HLGreenB
hi link SpecialChar           HLDodgerblue
hi link Delimiter             HLDodgerblue
hi link Error                 HLRedBgB
hi link Todo                  HLYellow3BgB


" For all supported colors available see:
" $VIMRUNTIME/colors/lists/default.vim which initializes |v:colornames|
" Base colors
hi default HLSnow                 guifg=snow
hi default HLGhostwhite           guifg=ghostwhite
hi default HLWhitesmoke           guifg=whitesmoke
hi default HLGainsboro            guifg=gainsboro
hi default HLFloralwhite          guifg=floralwhite
hi default HLOldlace              guifg=oldlace
hi default HLLinen                guifg=linen
hi default HLAntiquewhite         guifg=antiquewhite
hi default HLPapayawhip           guifg=papayawhip
hi default HLBlanchedalmond       guifg=blanchedalmond
hi default HLBisque               guifg=bisque
hi default HLPeachpuff            guifg=peachpuff
hi default HLNavajowhite          guifg=navajowhite
hi default HLMoccasin             guifg=moccasin
hi default HLCornsilk             guifg=cornsilk
hi default HLIvory                guifg=ivory
hi default HLLemonchiffon         guifg=lemonchiffon
hi default HLSeashell             guifg=seashell
hi default HLHoneydew             guifg=honeydew
hi default HLMintcream            guifg=mintcream
hi default HLAzure                guifg=azure
hi default HLAliceblue            guifg=aliceblue
hi default HLLavender             guifg=lavender
hi default HLLavenderblush        guifg=lavenderblush
hi default HLMistyrose            guifg=mistyrose
hi default HLWhite                guifg=white
hi default HLBlack                guifg=black
hi default HLDarkslategray        guifg=darkslategray
hi default HLDarkslategrey        guifg=darkslategrey
hi default HLDimgray              guifg=dimgray
hi default HLDimgrey              guifg=dimgrey
hi default HLSlategray            guifg=slategray
hi default HLSlategrey            guifg=slategrey
hi default HLLightslategray       guifg=lightslategray
hi default HLLightslategrey       guifg=lightslategrey
hi default HLGray                 guifg=gray
hi default HLGrey                 guifg=grey
hi default HLX11gray              guifg=x11gray
hi default HLX11grey              guifg=x11grey
hi default HLWebgray              guifg=webgray
hi default HLWebgrey              guifg=webgrey
hi default HLLightgrey            guifg=lightgrey
hi default HLLightgray            guifg=lightgray
hi default HLMidnightblue         guifg=midnightblue
hi default HLNavy                 guifg=navy
hi default HLNavyblue             guifg=navyblue
hi default HLCornflowerblue       guifg=cornflowerblue
hi default HLDarkslateblue        guifg=darkslateblue
hi default HLSlateblue            guifg=slateblue
hi default HLMediumslateblue      guifg=mediumslateblue
hi default HLLightslateblue       guifg=lightslateblue
hi default HLMediumblue           guifg=mediumblue
hi default HLRoyalblue            guifg=royalblue
hi default HLBlue                 guifg=blue
hi default HLDodgerblue           guifg=dodgerblue
hi default HLDeepskyblue          guifg=deepskyblue
hi default HLSkyblue              guifg=skyblue
hi default HLLightskyblue         guifg=lightskyblue
hi default HLSteelblue            guifg=steelblue
hi default HLLightsteelblue       guifg=lightsteelblue
hi default HLLightblue            guifg=lightblue
hi default HLPowderblue           guifg=powderblue
hi default HLPaleturquoise        guifg=paleturquoise
hi default HLDarkturquoise        guifg=darkturquoise
hi default HLMediumturquoise      guifg=mediumturquoise
hi default HLTurquoise            guifg=turquoise
hi default HLCyan                 guifg=cyan
hi default HLAqua                 guifg=aqua
hi default HLLightcyan            guifg=lightcyan
hi default HLCadetblue            guifg=cadetblue
hi default HLMediumaquamarine     guifg=mediumaquamarine
hi default HLAquamarine           guifg=aquamarine
hi default HLDarkgreen            guifg=darkgreen
hi default HLDarkolivegreen       guifg=darkolivegreen
hi default HLDarkseagreen         guifg=darkseagreen
hi default HLSeagreen             guifg=seagreen
hi default HLMediumseagreen       guifg=mediumseagreen
hi default HLLightseagreen        guifg=lightseagreen
hi default HLPalegreen            guifg=palegreen
hi default HLSpringgreen          guifg=springgreen
hi default HLLawngreen            guifg=lawngreen
hi default HLGreen                guifg=green
hi default HLLime                 guifg=lime
hi default HLX11green             guifg=x11green
hi default HLWebgreen             guifg=webgreen
hi default HLChartreuse           guifg=chartreuse
hi default HLMediumspringgreen    guifg=mediumspringgreen
hi default HLGreenyellow          guifg=greenyellow
hi default HLLimegreen            guifg=limegreen
hi default HLYellowgreen          guifg=yellowgreen
hi default HLForestgreen          guifg=forestgreen
hi default HLOlivedrab            guifg=olivedrab
hi default HLDarkkhaki            guifg=darkkhaki
hi default HLKhaki                guifg=khaki
hi default HLPalegoldenrod        guifg=palegoldenrod
hi default HLLightgoldenrodyellow guifg=lightgoldenrodyellow
hi default HLLightyellow          guifg=lightyellow
hi default HLYellow               guifg=yellow
hi default HLGold                 guifg=gold
hi default HLLightgoldenrod       guifg=lightgoldenrod
hi default HLGoldenrod            guifg=goldenrod
hi default HLDarkgoldenrod        guifg=darkgoldenrod
hi default HLRosybrown            guifg=rosybrown
hi default HLIndianred            guifg=indianred
hi default HLSaddlebrown          guifg=saddlebrown
hi default HLSienna               guifg=sienna
hi default HLPeru                 guifg=peru
hi default HLBurlywood            guifg=burlywood
hi default HLBeige                guifg=beige
hi default HLWheat                guifg=wheat
hi default HLSandybrown           guifg=sandybrown
hi default HLTan                  guifg=tan
hi default HLChocolate            guifg=chocolate
hi default HLFirebrick            guifg=firebrick
hi default HLBrown                guifg=brown
hi default HLDarksalmon           guifg=darksalmon
hi default HLSalmon               guifg=salmon
hi default HLLightsalmon          guifg=lightsalmon
hi default HLOrange               guifg=orange
hi default HLDarkorange           guifg=darkorange
hi default HLCoral                guifg=coral
hi default HLLightcoral           guifg=lightcoral
hi default HLTomato               guifg=tomato
hi default HLOrangered            guifg=orangered
hi default HLRed                  guifg=red
hi default HLHotpink              guifg=hotpink
hi default HLDeeppink             guifg=deeppink
hi default HLPink                 guifg=pink
hi default HLLightpink            guifg=lightpink
hi default HLPalevioletred        guifg=palevioletred
hi default HLMaroon               guifg=maroon
hi default HLX11maroon            guifg=x11maroon
hi default HLWebmaroon            guifg=webmaroon
hi default HLMediumvioletred      guifg=mediumvioletred
hi default HLVioletred            guifg=violetred
hi default HLMagenta              guifg=magenta
hi default HLFuchsia              guifg=fuchsia
hi default HLViolet               guifg=violet
hi default HLPlum                 guifg=plum
hi default HLOrchid               guifg=orchid
hi default HLMediumorchid         guifg=mediumorchid
hi default HLDarkorchid           guifg=darkorchid
hi default HLDarkviolet           guifg=darkviolet
hi default HLBlueviolet           guifg=blueviolet
hi default HLPurple               guifg=purple
hi default HLX11purple            guifg=x11purple
hi default HLWebpurple            guifg=webpurple
hi default HLMediumpurple         guifg=mediumpurple
hi default HLThistle              guifg=thistle
hi default HLSnow1                guifg=snow1
hi default HLSnow2                guifg=snow2
hi default HLSnow3                guifg=snow3
hi default HLSnow4                guifg=snow4
hi default HLSeashell1            guifg=seashell1
hi default HLSeashell2            guifg=seashell2
hi default HLSeashell3            guifg=seashell3
hi default HLSeashell4            guifg=seashell4
hi default HLAntiquewhite1        guifg=antiquewhite1
hi default HLAntiquewhite2        guifg=antiquewhite2
hi default HLAntiquewhite3        guifg=antiquewhite3
hi default HLAntiquewhite4        guifg=antiquewhite4
hi default HLBisque1              guifg=bisque1
hi default HLBisque2              guifg=bisque2
hi default HLBisque3              guifg=bisque3
hi default HLBisque4              guifg=bisque4
hi default HLPeachpuff1           guifg=peachpuff1
hi default HLPeachpuff2           guifg=peachpuff2
hi default HLPeachpuff3           guifg=peachpuff3
hi default HLPeachpuff4           guifg=peachpuff4
hi default HLNavajowhite1         guifg=navajowhite1
hi default HLNavajowhite2         guifg=navajowhite2
hi default HLNavajowhite3         guifg=navajowhite3
hi default HLNavajowhite4         guifg=navajowhite4
hi default HLLemonchiffon1        guifg=lemonchiffon1
hi default HLLemonchiffon2        guifg=lemonchiffon2
hi default HLLemonchiffon3        guifg=lemonchiffon3
hi default HLLemonchiffon4        guifg=lemonchiffon4
hi default HLCornsilk1            guifg=cornsilk1
hi default HLCornsilk2            guifg=cornsilk2
hi default HLCornsilk3            guifg=cornsilk3
hi default HLCornsilk4            guifg=cornsilk4
hi default HLIvory1               guifg=ivory1
hi default HLIvory2               guifg=ivory2
hi default HLIvory3               guifg=ivory3
hi default HLIvory4               guifg=ivory4
hi default HLHoneydew1            guifg=honeydew1
hi default HLHoneydew2            guifg=honeydew2
hi default HLHoneydew3            guifg=honeydew3
hi default HLHoneydew4            guifg=honeydew4
hi default HLLavenderblush1       guifg=lavenderblush1
hi default HLLavenderblush2       guifg=lavenderblush2
hi default HLLavenderblush3       guifg=lavenderblush3
hi default HLLavenderblush4       guifg=lavenderblush4
hi default HLMistyrose1           guifg=mistyrose1
hi default HLMistyrose2           guifg=mistyrose2
hi default HLMistyrose3           guifg=mistyrose3
hi default HLMistyrose4           guifg=mistyrose4
hi default HLAzure1               guifg=azure1
hi default HLAzure2               guifg=azure2
hi default HLAzure3               guifg=azure3
hi default HLAzure4               guifg=azure4
hi default HLSlateblue1           guifg=slateblue1
hi default HLSlateblue2           guifg=slateblue2
hi default HLSlateblue3           guifg=slateblue3
hi default HLSlateblue4           guifg=slateblue4
hi default HLRoyalblue1           guifg=royalblue1
hi default HLRoyalblue2           guifg=royalblue2
hi default HLRoyalblue3           guifg=royalblue3
hi default HLRoyalblue4           guifg=royalblue4
hi default HLBlue1                guifg=blue1
hi default HLBlue2                guifg=blue2
hi default HLBlue3                guifg=blue3
hi default HLBlue4                guifg=blue4
hi default HLDodgerblue1          guifg=dodgerblue1
hi default HLDodgerblue2          guifg=dodgerblue2
hi default HLDodgerblue3          guifg=dodgerblue3
hi default HLDodgerblue4          guifg=dodgerblue4
hi default HLSteelblue1           guifg=steelblue1
hi default HLSteelblue2           guifg=steelblue2
hi default HLSteelblue3           guifg=steelblue3
hi default HLSteelblue4           guifg=steelblue4
hi default HLDeepskyblue1         guifg=deepskyblue1
hi default HLDeepskyblue2         guifg=deepskyblue2
hi default HLDeepskyblue3         guifg=deepskyblue3
hi default HLDeepskyblue4         guifg=deepskyblue4
hi default HLSkyblue1             guifg=skyblue1
hi default HLSkyblue2             guifg=skyblue2
hi default HLSkyblue3             guifg=skyblue3
hi default HLSkyblue4             guifg=skyblue4
hi default HLLightskyblue1        guifg=lightskyblue1
hi default HLLightskyblue2        guifg=lightskyblue2
hi default HLLightskyblue3        guifg=lightskyblue3
hi default HLLightskyblue4        guifg=lightskyblue4
hi default HLSlategray1           guifg=slategray1
hi default HLSlategray2           guifg=slategray2
hi default HLSlategray3           guifg=slategray3
hi default HLSlategray4           guifg=slategray4
hi default HLLightsteelblue1      guifg=lightsteelblue1
hi default HLLightsteelblue2      guifg=lightsteelblue2
hi default HLLightsteelblue3      guifg=lightsteelblue3
hi default HLLightsteelblue4      guifg=lightsteelblue4
hi default HLLightblue1           guifg=lightblue1
hi default HLLightblue2           guifg=lightblue2
hi default HLLightblue3           guifg=lightblue3
hi default HLLightblue4           guifg=lightblue4
hi default HLLightcyan1           guifg=lightcyan1
hi default HLLightcyan2           guifg=lightcyan2
hi default HLLightcyan3           guifg=lightcyan3
hi default HLLightcyan4           guifg=lightcyan4
hi default HLPaleturquoise1       guifg=paleturquoise1
hi default HLPaleturquoise2       guifg=paleturquoise2
hi default HLPaleturquoise3       guifg=paleturquoise3
hi default HLPaleturquoise4       guifg=paleturquoise4
hi default HLCadetblue1           guifg=cadetblue1
hi default HLCadetblue2           guifg=cadetblue2
hi default HLCadetblue3           guifg=cadetblue3
hi default HLCadetblue4           guifg=cadetblue4
hi default HLTurquoise1           guifg=turquoise1
hi default HLTurquoise2           guifg=turquoise2
hi default HLTurquoise3           guifg=turquoise3
hi default HLTurquoise4           guifg=turquoise4
hi default HLCyan1                guifg=cyan1
hi default HLCyan2                guifg=cyan2
hi default HLCyan3                guifg=cyan3
hi default HLCyan4                guifg=cyan4
hi default HLDarkslategray1       guifg=darkslategray1
hi default HLDarkslategray2       guifg=darkslategray2
hi default HLDarkslategray3       guifg=darkslategray3
hi default HLDarkslategray4       guifg=darkslategray4
hi default HLAquamarine1          guifg=aquamarine1
hi default HLAquamarine2          guifg=aquamarine2
hi default HLAquamarine3          guifg=aquamarine3
hi default HLAquamarine4          guifg=aquamarine4
hi default HLDarkseagreen1        guifg=darkseagreen1
hi default HLDarkseagreen2        guifg=darkseagreen2
hi default HLDarkseagreen3        guifg=darkseagreen3
hi default HLDarkseagreen4        guifg=darkseagreen4
hi default HLSeagreen1            guifg=seagreen1
hi default HLSeagreen2            guifg=seagreen2
hi default HLSeagreen3            guifg=seagreen3
hi default HLSeagreen4            guifg=seagreen4
hi default HLPalegreen1           guifg=palegreen1
hi default HLPalegreen2           guifg=palegreen2
hi default HLPalegreen3           guifg=palegreen3
hi default HLPalegreen4           guifg=palegreen4
hi default HLSpringgreen1         guifg=springgreen1
hi default HLSpringgreen2         guifg=springgreen2
hi default HLSpringgreen3         guifg=springgreen3
hi default HLSpringgreen4         guifg=springgreen4
hi default HLGreen1               guifg=green1
hi default HLGreen2               guifg=green2
hi default HLGreen3               guifg=green3
hi default HLGreen4               guifg=green4
hi default HLChartreuse1          guifg=chartreuse1
hi default HLChartreuse2          guifg=chartreuse2
hi default HLChartreuse3          guifg=chartreuse3
hi default HLChartreuse4          guifg=chartreuse4
hi default HLOlivedrab1           guifg=olivedrab1
hi default HLOlivedrab2           guifg=olivedrab2
hi default HLOlivedrab3           guifg=olivedrab3
hi default HLOlivedrab4           guifg=olivedrab4
hi default HLDarkolivegreen1      guifg=darkolivegreen1
hi default HLDarkolivegreen2      guifg=darkolivegreen2
hi default HLDarkolivegreen3      guifg=darkolivegreen3
hi default HLDarkolivegreen4      guifg=darkolivegreen4
hi default HLKhaki1               guifg=khaki1
hi default HLKhaki2               guifg=khaki2
hi default HLKhaki3               guifg=khaki3
hi default HLKhaki4               guifg=khaki4
hi default HLLightgoldenrod1      guifg=lightgoldenrod1
hi default HLLightgoldenrod2      guifg=lightgoldenrod2
hi default HLLightgoldenrod3      guifg=lightgoldenrod3
hi default HLLightgoldenrod4      guifg=lightgoldenrod4
hi default HLLightyellow1         guifg=lightyellow1
hi default HLLightyellow2         guifg=lightyellow2
hi default HLLightyellow3         guifg=lightyellow3
hi default HLLightyellow4         guifg=lightyellow4
hi default HLYellow1              guifg=yellow1
hi default HLYellow2              guifg=yellow2
hi default HLYellow3              guifg=yellow3
hi default HLYellow4              guifg=yellow4
hi default HLDarkyellow           guifg=darkyellow
hi default HLGold1                guifg=gold1
hi default HLGold2                guifg=gold2
hi default HLGold3                guifg=gold3
hi default HLGold4                guifg=gold4
hi default HLGoldenrod1           guifg=goldenrod1
hi default HLGoldenrod2           guifg=goldenrod2
hi default HLGoldenrod3           guifg=goldenrod3
hi default HLGoldenrod4           guifg=goldenrod4
hi default HLDarkgoldenrod1       guifg=darkgoldenrod1
hi default HLDarkgoldenrod2       guifg=darkgoldenrod2
hi default HLDarkgoldenrod3       guifg=darkgoldenrod3
hi default HLDarkgoldenrod4       guifg=darkgoldenrod4
hi default HLRosybrown1           guifg=rosybrown1
hi default HLRosybrown2           guifg=rosybrown2
hi default HLRosybrown3           guifg=rosybrown3
hi default HLRosybrown4           guifg=rosybrown4
hi default HLIndianred1           guifg=indianred1
hi default HLIndianred2           guifg=indianred2
hi default HLIndianred3           guifg=indianred3
hi default HLIndianred4           guifg=indianred4
hi default HLSienna1              guifg=sienna1
hi default HLSienna2              guifg=sienna2
hi default HLSienna3              guifg=sienna3
hi default HLSienna4              guifg=sienna4
hi default HLBurlywood1           guifg=burlywood1
hi default HLBurlywood2           guifg=burlywood2
hi default HLBurlywood3           guifg=burlywood3
hi default HLBurlywood4           guifg=burlywood4
hi default HLWheat1               guifg=wheat1
hi default HLWheat2               guifg=wheat2
hi default HLWheat3               guifg=wheat3
hi default HLWheat4               guifg=wheat4
hi default HLTan1                 guifg=tan1
hi default HLTan2                 guifg=tan2
hi default HLTan3                 guifg=tan3
hi default HLTan4                 guifg=tan4
hi default HLChocolate1           guifg=chocolate1
hi default HLChocolate2           guifg=chocolate2
hi default HLChocolate3           guifg=chocolate3
hi default HLChocolate4           guifg=chocolate4
hi default HLFirebrick1           guifg=firebrick1
hi default HLFirebrick2           guifg=firebrick2
hi default HLFirebrick3           guifg=firebrick3
hi default HLFirebrick4           guifg=firebrick4
hi default HLBrown1               guifg=brown1
hi default HLBrown2               guifg=brown2
hi default HLBrown3               guifg=brown3
hi default HLBrown4               guifg=brown4
hi default HLSalmon1              guifg=salmon1
hi default HLSalmon2              guifg=salmon2
hi default HLSalmon3              guifg=salmon3
hi default HLSalmon4              guifg=salmon4
hi default HLLightsalmon1         guifg=lightsalmon1
hi default HLLightsalmon2         guifg=lightsalmon2
hi default HLLightsalmon3         guifg=lightsalmon3
hi default HLLightsalmon4         guifg=lightsalmon4
hi default HLOrange1              guifg=orange1
hi default HLOrange2              guifg=orange2
hi default HLOrange3              guifg=orange3
hi default HLOrange4              guifg=orange4
hi default HLDarkorange1          guifg=darkorange1
hi default HLDarkorange2          guifg=darkorange2
hi default HLDarkorange3          guifg=darkorange3
hi default HLDarkorange4          guifg=darkorange4
hi default HLCoral1               guifg=coral1
hi default HLCoral2               guifg=coral2
hi default HLCoral3               guifg=coral3
hi default HLCoral4               guifg=coral4
hi default HLTomato1              guifg=tomato1
hi default HLTomato2              guifg=tomato2
hi default HLTomato3              guifg=tomato3
hi default HLTomato4              guifg=tomato4
hi default HLOrangered1           guifg=orangered1
hi default HLOrangered2           guifg=orangered2
hi default HLOrangered3           guifg=orangered3
hi default HLOrangered4           guifg=orangered4
hi default HLLightred             guifg=lightred
hi default HLRed1                 guifg=red1
hi default HLRed2                 guifg=red2
hi default HLRed3                 guifg=red3
hi default HLRed4                 guifg=red4
hi default HLDeeppink1            guifg=deeppink1
hi default HLDeeppink2            guifg=deeppink2
hi default HLDeeppink3            guifg=deeppink3
hi default HLDeeppink4            guifg=deeppink4
hi default HLHotpink1             guifg=hotpink1
hi default HLHotpink2             guifg=hotpink2
hi default HLHotpink3             guifg=hotpink3
hi default HLHotpink4             guifg=hotpink4
hi default HLPink1                guifg=pink1
hi default HLPink2                guifg=pink2
hi default HLPink3                guifg=pink3
hi default HLPink4                guifg=pink4
hi default HLLightpink1           guifg=lightpink1
hi default HLLightpink2           guifg=lightpink2
hi default HLLightpink3           guifg=lightpink3
hi default HLLightpink4           guifg=lightpink4
hi default HLPalevioletred1       guifg=palevioletred1
hi default HLPalevioletred2       guifg=palevioletred2
hi default HLPalevioletred3       guifg=palevioletred3
hi default HLPalevioletred4       guifg=palevioletred4
hi default HLMaroon1              guifg=maroon1
hi default HLMaroon2              guifg=maroon2
hi default HLMaroon3              guifg=maroon3
hi default HLMaroon4              guifg=maroon4
hi default HLVioletred1           guifg=violetred1
hi default HLVioletred2           guifg=violetred2
hi default HLVioletred3           guifg=violetred3
hi default HLVioletred4           guifg=violetred4
hi default HLLightmagenta         guifg=lightmagenta
hi default HLMagenta1             guifg=magenta1
hi default HLMagenta2             guifg=magenta2
hi default HLMagenta3             guifg=magenta3
hi default HLMagenta4             guifg=magenta4
hi default HLOrchid1              guifg=orchid1
hi default HLOrchid2              guifg=orchid2
hi default HLOrchid3              guifg=orchid3
hi default HLOrchid4              guifg=orchid4
hi default HLPlum1                guifg=plum1
hi default HLPlum2                guifg=plum2
hi default HLPlum3                guifg=plum3
hi default HLPlum4                guifg=plum4
hi default HLMediumorchid1        guifg=mediumorchid1
hi default HLMediumorchid2        guifg=mediumorchid2
hi default HLMediumorchid3        guifg=mediumorchid3
hi default HLMediumorchid4        guifg=mediumorchid4
hi default HLDarkorchid1          guifg=darkorchid1
hi default HLDarkorchid2          guifg=darkorchid2
hi default HLDarkorchid3          guifg=darkorchid3
hi default HLDarkorchid4          guifg=darkorchid4
hi default HLPurple1              guifg=purple1
hi default HLPurple2              guifg=purple2
hi default HLPurple3              guifg=purple3
hi default HLPurple4              guifg=purple4
hi default HLMediumpurple1        guifg=mediumpurple1
hi default HLMediumpurple2        guifg=mediumpurple2
hi default HLMediumpurple3        guifg=mediumpurple3
hi default HLMediumpurple4        guifg=mediumpurple4
hi default HLThistle1             guifg=thistle1
hi default HLThistle2             guifg=thistle2
hi default HLThistle3             guifg=thistle3
hi default HLThistle4             guifg=thistle4
hi default HLGray0                guifg=gray0
hi default HLGrey0                guifg=grey0
hi default HLGray1                guifg=gray1
hi default HLGrey1                guifg=grey1
hi default HLGray2                guifg=gray2
hi default HLGrey2                guifg=grey2
hi default HLGray3                guifg=gray3
hi default HLGrey3                guifg=grey3
hi default HLGray4                guifg=gray4
hi default HLGrey4                guifg=grey4
hi default HLGray5                guifg=gray5
hi default HLGrey5                guifg=grey5
hi default HLGray6                guifg=gray6
hi default HLGrey6                guifg=grey6
hi default HLGray7                guifg=gray7
hi default HLGrey7                guifg=grey7
hi default HLGray8                guifg=gray8
hi default HLGrey8                guifg=grey8
hi default HLGray9                guifg=gray9
hi default HLGrey9                guifg=grey9
hi default HLGray10               guifg=gray10
hi default HLGrey10               guifg=grey10
hi default HLGray11               guifg=gray11
hi default HLGrey11               guifg=grey11
hi default HLGray12               guifg=gray12
hi default HLGrey12               guifg=grey12
hi default HLGray13               guifg=gray13
hi default HLGrey13               guifg=grey13
hi default HLGray14               guifg=gray14
hi default HLGrey14               guifg=grey14
hi default HLGray15               guifg=gray15
hi default HLGrey15               guifg=grey15
hi default HLGray16               guifg=gray16
hi default HLGrey16               guifg=grey16
hi default HLGray17               guifg=gray17
hi default HLGrey17               guifg=grey17
hi default HLGray18               guifg=gray18
hi default HLGrey18               guifg=grey18
hi default HLGray19               guifg=gray19
hi default HLGrey19               guifg=grey19
hi default HLGray20               guifg=gray20
hi default HLGrey20               guifg=grey20
hi default HLGray21               guifg=gray21
hi default HLGrey21               guifg=grey21
hi default HLGray22               guifg=gray22
hi default HLGrey22               guifg=grey22
hi default HLGray23               guifg=gray23
hi default HLGrey23               guifg=grey23
hi default HLGray24               guifg=gray24
hi default HLGrey24               guifg=grey24
hi default HLGray25               guifg=gray25
hi default HLGrey25               guifg=grey25
hi default HLGray26               guifg=gray26
hi default HLGrey26               guifg=grey26
hi default HLGray27               guifg=gray27
hi default HLGrey27               guifg=grey27
hi default HLGray28               guifg=gray28
hi default HLGrey28               guifg=grey28
hi default HLGray29               guifg=gray29
hi default HLGrey29               guifg=grey29
hi default HLGray30               guifg=gray30
hi default HLGrey30               guifg=grey30
hi default HLGray31               guifg=gray31
hi default HLGrey31               guifg=grey31
hi default HLGray32               guifg=gray32
hi default HLGrey32               guifg=grey32
hi default HLGray33               guifg=gray33
hi default HLGrey33               guifg=grey33
hi default HLGray34               guifg=gray34
hi default HLGrey34               guifg=grey34
hi default HLGray35               guifg=gray35
hi default HLGrey35               guifg=grey35
hi default HLGray36               guifg=gray36
hi default HLGrey36               guifg=grey36
hi default HLGray37               guifg=gray37
hi default HLGrey37               guifg=grey37
hi default HLGray38               guifg=gray38
hi default HLGrey38               guifg=grey38
hi default HLGray39               guifg=gray39
hi default HLGrey39               guifg=grey39
hi default HLGray40               guifg=gray40
hi default HLGrey40               guifg=grey40
hi default HLGray41               guifg=gray41
hi default HLGrey41               guifg=grey41
hi default HLGray42               guifg=gray42
hi default HLGrey42               guifg=grey42
hi default HLGray43               guifg=gray43
hi default HLGrey43               guifg=grey43
hi default HLGray44               guifg=gray44
hi default HLGrey44               guifg=grey44
hi default HLGray45               guifg=gray45
hi default HLGrey45               guifg=grey45
hi default HLGray46               guifg=gray46
hi default HLGrey46               guifg=grey46
hi default HLGray47               guifg=gray47
hi default HLGrey47               guifg=grey47
hi default HLGray48               guifg=gray48
hi default HLGrey48               guifg=grey48
hi default HLGray49               guifg=gray49
hi default HLGrey49               guifg=grey49
hi default HLGray50               guifg=gray50
hi default HLGrey50               guifg=grey50
hi default HLGray51               guifg=gray51
hi default HLGrey51               guifg=grey51
hi default HLGray52               guifg=gray52
hi default HLGrey52               guifg=grey52
hi default HLGray53               guifg=gray53
hi default HLGrey53               guifg=grey53
hi default HLGray54               guifg=gray54
hi default HLGrey54               guifg=grey54
hi default HLGray55               guifg=gray55
hi default HLGrey55               guifg=grey55
hi default HLGray56               guifg=gray56
hi default HLGrey56               guifg=grey56
hi default HLGray57               guifg=gray57
hi default HLGrey57               guifg=grey57
hi default HLGray58               guifg=gray58
hi default HLGrey58               guifg=grey58
hi default HLGray59               guifg=gray59
hi default HLGrey59               guifg=grey59
hi default HLGray60               guifg=gray60
hi default HLGrey60               guifg=grey60
hi default HLGray61               guifg=gray61
hi default HLGrey61               guifg=grey61
hi default HLGray62               guifg=gray62
hi default HLGrey62               guifg=grey62
hi default HLGray63               guifg=gray63
hi default HLGrey63               guifg=grey63
hi default HLGray64               guifg=gray64
hi default HLGrey64               guifg=grey64
hi default HLGray65               guifg=gray65
hi default HLGrey65               guifg=grey65
hi default HLGray66               guifg=gray66
hi default HLGrey66               guifg=grey66
hi default HLGray67               guifg=gray67
hi default HLGrey67               guifg=grey67
hi default HLGray68               guifg=gray68
hi default HLGrey68               guifg=grey68
hi default HLGray69               guifg=gray69
hi default HLGrey69               guifg=grey69
hi default HLGray70               guifg=gray70
hi default HLGrey70               guifg=grey70
hi default HLGray71               guifg=gray71
hi default HLGrey71               guifg=grey71
hi default HLGray72               guifg=gray72
hi default HLGrey72               guifg=grey72
hi default HLGray73               guifg=gray73
hi default HLGrey73               guifg=grey73
hi default HLGray74               guifg=gray74
hi default HLGrey74               guifg=grey74
hi default HLGray75               guifg=gray75
hi default HLGrey75               guifg=grey75
hi default HLGray76               guifg=gray76
hi default HLGrey76               guifg=grey76
hi default HLGray77               guifg=gray77
hi default HLGrey77               guifg=grey77
hi default HLGray78               guifg=gray78
hi default HLGrey78               guifg=grey78
hi default HLGray79               guifg=gray79
hi default HLGrey79               guifg=grey79
hi default HLGray80               guifg=gray80
hi default HLGrey80               guifg=grey80
hi default HLGray81               guifg=gray81
hi default HLGrey81               guifg=grey81
hi default HLGray82               guifg=gray82
hi default HLGrey82               guifg=grey82
hi default HLGray83               guifg=gray83
hi default HLGrey83               guifg=grey83
hi default HLGray84               guifg=gray84
hi default HLGrey84               guifg=grey84
hi default HLGray85               guifg=gray85
hi default HLGrey85               guifg=grey85
hi default HLGray86               guifg=gray86
hi default HLGrey86               guifg=grey86
hi default HLGray87               guifg=gray87
hi default HLGrey87               guifg=grey87
hi default HLGray88               guifg=gray88
hi default HLGrey88               guifg=grey88
hi default HLGray89               guifg=gray89
hi default HLGrey89               guifg=grey89
hi default HLGray90               guifg=gray90
hi default HLGrey90               guifg=grey90
hi default HLGray91               guifg=gray91
hi default HLGrey91               guifg=grey91
hi default HLGray92               guifg=gray92
hi default HLGrey92               guifg=grey92
hi default HLGray93               guifg=gray93
hi default HLGrey93               guifg=grey93
hi default HLGray94               guifg=gray94
hi default HLGrey94               guifg=grey94
hi default HLGray95               guifg=gray95
hi default HLGrey95               guifg=grey95
hi default HLGray96               guifg=gray96
hi default HLGrey96               guifg=grey96
hi default HLGray97               guifg=gray97
hi default HLGrey97               guifg=grey97
hi default HLGray98               guifg=gray98
hi default HLGrey98               guifg=grey98
hi default HLGray99               guifg=gray99
hi default HLGrey99               guifg=grey99
hi default HLGray100              guifg=gray100
hi default HLGrey100              guifg=grey100
hi default HLDarkgrey             guifg=darkgrey
hi default HLDarkgray             guifg=darkgray
hi default HLDarkblue             guifg=darkblue
hi default HLDarkcyan             guifg=darkcyan
hi default HLDarkmagenta          guifg=darkmagenta
hi default HLDarkred              guifg=darkred
hi default HLLightgreen           guifg=lightgreen
hi default HLCrimson              guifg=crimson
hi default HLIndigo               guifg=indigo
hi default HLOlive                guifg=olive
hi default HLRebeccapurple        guifg=rebeccapurple
hi default HLSilver               guifg=silver
hi default HLTeal                 guifg=teal


" Bold colors
hi default HLSnowB                 gui=bold guifg=snow
hi default HLGhostwhiteB           gui=bold guifg=ghostwhite
hi default HLWhitesmokeB           gui=bold guifg=whitesmoke
hi default HLGainsboroB            gui=bold guifg=gainsboro
hi default HLFloralwhiteB          gui=bold guifg=floralwhite
hi default HLOldlaceB              gui=bold guifg=oldlace
hi default HLLinenB                gui=bold guifg=linen
hi default HLAntiquewhiteB         gui=bold guifg=antiquewhite
hi default HLPapayawhipB           gui=bold guifg=papayawhip
hi default HLBlanchedalmondB       gui=bold guifg=blanchedalmond
hi default HLBisqueB               gui=bold guifg=bisque
hi default HLPeachpuffB            gui=bold guifg=peachpuff
hi default HLNavajowhiteB          gui=bold guifg=navajowhite
hi default HLMoccasinB             gui=bold guifg=moccasin
hi default HLCornsilkB             gui=bold guifg=cornsilk
hi default HLIvoryB                gui=bold guifg=ivory
hi default HLLemonchiffonB         gui=bold guifg=lemonchiffon
hi default HLSeashellB             gui=bold guifg=seashell
hi default HLHoneydewB             gui=bold guifg=honeydew
hi default HLMintcreamB            gui=bold guifg=mintcream
hi default HLAzureB                gui=bold guifg=azure
hi default HLAliceblueB            gui=bold guifg=aliceblue
hi default HLLavenderB             gui=bold guifg=lavender
hi default HLLavenderblushB        gui=bold guifg=lavenderblush
hi default HLMistyroseB            gui=bold guifg=mistyrose
hi default HLWhiteB                gui=bold guifg=white
hi default HLBlackB                gui=bold guifg=black
hi default HLDarkslategrayB        gui=bold guifg=darkslategray
hi default HLDarkslategreyB        gui=bold guifg=darkslategrey
hi default HLDimgrayB              gui=bold guifg=dimgray
hi default HLDimgreyB              gui=bold guifg=dimgrey
hi default HLSlategrayB            gui=bold guifg=slategray
hi default HLSlategreyB            gui=bold guifg=slategrey
hi default HLLightslategrayB       gui=bold guifg=lightslategray
hi default HLLightslategreyB       gui=bold guifg=lightslategrey
hi default HLGrayB                 gui=bold guifg=gray
hi default HLGreyB                 gui=bold guifg=grey
hi default HLX11grayB              gui=bold guifg=x11gray
hi default HLX11greyB              gui=bold guifg=x11grey
hi default HLWebgrayB              gui=bold guifg=webgray
hi default HLWebgreyB              gui=bold guifg=webgrey
hi default HLLightgreyB            gui=bold guifg=lightgrey
hi default HLLightgrayB            gui=bold guifg=lightgray
hi default HLMidnightblueB         gui=bold guifg=midnightblue
hi default HLNavyB                 gui=bold guifg=navy
hi default HLNavyblueB             gui=bold guifg=navyblue
hi default HLCornflowerblueB       gui=bold guifg=cornflowerblue
hi default HLDarkslateblueB        gui=bold guifg=darkslateblue
hi default HLSlateblueB            gui=bold guifg=slateblue
hi default HLMediumslateblueB      gui=bold guifg=mediumslateblue
hi default HLLightslateblueB       gui=bold guifg=lightslateblue
hi default HLMediumblueB           gui=bold guifg=mediumblue
hi default HLRoyalblueB            gui=bold guifg=royalblue
hi default HLBlueB                 gui=bold guifg=blue
hi default HLDodgerblueB           gui=bold guifg=dodgerblue
hi default HLDeepskyblueB          gui=bold guifg=deepskyblue
hi default HLSkyblueB              gui=bold guifg=skyblue
hi default HLLightskyblueB         gui=bold guifg=lightskyblue
hi default HLSteelblueB            gui=bold guifg=steelblue
hi default HLLightsteelblueB       gui=bold guifg=lightsteelblue
hi default HLLightblueB            gui=bold guifg=lightblue
hi default HLPowderblueB           gui=bold guifg=powderblue
hi default HLPaleturquoiseB        gui=bold guifg=paleturquoise
hi default HLDarkturquoiseB        gui=bold guifg=darkturquoise
hi default HLMediumturquoiseB      gui=bold guifg=mediumturquoise
hi default HLTurquoiseB            gui=bold guifg=turquoise
hi default HLCyanB                 gui=bold guifg=cyan
hi default HLAquaB                 gui=bold guifg=aqua
hi default HLLightcyanB            gui=bold guifg=lightcyan
hi default HLCadetblueB            gui=bold guifg=cadetblue
hi default HLMediumaquamarineB     gui=bold guifg=mediumaquamarine
hi default HLAquamarineB           gui=bold guifg=aquamarine
hi default HLDarkgreenB            gui=bold guifg=darkgreen
hi default HLDarkolivegreenB       gui=bold guifg=darkolivegreen
hi default HLDarkseagreenB         gui=bold guifg=darkseagreen
hi default HLSeagreenB             gui=bold guifg=seagreen
hi default HLMediumseagreenB       gui=bold guifg=mediumseagreen
hi default HLLightseagreenB        gui=bold guifg=lightseagreen
hi default HLPalegreenB            gui=bold guifg=palegreen
hi default HLSpringgreenB          gui=bold guifg=springgreen
hi default HLLawngreenB            gui=bold guifg=lawngreen
hi default HLGreenB                gui=bold guifg=green
hi default HLLimeB                 gui=bold guifg=lime
hi default HLX11greenB             gui=bold guifg=x11green
hi default HLWebgreenB             gui=bold guifg=webgreen
hi default HLChartreuseB           gui=bold guifg=chartreuse
hi default HLMediumspringgreenB    gui=bold guifg=mediumspringgreen
hi default HLGreenyellowB          gui=bold guifg=greenyellow
hi default HLLimegreenB            gui=bold guifg=limegreen
hi default HLYellowgreenB          gui=bold guifg=yellowgreen
hi default HLForestgreenB          gui=bold guifg=forestgreen
hi default HLOlivedrabB            gui=bold guifg=olivedrab
hi default HLDarkkhakiB            gui=bold guifg=darkkhaki
hi default HLKhakiB                gui=bold guifg=khaki
hi default HLPalegoldenrodB        gui=bold guifg=palegoldenrod
hi default HLLightgoldenrodyellowB gui=bold guifg=lightgoldenrodyellow
hi default HLLightyellowB          gui=bold guifg=lightyellow
hi default HLYellowB               gui=bold guifg=yellow
hi default HLGoldB                 gui=bold guifg=gold
hi default HLLightgoldenrodB       gui=bold guifg=lightgoldenrod
hi default HLGoldenrodB            gui=bold guifg=goldenrod
hi default HLDarkgoldenrodB        gui=bold guifg=darkgoldenrod
hi default HLRosybrownB            gui=bold guifg=rosybrown
hi default HLIndianredB            gui=bold guifg=indianred
hi default HLSaddlebrownB          gui=bold guifg=saddlebrown
hi default HLSiennaB               gui=bold guifg=sienna
hi default HLPeruB                 gui=bold guifg=peru
hi default HLBurlywoodB            gui=bold guifg=burlywood
hi default HLBeigeB                gui=bold guifg=beige
hi default HLWheatB                gui=bold guifg=wheat
hi default HLSandybrownB           gui=bold guifg=sandybrown
hi default HLTanB                  gui=bold guifg=tan
hi default HLChocolateB            gui=bold guifg=chocolate
hi default HLFirebrickB            gui=bold guifg=firebrick
hi default HLBrownB                gui=bold guifg=brown
hi default HLDarksalmonB           gui=bold guifg=darksalmon
hi default HLSalmonB               gui=bold guifg=salmon
hi default HLLightsalmonB          gui=bold guifg=lightsalmon
hi default HLOrangeB               gui=bold guifg=orange
hi default HLDarkorangeB           gui=bold guifg=darkorange
hi default HLCoralB                gui=bold guifg=coral
hi default HLLightcoralB           gui=bold guifg=lightcoral
hi default HLTomatoB               gui=bold guifg=tomato
hi default HLOrangeredB            gui=bold guifg=orangered
hi default HLRedB                  gui=bold guifg=red
hi default HLHotpinkB              gui=bold guifg=hotpink
hi default HLDeeppinkB             gui=bold guifg=deeppink
hi default HLPinkB                 gui=bold guifg=pink
hi default HLLightpinkB            gui=bold guifg=lightpink
hi default HLPalevioletredB        gui=bold guifg=palevioletred
hi default HLMaroonB               gui=bold guifg=maroon
hi default HLX11maroonB            gui=bold guifg=x11maroon
hi default HLWebmaroonB            gui=bold guifg=webmaroon
hi default HLMediumvioletredB      gui=bold guifg=mediumvioletred
hi default HLVioletredB            gui=bold guifg=violetred
hi default HLMagentaB              gui=bold guifg=magenta
hi default HLFuchsiaB              gui=bold guifg=fuchsia
hi default HLVioletB               gui=bold guifg=violet
hi default HLPlumB                 gui=bold guifg=plum
hi default HLOrchidB               gui=bold guifg=orchid
hi default HLMediumorchidB         gui=bold guifg=mediumorchid
hi default HLDarkorchidB           gui=bold guifg=darkorchid
hi default HLDarkvioletB           gui=bold guifg=darkviolet
hi default HLBluevioletB           gui=bold guifg=blueviolet
hi default HLPurpleB               gui=bold guifg=purple
hi default HLX11purpleB            gui=bold guifg=x11purple
hi default HLWebpurpleB            gui=bold guifg=webpurple
hi default HLMediumpurpleB         gui=bold guifg=mediumpurple
hi default HLThistleB              gui=bold guifg=thistle
hi default HLSnow1B                gui=bold guifg=snow1
hi default HLSnow2B                gui=bold guifg=snow2
hi default HLSnow3B                gui=bold guifg=snow3
hi default HLSnow4B                gui=bold guifg=snow4
hi default HLSeashell1B            gui=bold guifg=seashell1
hi default HLSeashell2B            gui=bold guifg=seashell2
hi default HLSeashell3B            gui=bold guifg=seashell3
hi default HLSeashell4B            gui=bold guifg=seashell4
hi default HLAntiquewhite1B        gui=bold guifg=antiquewhite1
hi default HLAntiquewhite2B        gui=bold guifg=antiquewhite2
hi default HLAntiquewhite3B        gui=bold guifg=antiquewhite3
hi default HLAntiquewhite4B        gui=bold guifg=antiquewhite4
hi default HLBisque1B              gui=bold guifg=bisque1
hi default HLBisque2B              gui=bold guifg=bisque2
hi default HLBisque3B              gui=bold guifg=bisque3
hi default HLBisque4B              gui=bold guifg=bisque4
hi default HLPeachpuff1B           gui=bold guifg=peachpuff1
hi default HLPeachpuff2B           gui=bold guifg=peachpuff2
hi default HLPeachpuff3B           gui=bold guifg=peachpuff3
hi default HLPeachpuff4B           gui=bold guifg=peachpuff4
hi default HLNavajowhite1B         gui=bold guifg=navajowhite1
hi default HLNavajowhite2B         gui=bold guifg=navajowhite2
hi default HLNavajowhite3B         gui=bold guifg=navajowhite3
hi default HLNavajowhite4B         gui=bold guifg=navajowhite4
hi default HLLemonchiffon1B        gui=bold guifg=lemonchiffon1
hi default HLLemonchiffon2B        gui=bold guifg=lemonchiffon2
hi default HLLemonchiffon3B        gui=bold guifg=lemonchiffon3
hi default HLLemonchiffon4B        gui=bold guifg=lemonchiffon4
hi default HLCornsilk1B            gui=bold guifg=cornsilk1
hi default HLCornsilk2B            gui=bold guifg=cornsilk2
hi default HLCornsilk3B            gui=bold guifg=cornsilk3
hi default HLCornsilk4B            gui=bold guifg=cornsilk4
hi default HLIvory1B               gui=bold guifg=ivory1
hi default HLIvory2B               gui=bold guifg=ivory2
hi default HLIvory3B               gui=bold guifg=ivory3
hi default HLIvory4B               gui=bold guifg=ivory4
hi default HLHoneydew1B            gui=bold guifg=honeydew1
hi default HLHoneydew2B            gui=bold guifg=honeydew2
hi default HLHoneydew3B            gui=bold guifg=honeydew3
hi default HLHoneydew4B            gui=bold guifg=honeydew4
hi default HLLavenderblush1B       gui=bold guifg=lavenderblush1
hi default HLLavenderblush2B       gui=bold guifg=lavenderblush2
hi default HLLavenderblush3B       gui=bold guifg=lavenderblush3
hi default HLLavenderblush4B       gui=bold guifg=lavenderblush4
hi default HLMistyrose1B           gui=bold guifg=mistyrose1
hi default HLMistyrose2B           gui=bold guifg=mistyrose2
hi default HLMistyrose3B           gui=bold guifg=mistyrose3
hi default HLMistyrose4B           gui=bold guifg=mistyrose4
hi default HLAzure1B               gui=bold guifg=azure1
hi default HLAzure2B               gui=bold guifg=azure2
hi default HLAzure3B               gui=bold guifg=azure3
hi default HLAzure4B               gui=bold guifg=azure4
hi default HLSlateblue1B           gui=bold guifg=slateblue1
hi default HLSlateblue2B           gui=bold guifg=slateblue2
hi default HLSlateblue3B           gui=bold guifg=slateblue3
hi default HLSlateblue4B           gui=bold guifg=slateblue4
hi default HLRoyalblue1B           gui=bold guifg=royalblue1
hi default HLRoyalblue2B           gui=bold guifg=royalblue2
hi default HLRoyalblue3B           gui=bold guifg=royalblue3
hi default HLRoyalblue4B           gui=bold guifg=royalblue4
hi default HLBlue1B                gui=bold guifg=blue1
hi default HLBlue2B                gui=bold guifg=blue2
hi default HLBlue3B                gui=bold guifg=blue3
hi default HLBlue4B                gui=bold guifg=blue4
hi default HLDodgerblue1B          gui=bold guifg=dodgerblue1
hi default HLDodgerblue2B          gui=bold guifg=dodgerblue2
hi default HLDodgerblue3B          gui=bold guifg=dodgerblue3
hi default HLDodgerblue4B          gui=bold guifg=dodgerblue4
hi default HLSteelblue1B           gui=bold guifg=steelblue1
hi default HLSteelblue2B           gui=bold guifg=steelblue2
hi default HLSteelblue3B           gui=bold guifg=steelblue3
hi default HLSteelblue4B           gui=bold guifg=steelblue4
hi default HLDeepskyblue1B         gui=bold guifg=deepskyblue1
hi default HLDeepskyblue2B         gui=bold guifg=deepskyblue2
hi default HLDeepskyblue3B         gui=bold guifg=deepskyblue3
hi default HLDeepskyblue4B         gui=bold guifg=deepskyblue4
hi default HLSkyblue1B             gui=bold guifg=skyblue1
hi default HLSkyblue2B             gui=bold guifg=skyblue2
hi default HLSkyblue3B             gui=bold guifg=skyblue3
hi default HLSkyblue4B             gui=bold guifg=skyblue4
hi default HLLightskyblue1B        gui=bold guifg=lightskyblue1
hi default HLLightskyblue2B        gui=bold guifg=lightskyblue2
hi default HLLightskyblue3B        gui=bold guifg=lightskyblue3
hi default HLLightskyblue4B        gui=bold guifg=lightskyblue4
hi default HLSlategray1B           gui=bold guifg=slategray1
hi default HLSlategray2B           gui=bold guifg=slategray2
hi default HLSlategray3B           gui=bold guifg=slategray3
hi default HLSlategray4B           gui=bold guifg=slategray4
hi default HLLightsteelblue1B      gui=bold guifg=lightsteelblue1
hi default HLLightsteelblue2B      gui=bold guifg=lightsteelblue2
hi default HLLightsteelblue3B      gui=bold guifg=lightsteelblue3
hi default HLLightsteelblue4B      gui=bold guifg=lightsteelblue4
hi default HLLightblue1B           gui=bold guifg=lightblue1
hi default HLLightblue2B           gui=bold guifg=lightblue2
hi default HLLightblue3B           gui=bold guifg=lightblue3
hi default HLLightblue4B           gui=bold guifg=lightblue4
hi default HLLightcyan1B           gui=bold guifg=lightcyan1
hi default HLLightcyan2B           gui=bold guifg=lightcyan2
hi default HLLightcyan3B           gui=bold guifg=lightcyan3
hi default HLLightcyan4B           gui=bold guifg=lightcyan4
hi default HLPaleturquoise1B       gui=bold guifg=paleturquoise1
hi default HLPaleturquoise2B       gui=bold guifg=paleturquoise2
hi default HLPaleturquoise3B       gui=bold guifg=paleturquoise3
hi default HLPaleturquoise4B       gui=bold guifg=paleturquoise4
hi default HLCadetblue1B           gui=bold guifg=cadetblue1
hi default HLCadetblue2B           gui=bold guifg=cadetblue2
hi default HLCadetblue3B           gui=bold guifg=cadetblue3
hi default HLCadetblue4B           gui=bold guifg=cadetblue4
hi default HLTurquoise1B           gui=bold guifg=turquoise1
hi default HLTurquoise2B           gui=bold guifg=turquoise2
hi default HLTurquoise3B           gui=bold guifg=turquoise3
hi default HLTurquoise4B           gui=bold guifg=turquoise4
hi default HLCyan1B                gui=bold guifg=cyan1
hi default HLCyan2B                gui=bold guifg=cyan2
hi default HLCyan3B                gui=bold guifg=cyan3
hi default HLCyan4B                gui=bold guifg=cyan4
hi default HLDarkslategray1B       gui=bold guifg=darkslategray1
hi default HLDarkslategray2B       gui=bold guifg=darkslategray2
hi default HLDarkslategray3B       gui=bold guifg=darkslategray3
hi default HLDarkslategray4B       gui=bold guifg=darkslategray4
hi default HLAquamarine1B          gui=bold guifg=aquamarine1
hi default HLAquamarine2B          gui=bold guifg=aquamarine2
hi default HLAquamarine3B          gui=bold guifg=aquamarine3
hi default HLAquamarine4B          gui=bold guifg=aquamarine4
hi default HLDarkseagreen1B        gui=bold guifg=darkseagreen1
hi default HLDarkseagreen2B        gui=bold guifg=darkseagreen2
hi default HLDarkseagreen3B        gui=bold guifg=darkseagreen3
hi default HLDarkseagreen4B        gui=bold guifg=darkseagreen4
hi default HLSeagreen1B            gui=bold guifg=seagreen1
hi default HLSeagreen2B            gui=bold guifg=seagreen2
hi default HLSeagreen3B            gui=bold guifg=seagreen3
hi default HLSeagreen4B            gui=bold guifg=seagreen4
hi default HLPalegreen1B           gui=bold guifg=palegreen1
hi default HLPalegreen2B           gui=bold guifg=palegreen2
hi default HLPalegreen3B           gui=bold guifg=palegreen3
hi default HLPalegreen4B           gui=bold guifg=palegreen4
hi default HLSpringgreen1B         gui=bold guifg=springgreen1
hi default HLSpringgreen2B         gui=bold guifg=springgreen2
hi default HLSpringgreen3B         gui=bold guifg=springgreen3
hi default HLSpringgreen4B         gui=bold guifg=springgreen4
hi default HLGreen1B               gui=bold guifg=green1
hi default HLGreen2B               gui=bold guifg=green2
hi default HLGreen3B               gui=bold guifg=green3
hi default HLGreen4B               gui=bold guifg=green4
hi default HLChartreuse1B          gui=bold guifg=chartreuse1
hi default HLChartreuse2B          gui=bold guifg=chartreuse2
hi default HLChartreuse3B          gui=bold guifg=chartreuse3
hi default HLChartreuse4B          gui=bold guifg=chartreuse4
hi default HLOlivedrab1B           gui=bold guifg=olivedrab1
hi default HLOlivedrab2B           gui=bold guifg=olivedrab2
hi default HLOlivedrab3B           gui=bold guifg=olivedrab3
hi default HLOlivedrab4B           gui=bold guifg=olivedrab4
hi default HLDarkolivegreen1B      gui=bold guifg=darkolivegreen1
hi default HLDarkolivegreen2B      gui=bold guifg=darkolivegreen2
hi default HLDarkolivegreen3B      gui=bold guifg=darkolivegreen3
hi default HLDarkolivegreen4B      gui=bold guifg=darkolivegreen4
hi default HLKhaki1B               gui=bold guifg=khaki1
hi default HLKhaki2B               gui=bold guifg=khaki2
hi default HLKhaki3B               gui=bold guifg=khaki3
hi default HLKhaki4B               gui=bold guifg=khaki4
hi default HLLightgoldenrod1B      gui=bold guifg=lightgoldenrod1
hi default HLLightgoldenrod2B      gui=bold guifg=lightgoldenrod2
hi default HLLightgoldenrod3B      gui=bold guifg=lightgoldenrod3
hi default HLLightgoldenrod4B      gui=bold guifg=lightgoldenrod4
hi default HLLightyellow1B         gui=bold guifg=lightyellow1
hi default HLLightyellow2B         gui=bold guifg=lightyellow2
hi default HLLightyellow3B         gui=bold guifg=lightyellow3
hi default HLLightyellow4B         gui=bold guifg=lightyellow4
hi default HLYellow1B              gui=bold guifg=yellow1
hi default HLYellow2B              gui=bold guifg=yellow2
hi default HLYellow3B              gui=bold guifg=yellow3
hi default HLYellow4B              gui=bold guifg=yellow4
hi default HLDarkyellowB           gui=bold guifg=darkyellow
hi default HLGold1B                gui=bold guifg=gold1
hi default HLGold2B                gui=bold guifg=gold2
hi default HLGold3B                gui=bold guifg=gold3
hi default HLGold4B                gui=bold guifg=gold4
hi default HLGoldenrod1B           gui=bold guifg=goldenrod1
hi default HLGoldenrod2B           gui=bold guifg=goldenrod2
hi default HLGoldenrod3B           gui=bold guifg=goldenrod3
hi default HLGoldenrod4B           gui=bold guifg=goldenrod4
hi default HLDarkgoldenrod1B       gui=bold guifg=darkgoldenrod1
hi default HLDarkgoldenrod2B       gui=bold guifg=darkgoldenrod2
hi default HLDarkgoldenrod3B       gui=bold guifg=darkgoldenrod3
hi default HLDarkgoldenrod4B       gui=bold guifg=darkgoldenrod4
hi default HLRosybrown1B           gui=bold guifg=rosybrown1
hi default HLRosybrown2B           gui=bold guifg=rosybrown2
hi default HLRosybrown3B           gui=bold guifg=rosybrown3
hi default HLRosybrown4B           gui=bold guifg=rosybrown4
hi default HLIndianred1B           gui=bold guifg=indianred1
hi default HLIndianred2B           gui=bold guifg=indianred2
hi default HLIndianred3B           gui=bold guifg=indianred3
hi default HLIndianred4B           gui=bold guifg=indianred4
hi default HLSienna1B              gui=bold guifg=sienna1
hi default HLSienna2B              gui=bold guifg=sienna2
hi default HLSienna3B              gui=bold guifg=sienna3
hi default HLSienna4B              gui=bold guifg=sienna4
hi default HLBurlywood1B           gui=bold guifg=burlywood1
hi default HLBurlywood2B           gui=bold guifg=burlywood2
hi default HLBurlywood3B           gui=bold guifg=burlywood3
hi default HLBurlywood4B           gui=bold guifg=burlywood4
hi default HLWheat1B               gui=bold guifg=wheat1
hi default HLWheat2B               gui=bold guifg=wheat2
hi default HLWheat3B               gui=bold guifg=wheat3
hi default HLWheat4B               gui=bold guifg=wheat4
hi default HLTan1B                 gui=bold guifg=tan1
hi default HLTan2B                 gui=bold guifg=tan2
hi default HLTan3B                 gui=bold guifg=tan3
hi default HLTan4B                 gui=bold guifg=tan4
hi default HLChocolate1B           gui=bold guifg=chocolate1
hi default HLChocolate2B           gui=bold guifg=chocolate2
hi default HLChocolate3B           gui=bold guifg=chocolate3
hi default HLChocolate4B           gui=bold guifg=chocolate4
hi default HLFirebrick1B           gui=bold guifg=firebrick1
hi default HLFirebrick2B           gui=bold guifg=firebrick2
hi default HLFirebrick3B           gui=bold guifg=firebrick3
hi default HLFirebrick4B           gui=bold guifg=firebrick4
hi default HLBrown1B               gui=bold guifg=brown1
hi default HLBrown2B               gui=bold guifg=brown2
hi default HLBrown3B               gui=bold guifg=brown3
hi default HLBrown4B               gui=bold guifg=brown4
hi default HLSalmon1B              gui=bold guifg=salmon1
hi default HLSalmon2B              gui=bold guifg=salmon2
hi default HLSalmon3B              gui=bold guifg=salmon3
hi default HLSalmon4B              gui=bold guifg=salmon4
hi default HLLightsalmon1B         gui=bold guifg=lightsalmon1
hi default HLLightsalmon2B         gui=bold guifg=lightsalmon2
hi default HLLightsalmon3B         gui=bold guifg=lightsalmon3
hi default HLLightsalmon4B         gui=bold guifg=lightsalmon4
hi default HLOrange1B              gui=bold guifg=orange1
hi default HLOrange2B              gui=bold guifg=orange2
hi default HLOrange3B              gui=bold guifg=orange3
hi default HLOrange4B              gui=bold guifg=orange4
hi default HLDarkorange1B          gui=bold guifg=darkorange1
hi default HLDarkorange2B          gui=bold guifg=darkorange2
hi default HLDarkorange3B          gui=bold guifg=darkorange3
hi default HLDarkorange4B          gui=bold guifg=darkorange4
hi default HLCoral1B               gui=bold guifg=coral1
hi default HLCoral2B               gui=bold guifg=coral2
hi default HLCoral3B               gui=bold guifg=coral3
hi default HLCoral4B               gui=bold guifg=coral4
hi default HLTomato1B              gui=bold guifg=tomato1
hi default HLTomato2B              gui=bold guifg=tomato2
hi default HLTomato3B              gui=bold guifg=tomato3
hi default HLTomato4B              gui=bold guifg=tomato4
hi default HLOrangered1B           gui=bold guifg=orangered1
hi default HLOrangered2B           gui=bold guifg=orangered2
hi default HLOrangered3B           gui=bold guifg=orangered3
hi default HLOrangered4B           gui=bold guifg=orangered4
hi default HLLightredB             gui=bold guifg=lightred
hi default HLRed1B                 gui=bold guifg=red1
hi default HLRed2B                 gui=bold guifg=red2
hi default HLRed3B                 gui=bold guifg=red3
hi default HLRed4B                 gui=bold guifg=red4
hi default HLDeeppink1B            gui=bold guifg=deeppink1
hi default HLDeeppink2B            gui=bold guifg=deeppink2
hi default HLDeeppink3B            gui=bold guifg=deeppink3
hi default HLDeeppink4B            gui=bold guifg=deeppink4
hi default HLHotpink1B             gui=bold guifg=hotpink1
hi default HLHotpink2B             gui=bold guifg=hotpink2
hi default HLHotpink3B             gui=bold guifg=hotpink3
hi default HLHotpink4B             gui=bold guifg=hotpink4
hi default HLPink1B                gui=bold guifg=pink1
hi default HLPink2B                gui=bold guifg=pink2
hi default HLPink3B                gui=bold guifg=pink3
hi default HLPink4B                gui=bold guifg=pink4
hi default HLLightpink1B           gui=bold guifg=lightpink1
hi default HLLightpink2B           gui=bold guifg=lightpink2
hi default HLLightpink3B           gui=bold guifg=lightpink3
hi default HLLightpink4B           gui=bold guifg=lightpink4
hi default HLPalevioletred1B       gui=bold guifg=palevioletred1
hi default HLPalevioletred2B       gui=bold guifg=palevioletred2
hi default HLPalevioletred3B       gui=bold guifg=palevioletred3
hi default HLPalevioletred4B       gui=bold guifg=palevioletred4
hi default HLMaroon1B              gui=bold guifg=maroon1
hi default HLMaroon2B              gui=bold guifg=maroon2
hi default HLMaroon3B              gui=bold guifg=maroon3
hi default HLMaroon4B              gui=bold guifg=maroon4
hi default HLVioletred1B           gui=bold guifg=violetred1
hi default HLVioletred2B           gui=bold guifg=violetred2
hi default HLVioletred3B           gui=bold guifg=violetred3
hi default HLVioletred4B           gui=bold guifg=violetred4
hi default HLLightmagentaB         gui=bold guifg=lightmagenta
hi default HLMagenta1B             gui=bold guifg=magenta1
hi default HLMagenta2B             gui=bold guifg=magenta2
hi default HLMagenta3B             gui=bold guifg=magenta3
hi default HLMagenta4B             gui=bold guifg=magenta4
hi default HLOrchid1B              gui=bold guifg=orchid1
hi default HLOrchid2B              gui=bold guifg=orchid2
hi default HLOrchid3B              gui=bold guifg=orchid3
hi default HLOrchid4B              gui=bold guifg=orchid4
hi default HLPlum1B                gui=bold guifg=plum1
hi default HLPlum2B                gui=bold guifg=plum2
hi default HLPlum3B                gui=bold guifg=plum3
hi default HLPlum4B                gui=bold guifg=plum4
hi default HLMediumorchid1B        gui=bold guifg=mediumorchid1
hi default HLMediumorchid2B        gui=bold guifg=mediumorchid2
hi default HLMediumorchid3B        gui=bold guifg=mediumorchid3
hi default HLMediumorchid4B        gui=bold guifg=mediumorchid4
hi default HLDarkorchid1B          gui=bold guifg=darkorchid1
hi default HLDarkorchid2B          gui=bold guifg=darkorchid2
hi default HLDarkorchid3B          gui=bold guifg=darkorchid3
hi default HLDarkorchid4B          gui=bold guifg=darkorchid4
hi default HLPurple1B              gui=bold guifg=purple1
hi default HLPurple2B              gui=bold guifg=purple2
hi default HLPurple3B              gui=bold guifg=purple3
hi default HLPurple4B              gui=bold guifg=purple4
hi default HLMediumpurple1B        gui=bold guifg=mediumpurple1
hi default HLMediumpurple2B        gui=bold guifg=mediumpurple2
hi default HLMediumpurple3B        gui=bold guifg=mediumpurple3
hi default HLMediumpurple4B        gui=bold guifg=mediumpurple4
hi default HLThistle1B             gui=bold guifg=thistle1
hi default HLThistle2B             gui=bold guifg=thistle2
hi default HLThistle3B             gui=bold guifg=thistle3
hi default HLThistle4B             gui=bold guifg=thistle4
hi default HLGray0B                gui=bold guifg=gray0
hi default HLGrey0B                gui=bold guifg=grey0
hi default HLGray1B                gui=bold guifg=gray1
hi default HLGrey1B                gui=bold guifg=grey1
hi default HLGray2B                gui=bold guifg=gray2
hi default HLGrey2B                gui=bold guifg=grey2
hi default HLGray3B                gui=bold guifg=gray3
hi default HLGrey3B                gui=bold guifg=grey3
hi default HLGray4B                gui=bold guifg=gray4
hi default HLGrey4B                gui=bold guifg=grey4
hi default HLGray5B                gui=bold guifg=gray5
hi default HLGrey5B                gui=bold guifg=grey5
hi default HLGray6B                gui=bold guifg=gray6
hi default HLGrey6B                gui=bold guifg=grey6
hi default HLGray7B                gui=bold guifg=gray7
hi default HLGrey7B                gui=bold guifg=grey7
hi default HLGray8B                gui=bold guifg=gray8
hi default HLGrey8B                gui=bold guifg=grey8
hi default HLGray9B                gui=bold guifg=gray9
hi default HLGrey9B                gui=bold guifg=grey9
hi default HLGray10B               gui=bold guifg=gray10
hi default HLGrey10B               gui=bold guifg=grey10
hi default HLGray11B               gui=bold guifg=gray11
hi default HLGrey11B               gui=bold guifg=grey11
hi default HLGray12B               gui=bold guifg=gray12
hi default HLGrey12B               gui=bold guifg=grey12
hi default HLGray13B               gui=bold guifg=gray13
hi default HLGrey13B               gui=bold guifg=grey13
hi default HLGray14B               gui=bold guifg=gray14
hi default HLGrey14B               gui=bold guifg=grey14
hi default HLGray15B               gui=bold guifg=gray15
hi default HLGrey15B               gui=bold guifg=grey15
hi default HLGray16B               gui=bold guifg=gray16
hi default HLGrey16B               gui=bold guifg=grey16
hi default HLGray17B               gui=bold guifg=gray17
hi default HLGrey17B               gui=bold guifg=grey17
hi default HLGray18B               gui=bold guifg=gray18
hi default HLGrey18B               gui=bold guifg=grey18
hi default HLGray19B               gui=bold guifg=gray19
hi default HLGrey19B               gui=bold guifg=grey19
hi default HLGray20B               gui=bold guifg=gray20
hi default HLGrey20B               gui=bold guifg=grey20
hi default HLGray21B               gui=bold guifg=gray21
hi default HLGrey21B               gui=bold guifg=grey21
hi default HLGray22B               gui=bold guifg=gray22
hi default HLGrey22B               gui=bold guifg=grey22
hi default HLGray23B               gui=bold guifg=gray23
hi default HLGrey23B               gui=bold guifg=grey23
hi default HLGray24B               gui=bold guifg=gray24
hi default HLGrey24B               gui=bold guifg=grey24
hi default HLGray25B               gui=bold guifg=gray25
hi default HLGrey25B               gui=bold guifg=grey25
hi default HLGray26B               gui=bold guifg=gray26
hi default HLGrey26B               gui=bold guifg=grey26
hi default HLGray27B               gui=bold guifg=gray27
hi default HLGrey27B               gui=bold guifg=grey27
hi default HLGray28B               gui=bold guifg=gray28
hi default HLGrey28B               gui=bold guifg=grey28
hi default HLGray29B               gui=bold guifg=gray29
hi default HLGrey29B               gui=bold guifg=grey29
hi default HLGray30B               gui=bold guifg=gray30
hi default HLGrey30B               gui=bold guifg=grey30
hi default HLGray31B               gui=bold guifg=gray31
hi default HLGrey31B               gui=bold guifg=grey31
hi default HLGray32B               gui=bold guifg=gray32
hi default HLGrey32B               gui=bold guifg=grey32
hi default HLGray33B               gui=bold guifg=gray33
hi default HLGrey33B               gui=bold guifg=grey33
hi default HLGray34B               gui=bold guifg=gray34
hi default HLGrey34B               gui=bold guifg=grey34
hi default HLGray35B               gui=bold guifg=gray35
hi default HLGrey35B               gui=bold guifg=grey35
hi default HLGray36B               gui=bold guifg=gray36
hi default HLGrey36B               gui=bold guifg=grey36
hi default HLGray37B               gui=bold guifg=gray37
hi default HLGrey37B               gui=bold guifg=grey37
hi default HLGray38B               gui=bold guifg=gray38
hi default HLGrey38B               gui=bold guifg=grey38
hi default HLGray39B               gui=bold guifg=gray39
hi default HLGrey39B               gui=bold guifg=grey39
hi default HLGray40B               gui=bold guifg=gray40
hi default HLGrey40B               gui=bold guifg=grey40
hi default HLGray41B               gui=bold guifg=gray41
hi default HLGrey41B               gui=bold guifg=grey41
hi default HLGray42B               gui=bold guifg=gray42
hi default HLGrey42B               gui=bold guifg=grey42
hi default HLGray43B               gui=bold guifg=gray43
hi default HLGrey43B               gui=bold guifg=grey43
hi default HLGray44B               gui=bold guifg=gray44
hi default HLGrey44B               gui=bold guifg=grey44
hi default HLGray45B               gui=bold guifg=gray45
hi default HLGrey45B               gui=bold guifg=grey45
hi default HLGray46B               gui=bold guifg=gray46
hi default HLGrey46B               gui=bold guifg=grey46
hi default HLGray47B               gui=bold guifg=gray47
hi default HLGrey47B               gui=bold guifg=grey47
hi default HLGray48B               gui=bold guifg=gray48
hi default HLGrey48B               gui=bold guifg=grey48
hi default HLGray49B               gui=bold guifg=gray49
hi default HLGrey49B               gui=bold guifg=grey49
hi default HLGray50B               gui=bold guifg=gray50
hi default HLGrey50B               gui=bold guifg=grey50
hi default HLGray51B               gui=bold guifg=gray51
hi default HLGrey51B               gui=bold guifg=grey51
hi default HLGray52B               gui=bold guifg=gray52
hi default HLGrey52B               gui=bold guifg=grey52
hi default HLGray53B               gui=bold guifg=gray53
hi default HLGrey53B               gui=bold guifg=grey53
hi default HLGray54B               gui=bold guifg=gray54
hi default HLGrey54B               gui=bold guifg=grey54
hi default HLGray55B               gui=bold guifg=gray55
hi default HLGrey55B               gui=bold guifg=grey55
hi default HLGray56B               gui=bold guifg=gray56
hi default HLGrey56B               gui=bold guifg=grey56
hi default HLGray57B               gui=bold guifg=gray57
hi default HLGrey57B               gui=bold guifg=grey57
hi default HLGray58B               gui=bold guifg=gray58
hi default HLGrey58B               gui=bold guifg=grey58
hi default HLGray59B               gui=bold guifg=gray59
hi default HLGrey59B               gui=bold guifg=grey59
hi default HLGray60B               gui=bold guifg=gray60
hi default HLGrey60B               gui=bold guifg=grey60
hi default HLGray61B               gui=bold guifg=gray61
hi default HLGrey61B               gui=bold guifg=grey61
hi default HLGray62B               gui=bold guifg=gray62
hi default HLGrey62B               gui=bold guifg=grey62
hi default HLGray63B               gui=bold guifg=gray63
hi default HLGrey63B               gui=bold guifg=grey63
hi default HLGray64B               gui=bold guifg=gray64
hi default HLGrey64B               gui=bold guifg=grey64
hi default HLGray65B               gui=bold guifg=gray65
hi default HLGrey65B               gui=bold guifg=grey65
hi default HLGray66B               gui=bold guifg=gray66
hi default HLGrey66B               gui=bold guifg=grey66
hi default HLGray67B               gui=bold guifg=gray67
hi default HLGrey67B               gui=bold guifg=grey67
hi default HLGray68B               gui=bold guifg=gray68
hi default HLGrey68B               gui=bold guifg=grey68
hi default HLGray69B               gui=bold guifg=gray69
hi default HLGrey69B               gui=bold guifg=grey69
hi default HLGray70B               gui=bold guifg=gray70
hi default HLGrey70B               gui=bold guifg=grey70
hi default HLGray71B               gui=bold guifg=gray71
hi default HLGrey71B               gui=bold guifg=grey71
hi default HLGray72B               gui=bold guifg=gray72
hi default HLGrey72B               gui=bold guifg=grey72
hi default HLGray73B               gui=bold guifg=gray73
hi default HLGrey73B               gui=bold guifg=grey73
hi default HLGray74B               gui=bold guifg=gray74
hi default HLGrey74B               gui=bold guifg=grey74
hi default HLGray75B               gui=bold guifg=gray75
hi default HLGrey75B               gui=bold guifg=grey75
hi default HLGray76B               gui=bold guifg=gray76
hi default HLGrey76B               gui=bold guifg=grey76
hi default HLGray77B               gui=bold guifg=gray77
hi default HLGrey77B               gui=bold guifg=grey77
hi default HLGray78B               gui=bold guifg=gray78
hi default HLGrey78B               gui=bold guifg=grey78
hi default HLGray79B               gui=bold guifg=gray79
hi default HLGrey79B               gui=bold guifg=grey79
hi default HLGray80B               gui=bold guifg=gray80
hi default HLGrey80B               gui=bold guifg=grey80
hi default HLGray81B               gui=bold guifg=gray81
hi default HLGrey81B               gui=bold guifg=grey81
hi default HLGray82B               gui=bold guifg=gray82
hi default HLGrey82B               gui=bold guifg=grey82
hi default HLGray83B               gui=bold guifg=gray83
hi default HLGrey83B               gui=bold guifg=grey83
hi default HLGray84B               gui=bold guifg=gray84
hi default HLGrey84B               gui=bold guifg=grey84
hi default HLGray85B               gui=bold guifg=gray85
hi default HLGrey85B               gui=bold guifg=grey85
hi default HLGray86B               gui=bold guifg=gray86
hi default HLGrey86B               gui=bold guifg=grey86
hi default HLGray87B               gui=bold guifg=gray87
hi default HLGrey87B               gui=bold guifg=grey87
hi default HLGray88B               gui=bold guifg=gray88
hi default HLGrey88B               gui=bold guifg=grey88
hi default HLGray89B               gui=bold guifg=gray89
hi default HLGrey89B               gui=bold guifg=grey89
hi default HLGray90B               gui=bold guifg=gray90
hi default HLGrey90B               gui=bold guifg=grey90
hi default HLGray91B               gui=bold guifg=gray91
hi default HLGrey91B               gui=bold guifg=grey91
hi default HLGray92B               gui=bold guifg=gray92
hi default HLGrey92B               gui=bold guifg=grey92
hi default HLGray93B               gui=bold guifg=gray93
hi default HLGrey93B               gui=bold guifg=grey93
hi default HLGray94B               gui=bold guifg=gray94
hi default HLGrey94B               gui=bold guifg=grey94
hi default HLGray95B               gui=bold guifg=gray95
hi default HLGrey95B               gui=bold guifg=grey95
hi default HLGray96B               gui=bold guifg=gray96
hi default HLGrey96B               gui=bold guifg=grey96
hi default HLGray97B               gui=bold guifg=gray97
hi default HLGrey97B               gui=bold guifg=grey97
hi default HLGray98B               gui=bold guifg=gray98
hi default HLGrey98B               gui=bold guifg=grey98
hi default HLGray99B               gui=bold guifg=gray99
hi default HLGrey99B               gui=bold guifg=grey99
hi default HLGray100B              gui=bold guifg=gray100
hi default HLGrey100B              gui=bold guifg=grey100
hi default HLDarkgreyB             gui=bold guifg=darkgrey
hi default HLDarkgrayB             gui=bold guifg=darkgray
hi default HLDarkblueB             gui=bold guifg=darkblue
hi default HLDarkcyanB             gui=bold guifg=darkcyan
hi default HLDarkmagentaB          gui=bold guifg=darkmagenta
hi default HLDarkredB              gui=bold guifg=darkred
hi default HLLightgreenB           gui=bold guifg=lightgreen
hi default HLCrimsonB              gui=bold guifg=crimson
hi default HLIndigoB               gui=bold guifg=indigo
hi default HLOliveB                gui=bold guifg=olive
hi default HLRebeccapurpleB        gui=bold guifg=rebeccapurple
hi default HLSilverB               gui=bold guifg=silver
hi default HLTealB                 gui=bold guifg=teal


" Bold and underline colors
hi default HLSnowBU                 gui=bold,underline guifg=snow
hi default HLGhostwhiteBU           gui=bold,underline guifg=ghostwhite
hi default HLWhitesmokeBU           gui=bold,underline guifg=whitesmoke
hi default HLGainsboroBU            gui=bold,underline guifg=gainsboro
hi default HLFloralwhiteBU          gui=bold,underline guifg=floralwhite
hi default HLOldlaceBU              gui=bold,underline guifg=oldlace
hi default HLLinenBU                gui=bold,underline guifg=linen
hi default HLAntiquewhiteBU         gui=bold,underline guifg=antiquewhite
hi default HLPapayawhipBU           gui=bold,underline guifg=papayawhip
hi default HLBlanchedalmondBU       gui=bold,underline guifg=blanchedalmond
hi default HLBisqueBU               gui=bold,underline guifg=bisque
hi default HLPeachpuffBU            gui=bold,underline guifg=peachpuff
hi default HLNavajowhiteBU          gui=bold,underline guifg=navajowhite
hi default HLMoccasinBU             gui=bold,underline guifg=moccasin
hi default HLCornsilkBU             gui=bold,underline guifg=cornsilk
hi default HLIvoryBU                gui=bold,underline guifg=ivory
hi default HLLemonchiffonBU         gui=bold,underline guifg=lemonchiffon
hi default HLSeashellBU             gui=bold,underline guifg=seashell
hi default HLHoneydewBU             gui=bold,underline guifg=honeydew
hi default HLMintcreamBU            gui=bold,underline guifg=mintcream
hi default HLAzureBU                gui=bold,underline guifg=azure
hi default HLAliceblueBU            gui=bold,underline guifg=aliceblue
hi default HLLavenderBU             gui=bold,underline guifg=lavender
hi default HLLavenderblushBU        gui=bold,underline guifg=lavenderblush
hi default HLMistyroseBU            gui=bold,underline guifg=mistyrose
hi default HLWhiteBU                gui=bold,underline guifg=white
hi default HLBlackBU                gui=bold,underline guifg=black
hi default HLDarkslategrayBU        gui=bold,underline guifg=darkslategray
hi default HLDarkslategreyBU        gui=bold,underline guifg=darkslategrey
hi default HLDimgrayBU              gui=bold,underline guifg=dimgray
hi default HLDimgreyBU              gui=bold,underline guifg=dimgrey
hi default HLSlategrayBU            gui=bold,underline guifg=slategray
hi default HLSlategreyBU            gui=bold,underline guifg=slategrey
hi default HLLightslategrayBU       gui=bold,underline guifg=lightslategray
hi default HLLightslategreyBU       gui=bold,underline guifg=lightslategrey
hi default HLGrayBU                 gui=bold,underline guifg=gray
hi default HLGreyBU                 gui=bold,underline guifg=grey
hi default HLX11grayBU              gui=bold,underline guifg=x11gray
hi default HLX11greyBU              gui=bold,underline guifg=x11grey
hi default HLWebgrayBU              gui=bold,underline guifg=webgray
hi default HLWebgreyBU              gui=bold,underline guifg=webgrey
hi default HLLightgreyBU            gui=bold,underline guifg=lightgrey
hi default HLLightgrayBU            gui=bold,underline guifg=lightgray
hi default HLMidnightblueBU         gui=bold,underline guifg=midnightblue
hi default HLNavyBU                 gui=bold,underline guifg=navy
hi default HLNavyblueBU             gui=bold,underline guifg=navyblue
hi default HLCornflowerblueBU       gui=bold,underline guifg=cornflowerblue
hi default HLDarkslateblueBU        gui=bold,underline guifg=darkslateblue
hi default HLSlateblueBU            gui=bold,underline guifg=slateblue
hi default HLMediumslateblueBU      gui=bold,underline guifg=mediumslateblue
hi default HLLightslateblueBU       gui=bold,underline guifg=lightslateblue
hi default HLMediumblueBU           gui=bold,underline guifg=mediumblue
hi default HLRoyalblueBU            gui=bold,underline guifg=royalblue
hi default HLBlueBU                 gui=bold,underline guifg=blue
hi default HLDodgerblueBU           gui=bold,underline guifg=dodgerblue
hi default HLDeepskyblueBU          gui=bold,underline guifg=deepskyblue
hi default HLSkyblueBU              gui=bold,underline guifg=skyblue
hi default HLLightskyblueBU         gui=bold,underline guifg=lightskyblue
hi default HLSteelblueBU            gui=bold,underline guifg=steelblue
hi default HLLightsteelblueBU       gui=bold,underline guifg=lightsteelblue
hi default HLLightblueBU            gui=bold,underline guifg=lightblue
hi default HLPowderblueBU           gui=bold,underline guifg=powderblue
hi default HLPaleturquoiseBU        gui=bold,underline guifg=paleturquoise
hi default HLDarkturquoiseBU        gui=bold,underline guifg=darkturquoise
hi default HLMediumturquoiseBU      gui=bold,underline guifg=mediumturquoise
hi default HLTurquoiseBU            gui=bold,underline guifg=turquoise
hi default HLCyanBU                 gui=bold,underline guifg=cyan
hi default HLAquaBU                 gui=bold,underline guifg=aqua
hi default HLLightcyanBU            gui=bold,underline guifg=lightcyan
hi default HLCadetblueBU            gui=bold,underline guifg=cadetblue
hi default HLMediumaquamarineBU     gui=bold,underline guifg=mediumaquamarine
hi default HLAquamarineBU           gui=bold,underline guifg=aquamarine
hi default HLDarkgreenBU            gui=bold,underline guifg=darkgreen
hi default HLDarkolivegreenBU       gui=bold,underline guifg=darkolivegreen
hi default HLDarkseagreenBU         gui=bold,underline guifg=darkseagreen
hi default HLSeagreenBU             gui=bold,underline guifg=seagreen
hi default HLMediumseagreenBU       gui=bold,underline guifg=mediumseagreen
hi default HLLightseagreenBU        gui=bold,underline guifg=lightseagreen
hi default HLPalegreenBU            gui=bold,underline guifg=palegreen
hi default HLSpringgreenBU          gui=bold,underline guifg=springgreen
hi default HLLawngreenBU            gui=bold,underline guifg=lawngreen
hi default HLGreenBU                gui=bold,underline guifg=green
hi default HLLimeBU                 gui=bold,underline guifg=lime
hi default HLX11greenBU             gui=bold,underline guifg=x11green
hi default HLWebgreenBU             gui=bold,underline guifg=webgreen
hi default HLChartreuseBU           gui=bold,underline guifg=chartreuse
hi default HLMediumspringgreenBU    gui=bold,underline guifg=mediumspringgreen
hi default HLGreenyellowBU          gui=bold,underline guifg=greenyellow
hi default HLLimegreenBU            gui=bold,underline guifg=limegreen
hi default HLYellowgreenBU          gui=bold,underline guifg=yellowgreen
hi default HLForestgreenBU          gui=bold,underline guifg=forestgreen
hi default HLOlivedrabBU            gui=bold,underline guifg=olivedrab
hi default HLDarkkhakiBU            gui=bold,underline guifg=darkkhaki
hi default HLKhakiBU                gui=bold,underline guifg=khaki
hi default HLPalegoldenrodBU        gui=bold,underline guifg=palegoldenrod
hi default HLLightgoldenrodyellowBU gui=bold,underline guifg=lightgoldenrodyellow
hi default HLLightyellowBU          gui=bold,underline guifg=lightyellow
hi default HLYellowBU               gui=bold,underline guifg=yellow
hi default HLGoldBU                 gui=bold,underline guifg=gold
hi default HLLightgoldenrodBU       gui=bold,underline guifg=lightgoldenrod
hi default HLGoldenrodBU            gui=bold,underline guifg=goldenrod
hi default HLDarkgoldenrodBU        gui=bold,underline guifg=darkgoldenrod
hi default HLRosybrownBU            gui=bold,underline guifg=rosybrown
hi default HLIndianredBU            gui=bold,underline guifg=indianred
hi default HLSaddlebrownBU          gui=bold,underline guifg=saddlebrown
hi default HLSiennaBU               gui=bold,underline guifg=sienna
hi default HLPeruBU                 gui=bold,underline guifg=peru
hi default HLBurlywoodBU            gui=bold,underline guifg=burlywood
hi default HLBeigeBU                gui=bold,underline guifg=beige
hi default HLWheatBU                gui=bold,underline guifg=wheat
hi default HLSandybrownBU           gui=bold,underline guifg=sandybrown
hi default HLTanBU                  gui=bold,underline guifg=tan
hi default HLChocolateBU            gui=bold,underline guifg=chocolate
hi default HLFirebrickBU            gui=bold,underline guifg=firebrick
hi default HLBrownBU                gui=bold,underline guifg=brown
hi default HLDarksalmonBU           gui=bold,underline guifg=darksalmon
hi default HLSalmonBU               gui=bold,underline guifg=salmon
hi default HLLightsalmonBU          gui=bold,underline guifg=lightsalmon
hi default HLOrangeBU               gui=bold,underline guifg=orange
hi default HLDarkorangeBU           gui=bold,underline guifg=darkorange
hi default HLCoralBU                gui=bold,underline guifg=coral
hi default HLLightcoralBU           gui=bold,underline guifg=lightcoral
hi default HLTomatoBU               gui=bold,underline guifg=tomato
hi default HLOrangeredBU            gui=bold,underline guifg=orangered
hi default HLRedBU                  gui=bold,underline guifg=red
hi default HLHotpinkBU              gui=bold,underline guifg=hotpink
hi default HLDeeppinkBU             gui=bold,underline guifg=deeppink
hi default HLPinkBU                 gui=bold,underline guifg=pink
hi default HLLightpinkBU            gui=bold,underline guifg=lightpink
hi default HLPalevioletredBU        gui=bold,underline guifg=palevioletred
hi default HLMaroonBU               gui=bold,underline guifg=maroon
hi default HLX11maroonBU            gui=bold,underline guifg=x11maroon
hi default HLWebmaroonBU            gui=bold,underline guifg=webmaroon
hi default HLMediumvioletredBU      gui=bold,underline guifg=mediumvioletred
hi default HLVioletredBU            gui=bold,underline guifg=violetred
hi default HLMagentaBU              gui=bold,underline guifg=magenta
hi default HLFuchsiaBU              gui=bold,underline guifg=fuchsia
hi default HLVioletBU               gui=bold,underline guifg=violet
hi default HLPlumBU                 gui=bold,underline guifg=plum
hi default HLOrchidBU               gui=bold,underline guifg=orchid
hi default HLMediumorchidBU         gui=bold,underline guifg=mediumorchid
hi default HLDarkorchidBU           gui=bold,underline guifg=darkorchid
hi default HLDarkvioletBU           gui=bold,underline guifg=darkviolet
hi default HLBluevioletBU           gui=bold,underline guifg=blueviolet
hi default HLPurpleBU               gui=bold,underline guifg=purple
hi default HLX11purpleBU            gui=bold,underline guifg=x11purple
hi default HLWebpurpleBU            gui=bold,underline guifg=webpurple
hi default HLMediumpurpleBU         gui=bold,underline guifg=mediumpurple
hi default HLThistleBU              gui=bold,underline guifg=thistle
hi default HLSnow1BU                gui=bold,underline guifg=snow1
hi default HLSnow2BU                gui=bold,underline guifg=snow2
hi default HLSnow3BU                gui=bold,underline guifg=snow3
hi default HLSnow4BU                gui=bold,underline guifg=snow4
hi default HLSeashell1BU            gui=bold,underline guifg=seashell1
hi default HLSeashell2BU            gui=bold,underline guifg=seashell2
hi default HLSeashell3BU            gui=bold,underline guifg=seashell3
hi default HLSeashell4BU            gui=bold,underline guifg=seashell4
hi default HLAntiquewhite1BU        gui=bold,underline guifg=antiquewhite1
hi default HLAntiquewhite2BU        gui=bold,underline guifg=antiquewhite2
hi default HLAntiquewhite3BU        gui=bold,underline guifg=antiquewhite3
hi default HLAntiquewhite4BU        gui=bold,underline guifg=antiquewhite4
hi default HLBisque1BU              gui=bold,underline guifg=bisque1
hi default HLBisque2BU              gui=bold,underline guifg=bisque2
hi default HLBisque3BU              gui=bold,underline guifg=bisque3
hi default HLBisque4BU              gui=bold,underline guifg=bisque4
hi default HLPeachpuff1BU           gui=bold,underline guifg=peachpuff1
hi default HLPeachpuff2BU           gui=bold,underline guifg=peachpuff2
hi default HLPeachpuff3BU           gui=bold,underline guifg=peachpuff3
hi default HLPeachpuff4BU           gui=bold,underline guifg=peachpuff4
hi default HLNavajowhite1BU         gui=bold,underline guifg=navajowhite1
hi default HLNavajowhite2BU         gui=bold,underline guifg=navajowhite2
hi default HLNavajowhite3BU         gui=bold,underline guifg=navajowhite3
hi default HLNavajowhite4BU         gui=bold,underline guifg=navajowhite4
hi default HLLemonchiffon1BU        gui=bold,underline guifg=lemonchiffon1
hi default HLLemonchiffon2BU        gui=bold,underline guifg=lemonchiffon2
hi default HLLemonchiffon3BU        gui=bold,underline guifg=lemonchiffon3
hi default HLLemonchiffon4BU        gui=bold,underline guifg=lemonchiffon4
hi default HLCornsilk1BU            gui=bold,underline guifg=cornsilk1
hi default HLCornsilk2BU            gui=bold,underline guifg=cornsilk2
hi default HLCornsilk3BU            gui=bold,underline guifg=cornsilk3
hi default HLCornsilk4BU            gui=bold,underline guifg=cornsilk4
hi default HLIvory1BU               gui=bold,underline guifg=ivory1
hi default HLIvory2BU               gui=bold,underline guifg=ivory2
hi default HLIvory3BU               gui=bold,underline guifg=ivory3
hi default HLIvory4BU               gui=bold,underline guifg=ivory4
hi default HLHoneydew1BU            gui=bold,underline guifg=honeydew1
hi default HLHoneydew2BU            gui=bold,underline guifg=honeydew2
hi default HLHoneydew3BU            gui=bold,underline guifg=honeydew3
hi default HLHoneydew4BU            gui=bold,underline guifg=honeydew4
hi default HLLavenderblush1BU       gui=bold,underline guifg=lavenderblush1
hi default HLLavenderblush2BU       gui=bold,underline guifg=lavenderblush2
hi default HLLavenderblush3BU       gui=bold,underline guifg=lavenderblush3
hi default HLLavenderblush4BU       gui=bold,underline guifg=lavenderblush4
hi default HLMistyrose1BU           gui=bold,underline guifg=mistyrose1
hi default HLMistyrose2BU           gui=bold,underline guifg=mistyrose2
hi default HLMistyrose3BU           gui=bold,underline guifg=mistyrose3
hi default HLMistyrose4BU           gui=bold,underline guifg=mistyrose4
hi default HLAzure1BU               gui=bold,underline guifg=azure1
hi default HLAzure2BU               gui=bold,underline guifg=azure2
hi default HLAzure3BU               gui=bold,underline guifg=azure3
hi default HLAzure4BU               gui=bold,underline guifg=azure4
hi default HLSlateblue1BU           gui=bold,underline guifg=slateblue1
hi default HLSlateblue2BU           gui=bold,underline guifg=slateblue2
hi default HLSlateblue3BU           gui=bold,underline guifg=slateblue3
hi default HLSlateblue4BU           gui=bold,underline guifg=slateblue4
hi default HLRoyalblue1BU           gui=bold,underline guifg=royalblue1
hi default HLRoyalblue2BU           gui=bold,underline guifg=royalblue2
hi default HLRoyalblue3BU           gui=bold,underline guifg=royalblue3
hi default HLRoyalblue4BU           gui=bold,underline guifg=royalblue4
hi default HLBlue1BU                gui=bold,underline guifg=blue1
hi default HLBlue2BU                gui=bold,underline guifg=blue2
hi default HLBlue3BU                gui=bold,underline guifg=blue3
hi default HLBlue4BU                gui=bold,underline guifg=blue4
hi default HLDodgerblue1BU          gui=bold,underline guifg=dodgerblue1
hi default HLDodgerblue2BU          gui=bold,underline guifg=dodgerblue2
hi default HLDodgerblue3BU          gui=bold,underline guifg=dodgerblue3
hi default HLDodgerblue4BU          gui=bold,underline guifg=dodgerblue4
hi default HLSteelblue1BU           gui=bold,underline guifg=steelblue1
hi default HLSteelblue2BU           gui=bold,underline guifg=steelblue2
hi default HLSteelblue3BU           gui=bold,underline guifg=steelblue3
hi default HLSteelblue4BU           gui=bold,underline guifg=steelblue4
hi default HLDeepskyblue1BU         gui=bold,underline guifg=deepskyblue1
hi default HLDeepskyblue2BU         gui=bold,underline guifg=deepskyblue2
hi default HLDeepskyblue3BU         gui=bold,underline guifg=deepskyblue3
hi default HLDeepskyblue4BU         gui=bold,underline guifg=deepskyblue4
hi default HLSkyblue1BU             gui=bold,underline guifg=skyblue1
hi default HLSkyblue2BU             gui=bold,underline guifg=skyblue2
hi default HLSkyblue3BU             gui=bold,underline guifg=skyblue3
hi default HLSkyblue4BU             gui=bold,underline guifg=skyblue4
hi default HLLightskyblue1BU        gui=bold,underline guifg=lightskyblue1
hi default HLLightskyblue2BU        gui=bold,underline guifg=lightskyblue2
hi default HLLightskyblue3BU        gui=bold,underline guifg=lightskyblue3
hi default HLLightskyblue4BU        gui=bold,underline guifg=lightskyblue4
hi default HLSlategray1BU           gui=bold,underline guifg=slategray1
hi default HLSlategray2BU           gui=bold,underline guifg=slategray2
hi default HLSlategray3BU           gui=bold,underline guifg=slategray3
hi default HLSlategray4BU           gui=bold,underline guifg=slategray4
hi default HLLightsteelblue1BU      gui=bold,underline guifg=lightsteelblue1
hi default HLLightsteelblue2BU      gui=bold,underline guifg=lightsteelblue2
hi default HLLightsteelblue3BU      gui=bold,underline guifg=lightsteelblue3
hi default HLLightsteelblue4BU      gui=bold,underline guifg=lightsteelblue4
hi default HLLightblue1BU           gui=bold,underline guifg=lightblue1
hi default HLLightblue2BU           gui=bold,underline guifg=lightblue2
hi default HLLightblue3BU           gui=bold,underline guifg=lightblue3
hi default HLLightblue4BU           gui=bold,underline guifg=lightblue4
hi default HLLightcyan1BU           gui=bold,underline guifg=lightcyan1
hi default HLLightcyan2BU           gui=bold,underline guifg=lightcyan2
hi default HLLightcyan3BU           gui=bold,underline guifg=lightcyan3
hi default HLLightcyan4BU           gui=bold,underline guifg=lightcyan4
hi default HLPaleturquoise1BU       gui=bold,underline guifg=paleturquoise1
hi default HLPaleturquoise2BU       gui=bold,underline guifg=paleturquoise2
hi default HLPaleturquoise3BU       gui=bold,underline guifg=paleturquoise3
hi default HLPaleturquoise4BU       gui=bold,underline guifg=paleturquoise4
hi default HLCadetblue1BU           gui=bold,underline guifg=cadetblue1
hi default HLCadetblue2BU           gui=bold,underline guifg=cadetblue2
hi default HLCadetblue3BU           gui=bold,underline guifg=cadetblue3
hi default HLCadetblue4BU           gui=bold,underline guifg=cadetblue4
hi default HLTurquoise1BU           gui=bold,underline guifg=turquoise1
hi default HLTurquoise2BU           gui=bold,underline guifg=turquoise2
hi default HLTurquoise3BU           gui=bold,underline guifg=turquoise3
hi default HLTurquoise4BU           gui=bold,underline guifg=turquoise4
hi default HLCyan1BU                gui=bold,underline guifg=cyan1
hi default HLCyan2BU                gui=bold,underline guifg=cyan2
hi default HLCyan3BU                gui=bold,underline guifg=cyan3
hi default HLCyan4BU                gui=bold,underline guifg=cyan4
hi default HLDarkslategray1BU       gui=bold,underline guifg=darkslategray1
hi default HLDarkslategray2BU       gui=bold,underline guifg=darkslategray2
hi default HLDarkslategray3BU       gui=bold,underline guifg=darkslategray3
hi default HLDarkslategray4BU       gui=bold,underline guifg=darkslategray4
hi default HLAquamarine1BU          gui=bold,underline guifg=aquamarine1
hi default HLAquamarine2BU          gui=bold,underline guifg=aquamarine2
hi default HLAquamarine3BU          gui=bold,underline guifg=aquamarine3
hi default HLAquamarine4BU          gui=bold,underline guifg=aquamarine4
hi default HLDarkseagreen1BU        gui=bold,underline guifg=darkseagreen1
hi default HLDarkseagreen2BU        gui=bold,underline guifg=darkseagreen2
hi default HLDarkseagreen3BU        gui=bold,underline guifg=darkseagreen3
hi default HLDarkseagreen4BU        gui=bold,underline guifg=darkseagreen4
hi default HLSeagreen1BU            gui=bold,underline guifg=seagreen1
hi default HLSeagreen2BU            gui=bold,underline guifg=seagreen2
hi default HLSeagreen3BU            gui=bold,underline guifg=seagreen3
hi default HLSeagreen4BU            gui=bold,underline guifg=seagreen4
hi default HLPalegreen1BU           gui=bold,underline guifg=palegreen1
hi default HLPalegreen2BU           gui=bold,underline guifg=palegreen2
hi default HLPalegreen3BU           gui=bold,underline guifg=palegreen3
hi default HLPalegreen4BU           gui=bold,underline guifg=palegreen4
hi default HLSpringgreen1BU         gui=bold,underline guifg=springgreen1
hi default HLSpringgreen2BU         gui=bold,underline guifg=springgreen2
hi default HLSpringgreen3BU         gui=bold,underline guifg=springgreen3
hi default HLSpringgreen4BU         gui=bold,underline guifg=springgreen4
hi default HLGreen1BU               gui=bold,underline guifg=green1
hi default HLGreen2BU               gui=bold,underline guifg=green2
hi default HLGreen3BU               gui=bold,underline guifg=green3
hi default HLGreen4BU               gui=bold,underline guifg=green4
hi default HLChartreuse1BU          gui=bold,underline guifg=chartreuse1
hi default HLChartreuse2BU          gui=bold,underline guifg=chartreuse2
hi default HLChartreuse3BU          gui=bold,underline guifg=chartreuse3
hi default HLChartreuse4BU          gui=bold,underline guifg=chartreuse4
hi default HLOlivedrab1BU           gui=bold,underline guifg=olivedrab1
hi default HLOlivedrab2BU           gui=bold,underline guifg=olivedrab2
hi default HLOlivedrab3BU           gui=bold,underline guifg=olivedrab3
hi default HLOlivedrab4BU           gui=bold,underline guifg=olivedrab4
hi default HLDarkolivegreen1BU      gui=bold,underline guifg=darkolivegreen1
hi default HLDarkolivegreen2BU      gui=bold,underline guifg=darkolivegreen2
hi default HLDarkolivegreen3BU      gui=bold,underline guifg=darkolivegreen3
hi default HLDarkolivegreen4BU      gui=bold,underline guifg=darkolivegreen4
hi default HLKhaki1BU               gui=bold,underline guifg=khaki1
hi default HLKhaki2BU               gui=bold,underline guifg=khaki2
hi default HLKhaki3BU               gui=bold,underline guifg=khaki3
hi default HLKhaki4BU               gui=bold,underline guifg=khaki4
hi default HLLightgoldenrod1BU      gui=bold,underline guifg=lightgoldenrod1
hi default HLLightgoldenrod2BU      gui=bold,underline guifg=lightgoldenrod2
hi default HLLightgoldenrod3BU      gui=bold,underline guifg=lightgoldenrod3
hi default HLLightgoldenrod4BU      gui=bold,underline guifg=lightgoldenrod4
hi default HLLightyellow1BU         gui=bold,underline guifg=lightyellow1
hi default HLLightyellow2BU         gui=bold,underline guifg=lightyellow2
hi default HLLightyellow3BU         gui=bold,underline guifg=lightyellow3
hi default HLLightyellow4BU         gui=bold,underline guifg=lightyellow4
hi default HLYellow1BU              gui=bold,underline guifg=yellow1
hi default HLYellow2BU              gui=bold,underline guifg=yellow2
hi default HLYellow3BU              gui=bold,underline guifg=yellow3
hi default HLYellow4BU              gui=bold,underline guifg=yellow4
hi default HLDarkyellowBU           gui=bold,underline guifg=darkyellow
hi default HLGold1BU                gui=bold,underline guifg=gold1
hi default HLGold2BU                gui=bold,underline guifg=gold2
hi default HLGold3BU                gui=bold,underline guifg=gold3
hi default HLGold4BU                gui=bold,underline guifg=gold4
hi default HLGoldenrod1BU           gui=bold,underline guifg=goldenrod1
hi default HLGoldenrod2BU           gui=bold,underline guifg=goldenrod2
hi default HLGoldenrod3BU           gui=bold,underline guifg=goldenrod3
hi default HLGoldenrod4BU           gui=bold,underline guifg=goldenrod4
hi default HLDarkgoldenrod1BU       gui=bold,underline guifg=darkgoldenrod1
hi default HLDarkgoldenrod2BU       gui=bold,underline guifg=darkgoldenrod2
hi default HLDarkgoldenrod3BU       gui=bold,underline guifg=darkgoldenrod3
hi default HLDarkgoldenrod4BU       gui=bold,underline guifg=darkgoldenrod4
hi default HLRosybrown1BU           gui=bold,underline guifg=rosybrown1
hi default HLRosybrown2BU           gui=bold,underline guifg=rosybrown2
hi default HLRosybrown3BU           gui=bold,underline guifg=rosybrown3
hi default HLRosybrown4BU           gui=bold,underline guifg=rosybrown4
hi default HLIndianred1BU           gui=bold,underline guifg=indianred1
hi default HLIndianred2BU           gui=bold,underline guifg=indianred2
hi default HLIndianred3BU           gui=bold,underline guifg=indianred3
hi default HLIndianred4BU           gui=bold,underline guifg=indianred4
hi default HLSienna1BU              gui=bold,underline guifg=sienna1
hi default HLSienna2BU              gui=bold,underline guifg=sienna2
hi default HLSienna3BU              gui=bold,underline guifg=sienna3
hi default HLSienna4BU              gui=bold,underline guifg=sienna4
hi default HLBurlywood1BU           gui=bold,underline guifg=burlywood1
hi default HLBurlywood2BU           gui=bold,underline guifg=burlywood2
hi default HLBurlywood3BU           gui=bold,underline guifg=burlywood3
hi default HLBurlywood4BU           gui=bold,underline guifg=burlywood4
hi default HLWheat1BU               gui=bold,underline guifg=wheat1
hi default HLWheat2BU               gui=bold,underline guifg=wheat2
hi default HLWheat3BU               gui=bold,underline guifg=wheat3
hi default HLWheat4BU               gui=bold,underline guifg=wheat4
hi default HLTan1BU                 gui=bold,underline guifg=tan1
hi default HLTan2BU                 gui=bold,underline guifg=tan2
hi default HLTan3BU                 gui=bold,underline guifg=tan3
hi default HLTan4BU                 gui=bold,underline guifg=tan4
hi default HLChocolate1BU           gui=bold,underline guifg=chocolate1
hi default HLChocolate2BU           gui=bold,underline guifg=chocolate2
hi default HLChocolate3BU           gui=bold,underline guifg=chocolate3
hi default HLChocolate4BU           gui=bold,underline guifg=chocolate4
hi default HLFirebrick1BU           gui=bold,underline guifg=firebrick1
hi default HLFirebrick2BU           gui=bold,underline guifg=firebrick2
hi default HLFirebrick3BU           gui=bold,underline guifg=firebrick3
hi default HLFirebrick4BU           gui=bold,underline guifg=firebrick4
hi default HLBrown1BU               gui=bold,underline guifg=brown1
hi default HLBrown2BU               gui=bold,underline guifg=brown2
hi default HLBrown3BU               gui=bold,underline guifg=brown3
hi default HLBrown4BU               gui=bold,underline guifg=brown4
hi default HLSalmon1BU              gui=bold,underline guifg=salmon1
hi default HLSalmon2BU              gui=bold,underline guifg=salmon2
hi default HLSalmon3BU              gui=bold,underline guifg=salmon3
hi default HLSalmon4BU              gui=bold,underline guifg=salmon4
hi default HLLightsalmon1BU         gui=bold,underline guifg=lightsalmon1
hi default HLLightsalmon2BU         gui=bold,underline guifg=lightsalmon2
hi default HLLightsalmon3BU         gui=bold,underline guifg=lightsalmon3
hi default HLLightsalmon4BU         gui=bold,underline guifg=lightsalmon4
hi default HLOrange1BU              gui=bold,underline guifg=orange1
hi default HLOrange2BU              gui=bold,underline guifg=orange2
hi default HLOrange3BU              gui=bold,underline guifg=orange3
hi default HLOrange4BU              gui=bold,underline guifg=orange4
hi default HLDarkorange1BU          gui=bold,underline guifg=darkorange1
hi default HLDarkorange2BU          gui=bold,underline guifg=darkorange2
hi default HLDarkorange3BU          gui=bold,underline guifg=darkorange3
hi default HLDarkorange4BU          gui=bold,underline guifg=darkorange4
hi default HLCoral1BU               gui=bold,underline guifg=coral1
hi default HLCoral2BU               gui=bold,underline guifg=coral2
hi default HLCoral3BU               gui=bold,underline guifg=coral3
hi default HLCoral4BU               gui=bold,underline guifg=coral4
hi default HLTomato1BU              gui=bold,underline guifg=tomato1
hi default HLTomato2BU              gui=bold,underline guifg=tomato2
hi default HLTomato3BU              gui=bold,underline guifg=tomato3
hi default HLTomato4BU              gui=bold,underline guifg=tomato4
hi default HLOrangered1BU           gui=bold,underline guifg=orangered1
hi default HLOrangered2BU           gui=bold,underline guifg=orangered2
hi default HLOrangered3BU           gui=bold,underline guifg=orangered3
hi default HLOrangered4BU           gui=bold,underline guifg=orangered4
hi default HLLightredBU             gui=bold,underline guifg=lightred
hi default HLRed1BU                 gui=bold,underline guifg=red1
hi default HLRed2BU                 gui=bold,underline guifg=red2
hi default HLRed3BU                 gui=bold,underline guifg=red3
hi default HLRed4BU                 gui=bold,underline guifg=red4
hi default HLDeeppink1BU            gui=bold,underline guifg=deeppink1
hi default HLDeeppink2BU            gui=bold,underline guifg=deeppink2
hi default HLDeeppink3BU            gui=bold,underline guifg=deeppink3
hi default HLDeeppink4BU            gui=bold,underline guifg=deeppink4
hi default HLHotpink1BU             gui=bold,underline guifg=hotpink1
hi default HLHotpink2BU             gui=bold,underline guifg=hotpink2
hi default HLHotpink3BU             gui=bold,underline guifg=hotpink3
hi default HLHotpink4BU             gui=bold,underline guifg=hotpink4
hi default HLPink1BU                gui=bold,underline guifg=pink1
hi default HLPink2BU                gui=bold,underline guifg=pink2
hi default HLPink3BU                gui=bold,underline guifg=pink3
hi default HLPink4BU                gui=bold,underline guifg=pink4
hi default HLLightpink1BU           gui=bold,underline guifg=lightpink1
hi default HLLightpink2BU           gui=bold,underline guifg=lightpink2
hi default HLLightpink3BU           gui=bold,underline guifg=lightpink3
hi default HLLightpink4BU           gui=bold,underline guifg=lightpink4
hi default HLPalevioletred1BU       gui=bold,underline guifg=palevioletred1
hi default HLPalevioletred2BU       gui=bold,underline guifg=palevioletred2
hi default HLPalevioletred3BU       gui=bold,underline guifg=palevioletred3
hi default HLPalevioletred4BU       gui=bold,underline guifg=palevioletred4
hi default HLMaroon1BU              gui=bold,underline guifg=maroon1
hi default HLMaroon2BU              gui=bold,underline guifg=maroon2
hi default HLMaroon3BU              gui=bold,underline guifg=maroon3
hi default HLMaroon4BU              gui=bold,underline guifg=maroon4
hi default HLVioletred1BU           gui=bold,underline guifg=violetred1
hi default HLVioletred2BU           gui=bold,underline guifg=violetred2
hi default HLVioletred3BU           gui=bold,underline guifg=violetred3
hi default HLVioletred4BU           gui=bold,underline guifg=violetred4
hi default HLLightmagentaBU         gui=bold,underline guifg=lightmagenta
hi default HLMagenta1BU             gui=bold,underline guifg=magenta1
hi default HLMagenta2BU             gui=bold,underline guifg=magenta2
hi default HLMagenta3BU             gui=bold,underline guifg=magenta3
hi default HLMagenta4BU             gui=bold,underline guifg=magenta4
hi default HLOrchid1BU              gui=bold,underline guifg=orchid1
hi default HLOrchid2BU              gui=bold,underline guifg=orchid2
hi default HLOrchid3BU              gui=bold,underline guifg=orchid3
hi default HLOrchid4BU              gui=bold,underline guifg=orchid4
hi default HLPlum1BU                gui=bold,underline guifg=plum1
hi default HLPlum2BU                gui=bold,underline guifg=plum2
hi default HLPlum3BU                gui=bold,underline guifg=plum3
hi default HLPlum4BU                gui=bold,underline guifg=plum4
hi default HLMediumorchid1BU        gui=bold,underline guifg=mediumorchid1
hi default HLMediumorchid2BU        gui=bold,underline guifg=mediumorchid2
hi default HLMediumorchid3BU        gui=bold,underline guifg=mediumorchid3
hi default HLMediumorchid4BU        gui=bold,underline guifg=mediumorchid4
hi default HLDarkorchid1BU          gui=bold,underline guifg=darkorchid1
hi default HLDarkorchid2BU          gui=bold,underline guifg=darkorchid2
hi default HLDarkorchid3BU          gui=bold,underline guifg=darkorchid3
hi default HLDarkorchid4BU          gui=bold,underline guifg=darkorchid4
hi default HLPurple1BU              gui=bold,underline guifg=purple1
hi default HLPurple2BU              gui=bold,underline guifg=purple2
hi default HLPurple3BU              gui=bold,underline guifg=purple3
hi default HLPurple4BU              gui=bold,underline guifg=purple4
hi default HLMediumpurple1BU        gui=bold,underline guifg=mediumpurple1
hi default HLMediumpurple2BU        gui=bold,underline guifg=mediumpurple2
hi default HLMediumpurple3BU        gui=bold,underline guifg=mediumpurple3
hi default HLMediumpurple4BU        gui=bold,underline guifg=mediumpurple4
hi default HLThistle1BU             gui=bold,underline guifg=thistle1
hi default HLThistle2BU             gui=bold,underline guifg=thistle2
hi default HLThistle3BU             gui=bold,underline guifg=thistle3
hi default HLThistle4BU             gui=bold,underline guifg=thistle4
hi default HLGray0BU                gui=bold,underline guifg=gray0
hi default HLGrey0BU                gui=bold,underline guifg=grey0
hi default HLGray1BU                gui=bold,underline guifg=gray1
hi default HLGrey1BU                gui=bold,underline guifg=grey1
hi default HLGray2BU                gui=bold,underline guifg=gray2
hi default HLGrey2BU                gui=bold,underline guifg=grey2
hi default HLGray3BU                gui=bold,underline guifg=gray3
hi default HLGrey3BU                gui=bold,underline guifg=grey3
hi default HLGray4BU                gui=bold,underline guifg=gray4
hi default HLGrey4BU                gui=bold,underline guifg=grey4
hi default HLGray5BU                gui=bold,underline guifg=gray5
hi default HLGrey5BU                gui=bold,underline guifg=grey5
hi default HLGray6BU                gui=bold,underline guifg=gray6
hi default HLGrey6BU                gui=bold,underline guifg=grey6
hi default HLGray7BU                gui=bold,underline guifg=gray7
hi default HLGrey7BU                gui=bold,underline guifg=grey7
hi default HLGray8BU                gui=bold,underline guifg=gray8
hi default HLGrey8BU                gui=bold,underline guifg=grey8
hi default HLGray9BU                gui=bold,underline guifg=gray9
hi default HLGrey9BU                gui=bold,underline guifg=grey9
hi default HLGray10BU               gui=bold,underline guifg=gray10
hi default HLGrey10BU               gui=bold,underline guifg=grey10
hi default HLGray11BU               gui=bold,underline guifg=gray11
hi default HLGrey11BU               gui=bold,underline guifg=grey11
hi default HLGray12BU               gui=bold,underline guifg=gray12
hi default HLGrey12BU               gui=bold,underline guifg=grey12
hi default HLGray13BU               gui=bold,underline guifg=gray13
hi default HLGrey13BU               gui=bold,underline guifg=grey13
hi default HLGray14BU               gui=bold,underline guifg=gray14
hi default HLGrey14BU               gui=bold,underline guifg=grey14
hi default HLGray15BU               gui=bold,underline guifg=gray15
hi default HLGrey15BU               gui=bold,underline guifg=grey15
hi default HLGray16BU               gui=bold,underline guifg=gray16
hi default HLGrey16BU               gui=bold,underline guifg=grey16
hi default HLGray17BU               gui=bold,underline guifg=gray17
hi default HLGrey17BU               gui=bold,underline guifg=grey17
hi default HLGray18BU               gui=bold,underline guifg=gray18
hi default HLGrey18BU               gui=bold,underline guifg=grey18
hi default HLGray19BU               gui=bold,underline guifg=gray19
hi default HLGrey19BU               gui=bold,underline guifg=grey19
hi default HLGray20BU               gui=bold,underline guifg=gray20
hi default HLGrey20BU               gui=bold,underline guifg=grey20
hi default HLGray21BU               gui=bold,underline guifg=gray21
hi default HLGrey21BU               gui=bold,underline guifg=grey21
hi default HLGray22BU               gui=bold,underline guifg=gray22
hi default HLGrey22BU               gui=bold,underline guifg=grey22
hi default HLGray23BU               gui=bold,underline guifg=gray23
hi default HLGrey23BU               gui=bold,underline guifg=grey23
hi default HLGray24BU               gui=bold,underline guifg=gray24
hi default HLGrey24BU               gui=bold,underline guifg=grey24
hi default HLGray25BU               gui=bold,underline guifg=gray25
hi default HLGrey25BU               gui=bold,underline guifg=grey25
hi default HLGray26BU               gui=bold,underline guifg=gray26
hi default HLGrey26BU               gui=bold,underline guifg=grey26
hi default HLGray27BU               gui=bold,underline guifg=gray27
hi default HLGrey27BU               gui=bold,underline guifg=grey27
hi default HLGray28BU               gui=bold,underline guifg=gray28
hi default HLGrey28BU               gui=bold,underline guifg=grey28
hi default HLGray29BU               gui=bold,underline guifg=gray29
hi default HLGrey29BU               gui=bold,underline guifg=grey29
hi default HLGray30BU               gui=bold,underline guifg=gray30
hi default HLGrey30BU               gui=bold,underline guifg=grey30
hi default HLGray31BU               gui=bold,underline guifg=gray31
hi default HLGrey31BU               gui=bold,underline guifg=grey31
hi default HLGray32BU               gui=bold,underline guifg=gray32
hi default HLGrey32BU               gui=bold,underline guifg=grey32
hi default HLGray33BU               gui=bold,underline guifg=gray33
hi default HLGrey33BU               gui=bold,underline guifg=grey33
hi default HLGray34BU               gui=bold,underline guifg=gray34
hi default HLGrey34BU               gui=bold,underline guifg=grey34
hi default HLGray35BU               gui=bold,underline guifg=gray35
hi default HLGrey35BU               gui=bold,underline guifg=grey35
hi default HLGray36BU               gui=bold,underline guifg=gray36
hi default HLGrey36BU               gui=bold,underline guifg=grey36
hi default HLGray37BU               gui=bold,underline guifg=gray37
hi default HLGrey37BU               gui=bold,underline guifg=grey37
hi default HLGray38BU               gui=bold,underline guifg=gray38
hi default HLGrey38BU               gui=bold,underline guifg=grey38
hi default HLGray39BU               gui=bold,underline guifg=gray39
hi default HLGrey39BU               gui=bold,underline guifg=grey39
hi default HLGray40BU               gui=bold,underline guifg=gray40
hi default HLGrey40BU               gui=bold,underline guifg=grey40
hi default HLGray41BU               gui=bold,underline guifg=gray41
hi default HLGrey41BU               gui=bold,underline guifg=grey41
hi default HLGray42BU               gui=bold,underline guifg=gray42
hi default HLGrey42BU               gui=bold,underline guifg=grey42
hi default HLGray43BU               gui=bold,underline guifg=gray43
hi default HLGrey43BU               gui=bold,underline guifg=grey43
hi default HLGray44BU               gui=bold,underline guifg=gray44
hi default HLGrey44BU               gui=bold,underline guifg=grey44
hi default HLGray45BU               gui=bold,underline guifg=gray45
hi default HLGrey45BU               gui=bold,underline guifg=grey45
hi default HLGray46BU               gui=bold,underline guifg=gray46
hi default HLGrey46BU               gui=bold,underline guifg=grey46
hi default HLGray47BU               gui=bold,underline guifg=gray47
hi default HLGrey47BU               gui=bold,underline guifg=grey47
hi default HLGray48BU               gui=bold,underline guifg=gray48
hi default HLGrey48BU               gui=bold,underline guifg=grey48
hi default HLGray49BU               gui=bold,underline guifg=gray49
hi default HLGrey49BU               gui=bold,underline guifg=grey49
hi default HLGray50BU               gui=bold,underline guifg=gray50
hi default HLGrey50BU               gui=bold,underline guifg=grey50
hi default HLGray51BU               gui=bold,underline guifg=gray51
hi default HLGrey51BU               gui=bold,underline guifg=grey51
hi default HLGray52BU               gui=bold,underline guifg=gray52
hi default HLGrey52BU               gui=bold,underline guifg=grey52
hi default HLGray53BU               gui=bold,underline guifg=gray53
hi default HLGrey53BU               gui=bold,underline guifg=grey53
hi default HLGray54BU               gui=bold,underline guifg=gray54
hi default HLGrey54BU               gui=bold,underline guifg=grey54
hi default HLGray55BU               gui=bold,underline guifg=gray55
hi default HLGrey55BU               gui=bold,underline guifg=grey55
hi default HLGray56BU               gui=bold,underline guifg=gray56
hi default HLGrey56BU               gui=bold,underline guifg=grey56
hi default HLGray57BU               gui=bold,underline guifg=gray57
hi default HLGrey57BU               gui=bold,underline guifg=grey57
hi default HLGray58BU               gui=bold,underline guifg=gray58
hi default HLGrey58BU               gui=bold,underline guifg=grey58
hi default HLGray59BU               gui=bold,underline guifg=gray59
hi default HLGrey59BU               gui=bold,underline guifg=grey59
hi default HLGray60BU               gui=bold,underline guifg=gray60
hi default HLGrey60BU               gui=bold,underline guifg=grey60
hi default HLGray61BU               gui=bold,underline guifg=gray61
hi default HLGrey61BU               gui=bold,underline guifg=grey61
hi default HLGray62BU               gui=bold,underline guifg=gray62
hi default HLGrey62BU               gui=bold,underline guifg=grey62
hi default HLGray63BU               gui=bold,underline guifg=gray63
hi default HLGrey63BU               gui=bold,underline guifg=grey63
hi default HLGray64BU               gui=bold,underline guifg=gray64
hi default HLGrey64BU               gui=bold,underline guifg=grey64
hi default HLGray65BU               gui=bold,underline guifg=gray65
hi default HLGrey65BU               gui=bold,underline guifg=grey65
hi default HLGray66BU               gui=bold,underline guifg=gray66
hi default HLGrey66BU               gui=bold,underline guifg=grey66
hi default HLGray67BU               gui=bold,underline guifg=gray67
hi default HLGrey67BU               gui=bold,underline guifg=grey67
hi default HLGray68BU               gui=bold,underline guifg=gray68
hi default HLGrey68BU               gui=bold,underline guifg=grey68
hi default HLGray69BU               gui=bold,underline guifg=gray69
hi default HLGrey69BU               gui=bold,underline guifg=grey69
hi default HLGray70BU               gui=bold,underline guifg=gray70
hi default HLGrey70BU               gui=bold,underline guifg=grey70
hi default HLGray71BU               gui=bold,underline guifg=gray71
hi default HLGrey71BU               gui=bold,underline guifg=grey71
hi default HLGray72BU               gui=bold,underline guifg=gray72
hi default HLGrey72BU               gui=bold,underline guifg=grey72
hi default HLGray73BU               gui=bold,underline guifg=gray73
hi default HLGrey73BU               gui=bold,underline guifg=grey73
hi default HLGray74BU               gui=bold,underline guifg=gray74
hi default HLGrey74BU               gui=bold,underline guifg=grey74
hi default HLGray75BU               gui=bold,underline guifg=gray75
hi default HLGrey75BU               gui=bold,underline guifg=grey75
hi default HLGray76BU               gui=bold,underline guifg=gray76
hi default HLGrey76BU               gui=bold,underline guifg=grey76
hi default HLGray77BU               gui=bold,underline guifg=gray77
hi default HLGrey77BU               gui=bold,underline guifg=grey77
hi default HLGray78BU               gui=bold,underline guifg=gray78
hi default HLGrey78BU               gui=bold,underline guifg=grey78
hi default HLGray79BU               gui=bold,underline guifg=gray79
hi default HLGrey79BU               gui=bold,underline guifg=grey79
hi default HLGray80BU               gui=bold,underline guifg=gray80
hi default HLGrey80BU               gui=bold,underline guifg=grey80
hi default HLGray81BU               gui=bold,underline guifg=gray81
hi default HLGrey81BU               gui=bold,underline guifg=grey81
hi default HLGray82BU               gui=bold,underline guifg=gray82
hi default HLGrey82BU               gui=bold,underline guifg=grey82
hi default HLGray83BU               gui=bold,underline guifg=gray83
hi default HLGrey83BU               gui=bold,underline guifg=grey83
hi default HLGray84BU               gui=bold,underline guifg=gray84
hi default HLGrey84BU               gui=bold,underline guifg=grey84
hi default HLGray85BU               gui=bold,underline guifg=gray85
hi default HLGrey85BU               gui=bold,underline guifg=grey85
hi default HLGray86BU               gui=bold,underline guifg=gray86
hi default HLGrey86BU               gui=bold,underline guifg=grey86
hi default HLGray87BU               gui=bold,underline guifg=gray87
hi default HLGrey87BU               gui=bold,underline guifg=grey87
hi default HLGray88BU               gui=bold,underline guifg=gray88
hi default HLGrey88BU               gui=bold,underline guifg=grey88
hi default HLGray89BU               gui=bold,underline guifg=gray89
hi default HLGrey89BU               gui=bold,underline guifg=grey89
hi default HLGray90BU               gui=bold,underline guifg=gray90
hi default HLGrey90BU               gui=bold,underline guifg=grey90
hi default HLGray91BU               gui=bold,underline guifg=gray91
hi default HLGrey91BU               gui=bold,underline guifg=grey91
hi default HLGray92BU               gui=bold,underline guifg=gray92
hi default HLGrey92BU               gui=bold,underline guifg=grey92
hi default HLGray93BU               gui=bold,underline guifg=gray93
hi default HLGrey93BU               gui=bold,underline guifg=grey93
hi default HLGray94BU               gui=bold,underline guifg=gray94
hi default HLGrey94BU               gui=bold,underline guifg=grey94
hi default HLGray95BU               gui=bold,underline guifg=gray95
hi default HLGrey95BU               gui=bold,underline guifg=grey95
hi default HLGray96BU               gui=bold,underline guifg=gray96
hi default HLGrey96BU               gui=bold,underline guifg=grey96
hi default HLGray97BU               gui=bold,underline guifg=gray97
hi default HLGrey97BU               gui=bold,underline guifg=grey97
hi default HLGray98BU               gui=bold,underline guifg=gray98
hi default HLGrey98BU               gui=bold,underline guifg=grey98
hi default HLGray99BU               gui=bold,underline guifg=gray99
hi default HLGrey99BU               gui=bold,underline guifg=grey99
hi default HLGray100BU              gui=bold,underline guifg=gray100
hi default HLGrey100BU              gui=bold,underline guifg=grey100
hi default HLDarkgreyBU             gui=bold,underline guifg=darkgrey
hi default HLDarkgrayBU             gui=bold,underline guifg=darkgray
hi default HLDarkblueBU             gui=bold,underline guifg=darkblue
hi default HLDarkcyanBU             gui=bold,underline guifg=darkcyan
hi default HLDarkmagentaBU          gui=bold,underline guifg=darkmagenta
hi default HLDarkredBU              gui=bold,underline guifg=darkred
hi default HLLightgreenBU           gui=bold,underline guifg=lightgreen
hi default HLCrimsonBU              gui=bold,underline guifg=crimson
hi default HLIndigoBU               gui=bold,underline guifg=indigo
hi default HLOliveBU                gui=bold,underline guifg=olive
hi default HLRebeccapurpleBU        gui=bold,underline guifg=rebeccapurple
hi default HLSilverBU               gui=bold,underline guifg=silver
hi default HLTealBU                 gui=bold,underline guifg=teal


" Background colors with black foreground
hi default HLSnowBgB                 gui=bold guifg=black guibg=snow
hi default HLGhostwhiteBgB           gui=bold guifg=black guibg=ghostwhite
hi default HLWhitesmokeBgB           gui=bold guifg=black guibg=whitesmoke
hi default HLGainsboroBgB            gui=bold guifg=black guibg=gainsboro
hi default HLFloralwhiteBgB          gui=bold guifg=black guibg=floralwhite
hi default HLOldlaceBgB              gui=bold guifg=black guibg=oldlace
hi default HLLinenBgB                gui=bold guifg=black guibg=linen
hi default HLAntiquewhiteBgB         gui=bold guifg=black guibg=antiquewhite
hi default HLPapayawhipBgB           gui=bold guifg=black guibg=papayawhip
hi default HLBlanchedalmondBgB       gui=bold guifg=black guibg=blanchedalmond
hi default HLBisqueBgB               gui=bold guifg=black guibg=bisque
hi default HLPeachpuffBgB            gui=bold guifg=black guibg=peachpuff
hi default HLNavajowhiteBgB          gui=bold guifg=black guibg=navajowhite
hi default HLMoccasinBgB             gui=bold guifg=black guibg=moccasin
hi default HLCornsilkBgB             gui=bold guifg=black guibg=cornsilk
hi default HLIvoryBgB                gui=bold guifg=black guibg=ivory
hi default HLLemonchiffonBgB         gui=bold guifg=black guibg=lemonchiffon
hi default HLSeashellBgB             gui=bold guifg=black guibg=seashell
hi default HLHoneydewBgB             gui=bold guifg=black guibg=honeydew
hi default HLMintcreamBgB            gui=bold guifg=black guibg=mintcream
hi default HLAzureBgB                gui=bold guifg=black guibg=azure
hi default HLAliceblueBgB            gui=bold guifg=black guibg=aliceblue
hi default HLLavenderBgB             gui=bold guifg=black guibg=lavender
hi default HLLavenderblushBgB        gui=bold guifg=black guibg=lavenderblush
hi default HLMistyroseBgB            gui=bold guifg=black guibg=mistyrose
hi default HLWhiteBgB                gui=bold guifg=black guibg=white
hi default HLBlackBgB                gui=bold guifg=black guibg=black
hi default HLDarkslategrayBgB        gui=bold guifg=black guibg=darkslategray
hi default HLDarkslategreyBgB        gui=bold guifg=black guibg=darkslategrey
hi default HLDimgrayBgB              gui=bold guifg=black guibg=dimgray
hi default HLDimgreyBgB              gui=bold guifg=black guibg=dimgrey
hi default HLSlategrayBgB            gui=bold guifg=black guibg=slategray
hi default HLSlategreyBgB            gui=bold guifg=black guibg=slategrey
hi default HLLightslategrayBgB       gui=bold guifg=black guibg=lightslategray
hi default HLLightslategreyBgB       gui=bold guifg=black guibg=lightslategrey
hi default HLGrayBgB                 gui=bold guifg=black guibg=gray
hi default HLGreyBgB                 gui=bold guifg=black guibg=grey
hi default HLX11grayBgB              gui=bold guifg=black guibg=x11gray
hi default HLX11greyBgB              gui=bold guifg=black guibg=x11grey
hi default HLWebgrayBgB              gui=bold guifg=black guibg=webgray
hi default HLWebgreyBgB              gui=bold guifg=black guibg=webgrey
hi default HLLightgreyBgB            gui=bold guifg=black guibg=lightgrey
hi default HLLightgrayBgB            gui=bold guifg=black guibg=lightgray
hi default HLMidnightblueBgB         gui=bold guifg=black guibg=midnightblue
hi default HLNavyBgB                 gui=bold guifg=black guibg=navy
hi default HLNavyblueBgB             gui=bold guifg=black guibg=navyblue
hi default HLCornflowerblueBgB       gui=bold guifg=black guibg=cornflowerblue
hi default HLDarkslateblueBgB        gui=bold guifg=black guibg=darkslateblue
hi default HLSlateblueBgB            gui=bold guifg=black guibg=slateblue
hi default HLMediumslateblueBgB      gui=bold guifg=black guibg=mediumslateblue
hi default HLLightslateblueBgB       gui=bold guifg=black guibg=lightslateblue
hi default HLMediumblueBgB           gui=bold guifg=black guibg=mediumblue
hi default HLRoyalblueBgB            gui=bold guifg=black guibg=royalblue
hi default HLBlueBgB                 gui=bold guifg=black guibg=blue
hi default HLDodgerblueBgB           gui=bold guifg=black guibg=dodgerblue
hi default HLDeepskyblueBgB          gui=bold guifg=black guibg=deepskyblue
hi default HLSkyblueBgB              gui=bold guifg=black guibg=skyblue
hi default HLLightskyblueBgB         gui=bold guifg=black guibg=lightskyblue
hi default HLSteelblueBgB            gui=bold guifg=black guibg=steelblue
hi default HLLightsteelblueBgB       gui=bold guifg=black guibg=lightsteelblue
hi default HLLightblueBgB            gui=bold guifg=black guibg=lightblue
hi default HLPowderblueBgB           gui=bold guifg=black guibg=powderblue
hi default HLPaleturquoiseBgB        gui=bold guifg=black guibg=paleturquoise
hi default HLDarkturquoiseBgB        gui=bold guifg=black guibg=darkturquoise
hi default HLMediumturquoiseBgB      gui=bold guifg=black guibg=mediumturquoise
hi default HLTurquoiseBgB            gui=bold guifg=black guibg=turquoise
hi default HLCyanBgB                 gui=bold guifg=black guibg=cyan
hi default HLAquaBgB                 gui=bold guifg=black guibg=aqua
hi default HLLightcyanBgB            gui=bold guifg=black guibg=lightcyan
hi default HLCadetblueBgB            gui=bold guifg=black guibg=cadetblue
hi default HLMediumaquamarineBgB     gui=bold guifg=black guibg=mediumaquamarine
hi default HLAquamarineBgB           gui=bold guifg=black guibg=aquamarine
hi default HLDarkgreenBgB            gui=bold guifg=black guibg=darkgreen
hi default HLDarkolivegreenBgB       gui=bold guifg=black guibg=darkolivegreen
hi default HLDarkseagreenBgB         gui=bold guifg=black guibg=darkseagreen
hi default HLSeagreenBgB             gui=bold guifg=black guibg=seagreen
hi default HLMediumseagreenBgB       gui=bold guifg=black guibg=mediumseagreen
hi default HLLightseagreenBgB        gui=bold guifg=black guibg=lightseagreen
hi default HLPalegreenBgB            gui=bold guifg=black guibg=palegreen
hi default HLSpringgreenBgB          gui=bold guifg=black guibg=springgreen
hi default HLLawngreenBgB            gui=bold guifg=black guibg=lawngreen
hi default HLGreenBgB                gui=bold guifg=black guibg=green
hi default HLLimeBgB                 gui=bold guifg=black guibg=lime
hi default HLX11greenBgB             gui=bold guifg=black guibg=x11green
hi default HLWebgreenBgB             gui=bold guifg=black guibg=webgreen
hi default HLChartreuseBgB           gui=bold guifg=black guibg=chartreuse
hi default HLMediumspringgreenBgB    gui=bold guifg=black guibg=mediumspringgreen
hi default HLGreenyellowBgB          gui=bold guifg=black guibg=greenyellow
hi default HLLimegreenBgB            gui=bold guifg=black guibg=limegreen
hi default HLYellowgreenBgB          gui=bold guifg=black guibg=yellowgreen
hi default HLForestgreenBgB          gui=bold guifg=black guibg=forestgreen
hi default HLOlivedrabBgB            gui=bold guifg=black guibg=olivedrab
hi default HLDarkkhakiBgB            gui=bold guifg=black guibg=darkkhaki
hi default HLKhakiBgB                gui=bold guifg=black guibg=khaki
hi default HLPalegoldenrodBgB        gui=bold guifg=black guibg=palegoldenrod
hi default HLLightgoldenrodyellowBgB gui=bold guifg=black guibg=lightgoldenrodyellow
hi default HLLightyellowBgB          gui=bold guifg=black guibg=lightyellow
hi default HLYellowBgB               gui=bold guifg=black guibg=yellow
hi default HLGoldBgB                 gui=bold guifg=black guibg=gold
hi default HLLightgoldenrodBgB       gui=bold guifg=black guibg=lightgoldenrod
hi default HLGoldenrodBgB            gui=bold guifg=black guibg=goldenrod
hi default HLDarkgoldenrodBgB        gui=bold guifg=black guibg=darkgoldenrod
hi default HLRosybrownBgB            gui=bold guifg=black guibg=rosybrown
hi default HLIndianredBgB            gui=bold guifg=black guibg=indianred
hi default HLSaddlebrownBgB          gui=bold guifg=black guibg=saddlebrown
hi default HLSiennaBgB               gui=bold guifg=black guibg=sienna
hi default HLPeruBgB                 gui=bold guifg=black guibg=peru
hi default HLBurlywoodBgB            gui=bold guifg=black guibg=burlywood
hi default HLBeigeBgB                gui=bold guifg=black guibg=beige
hi default HLWheatBgB                gui=bold guifg=black guibg=wheat
hi default HLSandybrownBgB           gui=bold guifg=black guibg=sandybrown
hi default HLTanBgB                  gui=bold guifg=black guibg=tan
hi default HLChocolateBgB            gui=bold guifg=black guibg=chocolate
hi default HLFirebrickBgB            gui=bold guifg=black guibg=firebrick
hi default HLBrownBgB                gui=bold guifg=black guibg=brown
hi default HLDarksalmonBgB           gui=bold guifg=black guibg=darksalmon
hi default HLSalmonBgB               gui=bold guifg=black guibg=salmon
hi default HLLightsalmonBgB          gui=bold guifg=black guibg=lightsalmon
hi default HLOrangeBgB               gui=bold guifg=black guibg=orange
hi default HLDarkorangeBgB           gui=bold guifg=black guibg=darkorange
hi default HLCoralBgB                gui=bold guifg=black guibg=coral
hi default HLLightcoralBgB           gui=bold guifg=black guibg=lightcoral
hi default HLTomatoBgB               gui=bold guifg=black guibg=tomato
hi default HLOrangeredBgB            gui=bold guifg=black guibg=orangered
hi default HLRedBgB                  gui=bold guifg=black guibg=red
hi default HLHotpinkBgB              gui=bold guifg=black guibg=hotpink
hi default HLDeeppinkBgB             gui=bold guifg=black guibg=deeppink
hi default HLPinkBgB                 gui=bold guifg=black guibg=pink
hi default HLLightpinkBgB            gui=bold guifg=black guibg=lightpink
hi default HLPalevioletredBgB        gui=bold guifg=black guibg=palevioletred
hi default HLMaroonBgB               gui=bold guifg=black guibg=maroon
hi default HLX11maroonBgB            gui=bold guifg=black guibg=x11maroon
hi default HLWebmaroonBgB            gui=bold guifg=black guibg=webmaroon
hi default HLMediumvioletredBgB      gui=bold guifg=black guibg=mediumvioletred
hi default HLVioletredBgB            gui=bold guifg=black guibg=violetred
hi default HLMagentaBgB              gui=bold guifg=black guibg=magenta
hi default HLFuchsiaBgB              gui=bold guifg=black guibg=fuchsia
hi default HLVioletBgB               gui=bold guifg=black guibg=violet
hi default HLPlumBgB                 gui=bold guifg=black guibg=plum
hi default HLOrchidBgB               gui=bold guifg=black guibg=orchid
hi default HLMediumorchidBgB         gui=bold guifg=black guibg=mediumorchid
hi default HLDarkorchidBgB           gui=bold guifg=black guibg=darkorchid
hi default HLDarkvioletBgB           gui=bold guifg=black guibg=darkviolet
hi default HLBluevioletBgB           gui=bold guifg=black guibg=blueviolet
hi default HLPurpleBgB               gui=bold guifg=black guibg=purple
hi default HLX11purpleBgB            gui=bold guifg=black guibg=x11purple
hi default HLWebpurpleBgB            gui=bold guifg=black guibg=webpurple
hi default HLMediumpurpleBgB         gui=bold guifg=black guibg=mediumpurple
hi default HLThistleBgB              gui=bold guifg=black guibg=thistle
hi default HLSnow1BgB                gui=bold guifg=black guibg=snow1
hi default HLSnow2BgB                gui=bold guifg=black guibg=snow2
hi default HLSnow3BgB                gui=bold guifg=black guibg=snow3
hi default HLSnow4BgB                gui=bold guifg=black guibg=snow4
hi default HLSeashell1BgB            gui=bold guifg=black guibg=seashell1
hi default HLSeashell2BgB            gui=bold guifg=black guibg=seashell2
hi default HLSeashell3BgB            gui=bold guifg=black guibg=seashell3
hi default HLSeashell4BgB            gui=bold guifg=black guibg=seashell4
hi default HLAntiquewhite1BgB        gui=bold guifg=black guibg=antiquewhite1
hi default HLAntiquewhite2BgB        gui=bold guifg=black guibg=antiquewhite2
hi default HLAntiquewhite3BgB        gui=bold guifg=black guibg=antiquewhite3
hi default HLAntiquewhite4BgB        gui=bold guifg=black guibg=antiquewhite4
hi default HLBisque1BgB              gui=bold guifg=black guibg=bisque1
hi default HLBisque2BgB              gui=bold guifg=black guibg=bisque2
hi default HLBisque3BgB              gui=bold guifg=black guibg=bisque3
hi default HLBisque4BgB              gui=bold guifg=black guibg=bisque4
hi default HLPeachpuff1BgB           gui=bold guifg=black guibg=peachpuff1
hi default HLPeachpuff2BgB           gui=bold guifg=black guibg=peachpuff2
hi default HLPeachpuff3BgB           gui=bold guifg=black guibg=peachpuff3
hi default HLPeachpuff4BgB           gui=bold guifg=black guibg=peachpuff4
hi default HLNavajowhite1BgB         gui=bold guifg=black guibg=navajowhite1
hi default HLNavajowhite2BgB         gui=bold guifg=black guibg=navajowhite2
hi default HLNavajowhite3BgB         gui=bold guifg=black guibg=navajowhite3
hi default HLNavajowhite4BgB         gui=bold guifg=black guibg=navajowhite4
hi default HLLemonchiffon1BgB        gui=bold guifg=black guibg=lemonchiffon1
hi default HLLemonchiffon2BgB        gui=bold guifg=black guibg=lemonchiffon2
hi default HLLemonchiffon3BgB        gui=bold guifg=black guibg=lemonchiffon3
hi default HLLemonchiffon4BgB        gui=bold guifg=black guibg=lemonchiffon4
hi default HLCornsilk1BgB            gui=bold guifg=black guibg=cornsilk1
hi default HLCornsilk2BgB            gui=bold guifg=black guibg=cornsilk2
hi default HLCornsilk3BgB            gui=bold guifg=black guibg=cornsilk3
hi default HLCornsilk4BgB            gui=bold guifg=black guibg=cornsilk4
hi default HLIvory1BgB               gui=bold guifg=black guibg=ivory1
hi default HLIvory2BgB               gui=bold guifg=black guibg=ivory2
hi default HLIvory3BgB               gui=bold guifg=black guibg=ivory3
hi default HLIvory4BgB               gui=bold guifg=black guibg=ivory4
hi default HLHoneydew1BgB            gui=bold guifg=black guibg=honeydew1
hi default HLHoneydew2BgB            gui=bold guifg=black guibg=honeydew2
hi default HLHoneydew3BgB            gui=bold guifg=black guibg=honeydew3
hi default HLHoneydew4BgB            gui=bold guifg=black guibg=honeydew4
hi default HLLavenderblush1BgB       gui=bold guifg=black guibg=lavenderblush1
hi default HLLavenderblush2BgB       gui=bold guifg=black guibg=lavenderblush2
hi default HLLavenderblush3BgB       gui=bold guifg=black guibg=lavenderblush3
hi default HLLavenderblush4BgB       gui=bold guifg=black guibg=lavenderblush4
hi default HLMistyrose1BgB           gui=bold guifg=black guibg=mistyrose1
hi default HLMistyrose2BgB           gui=bold guifg=black guibg=mistyrose2
hi default HLMistyrose3BgB           gui=bold guifg=black guibg=mistyrose3
hi default HLMistyrose4BgB           gui=bold guifg=black guibg=mistyrose4
hi default HLAzure1BgB               gui=bold guifg=black guibg=azure1
hi default HLAzure2BgB               gui=bold guifg=black guibg=azure2
hi default HLAzure3BgB               gui=bold guifg=black guibg=azure3
hi default HLAzure4BgB               gui=bold guifg=black guibg=azure4
hi default HLSlateblue1BgB           gui=bold guifg=black guibg=slateblue1
hi default HLSlateblue2BgB           gui=bold guifg=black guibg=slateblue2
hi default HLSlateblue3BgB           gui=bold guifg=black guibg=slateblue3
hi default HLSlateblue4BgB           gui=bold guifg=black guibg=slateblue4
hi default HLRoyalblue1BgB           gui=bold guifg=black guibg=royalblue1
hi default HLRoyalblue2BgB           gui=bold guifg=black guibg=royalblue2
hi default HLRoyalblue3BgB           gui=bold guifg=black guibg=royalblue3
hi default HLRoyalblue4BgB           gui=bold guifg=black guibg=royalblue4
hi default HLBlue1BgB                gui=bold guifg=black guibg=blue1
hi default HLBlue2BgB                gui=bold guifg=black guibg=blue2
hi default HLBlue3BgB                gui=bold guifg=black guibg=blue3
hi default HLBlue4BgB                gui=bold guifg=black guibg=blue4
hi default HLDodgerblue1BgB          gui=bold guifg=black guibg=dodgerblue1
hi default HLDodgerblue2BgB          gui=bold guifg=black guibg=dodgerblue2
hi default HLDodgerblue3BgB          gui=bold guifg=black guibg=dodgerblue3
hi default HLDodgerblue4BgB          gui=bold guifg=black guibg=dodgerblue4
hi default HLSteelblue1BgB           gui=bold guifg=black guibg=steelblue1
hi default HLSteelblue2BgB           gui=bold guifg=black guibg=steelblue2
hi default HLSteelblue3BgB           gui=bold guifg=black guibg=steelblue3
hi default HLSteelblue4BgB           gui=bold guifg=black guibg=steelblue4
hi default HLDeepskyblue1BgB         gui=bold guifg=black guibg=deepskyblue1
hi default HLDeepskyblue2BgB         gui=bold guifg=black guibg=deepskyblue2
hi default HLDeepskyblue3BgB         gui=bold guifg=black guibg=deepskyblue3
hi default HLDeepskyblue4BgB         gui=bold guifg=black guibg=deepskyblue4
hi default HLSkyblue1BgB             gui=bold guifg=black guibg=skyblue1
hi default HLSkyblue2BgB             gui=bold guifg=black guibg=skyblue2
hi default HLSkyblue3BgB             gui=bold guifg=black guibg=skyblue3
hi default HLSkyblue4BgB             gui=bold guifg=black guibg=skyblue4
hi default HLLightskyblue1BgB        gui=bold guifg=black guibg=lightskyblue1
hi default HLLightskyblue2BgB        gui=bold guifg=black guibg=lightskyblue2
hi default HLLightskyblue3BgB        gui=bold guifg=black guibg=lightskyblue3
hi default HLLightskyblue4BgB        gui=bold guifg=black guibg=lightskyblue4
hi default HLSlategray1BgB           gui=bold guifg=black guibg=slategray1
hi default HLSlategray2BgB           gui=bold guifg=black guibg=slategray2
hi default HLSlategray3BgB           gui=bold guifg=black guibg=slategray3
hi default HLSlategray4BgB           gui=bold guifg=black guibg=slategray4
hi default HLLightsteelblue1BgB      gui=bold guifg=black guibg=lightsteelblue1
hi default HLLightsteelblue2BgB      gui=bold guifg=black guibg=lightsteelblue2
hi default HLLightsteelblue3BgB      gui=bold guifg=black guibg=lightsteelblue3
hi default HLLightsteelblue4BgB      gui=bold guifg=black guibg=lightsteelblue4
hi default HLLightblue1BgB           gui=bold guifg=black guibg=lightblue1
hi default HLLightblue2BgB           gui=bold guifg=black guibg=lightblue2
hi default HLLightblue3BgB           gui=bold guifg=black guibg=lightblue3
hi default HLLightblue4BgB           gui=bold guifg=black guibg=lightblue4
hi default HLLightcyan1BgB           gui=bold guifg=black guibg=lightcyan1
hi default HLLightcyan2BgB           gui=bold guifg=black guibg=lightcyan2
hi default HLLightcyan3BgB           gui=bold guifg=black guibg=lightcyan3
hi default HLLightcyan4BgB           gui=bold guifg=black guibg=lightcyan4
hi default HLPaleturquoise1BgB       gui=bold guifg=black guibg=paleturquoise1
hi default HLPaleturquoise2BgB       gui=bold guifg=black guibg=paleturquoise2
hi default HLPaleturquoise3BgB       gui=bold guifg=black guibg=paleturquoise3
hi default HLPaleturquoise4BgB       gui=bold guifg=black guibg=paleturquoise4
hi default HLCadetblue1BgB           gui=bold guifg=black guibg=cadetblue1
hi default HLCadetblue2BgB           gui=bold guifg=black guibg=cadetblue2
hi default HLCadetblue3BgB           gui=bold guifg=black guibg=cadetblue3
hi default HLCadetblue4BgB           gui=bold guifg=black guibg=cadetblue4
hi default HLTurquoise1BgB           gui=bold guifg=black guibg=turquoise1
hi default HLTurquoise2BgB           gui=bold guifg=black guibg=turquoise2
hi default HLTurquoise3BgB           gui=bold guifg=black guibg=turquoise3
hi default HLTurquoise4BgB           gui=bold guifg=black guibg=turquoise4
hi default HLCyan1BgB                gui=bold guifg=black guibg=cyan1
hi default HLCyan2BgB                gui=bold guifg=black guibg=cyan2
hi default HLCyan3BgB                gui=bold guifg=black guibg=cyan3
hi default HLCyan4BgB                gui=bold guifg=black guibg=cyan4
hi default HLDarkslategray1BgB       gui=bold guifg=black guibg=darkslategray1
hi default HLDarkslategray2BgB       gui=bold guifg=black guibg=darkslategray2
hi default HLDarkslategray3BgB       gui=bold guifg=black guibg=darkslategray3
hi default HLDarkslategray4BgB       gui=bold guifg=black guibg=darkslategray4
hi default HLAquamarine1BgB          gui=bold guifg=black guibg=aquamarine1
hi default HLAquamarine2BgB          gui=bold guifg=black guibg=aquamarine2
hi default HLAquamarine3BgB          gui=bold guifg=black guibg=aquamarine3
hi default HLAquamarine4BgB          gui=bold guifg=black guibg=aquamarine4
hi default HLDarkseagreen1BgB        gui=bold guifg=black guibg=darkseagreen1
hi default HLDarkseagreen2BgB        gui=bold guifg=black guibg=darkseagreen2
hi default HLDarkseagreen3BgB        gui=bold guifg=black guibg=darkseagreen3
hi default HLDarkseagreen4BgB        gui=bold guifg=black guibg=darkseagreen4
hi default HLSeagreen1BgB            gui=bold guifg=black guibg=seagreen1
hi default HLSeagreen2BgB            gui=bold guifg=black guibg=seagreen2
hi default HLSeagreen3BgB            gui=bold guifg=black guibg=seagreen3
hi default HLSeagreen4BgB            gui=bold guifg=black guibg=seagreen4
hi default HLPalegreen1BgB           gui=bold guifg=black guibg=palegreen1
hi default HLPalegreen2BgB           gui=bold guifg=black guibg=palegreen2
hi default HLPalegreen3BgB           gui=bold guifg=black guibg=palegreen3
hi default HLPalegreen4BgB           gui=bold guifg=black guibg=palegreen4
hi default HLSpringgreen1BgB         gui=bold guifg=black guibg=springgreen1
hi default HLSpringgreen2BgB         gui=bold guifg=black guibg=springgreen2
hi default HLSpringgreen3BgB         gui=bold guifg=black guibg=springgreen3
hi default HLSpringgreen4BgB         gui=bold guifg=black guibg=springgreen4
hi default HLGreen1BgB               gui=bold guifg=black guibg=green1
hi default HLGreen2BgB               gui=bold guifg=black guibg=green2
hi default HLGreen3BgB               gui=bold guifg=black guibg=green3
hi default HLGreen4BgB               gui=bold guifg=black guibg=green4
hi default HLChartreuse1BgB          gui=bold guifg=black guibg=chartreuse1
hi default HLChartreuse2BgB          gui=bold guifg=black guibg=chartreuse2
hi default HLChartreuse3BgB          gui=bold guifg=black guibg=chartreuse3
hi default HLChartreuse4BgB          gui=bold guifg=black guibg=chartreuse4
hi default HLOlivedrab1BgB           gui=bold guifg=black guibg=olivedrab1
hi default HLOlivedrab2BgB           gui=bold guifg=black guibg=olivedrab2
hi default HLOlivedrab3BgB           gui=bold guifg=black guibg=olivedrab3
hi default HLOlivedrab4BgB           gui=bold guifg=black guibg=olivedrab4
hi default HLDarkolivegreen1BgB      gui=bold guifg=black guibg=darkolivegreen1
hi default HLDarkolivegreen2BgB      gui=bold guifg=black guibg=darkolivegreen2
hi default HLDarkolivegreen3BgB      gui=bold guifg=black guibg=darkolivegreen3
hi default HLDarkolivegreen4BgB      gui=bold guifg=black guibg=darkolivegreen4
hi default HLKhaki1BgB               gui=bold guifg=black guibg=khaki1
hi default HLKhaki2BgB               gui=bold guifg=black guibg=khaki2
hi default HLKhaki3BgB               gui=bold guifg=black guibg=khaki3
hi default HLKhaki4BgB               gui=bold guifg=black guibg=khaki4
hi default HLLightgoldenrod1BgB      gui=bold guifg=black guibg=lightgoldenrod1
hi default HLLightgoldenrod2BgB      gui=bold guifg=black guibg=lightgoldenrod2
hi default HLLightgoldenrod3BgB      gui=bold guifg=black guibg=lightgoldenrod3
hi default HLLightgoldenrod4BgB      gui=bold guifg=black guibg=lightgoldenrod4
hi default HLLightyellow1BgB         gui=bold guifg=black guibg=lightyellow1
hi default HLLightyellow2BgB         gui=bold guifg=black guibg=lightyellow2
hi default HLLightyellow3BgB         gui=bold guifg=black guibg=lightyellow3
hi default HLLightyellow4BgB         gui=bold guifg=black guibg=lightyellow4
hi default HLYellow1BgB              gui=bold guifg=black guibg=yellow1
hi default HLYellow2BgB              gui=bold guifg=black guibg=yellow2
hi default HLYellow3BgB              gui=bold guifg=black guibg=yellow3
hi default HLYellow4BgB              gui=bold guifg=black guibg=yellow4
hi default HLDarkyellowBgB           gui=bold guifg=black guibg=darkyellow
hi default HLGold1BgB                gui=bold guifg=black guibg=gold1
hi default HLGold2BgB                gui=bold guifg=black guibg=gold2
hi default HLGold3BgB                gui=bold guifg=black guibg=gold3
hi default HLGold4BgB                gui=bold guifg=black guibg=gold4
hi default HLGoldenrod1BgB           gui=bold guifg=black guibg=goldenrod1
hi default HLGoldenrod2BgB           gui=bold guifg=black guibg=goldenrod2
hi default HLGoldenrod3BgB           gui=bold guifg=black guibg=goldenrod3
hi default HLGoldenrod4BgB           gui=bold guifg=black guibg=goldenrod4
hi default HLDarkgoldenrod1BgB       gui=bold guifg=black guibg=darkgoldenrod1
hi default HLDarkgoldenrod2BgB       gui=bold guifg=black guibg=darkgoldenrod2
hi default HLDarkgoldenrod3BgB       gui=bold guifg=black guibg=darkgoldenrod3
hi default HLDarkgoldenrod4BgB       gui=bold guifg=black guibg=darkgoldenrod4
hi default HLRosybrown1BgB           gui=bold guifg=black guibg=rosybrown1
hi default HLRosybrown2BgB           gui=bold guifg=black guibg=rosybrown2
hi default HLRosybrown3BgB           gui=bold guifg=black guibg=rosybrown3
hi default HLRosybrown4BgB           gui=bold guifg=black guibg=rosybrown4
hi default HLIndianred1BgB           gui=bold guifg=black guibg=indianred1
hi default HLIndianred2BgB           gui=bold guifg=black guibg=indianred2
hi default HLIndianred3BgB           gui=bold guifg=black guibg=indianred3
hi default HLIndianred4BgB           gui=bold guifg=black guibg=indianred4
hi default HLSienna1BgB              gui=bold guifg=black guibg=sienna1
hi default HLSienna2BgB              gui=bold guifg=black guibg=sienna2
hi default HLSienna3BgB              gui=bold guifg=black guibg=sienna3
hi default HLSienna4BgB              gui=bold guifg=black guibg=sienna4
hi default HLBurlywood1BgB           gui=bold guifg=black guibg=burlywood1
hi default HLBurlywood2BgB           gui=bold guifg=black guibg=burlywood2
hi default HLBurlywood3BgB           gui=bold guifg=black guibg=burlywood3
hi default HLBurlywood4BgB           gui=bold guifg=black guibg=burlywood4
hi default HLWheat1BgB               gui=bold guifg=black guibg=wheat1
hi default HLWheat2BgB               gui=bold guifg=black guibg=wheat2
hi default HLWheat3BgB               gui=bold guifg=black guibg=wheat3
hi default HLWheat4BgB               gui=bold guifg=black guibg=wheat4
hi default HLTan1BgB                 gui=bold guifg=black guibg=tan1
hi default HLTan2BgB                 gui=bold guifg=black guibg=tan2
hi default HLTan3BgB                 gui=bold guifg=black guibg=tan3
hi default HLTan4BgB                 gui=bold guifg=black guibg=tan4
hi default HLChocolate1BgB           gui=bold guifg=black guibg=chocolate1
hi default HLChocolate2BgB           gui=bold guifg=black guibg=chocolate2
hi default HLChocolate3BgB           gui=bold guifg=black guibg=chocolate3
hi default HLChocolate4BgB           gui=bold guifg=black guibg=chocolate4
hi default HLFirebrick1BgB           gui=bold guifg=black guibg=firebrick1
hi default HLFirebrick2BgB           gui=bold guifg=black guibg=firebrick2
hi default HLFirebrick3BgB           gui=bold guifg=black guibg=firebrick3
hi default HLFirebrick4BgB           gui=bold guifg=black guibg=firebrick4
hi default HLBrown1BgB               gui=bold guifg=black guibg=brown1
hi default HLBrown2BgB               gui=bold guifg=black guibg=brown2
hi default HLBrown3BgB               gui=bold guifg=black guibg=brown3
hi default HLBrown4BgB               gui=bold guifg=black guibg=brown4
hi default HLSalmon1BgB              gui=bold guifg=black guibg=salmon1
hi default HLSalmon2BgB              gui=bold guifg=black guibg=salmon2
hi default HLSalmon3BgB              gui=bold guifg=black guibg=salmon3
hi default HLSalmon4BgB              gui=bold guifg=black guibg=salmon4
hi default HLLightsalmon1BgB         gui=bold guifg=black guibg=lightsalmon1
hi default HLLightsalmon2BgB         gui=bold guifg=black guibg=lightsalmon2
hi default HLLightsalmon3BgB         gui=bold guifg=black guibg=lightsalmon3
hi default HLLightsalmon4BgB         gui=bold guifg=black guibg=lightsalmon4
hi default HLOrange1BgB              gui=bold guifg=black guibg=orange1
hi default HLOrange2BgB              gui=bold guifg=black guibg=orange2
hi default HLOrange3BgB              gui=bold guifg=black guibg=orange3
hi default HLOrange4BgB              gui=bold guifg=black guibg=orange4
hi default HLDarkorange1BgB          gui=bold guifg=black guibg=darkorange1
hi default HLDarkorange2BgB          gui=bold guifg=black guibg=darkorange2
hi default HLDarkorange3BgB          gui=bold guifg=black guibg=darkorange3
hi default HLDarkorange4BgB          gui=bold guifg=black guibg=darkorange4
hi default HLCoral1BgB               gui=bold guifg=black guibg=coral1
hi default HLCoral2BgB               gui=bold guifg=black guibg=coral2
hi default HLCoral3BgB               gui=bold guifg=black guibg=coral3
hi default HLCoral4BgB               gui=bold guifg=black guibg=coral4
hi default HLTomato1BgB              gui=bold guifg=black guibg=tomato1
hi default HLTomato2BgB              gui=bold guifg=black guibg=tomato2
hi default HLTomato3BgB              gui=bold guifg=black guibg=tomato3
hi default HLTomato4BgB              gui=bold guifg=black guibg=tomato4
hi default HLOrangered1BgB           gui=bold guifg=black guibg=orangered1
hi default HLOrangered2BgB           gui=bold guifg=black guibg=orangered2
hi default HLOrangered3BgB           gui=bold guifg=black guibg=orangered3
hi default HLOrangered4BgB           gui=bold guifg=black guibg=orangered4
hi default HLLightredBgB             gui=bold guifg=black guibg=lightred
hi default HLRed1BgB                 gui=bold guifg=black guibg=red1
hi default HLRed2BgB                 gui=bold guifg=black guibg=red2
hi default HLRed3BgB                 gui=bold guifg=black guibg=red3
hi default HLRed4BgB                 gui=bold guifg=black guibg=red4
hi default HLDeeppink1BgB            gui=bold guifg=black guibg=deeppink1
hi default HLDeeppink2BgB            gui=bold guifg=black guibg=deeppink2
hi default HLDeeppink3BgB            gui=bold guifg=black guibg=deeppink3
hi default HLDeeppink4BgB            gui=bold guifg=black guibg=deeppink4
hi default HLHotpink1BgB             gui=bold guifg=black guibg=hotpink1
hi default HLHotpink2BgB             gui=bold guifg=black guibg=hotpink2
hi default HLHotpink3BgB             gui=bold guifg=black guibg=hotpink3
hi default HLHotpink4BgB             gui=bold guifg=black guibg=hotpink4
hi default HLPink1BgB                gui=bold guifg=black guibg=pink1
hi default HLPink2BgB                gui=bold guifg=black guibg=pink2
hi default HLPink3BgB                gui=bold guifg=black guibg=pink3
hi default HLPink4BgB                gui=bold guifg=black guibg=pink4
hi default HLLightpink1BgB           gui=bold guifg=black guibg=lightpink1
hi default HLLightpink2BgB           gui=bold guifg=black guibg=lightpink2
hi default HLLightpink3BgB           gui=bold guifg=black guibg=lightpink3
hi default HLLightpink4BgB           gui=bold guifg=black guibg=lightpink4
hi default HLPalevioletred1BgB       gui=bold guifg=black guibg=palevioletred1
hi default HLPalevioletred2BgB       gui=bold guifg=black guibg=palevioletred2
hi default HLPalevioletred3BgB       gui=bold guifg=black guibg=palevioletred3
hi default HLPalevioletred4BgB       gui=bold guifg=black guibg=palevioletred4
hi default HLMaroon1BgB              gui=bold guifg=black guibg=maroon1
hi default HLMaroon2BgB              gui=bold guifg=black guibg=maroon2
hi default HLMaroon3BgB              gui=bold guifg=black guibg=maroon3
hi default HLMaroon4BgB              gui=bold guifg=black guibg=maroon4
hi default HLVioletred1BgB           gui=bold guifg=black guibg=violetred1
hi default HLVioletred2BgB           gui=bold guifg=black guibg=violetred2
hi default HLVioletred3BgB           gui=bold guifg=black guibg=violetred3
hi default HLVioletred4BgB           gui=bold guifg=black guibg=violetred4
hi default HLLightmagentaBgB         gui=bold guifg=black guibg=lightmagenta
hi default HLMagenta1BgB             gui=bold guifg=black guibg=magenta1
hi default HLMagenta2BgB             gui=bold guifg=black guibg=magenta2
hi default HLMagenta3BgB             gui=bold guifg=black guibg=magenta3
hi default HLMagenta4BgB             gui=bold guifg=black guibg=magenta4
hi default HLOrchid1BgB              gui=bold guifg=black guibg=orchid1
hi default HLOrchid2BgB              gui=bold guifg=black guibg=orchid2
hi default HLOrchid3BgB              gui=bold guifg=black guibg=orchid3
hi default HLOrchid4BgB              gui=bold guifg=black guibg=orchid4
hi default HLPlum1BgB                gui=bold guifg=black guibg=plum1
hi default HLPlum2BgB                gui=bold guifg=black guibg=plum2
hi default HLPlum3BgB                gui=bold guifg=black guibg=plum3
hi default HLPlum4BgB                gui=bold guifg=black guibg=plum4
hi default HLMediumorchid1BgB        gui=bold guifg=black guibg=mediumorchid1
hi default HLMediumorchid2BgB        gui=bold guifg=black guibg=mediumorchid2
hi default HLMediumorchid3BgB        gui=bold guifg=black guibg=mediumorchid3
hi default HLMediumorchid4BgB        gui=bold guifg=black guibg=mediumorchid4
hi default HLDarkorchid1BgB          gui=bold guifg=black guibg=darkorchid1
hi default HLDarkorchid2BgB          gui=bold guifg=black guibg=darkorchid2
hi default HLDarkorchid3BgB          gui=bold guifg=black guibg=darkorchid3
hi default HLDarkorchid4BgB          gui=bold guifg=black guibg=darkorchid4
hi default HLPurple1BgB              gui=bold guifg=black guibg=purple1
hi default HLPurple2BgB              gui=bold guifg=black guibg=purple2
hi default HLPurple3BgB              gui=bold guifg=black guibg=purple3
hi default HLPurple4BgB              gui=bold guifg=black guibg=purple4
hi default HLMediumpurple1BgB        gui=bold guifg=black guibg=mediumpurple1
hi default HLMediumpurple2BgB        gui=bold guifg=black guibg=mediumpurple2
hi default HLMediumpurple3BgB        gui=bold guifg=black guibg=mediumpurple3
hi default HLMediumpurple4BgB        gui=bold guifg=black guibg=mediumpurple4
hi default HLThistle1BgB             gui=bold guifg=black guibg=thistle1
hi default HLThistle2BgB             gui=bold guifg=black guibg=thistle2
hi default HLThistle3BgB             gui=bold guifg=black guibg=thistle3
hi default HLThistle4BgB             gui=bold guifg=black guibg=thistle4
hi default HLGray0BgB                gui=bold guifg=black guibg=gray0
hi default HLGrey0BgB                gui=bold guifg=black guibg=grey0
hi default HLGray1BgB                gui=bold guifg=black guibg=gray1
hi default HLGrey1BgB                gui=bold guifg=black guibg=grey1
hi default HLGray2BgB                gui=bold guifg=black guibg=gray2
hi default HLGrey2BgB                gui=bold guifg=black guibg=grey2
hi default HLGray3BgB                gui=bold guifg=black guibg=gray3
hi default HLGrey3BgB                gui=bold guifg=black guibg=grey3
hi default HLGray4BgB                gui=bold guifg=black guibg=gray4
hi default HLGrey4BgB                gui=bold guifg=black guibg=grey4
hi default HLGray5BgB                gui=bold guifg=black guibg=gray5
hi default HLGrey5BgB                gui=bold guifg=black guibg=grey5
hi default HLGray6BgB                gui=bold guifg=black guibg=gray6
hi default HLGrey6BgB                gui=bold guifg=black guibg=grey6
hi default HLGray7BgB                gui=bold guifg=black guibg=gray7
hi default HLGrey7BgB                gui=bold guifg=black guibg=grey7
hi default HLGray8BgB                gui=bold guifg=black guibg=gray8
hi default HLGrey8BgB                gui=bold guifg=black guibg=grey8
hi default HLGray9BgB                gui=bold guifg=black guibg=gray9
hi default HLGrey9BgB                gui=bold guifg=black guibg=grey9
hi default HLGray10BgB               gui=bold guifg=black guibg=gray10
hi default HLGrey10BgB               gui=bold guifg=black guibg=grey10
hi default HLGray11BgB               gui=bold guifg=black guibg=gray11
hi default HLGrey11BgB               gui=bold guifg=black guibg=grey11
hi default HLGray12BgB               gui=bold guifg=black guibg=gray12
hi default HLGrey12BgB               gui=bold guifg=black guibg=grey12
hi default HLGray13BgB               gui=bold guifg=black guibg=gray13
hi default HLGrey13BgB               gui=bold guifg=black guibg=grey13
hi default HLGray14BgB               gui=bold guifg=black guibg=gray14
hi default HLGrey14BgB               gui=bold guifg=black guibg=grey14
hi default HLGray15BgB               gui=bold guifg=black guibg=gray15
hi default HLGrey15BgB               gui=bold guifg=black guibg=grey15
hi default HLGray16BgB               gui=bold guifg=black guibg=gray16
hi default HLGrey16BgB               gui=bold guifg=black guibg=grey16
hi default HLGray17BgB               gui=bold guifg=black guibg=gray17
hi default HLGrey17BgB               gui=bold guifg=black guibg=grey17
hi default HLGray18BgB               gui=bold guifg=black guibg=gray18
hi default HLGrey18BgB               gui=bold guifg=black guibg=grey18
hi default HLGray19BgB               gui=bold guifg=black guibg=gray19
hi default HLGrey19BgB               gui=bold guifg=black guibg=grey19
hi default HLGray20BgB               gui=bold guifg=black guibg=gray20
hi default HLGrey20BgB               gui=bold guifg=black guibg=grey20
hi default HLGray21BgB               gui=bold guifg=black guibg=gray21
hi default HLGrey21BgB               gui=bold guifg=black guibg=grey21
hi default HLGray22BgB               gui=bold guifg=black guibg=gray22
hi default HLGrey22BgB               gui=bold guifg=black guibg=grey22
hi default HLGray23BgB               gui=bold guifg=black guibg=gray23
hi default HLGrey23BgB               gui=bold guifg=black guibg=grey23
hi default HLGray24BgB               gui=bold guifg=black guibg=gray24
hi default HLGrey24BgB               gui=bold guifg=black guibg=grey24
hi default HLGray25BgB               gui=bold guifg=black guibg=gray25
hi default HLGrey25BgB               gui=bold guifg=black guibg=grey25
hi default HLGray26BgB               gui=bold guifg=black guibg=gray26
hi default HLGrey26BgB               gui=bold guifg=black guibg=grey26
hi default HLGray27BgB               gui=bold guifg=black guibg=gray27
hi default HLGrey27BgB               gui=bold guifg=black guibg=grey27
hi default HLGray28BgB               gui=bold guifg=black guibg=gray28
hi default HLGrey28BgB               gui=bold guifg=black guibg=grey28
hi default HLGray29BgB               gui=bold guifg=black guibg=gray29
hi default HLGrey29BgB               gui=bold guifg=black guibg=grey29
hi default HLGray30BgB               gui=bold guifg=black guibg=gray30
hi default HLGrey30BgB               gui=bold guifg=black guibg=grey30
hi default HLGray31BgB               gui=bold guifg=black guibg=gray31
hi default HLGrey31BgB               gui=bold guifg=black guibg=grey31
hi default HLGray32BgB               gui=bold guifg=black guibg=gray32
hi default HLGrey32BgB               gui=bold guifg=black guibg=grey32
hi default HLGray33BgB               gui=bold guifg=black guibg=gray33
hi default HLGrey33BgB               gui=bold guifg=black guibg=grey33
hi default HLGray34BgB               gui=bold guifg=black guibg=gray34
hi default HLGrey34BgB               gui=bold guifg=black guibg=grey34
hi default HLGray35BgB               gui=bold guifg=black guibg=gray35
hi default HLGrey35BgB               gui=bold guifg=black guibg=grey35
hi default HLGray36BgB               gui=bold guifg=black guibg=gray36
hi default HLGrey36BgB               gui=bold guifg=black guibg=grey36
hi default HLGray37BgB               gui=bold guifg=black guibg=gray37
hi default HLGrey37BgB               gui=bold guifg=black guibg=grey37
hi default HLGray38BgB               gui=bold guifg=black guibg=gray38
hi default HLGrey38BgB               gui=bold guifg=black guibg=grey38
hi default HLGray39BgB               gui=bold guifg=black guibg=gray39
hi default HLGrey39BgB               gui=bold guifg=black guibg=grey39
hi default HLGray40BgB               gui=bold guifg=black guibg=gray40
hi default HLGrey40BgB               gui=bold guifg=black guibg=grey40
hi default HLGray41BgB               gui=bold guifg=black guibg=gray41
hi default HLGrey41BgB               gui=bold guifg=black guibg=grey41
hi default HLGray42BgB               gui=bold guifg=black guibg=gray42
hi default HLGrey42BgB               gui=bold guifg=black guibg=grey42
hi default HLGray43BgB               gui=bold guifg=black guibg=gray43
hi default HLGrey43BgB               gui=bold guifg=black guibg=grey43
hi default HLGray44BgB               gui=bold guifg=black guibg=gray44
hi default HLGrey44BgB               gui=bold guifg=black guibg=grey44
hi default HLGray45BgB               gui=bold guifg=black guibg=gray45
hi default HLGrey45BgB               gui=bold guifg=black guibg=grey45
hi default HLGray46BgB               gui=bold guifg=black guibg=gray46
hi default HLGrey46BgB               gui=bold guifg=black guibg=grey46
hi default HLGray47BgB               gui=bold guifg=black guibg=gray47
hi default HLGrey47BgB               gui=bold guifg=black guibg=grey47
hi default HLGray48BgB               gui=bold guifg=black guibg=gray48
hi default HLGrey48BgB               gui=bold guifg=black guibg=grey48
hi default HLGray49BgB               gui=bold guifg=black guibg=gray49
hi default HLGrey49BgB               gui=bold guifg=black guibg=grey49
hi default HLGray50BgB               gui=bold guifg=black guibg=gray50
hi default HLGrey50BgB               gui=bold guifg=black guibg=grey50
hi default HLGray51BgB               gui=bold guifg=black guibg=gray51
hi default HLGrey51BgB               gui=bold guifg=black guibg=grey51
hi default HLGray52BgB               gui=bold guifg=black guibg=gray52
hi default HLGrey52BgB               gui=bold guifg=black guibg=grey52
hi default HLGray53BgB               gui=bold guifg=black guibg=gray53
hi default HLGrey53BgB               gui=bold guifg=black guibg=grey53
hi default HLGray54BgB               gui=bold guifg=black guibg=gray54
hi default HLGrey54BgB               gui=bold guifg=black guibg=grey54
hi default HLGray55BgB               gui=bold guifg=black guibg=gray55
hi default HLGrey55BgB               gui=bold guifg=black guibg=grey55
hi default HLGray56BgB               gui=bold guifg=black guibg=gray56
hi default HLGrey56BgB               gui=bold guifg=black guibg=grey56
hi default HLGray57BgB               gui=bold guifg=black guibg=gray57
hi default HLGrey57BgB               gui=bold guifg=black guibg=grey57
hi default HLGray58BgB               gui=bold guifg=black guibg=gray58
hi default HLGrey58BgB               gui=bold guifg=black guibg=grey58
hi default HLGray59BgB               gui=bold guifg=black guibg=gray59
hi default HLGrey59BgB               gui=bold guifg=black guibg=grey59
hi default HLGray60BgB               gui=bold guifg=black guibg=gray60
hi default HLGrey60BgB               gui=bold guifg=black guibg=grey60
hi default HLGray61BgB               gui=bold guifg=black guibg=gray61
hi default HLGrey61BgB               gui=bold guifg=black guibg=grey61
hi default HLGray62BgB               gui=bold guifg=black guibg=gray62
hi default HLGrey62BgB               gui=bold guifg=black guibg=grey62
hi default HLGray63BgB               gui=bold guifg=black guibg=gray63
hi default HLGrey63BgB               gui=bold guifg=black guibg=grey63
hi default HLGray64BgB               gui=bold guifg=black guibg=gray64
hi default HLGrey64BgB               gui=bold guifg=black guibg=grey64
hi default HLGray65BgB               gui=bold guifg=black guibg=gray65
hi default HLGrey65BgB               gui=bold guifg=black guibg=grey65
hi default HLGray66BgB               gui=bold guifg=black guibg=gray66
hi default HLGrey66BgB               gui=bold guifg=black guibg=grey66
hi default HLGray67BgB               gui=bold guifg=black guibg=gray67
hi default HLGrey67BgB               gui=bold guifg=black guibg=grey67
hi default HLGray68BgB               gui=bold guifg=black guibg=gray68
hi default HLGrey68BgB               gui=bold guifg=black guibg=grey68
hi default HLGray69BgB               gui=bold guifg=black guibg=gray69
hi default HLGrey69BgB               gui=bold guifg=black guibg=grey69
hi default HLGray70BgB               gui=bold guifg=black guibg=gray70
hi default HLGrey70BgB               gui=bold guifg=black guibg=grey70
hi default HLGray71BgB               gui=bold guifg=black guibg=gray71
hi default HLGrey71BgB               gui=bold guifg=black guibg=grey71
hi default HLGray72BgB               gui=bold guifg=black guibg=gray72
hi default HLGrey72BgB               gui=bold guifg=black guibg=grey72
hi default HLGray73BgB               gui=bold guifg=black guibg=gray73
hi default HLGrey73BgB               gui=bold guifg=black guibg=grey73
hi default HLGray74BgB               gui=bold guifg=black guibg=gray74
hi default HLGrey74BgB               gui=bold guifg=black guibg=grey74
hi default HLGray75BgB               gui=bold guifg=black guibg=gray75
hi default HLGrey75BgB               gui=bold guifg=black guibg=grey75
hi default HLGray76BgB               gui=bold guifg=black guibg=gray76
hi default HLGrey76BgB               gui=bold guifg=black guibg=grey76
hi default HLGray77BgB               gui=bold guifg=black guibg=gray77
hi default HLGrey77BgB               gui=bold guifg=black guibg=grey77
hi default HLGray78BgB               gui=bold guifg=black guibg=gray78
hi default HLGrey78BgB               gui=bold guifg=black guibg=grey78
hi default HLGray79BgB               gui=bold guifg=black guibg=gray79
hi default HLGrey79BgB               gui=bold guifg=black guibg=grey79
hi default HLGray80BgB               gui=bold guifg=black guibg=gray80
hi default HLGrey80BgB               gui=bold guifg=black guibg=grey80
hi default HLGray81BgB               gui=bold guifg=black guibg=gray81
hi default HLGrey81BgB               gui=bold guifg=black guibg=grey81
hi default HLGray82BgB               gui=bold guifg=black guibg=gray82
hi default HLGrey82BgB               gui=bold guifg=black guibg=grey82
hi default HLGray83BgB               gui=bold guifg=black guibg=gray83
hi default HLGrey83BgB               gui=bold guifg=black guibg=grey83
hi default HLGray84BgB               gui=bold guifg=black guibg=gray84
hi default HLGrey84BgB               gui=bold guifg=black guibg=grey84
hi default HLGray85BgB               gui=bold guifg=black guibg=gray85
hi default HLGrey85BgB               gui=bold guifg=black guibg=grey85
hi default HLGray86BgB               gui=bold guifg=black guibg=gray86
hi default HLGrey86BgB               gui=bold guifg=black guibg=grey86
hi default HLGray87BgB               gui=bold guifg=black guibg=gray87
hi default HLGrey87BgB               gui=bold guifg=black guibg=grey87
hi default HLGray88BgB               gui=bold guifg=black guibg=gray88
hi default HLGrey88BgB               gui=bold guifg=black guibg=grey88
hi default HLGray89BgB               gui=bold guifg=black guibg=gray89
hi default HLGrey89BgB               gui=bold guifg=black guibg=grey89
hi default HLGray90BgB               gui=bold guifg=black guibg=gray90
hi default HLGrey90BgB               gui=bold guifg=black guibg=grey90
hi default HLGray91BgB               gui=bold guifg=black guibg=gray91
hi default HLGrey91BgB               gui=bold guifg=black guibg=grey91
hi default HLGray92BgB               gui=bold guifg=black guibg=gray92
hi default HLGrey92BgB               gui=bold guifg=black guibg=grey92
hi default HLGray93BgB               gui=bold guifg=black guibg=gray93
hi default HLGrey93BgB               gui=bold guifg=black guibg=grey93
hi default HLGray94BgB               gui=bold guifg=black guibg=gray94
hi default HLGrey94BgB               gui=bold guifg=black guibg=grey94
hi default HLGray95BgB               gui=bold guifg=black guibg=gray95
hi default HLGrey95BgB               gui=bold guifg=black guibg=grey95
hi default HLGray96BgB               gui=bold guifg=black guibg=gray96
hi default HLGrey96BgB               gui=bold guifg=black guibg=grey96
hi default HLGray97BgB               gui=bold guifg=black guibg=gray97
hi default HLGrey97BgB               gui=bold guifg=black guibg=grey97
hi default HLGray98BgB               gui=bold guifg=black guibg=gray98
hi default HLGrey98BgB               gui=bold guifg=black guibg=grey98
hi default HLGray99BgB               gui=bold guifg=black guibg=gray99
hi default HLGrey99BgB               gui=bold guifg=black guibg=grey99
hi default HLGray100BgB              gui=bold guifg=black guibg=gray100
hi default HLGrey100BgB              gui=bold guifg=black guibg=grey100
hi default HLDarkgreyBgB             gui=bold guifg=black guibg=darkgrey
hi default HLDarkgrayBgB             gui=bold guifg=black guibg=darkgray
hi default HLDarkblueBgB             gui=bold guifg=black guibg=darkblue
hi default HLDarkcyanBgB             gui=bold guifg=black guibg=darkcyan
hi default HLDarkmagentaBgB          gui=bold guifg=black guibg=darkmagenta
hi default HLDarkredBgB              gui=bold guifg=black guibg=darkred
hi default HLLightgreenBgB           gui=bold guifg=black guibg=lightgreen
hi default HLCrimsonBgB              gui=bold guifg=black guibg=crimson
hi default HLIndigoBgB               gui=bold guifg=black guibg=indigo
hi default HLOliveBgB                gui=bold guifg=black guibg=olive
hi default HLRebeccapurpleBgB        gui=bold guifg=black guibg=rebeccapurple
hi default HLSilverBgB               gui=bold guifg=black guibg=silver
hi default HLTealBgB                 gui=bold guifg=black guibg=teal


" Background colors with White foreground
hi default HLSnowBgW                 gui=bold guifg=white guibg=snow
hi default HLGhostwhiteBgW           gui=bold guifg=white guibg=ghostwhite
hi default HLWhitesmokeBgW           gui=bold guifg=white guibg=whitesmoke
hi default HLGainsboroBgW            gui=bold guifg=white guibg=gainsboro
hi default HLFloralwhiteBgW          gui=bold guifg=white guibg=floralwhite
hi default HLOldlaceBgW              gui=bold guifg=white guibg=oldlace
hi default HLLinenBgW                gui=bold guifg=white guibg=linen
hi default HLAntiquewhiteBgW         gui=bold guifg=white guibg=antiquewhite
hi default HLPapayawhipBgW           gui=bold guifg=white guibg=papayawhip
hi default HLBlanchedalmondBgW       gui=bold guifg=white guibg=blanchedalmond
hi default HLBisqueBgW               gui=bold guifg=white guibg=bisque
hi default HLPeachpuffBgW            gui=bold guifg=white guibg=peachpuff
hi default HLNavajowhiteBgW          gui=bold guifg=white guibg=navajowhite
hi default HLMoccasinBgW             gui=bold guifg=white guibg=moccasin
hi default HLCornsilkBgW             gui=bold guifg=white guibg=cornsilk
hi default HLIvoryBgW                gui=bold guifg=white guibg=ivory
hi default HLLemonchiffonBgW         gui=bold guifg=white guibg=lemonchiffon
hi default HLSeashellBgW             gui=bold guifg=white guibg=seashell
hi default HLHoneydewBgW             gui=bold guifg=white guibg=honeydew
hi default HLMintcreamBgW            gui=bold guifg=white guibg=mintcream
hi default HLAzureBgW                gui=bold guifg=white guibg=azure
hi default HLAliceblueBgW            gui=bold guifg=white guibg=aliceblue
hi default HLLavenderBgW             gui=bold guifg=white guibg=lavender
hi default HLLavenderblushBgW        gui=bold guifg=white guibg=lavenderblush
hi default HLMistyroseBgW            gui=bold guifg=white guibg=mistyrose
hi default HLWhiteBgW                gui=bold guifg=white guibg=white
hi default HLBlackBgW                gui=bold guifg=white guibg=black
hi default HLDarkslategrayBgW        gui=bold guifg=white guibg=darkslategray
hi default HLDarkslategreyBgW        gui=bold guifg=white guibg=darkslategrey
hi default HLDimgrayBgW              gui=bold guifg=white guibg=dimgray
hi default HLDimgreyBgW              gui=bold guifg=white guibg=dimgrey
hi default HLSlategrayBgW            gui=bold guifg=white guibg=slategray
hi default HLSlategreyBgW            gui=bold guifg=white guibg=slategrey
hi default HLLightslategrayBgW       gui=bold guifg=white guibg=lightslategray
hi default HLLightslategreyBgW       gui=bold guifg=white guibg=lightslategrey
hi default HLGrayBgW                 gui=bold guifg=white guibg=gray
hi default HLGreyBgW                 gui=bold guifg=white guibg=grey
hi default HLX11grayBgW              gui=bold guifg=white guibg=x11gray
hi default HLX11greyBgW              gui=bold guifg=white guibg=x11grey
hi default HLWebgrayBgW              gui=bold guifg=white guibg=webgray
hi default HLWebgreyBgW              gui=bold guifg=white guibg=webgrey
hi default HLLightgreyBgW            gui=bold guifg=white guibg=lightgrey
hi default HLLightgrayBgW            gui=bold guifg=white guibg=lightgray
hi default HLMidnightblueBgW         gui=bold guifg=white guibg=midnightblue
hi default HLNavyBgW                 gui=bold guifg=white guibg=navy
hi default HLNavyblueBgW             gui=bold guifg=white guibg=navyblue
hi default HLCornflowerblueBgW       gui=bold guifg=white guibg=cornflowerblue
hi default HLDarkslateblueBgW        gui=bold guifg=white guibg=darkslateblue
hi default HLSlateblueBgW            gui=bold guifg=white guibg=slateblue
hi default HLMediumslateblueBgW      gui=bold guifg=white guibg=mediumslateblue
hi default HLLightslateblueBgW       gui=bold guifg=white guibg=lightslateblue
hi default HLMediumblueBgW           gui=bold guifg=white guibg=mediumblue
hi default HLRoyalblueBgW            gui=bold guifg=white guibg=royalblue
hi default HLBlueBgW                 gui=bold guifg=white guibg=blue
hi default HLDodgerblueBgW           gui=bold guifg=white guibg=dodgerblue
hi default HLDeepskyblueBgW          gui=bold guifg=white guibg=deepskyblue
hi default HLSkyblueBgW              gui=bold guifg=white guibg=skyblue
hi default HLLightskyblueBgW         gui=bold guifg=white guibg=lightskyblue
hi default HLSteelblueBgW            gui=bold guifg=white guibg=steelblue
hi default HLLightsteelblueBgW       gui=bold guifg=white guibg=lightsteelblue
hi default HLLightblueBgW            gui=bold guifg=white guibg=lightblue
hi default HLPowderblueBgW           gui=bold guifg=white guibg=powderblue
hi default HLPaleturquoiseBgW        gui=bold guifg=white guibg=paleturquoise
hi default HLDarkturquoiseBgW        gui=bold guifg=white guibg=darkturquoise
hi default HLMediumturquoiseBgW      gui=bold guifg=white guibg=mediumturquoise
hi default HLTurquoiseBgW            gui=bold guifg=white guibg=turquoise
hi default HLCyanBgW                 gui=bold guifg=white guibg=cyan
hi default HLAquaBgW                 gui=bold guifg=white guibg=aqua
hi default HLLightcyanBgW            gui=bold guifg=white guibg=lightcyan
hi default HLCadetblueBgW            gui=bold guifg=white guibg=cadetblue
hi default HLMediumaquamarineBgW     gui=bold guifg=white guibg=mediumaquamarine
hi default HLAquamarineBgW           gui=bold guifg=white guibg=aquamarine
hi default HLDarkgreenBgW            gui=bold guifg=white guibg=darkgreen
hi default HLDarkolivegreenBgW       gui=bold guifg=white guibg=darkolivegreen
hi default HLDarkseagreenBgW         gui=bold guifg=white guibg=darkseagreen
hi default HLSeagreenBgW             gui=bold guifg=white guibg=seagreen
hi default HLMediumseagreenBgW       gui=bold guifg=white guibg=mediumseagreen
hi default HLLightseagreenBgW        gui=bold guifg=white guibg=lightseagreen
hi default HLPalegreenBgW            gui=bold guifg=white guibg=palegreen
hi default HLSpringgreenBgW          gui=bold guifg=white guibg=springgreen
hi default HLLawngreenBgW            gui=bold guifg=white guibg=lawngreen
hi default HLGreenBgW                gui=bold guifg=white guibg=green
hi default HLLimeBgW                 gui=bold guifg=white guibg=lime
hi default HLX11greenBgW             gui=bold guifg=white guibg=x11green
hi default HLWebgreenBgW             gui=bold guifg=white guibg=webgreen
hi default HLChartreuseBgW           gui=bold guifg=white guibg=chartreuse
hi default HLMediumspringgreenBgW    gui=bold guifg=white guibg=mediumspringgreen
hi default HLGreenyellowBgW          gui=bold guifg=white guibg=greenyellow
hi default HLLimegreenBgW            gui=bold guifg=white guibg=limegreen
hi default HLYellowgreenBgW          gui=bold guifg=white guibg=yellowgreen
hi default HLForestgreenBgW          gui=bold guifg=white guibg=forestgreen
hi default HLOlivedrabBgW            gui=bold guifg=white guibg=olivedrab
hi default HLDarkkhakiBgW            gui=bold guifg=white guibg=darkkhaki
hi default HLKhakiBgW                gui=bold guifg=white guibg=khaki
hi default HLPalegoldenrodBgW        gui=bold guifg=white guibg=palegoldenrod
hi default HLLightgoldenrodyellowBgW gui=bold guifg=white guibg=lightgoldenrodyellow
hi default HLLightyellowBgW          gui=bold guifg=white guibg=lightyellow
hi default HLYellowBgW               gui=bold guifg=white guibg=yellow
hi default HLGoldBgW                 gui=bold guifg=white guibg=gold
hi default HLLightgoldenrodBgW       gui=bold guifg=white guibg=lightgoldenrod
hi default HLGoldenrodBgW            gui=bold guifg=white guibg=goldenrod
hi default HLDarkgoldenrodBgW        gui=bold guifg=white guibg=darkgoldenrod
hi default HLRosybrownBgW            gui=bold guifg=white guibg=rosybrown
hi default HLIndianredBgW            gui=bold guifg=white guibg=indianred
hi default HLSaddlebrownBgW          gui=bold guifg=white guibg=saddlebrown
hi default HLSiennaBgW               gui=bold guifg=white guibg=sienna
hi default HLPeruBgW                 gui=bold guifg=white guibg=peru
hi default HLBurlywoodBgW            gui=bold guifg=white guibg=burlywood
hi default HLBeigeBgW                gui=bold guifg=white guibg=beige
hi default HLWheatBgW                gui=bold guifg=white guibg=wheat
hi default HLSandybrownBgW           gui=bold guifg=white guibg=sandybrown
hi default HLTanBgW                  gui=bold guifg=white guibg=tan
hi default HLChocolateBgW            gui=bold guifg=white guibg=chocolate
hi default HLFirebrickBgW            gui=bold guifg=white guibg=firebrick
hi default HLBrownBgW                gui=bold guifg=white guibg=brown
hi default HLDarksalmonBgW           gui=bold guifg=white guibg=darksalmon
hi default HLSalmonBgW               gui=bold guifg=white guibg=salmon
hi default HLLightsalmonBgW          gui=bold guifg=white guibg=lightsalmon
hi default HLOrangeBgW               gui=bold guifg=white guibg=orange
hi default HLDarkorangeBgW           gui=bold guifg=white guibg=darkorange
hi default HLCoralBgW                gui=bold guifg=white guibg=coral
hi default HLLightcoralBgW           gui=bold guifg=white guibg=lightcoral
hi default HLTomatoBgW               gui=bold guifg=white guibg=tomato
hi default HLOrangeredBgW            gui=bold guifg=white guibg=orangered
hi default HLRedBgW                  gui=bold guifg=white guibg=red
hi default HLHotpinkBgW              gui=bold guifg=white guibg=hotpink
hi default HLDeeppinkBgW             gui=bold guifg=white guibg=deeppink
hi default HLPinkBgW                 gui=bold guifg=white guibg=pink
hi default HLLightpinkBgW            gui=bold guifg=white guibg=lightpink
hi default HLPalevioletredBgW        gui=bold guifg=white guibg=palevioletred
hi default HLMaroonBgW               gui=bold guifg=white guibg=maroon
hi default HLX11maroonBgW            gui=bold guifg=white guibg=x11maroon
hi default HLWebmaroonBgW            gui=bold guifg=white guibg=webmaroon
hi default HLMediumvioletredBgW      gui=bold guifg=white guibg=mediumvioletred
hi default HLVioletredBgW            gui=bold guifg=white guibg=violetred
hi default HLMagentaBgW              gui=bold guifg=white guibg=magenta
hi default HLFuchsiaBgW              gui=bold guifg=white guibg=fuchsia
hi default HLVioletBgW               gui=bold guifg=white guibg=violet
hi default HLPlumBgW                 gui=bold guifg=white guibg=plum
hi default HLOrchidBgW               gui=bold guifg=white guibg=orchid
hi default HLMediumorchidBgW         gui=bold guifg=white guibg=mediumorchid
hi default HLDarkorchidBgW           gui=bold guifg=white guibg=darkorchid
hi default HLDarkvioletBgW           gui=bold guifg=white guibg=darkviolet
hi default HLBluevioletBgW           gui=bold guifg=white guibg=blueviolet
hi default HLPurpleBgW               gui=bold guifg=white guibg=purple
hi default HLX11purpleBgW            gui=bold guifg=white guibg=x11purple
hi default HLWebpurpleBgW            gui=bold guifg=white guibg=webpurple
hi default HLMediumpurpleBgW         gui=bold guifg=white guibg=mediumpurple
hi default HLThistleBgW              gui=bold guifg=white guibg=thistle
hi default HLSnow1BgW                gui=bold guifg=white guibg=snow1
hi default HLSnow2BgW                gui=bold guifg=white guibg=snow2
hi default HLSnow3BgW                gui=bold guifg=white guibg=snow3
hi default HLSnow4BgW                gui=bold guifg=white guibg=snow4
hi default HLSeashell1BgW            gui=bold guifg=white guibg=seashell1
hi default HLSeashell2BgW            gui=bold guifg=white guibg=seashell2
hi default HLSeashell3BgW            gui=bold guifg=white guibg=seashell3
hi default HLSeashell4BgW            gui=bold guifg=white guibg=seashell4
hi default HLAntiquewhite1BgW        gui=bold guifg=white guibg=antiquewhite1
hi default HLAntiquewhite2BgW        gui=bold guifg=white guibg=antiquewhite2
hi default HLAntiquewhite3BgW        gui=bold guifg=white guibg=antiquewhite3
hi default HLAntiquewhite4BgW        gui=bold guifg=white guibg=antiquewhite4
hi default HLBisque1BgW              gui=bold guifg=white guibg=bisque1
hi default HLBisque2BgW              gui=bold guifg=white guibg=bisque2
hi default HLBisque3BgW              gui=bold guifg=white guibg=bisque3
hi default HLBisque4BgW              gui=bold guifg=white guibg=bisque4
hi default HLPeachpuff1BgW           gui=bold guifg=white guibg=peachpuff1
hi default HLPeachpuff2BgW           gui=bold guifg=white guibg=peachpuff2
hi default HLPeachpuff3BgW           gui=bold guifg=white guibg=peachpuff3
hi default HLPeachpuff4BgW           gui=bold guifg=white guibg=peachpuff4
hi default HLNavajowhite1BgW         gui=bold guifg=white guibg=navajowhite1
hi default HLNavajowhite2BgW         gui=bold guifg=white guibg=navajowhite2
hi default HLNavajowhite3BgW         gui=bold guifg=white guibg=navajowhite3
hi default HLNavajowhite4BgW         gui=bold guifg=white guibg=navajowhite4
hi default HLLemonchiffon1BgW        gui=bold guifg=white guibg=lemonchiffon1
hi default HLLemonchiffon2BgW        gui=bold guifg=white guibg=lemonchiffon2
hi default HLLemonchiffon3BgW        gui=bold guifg=white guibg=lemonchiffon3
hi default HLLemonchiffon4BgW        gui=bold guifg=white guibg=lemonchiffon4
hi default HLCornsilk1BgW            gui=bold guifg=white guibg=cornsilk1
hi default HLCornsilk2BgW            gui=bold guifg=white guibg=cornsilk2
hi default HLCornsilk3BgW            gui=bold guifg=white guibg=cornsilk3
hi default HLCornsilk4BgW            gui=bold guifg=white guibg=cornsilk4
hi default HLIvory1BgW               gui=bold guifg=white guibg=ivory1
hi default HLIvory2BgW               gui=bold guifg=white guibg=ivory2
hi default HLIvory3BgW               gui=bold guifg=white guibg=ivory3
hi default HLIvory4BgW               gui=bold guifg=white guibg=ivory4
hi default HLHoneydew1BgW            gui=bold guifg=white guibg=honeydew1
hi default HLHoneydew2BgW            gui=bold guifg=white guibg=honeydew2
hi default HLHoneydew3BgW            gui=bold guifg=white guibg=honeydew3
hi default HLHoneydew4BgW            gui=bold guifg=white guibg=honeydew4
hi default HLLavenderblush1BgW       gui=bold guifg=white guibg=lavenderblush1
hi default HLLavenderblush2BgW       gui=bold guifg=white guibg=lavenderblush2
hi default HLLavenderblush3BgW       gui=bold guifg=white guibg=lavenderblush3
hi default HLLavenderblush4BgW       gui=bold guifg=white guibg=lavenderblush4
hi default HLMistyrose1BgW           gui=bold guifg=white guibg=mistyrose1
hi default HLMistyrose2BgW           gui=bold guifg=white guibg=mistyrose2
hi default HLMistyrose3BgW           gui=bold guifg=white guibg=mistyrose3
hi default HLMistyrose4BgW           gui=bold guifg=white guibg=mistyrose4
hi default HLAzure1BgW               gui=bold guifg=white guibg=azure1
hi default HLAzure2BgW               gui=bold guifg=white guibg=azure2
hi default HLAzure3BgW               gui=bold guifg=white guibg=azure3
hi default HLAzure4BgW               gui=bold guifg=white guibg=azure4
hi default HLSlateblue1BgW           gui=bold guifg=white guibg=slateblue1
hi default HLSlateblue2BgW           gui=bold guifg=white guibg=slateblue2
hi default HLSlateblue3BgW           gui=bold guifg=white guibg=slateblue3
hi default HLSlateblue4BgW           gui=bold guifg=white guibg=slateblue4
hi default HLRoyalblue1BgW           gui=bold guifg=white guibg=royalblue1
hi default HLRoyalblue2BgW           gui=bold guifg=white guibg=royalblue2
hi default HLRoyalblue3BgW           gui=bold guifg=white guibg=royalblue3
hi default HLRoyalblue4BgW           gui=bold guifg=white guibg=royalblue4
hi default HLBlue1BgW                gui=bold guifg=white guibg=blue1
hi default HLBlue2BgW                gui=bold guifg=white guibg=blue2
hi default HLBlue3BgW                gui=bold guifg=white guibg=blue3
hi default HLBlue4BgW                gui=bold guifg=white guibg=blue4
hi default HLDodgerblue1BgW          gui=bold guifg=white guibg=dodgerblue1
hi default HLDodgerblue2BgW          gui=bold guifg=white guibg=dodgerblue2
hi default HLDodgerblue3BgW          gui=bold guifg=white guibg=dodgerblue3
hi default HLDodgerblue4BgW          gui=bold guifg=white guibg=dodgerblue4
hi default HLSteelblue1BgW           gui=bold guifg=white guibg=steelblue1
hi default HLSteelblue2BgW           gui=bold guifg=white guibg=steelblue2
hi default HLSteelblue3BgW           gui=bold guifg=white guibg=steelblue3
hi default HLSteelblue4BgW           gui=bold guifg=white guibg=steelblue4
hi default HLDeepskyblue1BgW         gui=bold guifg=white guibg=deepskyblue1
hi default HLDeepskyblue2BgW         gui=bold guifg=white guibg=deepskyblue2
hi default HLDeepskyblue3BgW         gui=bold guifg=white guibg=deepskyblue3
hi default HLDeepskyblue4BgW         gui=bold guifg=white guibg=deepskyblue4
hi default HLSkyblue1BgW             gui=bold guifg=white guibg=skyblue1
hi default HLSkyblue2BgW             gui=bold guifg=white guibg=skyblue2
hi default HLSkyblue3BgW             gui=bold guifg=white guibg=skyblue3
hi default HLSkyblue4BgW             gui=bold guifg=white guibg=skyblue4
hi default HLLightskyblue1BgW        gui=bold guifg=white guibg=lightskyblue1
hi default HLLightskyblue2BgW        gui=bold guifg=white guibg=lightskyblue2
hi default HLLightskyblue3BgW        gui=bold guifg=white guibg=lightskyblue3
hi default HLLightskyblue4BgW        gui=bold guifg=white guibg=lightskyblue4
hi default HLSlategray1BgW           gui=bold guifg=white guibg=slategray1
hi default HLSlategray2BgW           gui=bold guifg=white guibg=slategray2
hi default HLSlategray3BgW           gui=bold guifg=white guibg=slategray3
hi default HLSlategray4BgW           gui=bold guifg=white guibg=slategray4
hi default HLLightsteelblue1BgW      gui=bold guifg=white guibg=lightsteelblue1
hi default HLLightsteelblue2BgW      gui=bold guifg=white guibg=lightsteelblue2
hi default HLLightsteelblue3BgW      gui=bold guifg=white guibg=lightsteelblue3
hi default HLLightsteelblue4BgW      gui=bold guifg=white guibg=lightsteelblue4
hi default HLLightblue1BgW           gui=bold guifg=white guibg=lightblue1
hi default HLLightblue2BgW           gui=bold guifg=white guibg=lightblue2
hi default HLLightblue3BgW           gui=bold guifg=white guibg=lightblue3
hi default HLLightblue4BgW           gui=bold guifg=white guibg=lightblue4
hi default HLLightcyan1BgW           gui=bold guifg=white guibg=lightcyan1
hi default HLLightcyan2BgW           gui=bold guifg=white guibg=lightcyan2
hi default HLLightcyan3BgW           gui=bold guifg=white guibg=lightcyan3
hi default HLLightcyan4BgW           gui=bold guifg=white guibg=lightcyan4
hi default HLPaleturquoise1BgW       gui=bold guifg=white guibg=paleturquoise1
hi default HLPaleturquoise2BgW       gui=bold guifg=white guibg=paleturquoise2
hi default HLPaleturquoise3BgW       gui=bold guifg=white guibg=paleturquoise3
hi default HLPaleturquoise4BgW       gui=bold guifg=white guibg=paleturquoise4
hi default HLCadetblue1BgW           gui=bold guifg=white guibg=cadetblue1
hi default HLCadetblue2BgW           gui=bold guifg=white guibg=cadetblue2
hi default HLCadetblue3BgW           gui=bold guifg=white guibg=cadetblue3
hi default HLCadetblue4BgW           gui=bold guifg=white guibg=cadetblue4
hi default HLTurquoise1BgW           gui=bold guifg=white guibg=turquoise1
hi default HLTurquoise2BgW           gui=bold guifg=white guibg=turquoise2
hi default HLTurquoise3BgW           gui=bold guifg=white guibg=turquoise3
hi default HLTurquoise4BgW           gui=bold guifg=white guibg=turquoise4
hi default HLCyan1BgW                gui=bold guifg=white guibg=cyan1
hi default HLCyan2BgW                gui=bold guifg=white guibg=cyan2
hi default HLCyan3BgW                gui=bold guifg=white guibg=cyan3
hi default HLCyan4BgW                gui=bold guifg=white guibg=cyan4
hi default HLDarkslategray1BgW       gui=bold guifg=white guibg=darkslategray1
hi default HLDarkslategray2BgW       gui=bold guifg=white guibg=darkslategray2
hi default HLDarkslategray3BgW       gui=bold guifg=white guibg=darkslategray3
hi default HLDarkslategray4BgW       gui=bold guifg=white guibg=darkslategray4
hi default HLAquamarine1BgW          gui=bold guifg=white guibg=aquamarine1
hi default HLAquamarine2BgW          gui=bold guifg=white guibg=aquamarine2
hi default HLAquamarine3BgW          gui=bold guifg=white guibg=aquamarine3
hi default HLAquamarine4BgW          gui=bold guifg=white guibg=aquamarine4
hi default HLDarkseagreen1BgW        gui=bold guifg=white guibg=darkseagreen1
hi default HLDarkseagreen2BgW        gui=bold guifg=white guibg=darkseagreen2
hi default HLDarkseagreen3BgW        gui=bold guifg=white guibg=darkseagreen3
hi default HLDarkseagreen4BgW        gui=bold guifg=white guibg=darkseagreen4
hi default HLSeagreen1BgW            gui=bold guifg=white guibg=seagreen1
hi default HLSeagreen2BgW            gui=bold guifg=white guibg=seagreen2
hi default HLSeagreen3BgW            gui=bold guifg=white guibg=seagreen3
hi default HLSeagreen4BgW            gui=bold guifg=white guibg=seagreen4
hi default HLPalegreen1BgW           gui=bold guifg=white guibg=palegreen1
hi default HLPalegreen2BgW           gui=bold guifg=white guibg=palegreen2
hi default HLPalegreen3BgW           gui=bold guifg=white guibg=palegreen3
hi default HLPalegreen4BgW           gui=bold guifg=white guibg=palegreen4
hi default HLSpringgreen1BgW         gui=bold guifg=white guibg=springgreen1
hi default HLSpringgreen2BgW         gui=bold guifg=white guibg=springgreen2
hi default HLSpringgreen3BgW         gui=bold guifg=white guibg=springgreen3
hi default HLSpringgreen4BgW         gui=bold guifg=white guibg=springgreen4
hi default HLGreen1BgW               gui=bold guifg=white guibg=green1
hi default HLGreen2BgW               gui=bold guifg=white guibg=green2
hi default HLGreen3BgW               gui=bold guifg=white guibg=green3
hi default HLGreen4BgW               gui=bold guifg=white guibg=green4
hi default HLChartreuse1BgW          gui=bold guifg=white guibg=chartreuse1
hi default HLChartreuse2BgW          gui=bold guifg=white guibg=chartreuse2
hi default HLChartreuse3BgW          gui=bold guifg=white guibg=chartreuse3
hi default HLChartreuse4BgW          gui=bold guifg=white guibg=chartreuse4
hi default HLOlivedrab1BgW           gui=bold guifg=white guibg=olivedrab1
hi default HLOlivedrab2BgW           gui=bold guifg=white guibg=olivedrab2
hi default HLOlivedrab3BgW           gui=bold guifg=white guibg=olivedrab3
hi default HLOlivedrab4BgW           gui=bold guifg=white guibg=olivedrab4
hi default HLDarkolivegreen1BgW      gui=bold guifg=white guibg=darkolivegreen1
hi default HLDarkolivegreen2BgW      gui=bold guifg=white guibg=darkolivegreen2
hi default HLDarkolivegreen3BgW      gui=bold guifg=white guibg=darkolivegreen3
hi default HLDarkolivegreen4BgW      gui=bold guifg=white guibg=darkolivegreen4
hi default HLKhaki1BgW               gui=bold guifg=white guibg=khaki1
hi default HLKhaki2BgW               gui=bold guifg=white guibg=khaki2
hi default HLKhaki3BgW               gui=bold guifg=white guibg=khaki3
hi default HLKhaki4BgW               gui=bold guifg=white guibg=khaki4
hi default HLLightgoldenrod1BgW      gui=bold guifg=white guibg=lightgoldenrod1
hi default HLLightgoldenrod2BgW      gui=bold guifg=white guibg=lightgoldenrod2
hi default HLLightgoldenrod3BgW      gui=bold guifg=white guibg=lightgoldenrod3
hi default HLLightgoldenrod4BgW      gui=bold guifg=white guibg=lightgoldenrod4
hi default HLLightyellow1BgW         gui=bold guifg=white guibg=lightyellow1
hi default HLLightyellow2BgW         gui=bold guifg=white guibg=lightyellow2
hi default HLLightyellow3BgW         gui=bold guifg=white guibg=lightyellow3
hi default HLLightyellow4BgW         gui=bold guifg=white guibg=lightyellow4
hi default HLYellow1BgW              gui=bold guifg=white guibg=yellow1
hi default HLYellow2BgW              gui=bold guifg=white guibg=yellow2
hi default HLYellow3BgW              gui=bold guifg=white guibg=yellow3
hi default HLYellow4BgW              gui=bold guifg=white guibg=yellow4
hi default HLDarkyellowBgW           gui=bold guifg=white guibg=darkyellow
hi default HLGold1BgW                gui=bold guifg=white guibg=gold1
hi default HLGold2BgW                gui=bold guifg=white guibg=gold2
hi default HLGold3BgW                gui=bold guifg=white guibg=gold3
hi default HLGold4BgW                gui=bold guifg=white guibg=gold4
hi default HLGoldenrod1BgW           gui=bold guifg=white guibg=goldenrod1
hi default HLGoldenrod2BgW           gui=bold guifg=white guibg=goldenrod2
hi default HLGoldenrod3BgW           gui=bold guifg=white guibg=goldenrod3
hi default HLGoldenrod4BgW           gui=bold guifg=white guibg=goldenrod4
hi default HLDarkgoldenrod1BgW       gui=bold guifg=white guibg=darkgoldenrod1
hi default HLDarkgoldenrod2BgW       gui=bold guifg=white guibg=darkgoldenrod2
hi default HLDarkgoldenrod3BgW       gui=bold guifg=white guibg=darkgoldenrod3
hi default HLDarkgoldenrod4BgW       gui=bold guifg=white guibg=darkgoldenrod4
hi default HLRosybrown1BgW           gui=bold guifg=white guibg=rosybrown1
hi default HLRosybrown2BgW           gui=bold guifg=white guibg=rosybrown2
hi default HLRosybrown3BgW           gui=bold guifg=white guibg=rosybrown3
hi default HLRosybrown4BgW           gui=bold guifg=white guibg=rosybrown4
hi default HLIndianred1BgW           gui=bold guifg=white guibg=indianred1
hi default HLIndianred2BgW           gui=bold guifg=white guibg=indianred2
hi default HLIndianred3BgW           gui=bold guifg=white guibg=indianred3
hi default HLIndianred4BgW           gui=bold guifg=white guibg=indianred4
hi default HLSienna1BgW              gui=bold guifg=white guibg=sienna1
hi default HLSienna2BgW              gui=bold guifg=white guibg=sienna2
hi default HLSienna3BgW              gui=bold guifg=white guibg=sienna3
hi default HLSienna4BgW              gui=bold guifg=white guibg=sienna4
hi default HLBurlywood1BgW           gui=bold guifg=white guibg=burlywood1
hi default HLBurlywood2BgW           gui=bold guifg=white guibg=burlywood2
hi default HLBurlywood3BgW           gui=bold guifg=white guibg=burlywood3
hi default HLBurlywood4BgW           gui=bold guifg=white guibg=burlywood4
hi default HLWheat1BgW               gui=bold guifg=white guibg=wheat1
hi default HLWheat2BgW               gui=bold guifg=white guibg=wheat2
hi default HLWheat3BgW               gui=bold guifg=white guibg=wheat3
hi default HLWheat4BgW               gui=bold guifg=white guibg=wheat4
hi default HLTan1BgW                 gui=bold guifg=white guibg=tan1
hi default HLTan2BgW                 gui=bold guifg=white guibg=tan2
hi default HLTan3BgW                 gui=bold guifg=white guibg=tan3
hi default HLTan4BgW                 gui=bold guifg=white guibg=tan4
hi default HLChocolate1BgW           gui=bold guifg=white guibg=chocolate1
hi default HLChocolate2BgW           gui=bold guifg=white guibg=chocolate2
hi default HLChocolate3BgW           gui=bold guifg=white guibg=chocolate3
hi default HLChocolate4BgW           gui=bold guifg=white guibg=chocolate4
hi default HLFirebrick1BgW           gui=bold guifg=white guibg=firebrick1
hi default HLFirebrick2BgW           gui=bold guifg=white guibg=firebrick2
hi default HLFirebrick3BgW           gui=bold guifg=white guibg=firebrick3
hi default HLFirebrick4BgW           gui=bold guifg=white guibg=firebrick4
hi default HLBrown1BgW               gui=bold guifg=white guibg=brown1
hi default HLBrown2BgW               gui=bold guifg=white guibg=brown2
hi default HLBrown3BgW               gui=bold guifg=white guibg=brown3
hi default HLBrown4BgW               gui=bold guifg=white guibg=brown4
hi default HLSalmon1BgW              gui=bold guifg=white guibg=salmon1
hi default HLSalmon2BgW              gui=bold guifg=white guibg=salmon2
hi default HLSalmon3BgW              gui=bold guifg=white guibg=salmon3
hi default HLSalmon4BgW              gui=bold guifg=white guibg=salmon4
hi default HLLightsalmon1BgW         gui=bold guifg=white guibg=lightsalmon1
hi default HLLightsalmon2BgW         gui=bold guifg=white guibg=lightsalmon2
hi default HLLightsalmon3BgW         gui=bold guifg=white guibg=lightsalmon3
hi default HLLightsalmon4BgW         gui=bold guifg=white guibg=lightsalmon4
hi default HLOrange1BgW              gui=bold guifg=white guibg=orange1
hi default HLOrange2BgW              gui=bold guifg=white guibg=orange2
hi default HLOrange3BgW              gui=bold guifg=white guibg=orange3
hi default HLOrange4BgW              gui=bold guifg=white guibg=orange4
hi default HLDarkorange1BgW          gui=bold guifg=white guibg=darkorange1
hi default HLDarkorange2BgW          gui=bold guifg=white guibg=darkorange2
hi default HLDarkorange3BgW          gui=bold guifg=white guibg=darkorange3
hi default HLDarkorange4BgW          gui=bold guifg=white guibg=darkorange4
hi default HLCoral1BgW               gui=bold guifg=white guibg=coral1
hi default HLCoral2BgW               gui=bold guifg=white guibg=coral2
hi default HLCoral3BgW               gui=bold guifg=white guibg=coral3
hi default HLCoral4BgW               gui=bold guifg=white guibg=coral4
hi default HLTomato1BgW              gui=bold guifg=white guibg=tomato1
hi default HLTomato2BgW              gui=bold guifg=white guibg=tomato2
hi default HLTomato3BgW              gui=bold guifg=white guibg=tomato3
hi default HLTomato4BgW              gui=bold guifg=white guibg=tomato4
hi default HLOrangered1BgW           gui=bold guifg=white guibg=orangered1
hi default HLOrangered2BgW           gui=bold guifg=white guibg=orangered2
hi default HLOrangered3BgW           gui=bold guifg=white guibg=orangered3
hi default HLOrangered4BgW           gui=bold guifg=white guibg=orangered4
hi default HLLightredBgW             gui=bold guifg=white guibg=lightred
hi default HLRed1BgW                 gui=bold guifg=white guibg=red1
hi default HLRed2BgW                 gui=bold guifg=white guibg=red2
hi default HLRed3BgW                 gui=bold guifg=white guibg=red3
hi default HLRed4BgW                 gui=bold guifg=white guibg=red4
hi default HLDeeppink1BgW            gui=bold guifg=white guibg=deeppink1
hi default HLDeeppink2BgW            gui=bold guifg=white guibg=deeppink2
hi default HLDeeppink3BgW            gui=bold guifg=white guibg=deeppink3
hi default HLDeeppink4BgW            gui=bold guifg=white guibg=deeppink4
hi default HLHotpink1BgW             gui=bold guifg=white guibg=hotpink1
hi default HLHotpink2BgW             gui=bold guifg=white guibg=hotpink2
hi default HLHotpink3BgW             gui=bold guifg=white guibg=hotpink3
hi default HLHotpink4BgW             gui=bold guifg=white guibg=hotpink4
hi default HLPink1BgW                gui=bold guifg=white guibg=pink1
hi default HLPink2BgW                gui=bold guifg=white guibg=pink2
hi default HLPink3BgW                gui=bold guifg=white guibg=pink3
hi default HLPink4BgW                gui=bold guifg=white guibg=pink4
hi default HLLightpink1BgW           gui=bold guifg=white guibg=lightpink1
hi default HLLightpink2BgW           gui=bold guifg=white guibg=lightpink2
hi default HLLightpink3BgW           gui=bold guifg=white guibg=lightpink3
hi default HLLightpink4BgW           gui=bold guifg=white guibg=lightpink4
hi default HLPalevioletred1BgW       gui=bold guifg=white guibg=palevioletred1
hi default HLPalevioletred2BgW       gui=bold guifg=white guibg=palevioletred2
hi default HLPalevioletred3BgW       gui=bold guifg=white guibg=palevioletred3
hi default HLPalevioletred4BgW       gui=bold guifg=white guibg=palevioletred4
hi default HLMaroon1BgW              gui=bold guifg=white guibg=maroon1
hi default HLMaroon2BgW              gui=bold guifg=white guibg=maroon2
hi default HLMaroon3BgW              gui=bold guifg=white guibg=maroon3
hi default HLMaroon4BgW              gui=bold guifg=white guibg=maroon4
hi default HLVioletred1BgW           gui=bold guifg=white guibg=violetred1
hi default HLVioletred2BgW           gui=bold guifg=white guibg=violetred2
hi default HLVioletred3BgW           gui=bold guifg=white guibg=violetred3
hi default HLVioletred4BgW           gui=bold guifg=white guibg=violetred4
hi default HLLightmagentaBgW         gui=bold guifg=white guibg=lightmagenta
hi default HLMagenta1BgW             gui=bold guifg=white guibg=magenta1
hi default HLMagenta2BgW             gui=bold guifg=white guibg=magenta2
hi default HLMagenta3BgW             gui=bold guifg=white guibg=magenta3
hi default HLMagenta4BgW             gui=bold guifg=white guibg=magenta4
hi default HLOrchid1BgW              gui=bold guifg=white guibg=orchid1
hi default HLOrchid2BgW              gui=bold guifg=white guibg=orchid2
hi default HLOrchid3BgW              gui=bold guifg=white guibg=orchid3
hi default HLOrchid4BgW              gui=bold guifg=white guibg=orchid4
hi default HLPlum1BgW                gui=bold guifg=white guibg=plum1
hi default HLPlum2BgW                gui=bold guifg=white guibg=plum2
hi default HLPlum3BgW                gui=bold guifg=white guibg=plum3
hi default HLPlum4BgW                gui=bold guifg=white guibg=plum4
hi default HLMediumorchid1BgW        gui=bold guifg=white guibg=mediumorchid1
hi default HLMediumorchid2BgW        gui=bold guifg=white guibg=mediumorchid2
hi default HLMediumorchid3BgW        gui=bold guifg=white guibg=mediumorchid3
hi default HLMediumorchid4BgW        gui=bold guifg=white guibg=mediumorchid4
hi default HLDarkorchid1BgW          gui=bold guifg=white guibg=darkorchid1
hi default HLDarkorchid2BgW          gui=bold guifg=white guibg=darkorchid2
hi default HLDarkorchid3BgW          gui=bold guifg=white guibg=darkorchid3
hi default HLDarkorchid4BgW          gui=bold guifg=white guibg=darkorchid4
hi default HLPurple1BgW              gui=bold guifg=white guibg=purple1
hi default HLPurple2BgW              gui=bold guifg=white guibg=purple2
hi default HLPurple3BgW              gui=bold guifg=white guibg=purple3
hi default HLPurple4BgW              gui=bold guifg=white guibg=purple4
hi default HLMediumpurple1BgW        gui=bold guifg=white guibg=mediumpurple1
hi default HLMediumpurple2BgW        gui=bold guifg=white guibg=mediumpurple2
hi default HLMediumpurple3BgW        gui=bold guifg=white guibg=mediumpurple3
hi default HLMediumpurple4BgW        gui=bold guifg=white guibg=mediumpurple4
hi default HLThistle1BgW             gui=bold guifg=white guibg=thistle1
hi default HLThistle2BgW             gui=bold guifg=white guibg=thistle2
hi default HLThistle3BgW             gui=bold guifg=white guibg=thistle3
hi default HLThistle4BgW             gui=bold guifg=white guibg=thistle4
hi default HLGray0BgW                gui=bold guifg=white guibg=gray0
hi default HLGrey0BgW                gui=bold guifg=white guibg=grey0
hi default HLGray1BgW                gui=bold guifg=white guibg=gray1
hi default HLGrey1BgW                gui=bold guifg=white guibg=grey1
hi default HLGray2BgW                gui=bold guifg=white guibg=gray2
hi default HLGrey2BgW                gui=bold guifg=white guibg=grey2
hi default HLGray3BgW                gui=bold guifg=white guibg=gray3
hi default HLGrey3BgW                gui=bold guifg=white guibg=grey3
hi default HLGray4BgW                gui=bold guifg=white guibg=gray4
hi default HLGrey4BgW                gui=bold guifg=white guibg=grey4
hi default HLGray5BgW                gui=bold guifg=white guibg=gray5
hi default HLGrey5BgW                gui=bold guifg=white guibg=grey5
hi default HLGray6BgW                gui=bold guifg=white guibg=gray6
hi default HLGrey6BgW                gui=bold guifg=white guibg=grey6
hi default HLGray7BgW                gui=bold guifg=white guibg=gray7
hi default HLGrey7BgW                gui=bold guifg=white guibg=grey7
hi default HLGray8BgW                gui=bold guifg=white guibg=gray8
hi default HLGrey8BgW                gui=bold guifg=white guibg=grey8
hi default HLGray9BgW                gui=bold guifg=white guibg=gray9
hi default HLGrey9BgW                gui=bold guifg=white guibg=grey9
hi default HLGray10BgW               gui=bold guifg=white guibg=gray10
hi default HLGrey10BgW               gui=bold guifg=white guibg=grey10
hi default HLGray11BgW               gui=bold guifg=white guibg=gray11
hi default HLGrey11BgW               gui=bold guifg=white guibg=grey11
hi default HLGray12BgW               gui=bold guifg=white guibg=gray12
hi default HLGrey12BgW               gui=bold guifg=white guibg=grey12
hi default HLGray13BgW               gui=bold guifg=white guibg=gray13
hi default HLGrey13BgW               gui=bold guifg=white guibg=grey13
hi default HLGray14BgW               gui=bold guifg=white guibg=gray14
hi default HLGrey14BgW               gui=bold guifg=white guibg=grey14
hi default HLGray15BgW               gui=bold guifg=white guibg=gray15
hi default HLGrey15BgW               gui=bold guifg=white guibg=grey15
hi default HLGray16BgW               gui=bold guifg=white guibg=gray16
hi default HLGrey16BgW               gui=bold guifg=white guibg=grey16
hi default HLGray17BgW               gui=bold guifg=white guibg=gray17
hi default HLGrey17BgW               gui=bold guifg=white guibg=grey17
hi default HLGray18BgW               gui=bold guifg=white guibg=gray18
hi default HLGrey18BgW               gui=bold guifg=white guibg=grey18
hi default HLGray19BgW               gui=bold guifg=white guibg=gray19
hi default HLGrey19BgW               gui=bold guifg=white guibg=grey19
hi default HLGray20BgW               gui=bold guifg=white guibg=gray20
hi default HLGrey20BgW               gui=bold guifg=white guibg=grey20
hi default HLGray21BgW               gui=bold guifg=white guibg=gray21
hi default HLGrey21BgW               gui=bold guifg=white guibg=grey21
hi default HLGray22BgW               gui=bold guifg=white guibg=gray22
hi default HLGrey22BgW               gui=bold guifg=white guibg=grey22
hi default HLGray23BgW               gui=bold guifg=white guibg=gray23
hi default HLGrey23BgW               gui=bold guifg=white guibg=grey23
hi default HLGray24BgW               gui=bold guifg=white guibg=gray24
hi default HLGrey24BgW               gui=bold guifg=white guibg=grey24
hi default HLGray25BgW               gui=bold guifg=white guibg=gray25
hi default HLGrey25BgW               gui=bold guifg=white guibg=grey25
hi default HLGray26BgW               gui=bold guifg=white guibg=gray26
hi default HLGrey26BgW               gui=bold guifg=white guibg=grey26
hi default HLGray27BgW               gui=bold guifg=white guibg=gray27
hi default HLGrey27BgW               gui=bold guifg=white guibg=grey27
hi default HLGray28BgW               gui=bold guifg=white guibg=gray28
hi default HLGrey28BgW               gui=bold guifg=white guibg=grey28
hi default HLGray29BgW               gui=bold guifg=white guibg=gray29
hi default HLGrey29BgW               gui=bold guifg=white guibg=grey29
hi default HLGray30BgW               gui=bold guifg=white guibg=gray30
hi default HLGrey30BgW               gui=bold guifg=white guibg=grey30
hi default HLGray31BgW               gui=bold guifg=white guibg=gray31
hi default HLGrey31BgW               gui=bold guifg=white guibg=grey31
hi default HLGray32BgW               gui=bold guifg=white guibg=gray32
hi default HLGrey32BgW               gui=bold guifg=white guibg=grey32
hi default HLGray33BgW               gui=bold guifg=white guibg=gray33
hi default HLGrey33BgW               gui=bold guifg=white guibg=grey33
hi default HLGray34BgW               gui=bold guifg=white guibg=gray34
hi default HLGrey34BgW               gui=bold guifg=white guibg=grey34
hi default HLGray35BgW               gui=bold guifg=white guibg=gray35
hi default HLGrey35BgW               gui=bold guifg=white guibg=grey35
hi default HLGray36BgW               gui=bold guifg=white guibg=gray36
hi default HLGrey36BgW               gui=bold guifg=white guibg=grey36
hi default HLGray37BgW               gui=bold guifg=white guibg=gray37
hi default HLGrey37BgW               gui=bold guifg=white guibg=grey37
hi default HLGray38BgW               gui=bold guifg=white guibg=gray38
hi default HLGrey38BgW               gui=bold guifg=white guibg=grey38
hi default HLGray39BgW               gui=bold guifg=white guibg=gray39
hi default HLGrey39BgW               gui=bold guifg=white guibg=grey39
hi default HLGray40BgW               gui=bold guifg=white guibg=gray40
hi default HLGrey40BgW               gui=bold guifg=white guibg=grey40
hi default HLGray41BgW               gui=bold guifg=white guibg=gray41
hi default HLGrey41BgW               gui=bold guifg=white guibg=grey41
hi default HLGray42BgW               gui=bold guifg=white guibg=gray42
hi default HLGrey42BgW               gui=bold guifg=white guibg=grey42
hi default HLGray43BgW               gui=bold guifg=white guibg=gray43
hi default HLGrey43BgW               gui=bold guifg=white guibg=grey43
hi default HLGray44BgW               gui=bold guifg=white guibg=gray44
hi default HLGrey44BgW               gui=bold guifg=white guibg=grey44
hi default HLGray45BgW               gui=bold guifg=white guibg=gray45
hi default HLGrey45BgW               gui=bold guifg=white guibg=grey45
hi default HLGray46BgW               gui=bold guifg=white guibg=gray46
hi default HLGrey46BgW               gui=bold guifg=white guibg=grey46
hi default HLGray47BgW               gui=bold guifg=white guibg=gray47
hi default HLGrey47BgW               gui=bold guifg=white guibg=grey47
hi default HLGray48BgW               gui=bold guifg=white guibg=gray48
hi default HLGrey48BgW               gui=bold guifg=white guibg=grey48
hi default HLGray49BgW               gui=bold guifg=white guibg=gray49
hi default HLGrey49BgW               gui=bold guifg=white guibg=grey49
hi default HLGray50BgW               gui=bold guifg=white guibg=gray50
hi default HLGrey50BgW               gui=bold guifg=white guibg=grey50
hi default HLGray51BgW               gui=bold guifg=white guibg=gray51
hi default HLGrey51BgW               gui=bold guifg=white guibg=grey51
hi default HLGray52BgW               gui=bold guifg=white guibg=gray52
hi default HLGrey52BgW               gui=bold guifg=white guibg=grey52
hi default HLGray53BgW               gui=bold guifg=white guibg=gray53
hi default HLGrey53BgW               gui=bold guifg=white guibg=grey53
hi default HLGray54BgW               gui=bold guifg=white guibg=gray54
hi default HLGrey54BgW               gui=bold guifg=white guibg=grey54
hi default HLGray55BgW               gui=bold guifg=white guibg=gray55
hi default HLGrey55BgW               gui=bold guifg=white guibg=grey55
hi default HLGray56BgW               gui=bold guifg=white guibg=gray56
hi default HLGrey56BgW               gui=bold guifg=white guibg=grey56
hi default HLGray57BgW               gui=bold guifg=white guibg=gray57
hi default HLGrey57BgW               gui=bold guifg=white guibg=grey57
hi default HLGray58BgW               gui=bold guifg=white guibg=gray58
hi default HLGrey58BgW               gui=bold guifg=white guibg=grey58
hi default HLGray59BgW               gui=bold guifg=white guibg=gray59
hi default HLGrey59BgW               gui=bold guifg=white guibg=grey59
hi default HLGray60BgW               gui=bold guifg=white guibg=gray60
hi default HLGrey60BgW               gui=bold guifg=white guibg=grey60
hi default HLGray61BgW               gui=bold guifg=white guibg=gray61
hi default HLGrey61BgW               gui=bold guifg=white guibg=grey61
hi default HLGray62BgW               gui=bold guifg=white guibg=gray62
hi default HLGrey62BgW               gui=bold guifg=white guibg=grey62
hi default HLGray63BgW               gui=bold guifg=white guibg=gray63
hi default HLGrey63BgW               gui=bold guifg=white guibg=grey63
hi default HLGray64BgW               gui=bold guifg=white guibg=gray64
hi default HLGrey64BgW               gui=bold guifg=white guibg=grey64
hi default HLGray65BgW               gui=bold guifg=white guibg=gray65
hi default HLGrey65BgW               gui=bold guifg=white guibg=grey65
hi default HLGray66BgW               gui=bold guifg=white guibg=gray66
hi default HLGrey66BgW               gui=bold guifg=white guibg=grey66
hi default HLGray67BgW               gui=bold guifg=white guibg=gray67
hi default HLGrey67BgW               gui=bold guifg=white guibg=grey67
hi default HLGray68BgW               gui=bold guifg=white guibg=gray68
hi default HLGrey68BgW               gui=bold guifg=white guibg=grey68
hi default HLGray69BgW               gui=bold guifg=white guibg=gray69
hi default HLGrey69BgW               gui=bold guifg=white guibg=grey69
hi default HLGray70BgW               gui=bold guifg=white guibg=gray70
hi default HLGrey70BgW               gui=bold guifg=white guibg=grey70
hi default HLGray71BgW               gui=bold guifg=white guibg=gray71
hi default HLGrey71BgW               gui=bold guifg=white guibg=grey71
hi default HLGray72BgW               gui=bold guifg=white guibg=gray72
hi default HLGrey72BgW               gui=bold guifg=white guibg=grey72
hi default HLGray73BgW               gui=bold guifg=white guibg=gray73
hi default HLGrey73BgW               gui=bold guifg=white guibg=grey73
hi default HLGray74BgW               gui=bold guifg=white guibg=gray74
hi default HLGrey74BgW               gui=bold guifg=white guibg=grey74
hi default HLGray75BgW               gui=bold guifg=white guibg=gray75
hi default HLGrey75BgW               gui=bold guifg=white guibg=grey75
hi default HLGray76BgW               gui=bold guifg=white guibg=gray76
hi default HLGrey76BgW               gui=bold guifg=white guibg=grey76
hi default HLGray77BgW               gui=bold guifg=white guibg=gray77
hi default HLGrey77BgW               gui=bold guifg=white guibg=grey77
hi default HLGray78BgW               gui=bold guifg=white guibg=gray78
hi default HLGrey78BgW               gui=bold guifg=white guibg=grey78
hi default HLGray79BgW               gui=bold guifg=white guibg=gray79
hi default HLGrey79BgW               gui=bold guifg=white guibg=grey79
hi default HLGray80BgW               gui=bold guifg=white guibg=gray80
hi default HLGrey80BgW               gui=bold guifg=white guibg=grey80
hi default HLGray81BgW               gui=bold guifg=white guibg=gray81
hi default HLGrey81BgW               gui=bold guifg=white guibg=grey81
hi default HLGray82BgW               gui=bold guifg=white guibg=gray82
hi default HLGrey82BgW               gui=bold guifg=white guibg=grey82
hi default HLGray83BgW               gui=bold guifg=white guibg=gray83
hi default HLGrey83BgW               gui=bold guifg=white guibg=grey83
hi default HLGray84BgW               gui=bold guifg=white guibg=gray84
hi default HLGrey84BgW               gui=bold guifg=white guibg=grey84
hi default HLGray85BgW               gui=bold guifg=white guibg=gray85
hi default HLGrey85BgW               gui=bold guifg=white guibg=grey85
hi default HLGray86BgW               gui=bold guifg=white guibg=gray86
hi default HLGrey86BgW               gui=bold guifg=white guibg=grey86
hi default HLGray87BgW               gui=bold guifg=white guibg=gray87
hi default HLGrey87BgW               gui=bold guifg=white guibg=grey87
hi default HLGray88BgW               gui=bold guifg=white guibg=gray88
hi default HLGrey88BgW               gui=bold guifg=white guibg=grey88
hi default HLGray89BgW               gui=bold guifg=white guibg=gray89
hi default HLGrey89BgW               gui=bold guifg=white guibg=grey89
hi default HLGray90BgW               gui=bold guifg=white guibg=gray90
hi default HLGrey90BgW               gui=bold guifg=white guibg=grey90
hi default HLGray91BgW               gui=bold guifg=white guibg=gray91
hi default HLGrey91BgW               gui=bold guifg=white guibg=grey91
hi default HLGray92BgW               gui=bold guifg=white guibg=gray92
hi default HLGrey92BgW               gui=bold guifg=white guibg=grey92
hi default HLGray93BgW               gui=bold guifg=white guibg=gray93
hi default HLGrey93BgW               gui=bold guifg=white guibg=grey93
hi default HLGray94BgW               gui=bold guifg=white guibg=gray94
hi default HLGrey94BgW               gui=bold guifg=white guibg=grey94
hi default HLGray95BgW               gui=bold guifg=white guibg=gray95
hi default HLGrey95BgW               gui=bold guifg=white guibg=grey95
hi default HLGray96BgW               gui=bold guifg=white guibg=gray96
hi default HLGrey96BgW               gui=bold guifg=white guibg=grey96
hi default HLGray97BgW               gui=bold guifg=white guibg=gray97
hi default HLGrey97BgW               gui=bold guifg=white guibg=grey97
hi default HLGray98BgW               gui=bold guifg=white guibg=gray98
hi default HLGrey98BgW               gui=bold guifg=white guibg=grey98
hi default HLGray99BgW               gui=bold guifg=white guibg=gray99
hi default HLGrey99BgW               gui=bold guifg=white guibg=grey99
hi default HLGray100BgW              gui=bold guifg=white guibg=gray100
hi default HLGrey100BgW              gui=bold guifg=white guibg=grey100
hi default HLDarkgreyBgW             gui=bold guifg=white guibg=darkgrey
hi default HLDarkgrayBgW             gui=bold guifg=white guibg=darkgray
hi default HLDarkblueBgW             gui=bold guifg=white guibg=darkblue
hi default HLDarkcyanBgW             gui=bold guifg=white guibg=darkcyan
hi default HLDarkmagentaBgW          gui=bold guifg=white guibg=darkmagenta
hi default HLDarkredBgW              gui=bold guifg=white guibg=darkred
hi default HLLightgreenBgW           gui=bold guifg=white guibg=lightgreen
hi default HLCrimsonBgW              gui=bold guifg=white guibg=crimson
hi default HLIndigoBgW               gui=bold guifg=white guibg=indigo
hi default HLOliveBgW                gui=bold guifg=white guibg=olive
hi default HLRebeccapurpleBgW        gui=bold guifg=white guibg=rebeccapurple
hi default HLSilverBgW               gui=bold guifg=white guibg=silver
hi default HLTealBgW                 gui=bold guifg=white guibg=teal


" Undercurl like in spell errors!
hi default HLRedUC                          gui=undercurl guisp=Red
hi default HLDarkBlueUC                     gui=undercurl guisp=Blue
hi default HLFuchsiaUC                      gui=undercurl guisp=Magenta
hi default HLCyanUC                         gui=undercurl guisp=Cyan

" Strikethrough
hi default HLGrayOut  ctermbg=darkblue  ctermfg=black  guifg=grey20
hi default HLStrikeThroughDefault  gui=strikethrough
hi default HLStrikeThroughGray     gui=strikethrough   guifg=grey30

" Background and foreground mixes
hi CyanOnGrey               gui=bold guifg=Cyan      guibg=#555555
hi CyanOnGrey3              gui=bold guifg=Cyan      guibg=#888888
hi CyanOnGrey2              gui=bold guifg=Cyan      guibg=DarkGrey
hi CyanOnLightGrey          gui=bold guifg=Cyan      guibg=Grey
hi DarkBlueOnTeal           gui=bold guifg=Blue      guibg=DarkCyan
hi LightGreyOnGrey          gui=bold guifg=LightGrey guibg=DarkGrey

