"==============================================================================
" File: all_colors.vim
"------------------------------------------------------------------------------
" Description: Contains all the colors available in GUI vim.
" NOTE: See also custom_colorscheme.vim. and colors.vim.
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


" Exit if the file was already loaded
if exists("b:all_colors_loaded")
  finish
endif
let g:all_colors_loaded = 1

" Clear all syntax match groups from every other file to improve performance.
" This file uses it's own syntax matching.
syn clear

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

" For all supported colors available see:
" $VIMRUNTIME/colors/lists/default.vim which initializes |v:colornames|

"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
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
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" For all supported colors available see:
" $VIMRUNTIME/colors/lists/default.vim which initializes |v:colornames|
syn match   HLSnow                 "\<HLSnow\>"
syn match   HLGhostwhite           "\<HLGhostwhite\>"
syn match   HLWhitesmoke           "\<HLWhitesmoke\>"
syn match   HLGainsboro            "\<HLGainsboro\>"
syn match   HLFloralwhite          "\<HLFloralwhite\>"
syn match   HLOldlace              "\<HLOldlace\>"
syn match   HLLinen                "\<HLLinen\>"
syn match   HLAntiquewhite         "\<HLAntiquewhite\>"
syn match   HLPapayawhip           "\<HLPapayawhip\>"
syn match   HLBlanchedalmond       "\<HLBlanchedalmond\>"
syn match   HLBisque               "\<HLBisque\>"
syn match   HLPeachpuff            "\<HLPeachpuff\>"
syn match   HLNavajowhite          "\<HLNavajowhite\>"
syn match   HLMoccasin             "\<HLMoccasin\>"
syn match   HLCornsilk             "\<HLCornsilk\>"
syn match   HLIvory                "\<HLIvory\>"
syn match   HLLemonchiffon         "\<HLLemonchiffon\>"
syn match   HLSeashell             "\<HLSeashell\>"
syn match   HLHoneydew             "\<HLHoneydew\>"
syn match   HLMintcream            "\<HLMintcream\>"
syn match   HLAzure                "\<HLAzure\>"
syn match   HLAliceblue            "\<HLAliceblue\>"
syn match   HLLavender             "\<HLLavender\>"
syn match   HLLavenderblush        "\<HLLavenderblush\>"
syn match   HLMistyrose            "\<HLMistyrose\>"
syn match   HLWhite                "\<HLWhite\>"
syn match   HLBlack                "\<HLBlack\>"
syn match   HLDarkslategray        "\<HLDarkslategray\>"
syn match   HLDarkslategrey        "\<HLDarkslategrey\>"
syn match   HLDimgray              "\<HLDimgray\>"
syn match   HLDimgrey              "\<HLDimgrey\>"
syn match   HLSlategray            "\<HLSlategray\>"
syn match   HLSlategrey            "\<HLSlategrey\>"
syn match   HLLightslategray       "\<HLLightslategray\>"
syn match   HLLightslategrey       "\<HLLightslategrey\>"
syn match   HLGray                 "\<HLGray\>"
syn match   HLGrey                 "\<HLGrey\>"
syn match   HLX11gray              "\<HLX11gray\>"
syn match   HLX11grey              "\<HLX11grey\>"
syn match   HLWebgray              "\<HLWebgray\>"
syn match   HLWebgrey              "\<HLWebgrey\>"
syn match   HLLightgrey            "\<HLLightgrey\>"
syn match   HLLightgray            "\<HLLightgray\>"
syn match   HLMidnightblue         "\<HLMidnightblue\>"
syn match   HLNavy                 "\<HLNavy\>"
syn match   HLNavyblue             "\<HLNavyblue\>"
syn match   HLCornflowerblue       "\<HLCornflowerblue\>"
syn match   HLDarkslateblue        "\<HLDarkslateblue\>"
syn match   HLSlateblue            "\<HLSlateblue\>"
syn match   HLMediumslateblue      "\<HLMediumslateblue\>"
syn match   HLLightslateblue       "\<HLLightslateblue\>"
syn match   HLMediumblue           "\<HLMediumblue\>"
syn match   HLRoyalblue            "\<HLRoyalblue\>"
syn match   HLBlue                 "\<HLBlue\>"
syn match   HLDodgerblue           "\<HLDodgerblue\>"
syn match   HLDeepskyblue          "\<HLDeepskyblue\>"
syn match   HLSkyblue              "\<HLSkyblue\>"
syn match   HLLightskyblue         "\<HLLightskyblue\>"
syn match   HLSteelblue            "\<HLSteelblue\>"
syn match   HLLightsteelblue       "\<HLLightsteelblue\>"
syn match   HLLightblue            "\<HLLightblue\>"
syn match   HLPowderblue           "\<HLPowderblue\>"
syn match   HLPaleturquoise        "\<HLPaleturquoise\>"
syn match   HLDarkturquoise        "\<HLDarkturquoise\>"
syn match   HLMediumturquoise      "\<HLMediumturquoise\>"
syn match   HLTurquoise            "\<HLTurquoise\>"
syn match   HLCyan                 "\<HLCyan\>"
syn match   HLAqua                 "\<HLAqua\>"
syn match   HLLightcyan            "\<HLLightcyan\>"
syn match   HLCadetblue            "\<HLCadetblue\>"
syn match   HLMediumaquamarine     "\<HLMediumaquamarine\>"
syn match   HLAquamarine           "\<HLAquamarine\>"
syn match   HLDarkgreen            "\<HLDarkgreen\>"
syn match   HLDarkolivegreen       "\<HLDarkolivegreen\>"
syn match   HLDarkseagreen         "\<HLDarkseagreen\>"
syn match   HLSeagreen             "\<HLSeagreen\>"
syn match   HLMediumseagreen       "\<HLMediumseagreen\>"
syn match   HLLightseagreen        "\<HLLightseagreen\>"
syn match   HLPalegreen            "\<HLPalegreen\>"
syn match   HLSpringgreen          "\<HLSpringgreen\>"
syn match   HLLawngreen            "\<HLLawngreen\>"
syn match   HLGreen                "\<HLGreen\>"
syn match   HLLime                 "\<HLLime\>"
syn match   HLX11green             "\<HLX11green\>"
syn match   HLWebgreen             "\<HLWebgreen\>"
syn match   HLChartreuse           "\<HLChartreuse\>"
syn match   HLMediumspringgreen    "\<HLMediumspringgreen\>"
syn match   HLGreenyellow          "\<HLGreenyellow\>"
syn match   HLLimegreen            "\<HLLimegreen\>"
syn match   HLYellowgreen          "\<HLYellowgreen\>"
syn match   HLForestgreen          "\<HLForestgreen\>"
syn match   HLOlivedrab            "\<HLOlivedrab\>"
syn match   HLDarkkhaki            "\<HLDarkkhaki\>"
syn match   HLKhaki                "\<HLKhaki\>"
syn match   HLPalegoldenrod        "\<HLPalegoldenrod\>"
syn match   HLLightgoldenrodyellow "\<HLLightgoldenrodyellow\>"
syn match   HLLightyellow          "\<HLLightyellow\>"
syn match   HLYellow               "\<HLYellow\>"
syn match   HLGold                 "\<HLGold\>"
syn match   HLLightgoldenrod       "\<HLLightgoldenrod\>"
syn match   HLGoldenrod            "\<HLGoldenrod\>"
syn match   HLDarkgoldenrod        "\<HLDarkgoldenrod\>"
syn match   HLRosybrown            "\<HLRosybrown\>"
syn match   HLIndianred            "\<HLIndianred\>"
syn match   HLSaddlebrown          "\<HLSaddlebrown\>"
syn match   HLSienna               "\<HLSienna\>"
syn match   HLPeru                 "\<HLPeru\>"
syn match   HLBurlywood            "\<HLBurlywood\>"
syn match   HLBeige                "\<HLBeige\>"
syn match   HLWheat                "\<HLWheat\>"
syn match   HLSandybrown           "\<HLSandybrown\>"
syn match   HLTan                  "\<HLTan\>"
syn match   HLChocolate            "\<HLChocolate\>"
syn match   HLFirebrick            "\<HLFirebrick\>"
syn match   HLBrown                "\<HLBrown\>"
syn match   HLDarksalmon           "\<HLDarksalmon\>"
syn match   HLSalmon               "\<HLSalmon\>"
syn match   HLLightsalmon          "\<HLLightsalmon\>"
syn match   HLOrange               "\<HLOrange\>"
syn match   HLDarkorange           "\<HLDarkorange\>"
syn match   HLCoral                "\<HLCoral\>"
syn match   HLLightcoral           "\<HLLightcoral\>"
syn match   HLTomato               "\<HLTomato\>"
syn match   HLOrangered            "\<HLOrangered\>"
syn match   HLRed                  "\<HLRed\>"
syn match   HLHotpink              "\<HLHotpink\>"
syn match   HLDeeppink             "\<HLDeeppink\>"
syn match   HLPink                 "\<HLPink\>"
syn match   HLLightpink            "\<HLLightpink\>"
syn match   HLPalevioletred        "\<HLPalevioletred\>"
syn match   HLMaroon               "\<HLMaroon\>"
syn match   HLX11maroon            "\<HLX11maroon\>"
syn match   HLWebmaroon            "\<HLWebmaroon\>"
syn match   HLMediumvioletred      "\<HLMediumvioletred\>"
syn match   HLVioletred            "\<HLVioletred\>"
syn match   HLMagenta              "\<HLMagenta\>"
syn match   HLFuchsia              "\<HLFuchsia\>"
syn match   HLViolet               "\<HLViolet\>"
syn match   HLPlum                 "\<HLPlum\>"
syn match   HLOrchid               "\<HLOrchid\>"
syn match   HLMediumorchid         "\<HLMediumorchid\>"
syn match   HLDarkorchid           "\<HLDarkorchid\>"
syn match   HLDarkviolet           "\<HLDarkviolet\>"
syn match   HLBlueviolet           "\<HLBlueviolet\>"
syn match   HLPurple               "\<HLPurple\>"
syn match   HLX11purple            "\<HLX11purple\>"
syn match   HLWebpurple            "\<HLWebpurple\>"
syn match   HLMediumpurple         "\<HLMediumpurple\>"
syn match   HLThistle              "\<HLThistle\>"
syn match   HLSnow1                "\<HLSnow1\>"
syn match   HLSnow2                "\<HLSnow2\>"
syn match   HLSnow3                "\<HLSnow3\>"
syn match   HLSnow4                "\<HLSnow4\>"
syn match   HLSeashell1            "\<HLSeashell1\>"
syn match   HLSeashell2            "\<HLSeashell2\>"
syn match   HLSeashell3            "\<HLSeashell3\>"
syn match   HLSeashell4            "\<HLSeashell4\>"
syn match   HLAntiquewhite1        "\<HLAntiquewhite1\>"
syn match   HLAntiquewhite2        "\<HLAntiquewhite2\>"
syn match   HLAntiquewhite3        "\<HLAntiquewhite3\>"
syn match   HLAntiquewhite4        "\<HLAntiquewhite4\>"
syn match   HLBisque1              "\<HLBisque1\>"
syn match   HLBisque2              "\<HLBisque2\>"
syn match   HLBisque3              "\<HLBisque3\>"
syn match   HLBisque4              "\<HLBisque4\>"
syn match   HLPeachpuff1           "\<HLPeachpuff1\>"
syn match   HLPeachpuff2           "\<HLPeachpuff2\>"
syn match   HLPeachpuff3           "\<HLPeachpuff3\>"
syn match   HLPeachpuff4           "\<HLPeachpuff4\>"
syn match   HLNavajowhite1         "\<HLNavajowhite1\>"
syn match   HLNavajowhite2         "\<HLNavajowhite2\>"
syn match   HLNavajowhite3         "\<HLNavajowhite3\>"
syn match   HLNavajowhite4         "\<HLNavajowhite4\>"
syn match   HLLemonchiffon1        "\<HLLemonchiffon1\>"
syn match   HLLemonchiffon2        "\<HLLemonchiffon2\>"
syn match   HLLemonchiffon3        "\<HLLemonchiffon3\>"
syn match   HLLemonchiffon4        "\<HLLemonchiffon4\>"
syn match   HLCornsilk1            "\<HLCornsilk1\>"
syn match   HLCornsilk2            "\<HLCornsilk2\>"
syn match   HLCornsilk3            "\<HLCornsilk3\>"
syn match   HLCornsilk4            "\<HLCornsilk4\>"
syn match   HLIvory1               "\<HLIvory1\>"
syn match   HLIvory2               "\<HLIvory2\>"
syn match   HLIvory3               "\<HLIvory3\>"
syn match   HLIvory4               "\<HLIvory4\>"
syn match   HLHoneydew1            "\<HLHoneydew1\>"
syn match   HLHoneydew2            "\<HLHoneydew2\>"
syn match   HLHoneydew3            "\<HLHoneydew3\>"
syn match   HLHoneydew4            "\<HLHoneydew4\>"
syn match   HLLavenderblush1       "\<HLLavenderblush1\>"
syn match   HLLavenderblush2       "\<HLLavenderblush2\>"
syn match   HLLavenderblush3       "\<HLLavenderblush3\>"
syn match   HLLavenderblush4       "\<HLLavenderblush4\>"
syn match   HLMistyrose1           "\<HLMistyrose1\>"
syn match   HLMistyrose2           "\<HLMistyrose2\>"
syn match   HLMistyrose3           "\<HLMistyrose3\>"
syn match   HLMistyrose4           "\<HLMistyrose4\>"
syn match   HLAzure1               "\<HLAzure1\>"
syn match   HLAzure2               "\<HLAzure2\>"
syn match   HLAzure3               "\<HLAzure3\>"
syn match   HLAzure4               "\<HLAzure4\>"
syn match   HLSlateblue1           "\<HLSlateblue1\>"
syn match   HLSlateblue2           "\<HLSlateblue2\>"
syn match   HLSlateblue3           "\<HLSlateblue3\>"
syn match   HLSlateblue4           "\<HLSlateblue4\>"
syn match   HLRoyalblue1           "\<HLRoyalblue1\>"
syn match   HLRoyalblue2           "\<HLRoyalblue2\>"
syn match   HLRoyalblue3           "\<HLRoyalblue3\>"
syn match   HLRoyalblue4           "\<HLRoyalblue4\>"
syn match   HLBlue1                "\<HLBlue1\>"
syn match   HLBlue2                "\<HLBlue2\>"
syn match   HLBlue3                "\<HLBlue3\>"
syn match   HLBlue4                "\<HLBlue4\>"
syn match   HLDodgerblue1          "\<HLDodgerblue1\>"
syn match   HLDodgerblue2          "\<HLDodgerblue2\>"
syn match   HLDodgerblue3          "\<HLDodgerblue3\>"
syn match   HLDodgerblue4          "\<HLDodgerblue4\>"
syn match   HLSteelblue1           "\<HLSteelblue1\>"
syn match   HLSteelblue2           "\<HLSteelblue2\>"
syn match   HLSteelblue3           "\<HLSteelblue3\>"
syn match   HLSteelblue4           "\<HLSteelblue4\>"
syn match   HLDeepskyblue1         "\<HLDeepskyblue1\>"
syn match   HLDeepskyblue2         "\<HLDeepskyblue2\>"
syn match   HLDeepskyblue3         "\<HLDeepskyblue3\>"
syn match   HLDeepskyblue4         "\<HLDeepskyblue4\>"
syn match   HLSkyblue1             "\<HLSkyblue1\>"
syn match   HLSkyblue2             "\<HLSkyblue2\>"
syn match   HLSkyblue3             "\<HLSkyblue3\>"
syn match   HLSkyblue4             "\<HLSkyblue4\>"
syn match   HLLightskyblue1        "\<HLLightskyblue1\>"
syn match   HLLightskyblue2        "\<HLLightskyblue2\>"
syn match   HLLightskyblue3        "\<HLLightskyblue3\>"
syn match   HLLightskyblue4        "\<HLLightskyblue4\>"
syn match   HLSlategray1           "\<HLSlategray1\>"
syn match   HLSlategray2           "\<HLSlategray2\>"
syn match   HLSlategray3           "\<HLSlategray3\>"
syn match   HLSlategray4           "\<HLSlategray4\>"
syn match   HLLightsteelblue1      "\<HLLightsteelblue1\>"
syn match   HLLightsteelblue2      "\<HLLightsteelblue2\>"
syn match   HLLightsteelblue3      "\<HLLightsteelblue3\>"
syn match   HLLightsteelblue4      "\<HLLightsteelblue4\>"
syn match   HLLightblue1           "\<HLLightblue1\>"
syn match   HLLightblue2           "\<HLLightblue2\>"
syn match   HLLightblue3           "\<HLLightblue3\>"
syn match   HLLightblue4           "\<HLLightblue4\>"
syn match   HLLightcyan1           "\<HLLightcyan1\>"
syn match   HLLightcyan2           "\<HLLightcyan2\>"
syn match   HLLightcyan3           "\<HLLightcyan3\>"
syn match   HLLightcyan4           "\<HLLightcyan4\>"
syn match   HLPaleturquoise1       "\<HLPaleturquoise1\>"
syn match   HLPaleturquoise2       "\<HLPaleturquoise2\>"
syn match   HLPaleturquoise3       "\<HLPaleturquoise3\>"
syn match   HLPaleturquoise4       "\<HLPaleturquoise4\>"
syn match   HLCadetblue1           "\<HLCadetblue1\>"
syn match   HLCadetblue2           "\<HLCadetblue2\>"
syn match   HLCadetblue3           "\<HLCadetblue3\>"
syn match   HLCadetblue4           "\<HLCadetblue4\>"
syn match   HLTurquoise1           "\<HLTurquoise1\>"
syn match   HLTurquoise2           "\<HLTurquoise2\>"
syn match   HLTurquoise3           "\<HLTurquoise3\>"
syn match   HLTurquoise4           "\<HLTurquoise4\>"
syn match   HLCyan1                "\<HLCyan1\>"
syn match   HLCyan2                "\<HLCyan2\>"
syn match   HLCyan3                "\<HLCyan3\>"
syn match   HLCyan4                "\<HLCyan4\>"
syn match   HLDarkslategray1       "\<HLDarkslategray1\>"
syn match   HLDarkslategray2       "\<HLDarkslategray2\>"
syn match   HLDarkslategray3       "\<HLDarkslategray3\>"
syn match   HLDarkslategray4       "\<HLDarkslategray4\>"
syn match   HLAquamarine1          "\<HLAquamarine1\>"
syn match   HLAquamarine2          "\<HLAquamarine2\>"
syn match   HLAquamarine3          "\<HLAquamarine3\>"
syn match   HLAquamarine4          "\<HLAquamarine4\>"
syn match   HLDarkseagreen1        "\<HLDarkseagreen1\>"
syn match   HLDarkseagreen2        "\<HLDarkseagreen2\>"
syn match   HLDarkseagreen3        "\<HLDarkseagreen3\>"
syn match   HLDarkseagreen4        "\<HLDarkseagreen4\>"
syn match   HLSeagreen1            "\<HLSeagreen1\>"
syn match   HLSeagreen2            "\<HLSeagreen2\>"
syn match   HLSeagreen3            "\<HLSeagreen3\>"
syn match   HLSeagreen4            "\<HLSeagreen4\>"
syn match   HLPalegreen1           "\<HLPalegreen1\>"
syn match   HLPalegreen2           "\<HLPalegreen2\>"
syn match   HLPalegreen3           "\<HLPalegreen3\>"
syn match   HLPalegreen4           "\<HLPalegreen4\>"
syn match   HLSpringgreen1         "\<HLSpringgreen1\>"
syn match   HLSpringgreen2         "\<HLSpringgreen2\>"
syn match   HLSpringgreen3         "\<HLSpringgreen3\>"
syn match   HLSpringgreen4         "\<HLSpringgreen4\>"
syn match   HLGreen1               "\<HLGreen1\>"
syn match   HLGreen2               "\<HLGreen2\>"
syn match   HLGreen3               "\<HLGreen3\>"
syn match   HLGreen4               "\<HLGreen4\>"
syn match   HLChartreuse1          "\<HLChartreuse1\>"
syn match   HLChartreuse2          "\<HLChartreuse2\>"
syn match   HLChartreuse3          "\<HLChartreuse3\>"
syn match   HLChartreuse4          "\<HLChartreuse4\>"
syn match   HLOlivedrab1           "\<HLOlivedrab1\>"
syn match   HLOlivedrab2           "\<HLOlivedrab2\>"
syn match   HLOlivedrab3           "\<HLOlivedrab3\>"
syn match   HLOlivedrab4           "\<HLOlivedrab4\>"
syn match   HLDarkolivegreen1      "\<HLDarkolivegreen1\>"
syn match   HLDarkolivegreen2      "\<HLDarkolivegreen2\>"
syn match   HLDarkolivegreen3      "\<HLDarkolivegreen3\>"
syn match   HLDarkolivegreen4      "\<HLDarkolivegreen4\>"
syn match   HLKhaki1               "\<HLKhaki1\>"
syn match   HLKhaki2               "\<HLKhaki2\>"
syn match   HLKhaki3               "\<HLKhaki3\>"
syn match   HLKhaki4               "\<HLKhaki4\>"
syn match   HLLightgoldenrod1      "\<HLLightgoldenrod1\>"
syn match   HLLightgoldenrod2      "\<HLLightgoldenrod2\>"
syn match   HLLightgoldenrod3      "\<HLLightgoldenrod3\>"
syn match   HLLightgoldenrod4      "\<HLLightgoldenrod4\>"
syn match   HLLightyellow1         "\<HLLightyellow1\>"
syn match   HLLightyellow2         "\<HLLightyellow2\>"
syn match   HLLightyellow3         "\<HLLightyellow3\>"
syn match   HLLightyellow4         "\<HLLightyellow4\>"
syn match   HLYellow1              "\<HLYellow1\>"
syn match   HLYellow2              "\<HLYellow2\>"
syn match   HLYellow3              "\<HLYellow3\>"
syn match   HLYellow4              "\<HLYellow4\>"
syn match   HLDarkyellow           "\<HLDarkyellow\>"
syn match   HLGold1                "\<HLGold1\>"
syn match   HLGold2                "\<HLGold2\>"
syn match   HLGold3                "\<HLGold3\>"
syn match   HLGold4                "\<HLGold4\>"
syn match   HLGoldenrod1           "\<HLGoldenrod1\>"
syn match   HLGoldenrod2           "\<HLGoldenrod2\>"
syn match   HLGoldenrod3           "\<HLGoldenrod3\>"
syn match   HLGoldenrod4           "\<HLGoldenrod4\>"
syn match   HLDarkgoldenrod1       "\<HLDarkgoldenrod1\>"
syn match   HLDarkgoldenrod2       "\<HLDarkgoldenrod2\>"
syn match   HLDarkgoldenrod3       "\<HLDarkgoldenrod3\>"
syn match   HLDarkgoldenrod4       "\<HLDarkgoldenrod4\>"
syn match   HLRosybrown1           "\<HLRosybrown1\>"
syn match   HLRosybrown2           "\<HLRosybrown2\>"
syn match   HLRosybrown3           "\<HLRosybrown3\>"
syn match   HLRosybrown4           "\<HLRosybrown4\>"
syn match   HLIndianred1           "\<HLIndianred1\>"
syn match   HLIndianred2           "\<HLIndianred2\>"
syn match   HLIndianred3           "\<HLIndianred3\>"
syn match   HLIndianred4           "\<HLIndianred4\>"
syn match   HLSienna1              "\<HLSienna1\>"
syn match   HLSienna2              "\<HLSienna2\>"
syn match   HLSienna3              "\<HLSienna3\>"
syn match   HLSienna4              "\<HLSienna4\>"
syn match   HLBurlywood1           "\<HLBurlywood1\>"
syn match   HLBurlywood2           "\<HLBurlywood2\>"
syn match   HLBurlywood3           "\<HLBurlywood3\>"
syn match   HLBurlywood4           "\<HLBurlywood4\>"
syn match   HLWheat1               "\<HLWheat1\>"
syn match   HLWheat2               "\<HLWheat2\>"
syn match   HLWheat3               "\<HLWheat3\>"
syn match   HLWheat4               "\<HLWheat4\>"
syn match   HLTan1                 "\<HLTan1\>"
syn match   HLTan2                 "\<HLTan2\>"
syn match   HLTan3                 "\<HLTan3\>"
syn match   HLTan4                 "\<HLTan4\>"
syn match   HLChocolate1           "\<HLChocolate1\>"
syn match   HLChocolate2           "\<HLChocolate2\>"
syn match   HLChocolate3           "\<HLChocolate3\>"
syn match   HLChocolate4           "\<HLChocolate4\>"
syn match   HLFirebrick1           "\<HLFirebrick1\>"
syn match   HLFirebrick2           "\<HLFirebrick2\>"
syn match   HLFirebrick3           "\<HLFirebrick3\>"
syn match   HLFirebrick4           "\<HLFirebrick4\>"
syn match   HLBrown1               "\<HLBrown1\>"
syn match   HLBrown2               "\<HLBrown2\>"
syn match   HLBrown3               "\<HLBrown3\>"
syn match   HLBrown4               "\<HLBrown4\>"
syn match   HLSalmon1              "\<HLSalmon1\>"
syn match   HLSalmon2              "\<HLSalmon2\>"
syn match   HLSalmon3              "\<HLSalmon3\>"
syn match   HLSalmon4              "\<HLSalmon4\>"
syn match   HLLightsalmon1         "\<HLLightsalmon1\>"
syn match   HLLightsalmon2         "\<HLLightsalmon2\>"
syn match   HLLightsalmon3         "\<HLLightsalmon3\>"
syn match   HLLightsalmon4         "\<HLLightsalmon4\>"
syn match   HLOrange1              "\<HLOrange1\>"
syn match   HLOrange2              "\<HLOrange2\>"
syn match   HLOrange3              "\<HLOrange3\>"
syn match   HLOrange4              "\<HLOrange4\>"
syn match   HLDarkorange1          "\<HLDarkorange1\>"
syn match   HLDarkorange2          "\<HLDarkorange2\>"
syn match   HLDarkorange3          "\<HLDarkorange3\>"
syn match   HLDarkorange4          "\<HLDarkorange4\>"
syn match   HLCoral1               "\<HLCoral1\>"
syn match   HLCoral2               "\<HLCoral2\>"
syn match   HLCoral3               "\<HLCoral3\>"
syn match   HLCoral4               "\<HLCoral4\>"
syn match   HLTomato1              "\<HLTomato1\>"
syn match   HLTomato2              "\<HLTomato2\>"
syn match   HLTomato3              "\<HLTomato3\>"
syn match   HLTomato4              "\<HLTomato4\>"
syn match   HLOrangered1           "\<HLOrangered1\>"
syn match   HLOrangered2           "\<HLOrangered2\>"
syn match   HLOrangered3           "\<HLOrangered3\>"
syn match   HLOrangered4           "\<HLOrangered4\>"
syn match   HLLightred             "\<HLLightred\>"
syn match   HLRed1                 "\<HLRed1\>"
syn match   HLRed2                 "\<HLRed2\>"
syn match   HLRed3                 "\<HLRed3\>"
syn match   HLRed4                 "\<HLRed4\>"
syn match   HLDeeppink1            "\<HLDeeppink1\>"
syn match   HLDeeppink2            "\<HLDeeppink2\>"
syn match   HLDeeppink3            "\<HLDeeppink3\>"
syn match   HLDeeppink4            "\<HLDeeppink4\>"
syn match   HLHotpink1             "\<HLHotpink1\>"
syn match   HLHotpink2             "\<HLHotpink2\>"
syn match   HLHotpink3             "\<HLHotpink3\>"
syn match   HLHotpink4             "\<HLHotpink4\>"
syn match   HLPink1                "\<HLPink1\>"
syn match   HLPink2                "\<HLPink2\>"
syn match   HLPink3                "\<HLPink3\>"
syn match   HLPink4                "\<HLPink4\>"
syn match   HLLightpink1           "\<HLLightpink1\>"
syn match   HLLightpink2           "\<HLLightpink2\>"
syn match   HLLightpink3           "\<HLLightpink3\>"
syn match   HLLightpink4           "\<HLLightpink4\>"
syn match   HLPalevioletred1       "\<HLPalevioletred1\>"
syn match   HLPalevioletred2       "\<HLPalevioletred2\>"
syn match   HLPalevioletred3       "\<HLPalevioletred3\>"
syn match   HLPalevioletred4       "\<HLPalevioletred4\>"
syn match   HLMaroon1              "\<HLMaroon1\>"
syn match   HLMaroon2              "\<HLMaroon2\>"
syn match   HLMaroon3              "\<HLMaroon3\>"
syn match   HLMaroon4              "\<HLMaroon4\>"
syn match   HLVioletred1           "\<HLVioletred1\>"
syn match   HLVioletred2           "\<HLVioletred2\>"
syn match   HLVioletred3           "\<HLVioletred3\>"
syn match   HLVioletred4           "\<HLVioletred4\>"
syn match   HLLightmagenta         "\<HLLightmagenta\>"
syn match   HLMagenta1             "\<HLMagenta1\>"
syn match   HLMagenta2             "\<HLMagenta2\>"
syn match   HLMagenta3             "\<HLMagenta3\>"
syn match   HLMagenta4             "\<HLMagenta4\>"
syn match   HLOrchid1              "\<HLOrchid1\>"
syn match   HLOrchid2              "\<HLOrchid2\>"
syn match   HLOrchid3              "\<HLOrchid3\>"
syn match   HLOrchid4              "\<HLOrchid4\>"
syn match   HLPlum1                "\<HLPlum1\>"
syn match   HLPlum2                "\<HLPlum2\>"
syn match   HLPlum3                "\<HLPlum3\>"
syn match   HLPlum4                "\<HLPlum4\>"
syn match   HLMediumorchid1        "\<HLMediumorchid1\>"
syn match   HLMediumorchid2        "\<HLMediumorchid2\>"
syn match   HLMediumorchid3        "\<HLMediumorchid3\>"
syn match   HLMediumorchid4        "\<HLMediumorchid4\>"
syn match   HLDarkorchid1          "\<HLDarkorchid1\>"
syn match   HLDarkorchid2          "\<HLDarkorchid2\>"
syn match   HLDarkorchid3          "\<HLDarkorchid3\>"
syn match   HLDarkorchid4          "\<HLDarkorchid4\>"
syn match   HLPurple1              "\<HLPurple1\>"
syn match   HLPurple2              "\<HLPurple2\>"
syn match   HLPurple3              "\<HLPurple3\>"
syn match   HLPurple4              "\<HLPurple4\>"
syn match   HLMediumpurple1        "\<HLMediumpurple1\>"
syn match   HLMediumpurple2        "\<HLMediumpurple2\>"
syn match   HLMediumpurple3        "\<HLMediumpurple3\>"
syn match   HLMediumpurple4        "\<HLMediumpurple4\>"
syn match   HLThistle1             "\<HLThistle1\>"
syn match   HLThistle2             "\<HLThistle2\>"
syn match   HLThistle3             "\<HLThistle3\>"
syn match   HLThistle4             "\<HLThistle4\>"
syn match   HLGray0                "\<HLGray0\>"
syn match   HLGrey0                "\<HLGrey0\>"
syn match   HLGray1                "\<HLGray1\>"
syn match   HLGrey1                "\<HLGrey1\>"
syn match   HLGray2                "\<HLGray2\>"
syn match   HLGrey2                "\<HLGrey2\>"
syn match   HLGray3                "\<HLGray3\>"
syn match   HLGrey3                "\<HLGrey3\>"
syn match   HLGray4                "\<HLGray4\>"
syn match   HLGrey4                "\<HLGrey4\>"
syn match   HLGray5                "\<HLGray5\>"
syn match   HLGrey5                "\<HLGrey5\>"
syn match   HLGray6                "\<HLGray6\>"
syn match   HLGrey6                "\<HLGrey6\>"
syn match   HLGray7                "\<HLGray7\>"
syn match   HLGrey7                "\<HLGrey7\>"
syn match   HLGray8                "\<HLGray8\>"
syn match   HLGrey8                "\<HLGrey8\>"
syn match   HLGray9                "\<HLGray9\>"
syn match   HLGrey9                "\<HLGrey9\>"
syn match   HLGray10               "\<HLGray10\>"
syn match   HLGrey10               "\<HLGrey10\>"
syn match   HLGray11               "\<HLGray11\>"
syn match   HLGrey11               "\<HLGrey11\>"
syn match   HLGray12               "\<HLGray12\>"
syn match   HLGrey12               "\<HLGrey12\>"
syn match   HLGray13               "\<HLGray13\>"
syn match   HLGrey13               "\<HLGrey13\>"
syn match   HLGray14               "\<HLGray14\>"
syn match   HLGrey14               "\<HLGrey14\>"
syn match   HLGray15               "\<HLGray15\>"
syn match   HLGrey15               "\<HLGrey15\>"
syn match   HLGray16               "\<HLGray16\>"
syn match   HLGrey16               "\<HLGrey16\>"
syn match   HLGray17               "\<HLGray17\>"
syn match   HLGrey17               "\<HLGrey17\>"
syn match   HLGray18               "\<HLGray18\>"
syn match   HLGrey18               "\<HLGrey18\>"
syn match   HLGray19               "\<HLGray19\>"
syn match   HLGrey19               "\<HLGrey19\>"
syn match   HLGray20               "\<HLGray20\>"
syn match   HLGrey20               "\<HLGrey20\>"
syn match   HLGray21               "\<HLGray21\>"
syn match   HLGrey21               "\<HLGrey21\>"
syn match   HLGray22               "\<HLGray22\>"
syn match   HLGrey22               "\<HLGrey22\>"
syn match   HLGray23               "\<HLGray23\>"
syn match   HLGrey23               "\<HLGrey23\>"
syn match   HLGray24               "\<HLGray24\>"
syn match   HLGrey24               "\<HLGrey24\>"
syn match   HLGray25               "\<HLGray25\>"
syn match   HLGrey25               "\<HLGrey25\>"
syn match   HLGray26               "\<HLGray26\>"
syn match   HLGrey26               "\<HLGrey26\>"
syn match   HLGray27               "\<HLGray27\>"
syn match   HLGrey27               "\<HLGrey27\>"
syn match   HLGray28               "\<HLGray28\>"
syn match   HLGrey28               "\<HLGrey28\>"
syn match   HLGray29               "\<HLGray29\>"
syn match   HLGrey29               "\<HLGrey29\>"
syn match   HLGray30               "\<HLGray30\>"
syn match   HLGrey30               "\<HLGrey30\>"
syn match   HLGray31               "\<HLGray31\>"
syn match   HLGrey31               "\<HLGrey31\>"
syn match   HLGray32               "\<HLGray32\>"
syn match   HLGrey32               "\<HLGrey32\>"
syn match   HLGray33               "\<HLGray33\>"
syn match   HLGrey33               "\<HLGrey33\>"
syn match   HLGray34               "\<HLGray34\>"
syn match   HLGrey34               "\<HLGrey34\>"
syn match   HLGray35               "\<HLGray35\>"
syn match   HLGrey35               "\<HLGrey35\>"
syn match   HLGray36               "\<HLGray36\>"
syn match   HLGrey36               "\<HLGrey36\>"
syn match   HLGray37               "\<HLGray37\>"
syn match   HLGrey37               "\<HLGrey37\>"
syn match   HLGray38               "\<HLGray38\>"
syn match   HLGrey38               "\<HLGrey38\>"
syn match   HLGray39               "\<HLGray39\>"
syn match   HLGrey39               "\<HLGrey39\>"
syn match   HLGray40               "\<HLGray40\>"
syn match   HLGrey40               "\<HLGrey40\>"
syn match   HLGray41               "\<HLGray41\>"
syn match   HLGrey41               "\<HLGrey41\>"
syn match   HLGray42               "\<HLGray42\>"
syn match   HLGrey42               "\<HLGrey42\>"
syn match   HLGray43               "\<HLGray43\>"
syn match   HLGrey43               "\<HLGrey43\>"
syn match   HLGray44               "\<HLGray44\>"
syn match   HLGrey44               "\<HLGrey44\>"
syn match   HLGray45               "\<HLGray45\>"
syn match   HLGrey45               "\<HLGrey45\>"
syn match   HLGray46               "\<HLGray46\>"
syn match   HLGrey46               "\<HLGrey46\>"
syn match   HLGray47               "\<HLGray47\>"
syn match   HLGrey47               "\<HLGrey47\>"
syn match   HLGray48               "\<HLGray48\>"
syn match   HLGrey48               "\<HLGrey48\>"
syn match   HLGray49               "\<HLGray49\>"
syn match   HLGrey49               "\<HLGrey49\>"
syn match   HLGray50               "\<HLGray50\>"
syn match   HLGrey50               "\<HLGrey50\>"
syn match   HLGray51               "\<HLGray51\>"
syn match   HLGrey51               "\<HLGrey51\>"
syn match   HLGray52               "\<HLGray52\>"
syn match   HLGrey52               "\<HLGrey52\>"
syn match   HLGray53               "\<HLGray53\>"
syn match   HLGrey53               "\<HLGrey53\>"
syn match   HLGray54               "\<HLGray54\>"
syn match   HLGrey54               "\<HLGrey54\>"
syn match   HLGray55               "\<HLGray55\>"
syn match   HLGrey55               "\<HLGrey55\>"
syn match   HLGray56               "\<HLGray56\>"
syn match   HLGrey56               "\<HLGrey56\>"
syn match   HLGray57               "\<HLGray57\>"
syn match   HLGrey57               "\<HLGrey57\>"
syn match   HLGray58               "\<HLGray58\>"
syn match   HLGrey58               "\<HLGrey58\>"
syn match   HLGray59               "\<HLGray59\>"
syn match   HLGrey59               "\<HLGrey59\>"
syn match   HLGray60               "\<HLGray60\>"
syn match   HLGrey60               "\<HLGrey60\>"
syn match   HLGray61               "\<HLGray61\>"
syn match   HLGrey61               "\<HLGrey61\>"
syn match   HLGray62               "\<HLGray62\>"
syn match   HLGrey62               "\<HLGrey62\>"
syn match   HLGray63               "\<HLGray63\>"
syn match   HLGrey63               "\<HLGrey63\>"
syn match   HLGray64               "\<HLGray64\>"
syn match   HLGrey64               "\<HLGrey64\>"
syn match   HLGray65               "\<HLGray65\>"
syn match   HLGrey65               "\<HLGrey65\>"
syn match   HLGray66               "\<HLGray66\>"
syn match   HLGrey66               "\<HLGrey66\>"
syn match   HLGray67               "\<HLGray67\>"
syn match   HLGrey67               "\<HLGrey67\>"
syn match   HLGray68               "\<HLGray68\>"
syn match   HLGrey68               "\<HLGrey68\>"
syn match   HLGray69               "\<HLGray69\>"
syn match   HLGrey69               "\<HLGrey69\>"
syn match   HLGray70               "\<HLGray70\>"
syn match   HLGrey70               "\<HLGrey70\>"
syn match   HLGray71               "\<HLGray71\>"
syn match   HLGrey71               "\<HLGrey71\>"
syn match   HLGray72               "\<HLGray72\>"
syn match   HLGrey72               "\<HLGrey72\>"
syn match   HLGray73               "\<HLGray73\>"
syn match   HLGrey73               "\<HLGrey73\>"
syn match   HLGray74               "\<HLGray74\>"
syn match   HLGrey74               "\<HLGrey74\>"
syn match   HLGray75               "\<HLGray75\>"
syn match   HLGrey75               "\<HLGrey75\>"
syn match   HLGray76               "\<HLGray76\>"
syn match   HLGrey76               "\<HLGrey76\>"
syn match   HLGray77               "\<HLGray77\>"
syn match   HLGrey77               "\<HLGrey77\>"
syn match   HLGray78               "\<HLGray78\>"
syn match   HLGrey78               "\<HLGrey78\>"
syn match   HLGray79               "\<HLGray79\>"
syn match   HLGrey79               "\<HLGrey79\>"
syn match   HLGray80               "\<HLGray80\>"
syn match   HLGrey80               "\<HLGrey80\>"
syn match   HLGray81               "\<HLGray81\>"
syn match   HLGrey81               "\<HLGrey81\>"
syn match   HLGray82               "\<HLGray82\>"
syn match   HLGrey82               "\<HLGrey82\>"
syn match   HLGray83               "\<HLGray83\>"
syn match   HLGrey83               "\<HLGrey83\>"
syn match   HLGray84               "\<HLGray84\>"
syn match   HLGrey84               "\<HLGrey84\>"
syn match   HLGray85               "\<HLGray85\>"
syn match   HLGrey85               "\<HLGrey85\>"
syn match   HLGray86               "\<HLGray86\>"
syn match   HLGrey86               "\<HLGrey86\>"
syn match   HLGray87               "\<HLGray87\>"
syn match   HLGrey87               "\<HLGrey87\>"
syn match   HLGray88               "\<HLGray88\>"
syn match   HLGrey88               "\<HLGrey88\>"
syn match   HLGray89               "\<HLGray89\>"
syn match   HLGrey89               "\<HLGrey89\>"
syn match   HLGray90               "\<HLGray90\>"
syn match   HLGrey90               "\<HLGrey90\>"
syn match   HLGray91               "\<HLGray91\>"
syn match   HLGrey91               "\<HLGrey91\>"
syn match   HLGray92               "\<HLGray92\>"
syn match   HLGrey92               "\<HLGrey92\>"
syn match   HLGray93               "\<HLGray93\>"
syn match   HLGrey93               "\<HLGrey93\>"
syn match   HLGray94               "\<HLGray94\>"
syn match   HLGrey94               "\<HLGrey94\>"
syn match   HLGray95               "\<HLGray95\>"
syn match   HLGrey95               "\<HLGrey95\>"
syn match   HLGray96               "\<HLGray96\>"
syn match   HLGrey96               "\<HLGrey96\>"
syn match   HLGray97               "\<HLGray97\>"
syn match   HLGrey97               "\<HLGrey97\>"
syn match   HLGray98               "\<HLGray98\>"
syn match   HLGrey98               "\<HLGrey98\>"
syn match   HLGray99               "\<HLGray99\>"
syn match   HLGrey99               "\<HLGrey99\>"
syn match   HLGray100              "\<HLGray100\>"
syn match   HLGrey100              "\<HLGrey100\>"
syn match   HLDarkgrey             "\<HLDarkgrey\>"
syn match   HLDarkgray             "\<HLDarkgray\>"
syn match   HLDarkblue             "\<HLDarkblue\>"
syn match   HLDarkcyan             "\<HLDarkcyan\>"
syn match   HLDarkmagenta          "\<HLDarkmagenta\>"
syn match   HLDarkred              "\<HLDarkred\>"
syn match   HLLightgreen           "\<HLLightgreen\>"
syn match   HLCrimson              "\<HLCrimson\>"
syn match   HLIndigo               "\<HLIndigo\>"
syn match   HLOlive                "\<HLOlive\>"
syn match   HLRebeccapurple        "\<HLRebeccapurple\>"
syn match   HLSilver               "\<HLSilver\>"
syn match   HLTeal                 "\<HLTeal\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" NOTE: You can also see the colors below in vim with no GUI
syn match   HLCterm0             "\<HLCterm0\>"
syn match   HLCterm1             "\<HLCterm1\>"
syn match   HLCterm2             "\<HLCterm2\>"
syn match   HLCterm3             "\<HLCterm3\>"
syn match   HLCterm4             "\<HLCterm4\>"
syn match   HLCterm5             "\<HLCterm5\>"
syn match   HLCterm6             "\<HLCterm6\>"
syn match   HLCterm7             "\<HLCterm7\>"
syn match   HLCterm8             "\<HLCterm8\>"
syn match   HLCterm9             "\<HLCterm9\>"
syn match   HLCterm10            "\<HLCterm10\>"
syn match   HLCterm11            "\<HLCterm11\>"
syn match   HLCterm12            "\<HLCterm12\>"
syn match   HLCterm13            "\<HLCterm13\>"
syn match   HLCterm14            "\<HLCterm14\>"
syn match   HLCterm15            "\<HLCterm15\>"
syn match   HLCterm16            "\<HLCterm16\>"
syn match   HLCterm17            "\<HLCterm17\>"
syn match   HLCterm18            "\<HLCterm18\>"
syn match   HLCterm19            "\<HLCterm19\>"
syn match   HLCterm20            "\<HLCterm20\>"
syn match   HLCterm21            "\<HLCterm21\>"
syn match   HLCterm22            "\<HLCterm22\>"
syn match   HLCterm23            "\<HLCterm23\>"
syn match   HLCterm24            "\<HLCterm24\>"
syn match   HLCterm25            "\<HLCterm25\>"
syn match   HLCterm26            "\<HLCterm26\>"
syn match   HLCterm27            "\<HLCterm27\>"
syn match   HLCterm28            "\<HLCterm28\>"
syn match   HLCterm29            "\<HLCterm29\>"
syn match   HLCterm30            "\<HLCterm30\>"
syn match   HLCterm31            "\<HLCterm31\>"
syn match   HLCterm32            "\<HLCterm32\>"
syn match   HLCterm33            "\<HLCterm33\>"
syn match   HLCterm34            "\<HLCterm34\>"
syn match   HLCterm35            "\<HLCterm35\>"
syn match   HLCterm36            "\<HLCterm36\>"
syn match   HLCterm37            "\<HLCterm37\>"
syn match   HLCterm38            "\<HLCterm38\>"
syn match   HLCterm39            "\<HLCterm39\>"
syn match   HLCterm40            "\<HLCterm40\>"
syn match   HLCterm41            "\<HLCterm41\>"
syn match   HLCterm42            "\<HLCterm42\>"
syn match   HLCterm43            "\<HLCterm43\>"
syn match   HLCterm44            "\<HLCterm44\>"
syn match   HLCterm45            "\<HLCterm45\>"
syn match   HLCterm46            "\<HLCterm46\>"
syn match   HLCterm47            "\<HLCterm47\>"
syn match   HLCterm48            "\<HLCterm48\>"
syn match   HLCterm49            "\<HLCterm49\>"
syn match   HLCterm50            "\<HLCterm50\>"
syn match   HLCterm51            "\<HLCterm51\>"
syn match   HLCterm52            "\<HLCterm52\>"
syn match   HLCterm53            "\<HLCterm53\>"
syn match   HLCterm54            "\<HLCterm54\>"
syn match   HLCterm55            "\<HLCterm55\>"
syn match   HLCterm56            "\<HLCterm56\>"
syn match   HLCterm57            "\<HLCterm57\>"
syn match   HLCterm58            "\<HLCterm58\>"
syn match   HLCterm59            "\<HLCterm59\>"
syn match   HLCterm60            "\<HLCterm60\>"
syn match   HLCterm61            "\<HLCterm61\>"
syn match   HLCterm62            "\<HLCterm62\>"
syn match   HLCterm63            "\<HLCterm63\>"
syn match   HLCterm64            "\<HLCterm64\>"
syn match   HLCterm65            "\<HLCterm65\>"
syn match   HLCterm66            "\<HLCterm66\>"
syn match   HLCterm67            "\<HLCterm67\>"
syn match   HLCterm68            "\<HLCterm68\>"
syn match   HLCterm69            "\<HLCterm69\>"
syn match   HLCterm70            "\<HLCterm70\>"
syn match   HLCterm71            "\<HLCterm71\>"
syn match   HLCterm72            "\<HLCterm72\>"
syn match   HLCterm73            "\<HLCterm73\>"
syn match   HLCterm74            "\<HLCterm74\>"
syn match   HLCterm75            "\<HLCterm75\>"
syn match   HLCterm76            "\<HLCterm76\>"
syn match   HLCterm77            "\<HLCterm77\>"
syn match   HLCterm78            "\<HLCterm78\>"
syn match   HLCterm79            "\<HLCterm79\>"
syn match   HLCterm80            "\<HLCterm80\>"
syn match   HLCterm81            "\<HLCterm81\>"
syn match   HLCterm82            "\<HLCterm82\>"
syn match   HLCterm83            "\<HLCterm83\>"
syn match   HLCterm84            "\<HLCterm84\>"
syn match   HLCterm85            "\<HLCterm85\>"
syn match   HLCterm86            "\<HLCterm86\>"
syn match   HLCterm87            "\<HLCterm87\>"
syn match   HLCterm88            "\<HLCterm88\>"
syn match   HLCterm89            "\<HLCterm89\>"
syn match   HLCterm90            "\<HLCterm90\>"
syn match   HLCterm91            "\<HLCterm91\>"
syn match   HLCterm92            "\<HLCterm92\>"
syn match   HLCterm93            "\<HLCterm93\>"
syn match   HLCterm94            "\<HLCterm94\>"
syn match   HLCterm95            "\<HLCterm95\>"
syn match   HLCterm96            "\<HLCterm96\>"
syn match   HLCterm97            "\<HLCterm97\>"
syn match   HLCterm98            "\<HLCterm98\>"
syn match   HLCterm99            "\<HLCterm99\>"
syn match   HLCterm100           "\<HLCterm100\>"
syn match   HLCterm101           "\<HLCterm101\>"
syn match   HLCterm102           "\<HLCterm102\>"
syn match   HLCterm103           "\<HLCterm103\>"
syn match   HLCterm104           "\<HLCterm104\>"
syn match   HLCterm105           "\<HLCterm105\>"
syn match   HLCterm106           "\<HLCterm106\>"
syn match   HLCterm107           "\<HLCterm107\>"
syn match   HLCterm108           "\<HLCterm108\>"
syn match   HLCterm109           "\<HLCterm109\>"
syn match   HLCterm110           "\<HLCterm110\>"
syn match   HLCterm111           "\<HLCterm111\>"
syn match   HLCterm112           "\<HLCterm112\>"
syn match   HLCterm113           "\<HLCterm113\>"
syn match   HLCterm114           "\<HLCterm114\>"
syn match   HLCterm115           "\<HLCterm115\>"
syn match   HLCterm116           "\<HLCterm116\>"
syn match   HLCterm117           "\<HLCterm117\>"
syn match   HLCterm118           "\<HLCterm118\>"
syn match   HLCterm119           "\<HLCterm119\>"
syn match   HLCterm120           "\<HLCterm120\>"
syn match   HLCterm121           "\<HLCterm121\>"
syn match   HLCterm122           "\<HLCterm122\>"
syn match   HLCterm123           "\<HLCterm123\>"
syn match   HLCterm124           "\<HLCterm124\>"
syn match   HLCterm125           "\<HLCterm125\>"
syn match   HLCterm126           "\<HLCterm126\>"
syn match   HLCterm127           "\<HLCterm127\>"
syn match   HLCterm128           "\<HLCterm128\>"
syn match   HLCterm129           "\<HLCterm129\>"
syn match   HLCterm130           "\<HLCterm130\>"
syn match   HLCterm131           "\<HLCterm131\>"
syn match   HLCterm132           "\<HLCterm132\>"
syn match   HLCterm133           "\<HLCterm133\>"
syn match   HLCterm134           "\<HLCterm134\>"
syn match   HLCterm135           "\<HLCterm135\>"
syn match   HLCterm136           "\<HLCterm136\>"
syn match   HLCterm137           "\<HLCterm137\>"
syn match   HLCterm138           "\<HLCterm138\>"
syn match   HLCterm139           "\<HLCterm139\>"
syn match   HLCterm140           "\<HLCterm140\>"
syn match   HLCterm141           "\<HLCterm141\>"
syn match   HLCterm142           "\<HLCterm142\>"
syn match   HLCterm143           "\<HLCterm143\>"
syn match   HLCterm144           "\<HLCterm144\>"
syn match   HLCterm145           "\<HLCterm145\>"
syn match   HLCterm146           "\<HLCterm146\>"
syn match   HLCterm147           "\<HLCterm147\>"
syn match   HLCterm148           "\<HLCterm148\>"
syn match   HLCterm149           "\<HLCterm149\>"
syn match   HLCterm150           "\<HLCterm150\>"
syn match   HLCterm151           "\<HLCterm151\>"
syn match   HLCterm152           "\<HLCterm152\>"
syn match   HLCterm153           "\<HLCterm153\>"
syn match   HLCterm154           "\<HLCterm154\>"
syn match   HLCterm155           "\<HLCterm155\>"
syn match   HLCterm156           "\<HLCterm156\>"
syn match   HLCterm157           "\<HLCterm157\>"
syn match   HLCterm158           "\<HLCterm158\>"
syn match   HLCterm159           "\<HLCterm159\>"
syn match   HLCterm160           "\<HLCterm160\>"
syn match   HLCterm161           "\<HLCterm161\>"
syn match   HLCterm162           "\<HLCterm162\>"
syn match   HLCterm163           "\<HLCterm163\>"
syn match   HLCterm164           "\<HLCterm164\>"
syn match   HLCterm165           "\<HLCterm165\>"
syn match   HLCterm166           "\<HLCterm166\>"
syn match   HLCterm167           "\<HLCterm167\>"
syn match   HLCterm168           "\<HLCterm168\>"
syn match   HLCterm169           "\<HLCterm169\>"
syn match   HLCterm170           "\<HLCterm170\>"
syn match   HLCterm171           "\<HLCterm171\>"
syn match   HLCterm172           "\<HLCterm172\>"
syn match   HLCterm173           "\<HLCterm173\>"
syn match   HLCterm174           "\<HLCterm174\>"
syn match   HLCterm175           "\<HLCterm175\>"
syn match   HLCterm176           "\<HLCterm176\>"
syn match   HLCterm177           "\<HLCterm177\>"
syn match   HLCterm178           "\<HLCterm178\>"
syn match   HLCterm179           "\<HLCterm179\>"
syn match   HLCterm180           "\<HLCterm180\>"
syn match   HLCterm181           "\<HLCterm181\>"
syn match   HLCterm182           "\<HLCterm182\>"
syn match   HLCterm183           "\<HLCterm183\>"
syn match   HLCterm184           "\<HLCterm184\>"
syn match   HLCterm185           "\<HLCterm185\>"
syn match   HLCterm186           "\<HLCterm186\>"
syn match   HLCterm187           "\<HLCterm187\>"
syn match   HLCterm188           "\<HLCterm188\>"
syn match   HLCterm189           "\<HLCterm189\>"
syn match   HLCterm190           "\<HLCterm190\>"
syn match   HLCterm191           "\<HLCterm191\>"
syn match   HLCterm192           "\<HLCterm192\>"
syn match   HLCterm193           "\<HLCterm193\>"
syn match   HLCterm194           "\<HLCterm194\>"
syn match   HLCterm195           "\<HLCterm195\>"
syn match   HLCterm196           "\<HLCterm196\>"
syn match   HLCterm197           "\<HLCterm197\>"
syn match   HLCterm198           "\<HLCterm198\>"
syn match   HLCterm199           "\<HLCterm199\>"
syn match   HLCterm200           "\<HLCterm200\>"
syn match   HLCterm201           "\<HLCterm201\>"
syn match   HLCterm202           "\<HLCterm202\>"
syn match   HLCterm203           "\<HLCterm203\>"
syn match   HLCterm204           "\<HLCterm204\>"
syn match   HLCterm205           "\<HLCterm205\>"
syn match   HLCterm206           "\<HLCterm206\>"
syn match   HLCterm207           "\<HLCterm207\>"
syn match   HLCterm208           "\<HLCterm208\>"
syn match   HLCterm209           "\<HLCterm209\>"
syn match   HLCterm210           "\<HLCterm210\>"
syn match   HLCterm211           "\<HLCterm211\>"
syn match   HLCterm212           "\<HLCterm212\>"
syn match   HLCterm213           "\<HLCterm213\>"
syn match   HLCterm214           "\<HLCterm214\>"
syn match   HLCterm215           "\<HLCterm215\>"
syn match   HLCterm216           "\<HLCterm216\>"
syn match   HLCterm217           "\<HLCterm217\>"
syn match   HLCterm218           "\<HLCterm218\>"
syn match   HLCterm219           "\<HLCterm219\>"
syn match   HLCterm220           "\<HLCterm220\>"
syn match   HLCterm221           "\<HLCterm221\>"
syn match   HLCterm222           "\<HLCterm222\>"
syn match   HLCterm223           "\<HLCterm223\>"
syn match   HLCterm224           "\<HLCterm224\>"
syn match   HLCterm225           "\<HLCterm225\>"
syn match   HLCterm226           "\<HLCterm226\>"
syn match   HLCterm227           "\<HLCterm227\>"
syn match   HLCterm228           "\<HLCterm228\>"
syn match   HLCterm229           "\<HLCterm229\>"
syn match   HLCterm230           "\<HLCterm230\>"
syn match   HLCterm231           "\<HLCterm231\>"
syn match   HLCterm232           "\<HLCterm232\>"
syn match   HLCterm233           "\<HLCterm233\>"
syn match   HLCterm234           "\<HLCterm234\>"
syn match   HLCterm235           "\<HLCterm235\>"
syn match   HLCterm236           "\<HLCterm236\>"
syn match   HLCterm237           "\<HLCterm237\>"
syn match   HLCterm238           "\<HLCterm238\>"
syn match   HLCterm239           "\<HLCterm239\>"
syn match   HLCterm240           "\<HLCterm240\>"
syn match   HLCterm241           "\<HLCterm241\>"
syn match   HLCterm242           "\<HLCterm242\>"
syn match   HLCterm243           "\<HLCterm243\>"
syn match   HLCterm244           "\<HLCterm244\>"
syn match   HLCterm245           "\<HLCterm245\>"
syn match   HLCterm246           "\<HLCterm246\>"
syn match   HLCterm247           "\<HLCterm247\>"
syn match   HLCterm248           "\<HLCterm248\>"
syn match   HLCterm249           "\<HLCterm249\>"
syn match   HLCterm250           "\<HLCterm250\>"
syn match   HLCterm251           "\<HLCterm251\>"
syn match   HLCterm252           "\<HLCterm252\>"
syn match   HLCterm253           "\<HLCterm253\>"
syn match   HLCterm254           "\<HLCterm254\>"
syn match   HLCterm255           "\<HLCterm255\>"
syn match   HLCterm256           "\<HLCterm256\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Bold colors
syn match HLSnowB                 "\<HLSnowB\>"
syn match HLGhostwhiteB           "\<HLGhostwhiteB\>"
syn match HLWhitesmokeB           "\<HLWhitesmokeB\>"
syn match HLGainsboroB            "\<HLGainsboroB\>"
syn match HLFloralwhiteB          "\<HLFloralwhiteB\>"
syn match HLOldlaceB              "\<HLOldlaceB\>"
syn match HLLinenB                "\<HLLinenB\>"
syn match HLAntiquewhiteB         "\<HLAntiquewhiteB\>"
syn match HLPapayawhipB           "\<HLPapayawhipB\>"
syn match HLBlanchedalmondB       "\<HLBlanchedalmondB\>"
syn match HLBisqueB               "\<HLBisqueB\>"
syn match HLPeachpuffB            "\<HLPeachpuffB\>"
syn match HLNavajowhiteB          "\<HLNavajowhiteB\>"
syn match HLMoccasinB             "\<HLMoccasinB\>"
syn match HLCornsilkB             "\<HLCornsilkB\>"
syn match HLIvoryB                "\<HLIvoryB\>"
syn match HLLemonchiffonB         "\<HLLemonchiffonB\>"
syn match HLSeashellB             "\<HLSeashellB\>"
syn match HLHoneydewB             "\<HLHoneydewB\>"
syn match HLMintcreamB            "\<HLMintcreamB\>"
syn match HLAzureB                "\<HLAzureB\>"
syn match HLAliceblueB            "\<HLAliceblueB\>"
syn match HLLavenderB             "\<HLLavenderB\>"
syn match HLLavenderblushB        "\<HLLavenderblushB\>"
syn match HLMistyroseB            "\<HLMistyroseB\>"
syn match HLWhiteB                "\<HLWhiteB\>"
syn match HLBlackB                "\<HLBlackB\>"
syn match HLDarkslategrayB        "\<HLDarkslategrayB\>"
syn match HLDarkslategreyB        "\<HLDarkslategreyB\>"
syn match HLDimgrayB              "\<HLDimgrayB\>"
syn match HLDimgreyB              "\<HLDimgreyB\>"
syn match HLSlategrayB            "\<HLSlategrayB\>"
syn match HLSlategreyB            "\<HLSlategreyB\>"
syn match HLLightslategrayB       "\<HLLightslategrayB\>"
syn match HLLightslategreyB       "\<HLLightslategreyB\>"
syn match HLGrayB                 "\<HLGrayB\>"
syn match HLGreyB                 "\<HLGreyB\>"
syn match HLX11grayB              "\<HLX11grayB\>"
syn match HLX11greyB              "\<HLX11greyB\>"
syn match HLWebgrayB              "\<HLWebgrayB\>"
syn match HLWebgreyB              "\<HLWebgreyB\>"
syn match HLLightgreyB            "\<HLLightgreyB\>"
syn match HLLightgrayB            "\<HLLightgrayB\>"
syn match HLMidnightblueB         "\<HLMidnightblueB\>"
syn match HLNavyB                 "\<HLNavyB\>"
syn match HLNavyblueB             "\<HLNavyblueB\>"
syn match HLCornflowerblueB       "\<HLCornflowerblueB\>"
syn match HLDarkslateblueB        "\<HLDarkslateblueB\>"
syn match HLSlateblueB            "\<HLSlateblueB\>"
syn match HLMediumslateblueB      "\<HLMediumslateblueB\>"
syn match HLLightslateblueB       "\<HLLightslateblueB\>"
syn match HLMediumblueB           "\<HLMediumblueB\>"
syn match HLRoyalblueB            "\<HLRoyalblueB\>"
syn match HLBlueB                 "\<HLBlueB\>"
syn match HLDodgerblueB           "\<HLDodgerblueB\>"
syn match HLDeepskyblueB          "\<HLDeepskyblueB\>"
syn match HLSkyblueB              "\<HLSkyblueB\>"
syn match HLLightskyblueB         "\<HLLightskyblueB\>"
syn match HLSteelblueB            "\<HLSteelblueB\>"
syn match HLLightsteelblueB       "\<HLLightsteelblueB\>"
syn match HLLightblueB            "\<HLLightblueB\>"
syn match HLPowderblueB           "\<HLPowderblueB\>"
syn match HLPaleturquoiseB        "\<HLPaleturquoiseB\>"
syn match HLDarkturquoiseB        "\<HLDarkturquoiseB\>"
syn match HLMediumturquoiseB      "\<HLMediumturquoiseB\>"
syn match HLTurquoiseB            "\<HLTurquoiseB\>"
syn match HLCyanB                 "\<HLCyanB\>"
syn match HLAquaB                 "\<HLAquaB\>"
syn match HLLightcyanB            "\<HLLightcyanB\>"
syn match HLCadetblueB            "\<HLCadetblueB\>"
syn match HLMediumaquamarineB     "\<HLMediumaquamarineB\>"
syn match HLAquamarineB           "\<HLAquamarineB\>"
syn match HLDarkgreenB            "\<HLDarkgreenB\>"
syn match HLDarkolivegreenB       "\<HLDarkolivegreenB\>"
syn match HLDarkseagreenB         "\<HLDarkseagreenB\>"
syn match HLSeagreenB             "\<HLSeagreenB\>"
syn match HLMediumseagreenB       "\<HLMediumseagreenB\>"
syn match HLLightseagreenB        "\<HLLightseagreenB\>"
syn match HLPalegreenB            "\<HLPalegreenB\>"
syn match HLSpringgreenB          "\<HLSpringgreenB\>"
syn match HLLawngreenB            "\<HLLawngreenB\>"
syn match HLGreenB                "\<HLGreenB\>"
syn match HLLimeB                 "\<HLLimeB\>"
syn match HLX11greenB             "\<HLX11greenB\>"
syn match HLWebgreenB             "\<HLWebgreenB\>"
syn match HLChartreuseB           "\<HLChartreuseB\>"
syn match HLMediumspringgreenB    "\<HLMediumspringgreenB\>"
syn match HLGreenyellowB          "\<HLGreenyellowB\>"
syn match HLLimegreenB            "\<HLLimegreenB\>"
syn match HLYellowgreenB          "\<HLYellowgreenB\>"
syn match HLForestgreenB          "\<HLForestgreenB\>"
syn match HLOlivedrabB            "\<HLOlivedrabB\>"
syn match HLDarkkhakiB            "\<HLDarkkhakiB\>"
syn match HLKhakiB                "\<HLKhakiB\>"
syn match HLPalegoldenrodB        "\<HLPalegoldenrodB\>"
syn match HLLightgoldenrodyellowB "\<HLLightgoldenrodyellowB\>"
syn match HLLightyellowB          "\<HLLightyellowB\>"
syn match HLYellowB               "\<HLYellowB\>"
syn match HLGoldB                 "\<HLGoldB\>"
syn match HLLightgoldenrodB       "\<HLLightgoldenrodB\>"
syn match HLGoldenrodB            "\<HLGoldenrodB\>"
syn match HLDarkgoldenrodB        "\<HLDarkgoldenrodB\>"
syn match HLRosybrownB            "\<HLRosybrownB\>"
syn match HLIndianredB            "\<HLIndianredB\>"
syn match HLSaddlebrownB          "\<HLSaddlebrownB\>"
syn match HLSiennaB               "\<HLSiennaB\>"
syn match HLPeruB                 "\<HLPeruB\>"
syn match HLBurlywoodB            "\<HLBurlywoodB\>"
syn match HLBeigeB                "\<HLBeigeB\>"
syn match HLWheatB                "\<HLWheatB\>"
syn match HLSandybrownB           "\<HLSandybrownB\>"
syn match HLTanB                  "\<HLTanB\>"
syn match HLChocolateB            "\<HLChocolateB\>"
syn match HLFirebrickB            "\<HLFirebrickB\>"
syn match HLBrownB                "\<HLBrownB\>"
syn match HLDarksalmonB           "\<HLDarksalmonB\>"
syn match HLSalmonB               "\<HLSalmonB\>"
syn match HLLightsalmonB          "\<HLLightsalmonB\>"
syn match HLOrangeB               "\<HLOrangeB\>"
syn match HLDarkorangeB           "\<HLDarkorangeB\>"
syn match HLCoralB                "\<HLCoralB\>"
syn match HLLightcoralB           "\<HLLightcoralB\>"
syn match HLTomatoB               "\<HLTomatoB\>"
syn match HLOrangeredB            "\<HLOrangeredB\>"
syn match HLRedB                  "\<HLRedB\>"
syn match HLHotpinkB              "\<HLHotpinkB\>"
syn match HLDeeppinkB             "\<HLDeeppinkB\>"
syn match HLPinkB                 "\<HLPinkB\>"
syn match HLLightpinkB            "\<HLLightpinkB\>"
syn match HLPalevioletredB        "\<HLPalevioletredB\>"
syn match HLMaroonB               "\<HLMaroonB\>"
syn match HLX11maroonB            "\<HLX11maroonB\>"
syn match HLWebmaroonB            "\<HLWebmaroonB\>"
syn match HLMediumvioletredB      "\<HLMediumvioletredB\>"
syn match HLVioletredB            "\<HLVioletredB\>"
syn match HLMagentaB              "\<HLMagentaB\>"
syn match HLFuchsiaB              "\<HLFuchsiaB\>"
syn match HLVioletB               "\<HLVioletB\>"
syn match HLPlumB                 "\<HLPlumB\>"
syn match HLOrchidB               "\<HLOrchidB\>"
syn match HLMediumorchidB         "\<HLMediumorchidB\>"
syn match HLDarkorchidB           "\<HLDarkorchidB\>"
syn match HLDarkvioletB           "\<HLDarkvioletB\>"
syn match HLBluevioletB           "\<HLBluevioletB\>"
syn match HLPurpleB               "\<HLPurpleB\>"
syn match HLX11purpleB            "\<HLX11purpleB\>"
syn match HLWebpurpleB            "\<HLWebpurpleB\>"
syn match HLMediumpurpleB         "\<HLMediumpurpleB\>"
syn match HLThistleB              "\<HLThistleB\>"
syn match HLSnow1B                "\<HLSnow1B\>"
syn match HLSnow2B                "\<HLSnow2B\>"
syn match HLSnow3B                "\<HLSnow3B\>"
syn match HLSnow4B                "\<HLSnow4B\>"
syn match HLSeashell1B            "\<HLSeashell1B\>"
syn match HLSeashell2B            "\<HLSeashell2B\>"
syn match HLSeashell3B            "\<HLSeashell3B\>"
syn match HLSeashell4B            "\<HLSeashell4B\>"
syn match HLAntiquewhite1B        "\<HLAntiquewhite1B\>"
syn match HLAntiquewhite2B        "\<HLAntiquewhite2B\>"
syn match HLAntiquewhite3B        "\<HLAntiquewhite3B\>"
syn match HLAntiquewhite4B        "\<HLAntiquewhite4B\>"
syn match HLBisque1B              "\<HLBisque1B\>"
syn match HLBisque2B              "\<HLBisque2B\>"
syn match HLBisque3B              "\<HLBisque3B\>"
syn match HLBisque4B              "\<HLBisque4B\>"
syn match HLPeachpuff1B           "\<HLPeachpuff1B\>"
syn match HLPeachpuff2B           "\<HLPeachpuff2B\>"
syn match HLPeachpuff3B           "\<HLPeachpuff3B\>"
syn match HLPeachpuff4B           "\<HLPeachpuff4B\>"
syn match HLNavajowhite1B         "\<HLNavajowhite1B\>"
syn match HLNavajowhite2B         "\<HLNavajowhite2B\>"
syn match HLNavajowhite3B         "\<HLNavajowhite3B\>"
syn match HLNavajowhite4B         "\<HLNavajowhite4B\>"
syn match HLLemonchiffon1B        "\<HLLemonchiffon1B\>"
syn match HLLemonchiffon2B        "\<HLLemonchiffon2B\>"
syn match HLLemonchiffon3B        "\<HLLemonchiffon3B\>"
syn match HLLemonchiffon4B        "\<HLLemonchiffon4B\>"
syn match HLCornsilk1B            "\<HLCornsilk1B\>"
syn match HLCornsilk2B            "\<HLCornsilk2B\>"
syn match HLCornsilk3B            "\<HLCornsilk3B\>"
syn match HLCornsilk4B            "\<HLCornsilk4B\>"
syn match HLIvory1B               "\<HLIvory1B\>"
syn match HLIvory2B               "\<HLIvory2B\>"
syn match HLIvory3B               "\<HLIvory3B\>"
syn match HLIvory4B               "\<HLIvory4B\>"
syn match HLHoneydew1B            "\<HLHoneydew1B\>"
syn match HLHoneydew2B            "\<HLHoneydew2B\>"
syn match HLHoneydew3B            "\<HLHoneydew3B\>"
syn match HLHoneydew4B            "\<HLHoneydew4B\>"
syn match HLLavenderblush1B       "\<HLLavenderblush1B\>"
syn match HLLavenderblush2B       "\<HLLavenderblush2B\>"
syn match HLLavenderblush3B       "\<HLLavenderblush3B\>"
syn match HLLavenderblush4B       "\<HLLavenderblush4B\>"
syn match HLMistyrose1B           "\<HLMistyrose1B\>"
syn match HLMistyrose2B           "\<HLMistyrose2B\>"
syn match HLMistyrose3B           "\<HLMistyrose3B\>"
syn match HLMistyrose4B           "\<HLMistyrose4B\>"
syn match HLAzure1B               "\<HLAzure1B\>"
syn match HLAzure2B               "\<HLAzure2B\>"
syn match HLAzure3B               "\<HLAzure3B\>"
syn match HLAzure4B               "\<HLAzure4B\>"
syn match HLSlateblue1B           "\<HLSlateblue1B\>"
syn match HLSlateblue2B           "\<HLSlateblue2B\>"
syn match HLSlateblue3B           "\<HLSlateblue3B\>"
syn match HLSlateblue4B           "\<HLSlateblue4B\>"
syn match HLRoyalblue1B           "\<HLRoyalblue1B\>"
syn match HLRoyalblue2B           "\<HLRoyalblue2B\>"
syn match HLRoyalblue3B           "\<HLRoyalblue3B\>"
syn match HLRoyalblue4B           "\<HLRoyalblue4B\>"
syn match HLBlue1B                "\<HLBlue1B\>"
syn match HLBlue2B                "\<HLBlue2B\>"
syn match HLBlue3B                "\<HLBlue3B\>"
syn match HLBlue4B                "\<HLBlue4B\>"
syn match HLDodgerblue1B          "\<HLDodgerblue1B\>"
syn match HLDodgerblue2B          "\<HLDodgerblue2B\>"
syn match HLDodgerblue3B          "\<HLDodgerblue3B\>"
syn match HLDodgerblue4B          "\<HLDodgerblue4B\>"
syn match HLSteelblue1B           "\<HLSteelblue1B\>"
syn match HLSteelblue2B           "\<HLSteelblue2B\>"
syn match HLSteelblue3B           "\<HLSteelblue3B\>"
syn match HLSteelblue4B           "\<HLSteelblue4B\>"
syn match HLDeepskyblue1B         "\<HLDeepskyblue1B\>"
syn match HLDeepskyblue2B         "\<HLDeepskyblue2B\>"
syn match HLDeepskyblue3B         "\<HLDeepskyblue3B\>"
syn match HLDeepskyblue4B         "\<HLDeepskyblue4B\>"
syn match HLSkyblue1B             "\<HLSkyblue1B\>"
syn match HLSkyblue2B             "\<HLSkyblue2B\>"
syn match HLSkyblue3B             "\<HLSkyblue3B\>"
syn match HLSkyblue4B             "\<HLSkyblue4B\>"
syn match HLLightskyblue1B        "\<HLLightskyblue1B\>"
syn match HLLightskyblue2B        "\<HLLightskyblue2B\>"
syn match HLLightskyblue3B        "\<HLLightskyblue3B\>"
syn match HLLightskyblue4B        "\<HLLightskyblue4B\>"
syn match HLSlategray1B           "\<HLSlategray1B\>"
syn match HLSlategray2B           "\<HLSlategray2B\>"
syn match HLSlategray3B           "\<HLSlategray3B\>"
syn match HLSlategray4B           "\<HLSlategray4B\>"
syn match HLLightsteelblue1B      "\<HLLightsteelblue1B\>"
syn match HLLightsteelblue2B      "\<HLLightsteelblue2B\>"
syn match HLLightsteelblue3B      "\<HLLightsteelblue3B\>"
syn match HLLightsteelblue4B      "\<HLLightsteelblue4B\>"
syn match HLLightblue1B           "\<HLLightblue1B\>"
syn match HLLightblue2B           "\<HLLightblue2B\>"
syn match HLLightblue3B           "\<HLLightblue3B\>"
syn match HLLightblue4B           "\<HLLightblue4B\>"
syn match HLLightcyan1B           "\<HLLightcyan1B\>"
syn match HLLightcyan2B           "\<HLLightcyan2B\>"
syn match HLLightcyan3B           "\<HLLightcyan3B\>"
syn match HLLightcyan4B           "\<HLLightcyan4B\>"
syn match HLPaleturquoise1B       "\<HLPaleturquoise1B\>"
syn match HLPaleturquoise2B       "\<HLPaleturquoise2B\>"
syn match HLPaleturquoise3B       "\<HLPaleturquoise3B\>"
syn match HLPaleturquoise4B       "\<HLPaleturquoise4B\>"
syn match HLCadetblue1B           "\<HLCadetblue1B\>"
syn match HLCadetblue2B           "\<HLCadetblue2B\>"
syn match HLCadetblue3B           "\<HLCadetblue3B\>"
syn match HLCadetblue4B           "\<HLCadetblue4B\>"
syn match HLTurquoise1B           "\<HLTurquoise1B\>"
syn match HLTurquoise2B           "\<HLTurquoise2B\>"
syn match HLTurquoise3B           "\<HLTurquoise3B\>"
syn match HLTurquoise4B           "\<HLTurquoise4B\>"
syn match HLCyan1B                "\<HLCyan1B\>"
syn match HLCyan2B                "\<HLCyan2B\>"
syn match HLCyan3B                "\<HLCyan3B\>"
syn match HLCyan4B                "\<HLCyan4B\>"
syn match HLDarkslategray1B       "\<HLDarkslategray1B\>"
syn match HLDarkslategray2B       "\<HLDarkslategray2B\>"
syn match HLDarkslategray3B       "\<HLDarkslategray3B\>"
syn match HLDarkslategray4B       "\<HLDarkslategray4B\>"
syn match HLAquamarine1B          "\<HLAquamarine1B\>"
syn match HLAquamarine2B          "\<HLAquamarine2B\>"
syn match HLAquamarine3B          "\<HLAquamarine3B\>"
syn match HLAquamarine4B          "\<HLAquamarine4B\>"
syn match HLDarkseagreen1B        "\<HLDarkseagreen1B\>"
syn match HLDarkseagreen2B        "\<HLDarkseagreen2B\>"
syn match HLDarkseagreen3B        "\<HLDarkseagreen3B\>"
syn match HLDarkseagreen4B        "\<HLDarkseagreen4B\>"
syn match HLSeagreen1B            "\<HLSeagreen1B\>"
syn match HLSeagreen2B            "\<HLSeagreen2B\>"
syn match HLSeagreen3B            "\<HLSeagreen3B\>"
syn match HLSeagreen4B            "\<HLSeagreen4B\>"
syn match HLPalegreen1B           "\<HLPalegreen1B\>"
syn match HLPalegreen2B           "\<HLPalegreen2B\>"
syn match HLPalegreen3B           "\<HLPalegreen3B\>"
syn match HLPalegreen4B           "\<HLPalegreen4B\>"
syn match HLSpringgreen1B         "\<HLSpringgreen1B\>"
syn match HLSpringgreen2B         "\<HLSpringgreen2B\>"
syn match HLSpringgreen3B         "\<HLSpringgreen3B\>"
syn match HLSpringgreen4B         "\<HLSpringgreen4B\>"
syn match HLGreen1B               "\<HLGreen1B\>"
syn match HLGreen2B               "\<HLGreen2B\>"
syn match HLGreen3B               "\<HLGreen3B\>"
syn match HLGreen4B               "\<HLGreen4B\>"
syn match HLChartreuse1B          "\<HLChartreuse1B\>"
syn match HLChartreuse2B          "\<HLChartreuse2B\>"
syn match HLChartreuse3B          "\<HLChartreuse3B\>"
syn match HLChartreuse4B          "\<HLChartreuse4B\>"
syn match HLOlivedrab1B           "\<HLOlivedrab1B\>"
syn match HLOlivedrab2B           "\<HLOlivedrab2B\>"
syn match HLOlivedrab3B           "\<HLOlivedrab3B\>"
syn match HLOlivedrab4B           "\<HLOlivedrab4B\>"
syn match HLDarkolivegreen1B      "\<HLDarkolivegreen1B\>"
syn match HLDarkolivegreen2B      "\<HLDarkolivegreen2B\>"
syn match HLDarkolivegreen3B      "\<HLDarkolivegreen3B\>"
syn match HLDarkolivegreen4B      "\<HLDarkolivegreen4B\>"
syn match HLKhaki1B               "\<HLKhaki1B\>"
syn match HLKhaki2B               "\<HLKhaki2B\>"
syn match HLKhaki3B               "\<HLKhaki3B\>"
syn match HLKhaki4B               "\<HLKhaki4B\>"
syn match HLLightgoldenrod1B      "\<HLLightgoldenrod1B\>"
syn match HLLightgoldenrod2B      "\<HLLightgoldenrod2B\>"
syn match HLLightgoldenrod3B      "\<HLLightgoldenrod3B\>"
syn match HLLightgoldenrod4B      "\<HLLightgoldenrod4B\>"
syn match HLLightyellow1B         "\<HLLightyellow1B\>"
syn match HLLightyellow2B         "\<HLLightyellow2B\>"
syn match HLLightyellow3B         "\<HLLightyellow3B\>"
syn match HLLightyellow4B         "\<HLLightyellow4B\>"
syn match HLYellow1B              "\<HLYellow1B\>"
syn match HLYellow2B              "\<HLYellow2B\>"
syn match HLYellow3B              "\<HLYellow3B\>"
syn match HLYellow4B              "\<HLYellow4B\>"
syn match HLDarkyellowB           "\<HLDarkyellowB\>"
syn match HLGold1B                "\<HLGold1B\>"
syn match HLGold2B                "\<HLGold2B\>"
syn match HLGold3B                "\<HLGold3B\>"
syn match HLGold4B                "\<HLGold4B\>"
syn match HLGoldenrod1B           "\<HLGoldenrod1B\>"
syn match HLGoldenrod2B           "\<HLGoldenrod2B\>"
syn match HLGoldenrod3B           "\<HLGoldenrod3B\>"
syn match HLGoldenrod4B           "\<HLGoldenrod4B\>"
syn match HLDarkgoldenrod1B       "\<HLDarkgoldenrod1B\>"
syn match HLDarkgoldenrod2B       "\<HLDarkgoldenrod2B\>"
syn match HLDarkgoldenrod3B       "\<HLDarkgoldenrod3B\>"
syn match HLDarkgoldenrod4B       "\<HLDarkgoldenrod4B\>"
syn match HLRosybrown1B           "\<HLRosybrown1B\>"
syn match HLRosybrown2B           "\<HLRosybrown2B\>"
syn match HLRosybrown3B           "\<HLRosybrown3B\>"
syn match HLRosybrown4B           "\<HLRosybrown4B\>"
syn match HLIndianred1B           "\<HLIndianred1B\>"
syn match HLIndianred2B           "\<HLIndianred2B\>"
syn match HLIndianred3B           "\<HLIndianred3B\>"
syn match HLIndianred4B           "\<HLIndianred4B\>"
syn match HLSienna1B              "\<HLSienna1B\>"
syn match HLSienna2B              "\<HLSienna2B\>"
syn match HLSienna3B              "\<HLSienna3B\>"
syn match HLSienna4B              "\<HLSienna4B\>"
syn match HLBurlywood1B           "\<HLBurlywood1B\>"
syn match HLBurlywood2B           "\<HLBurlywood2B\>"
syn match HLBurlywood3B           "\<HLBurlywood3B\>"
syn match HLBurlywood4B           "\<HLBurlywood4B\>"
syn match HLWheat1B               "\<HLWheat1B\>"
syn match HLWheat2B               "\<HLWheat2B\>"
syn match HLWheat3B               "\<HLWheat3B\>"
syn match HLWheat4B               "\<HLWheat4B\>"
syn match HLTan1B                 "\<HLTan1B\>"
syn match HLTan2B                 "\<HLTan2B\>"
syn match HLTan3B                 "\<HLTan3B\>"
syn match HLTan4B                 "\<HLTan4B\>"
syn match HLChocolate1B           "\<HLChocolate1B\>"
syn match HLChocolate2B           "\<HLChocolate2B\>"
syn match HLChocolate3B           "\<HLChocolate3B\>"
syn match HLChocolate4B           "\<HLChocolate4B\>"
syn match HLFirebrick1B           "\<HLFirebrick1B\>"
syn match HLFirebrick2B           "\<HLFirebrick2B\>"
syn match HLFirebrick3B           "\<HLFirebrick3B\>"
syn match HLFirebrick4B           "\<HLFirebrick4B\>"
syn match HLBrown1B               "\<HLBrown1B\>"
syn match HLBrown2B               "\<HLBrown2B\>"
syn match HLBrown3B               "\<HLBrown3B\>"
syn match HLBrown4B               "\<HLBrown4B\>"
syn match HLSalmon1B              "\<HLSalmon1B\>"
syn match HLSalmon2B              "\<HLSalmon2B\>"
syn match HLSalmon3B              "\<HLSalmon3B\>"
syn match HLSalmon4B              "\<HLSalmon4B\>"
syn match HLLightsalmon1B         "\<HLLightsalmon1B\>"
syn match HLLightsalmon2B         "\<HLLightsalmon2B\>"
syn match HLLightsalmon3B         "\<HLLightsalmon3B\>"
syn match HLLightsalmon4B         "\<HLLightsalmon4B\>"
syn match HLOrange1B              "\<HLOrange1B\>"
syn match HLOrange2B              "\<HLOrange2B\>"
syn match HLOrange3B              "\<HLOrange3B\>"
syn match HLOrange4B              "\<HLOrange4B\>"
syn match HLDarkorange1B          "\<HLDarkorange1B\>"
syn match HLDarkorange2B          "\<HLDarkorange2B\>"
syn match HLDarkorange3B          "\<HLDarkorange3B\>"
syn match HLDarkorange4B          "\<HLDarkorange4B\>"
syn match HLCoral1B               "\<HLCoral1B\>"
syn match HLCoral2B               "\<HLCoral2B\>"
syn match HLCoral3B               "\<HLCoral3B\>"
syn match HLCoral4B               "\<HLCoral4B\>"
syn match HLTomato1B              "\<HLTomato1B\>"
syn match HLTomato2B              "\<HLTomato2B\>"
syn match HLTomato3B              "\<HLTomato3B\>"
syn match HLTomato4B              "\<HLTomato4B\>"
syn match HLOrangered1B           "\<HLOrangered1B\>"
syn match HLOrangered2B           "\<HLOrangered2B\>"
syn match HLOrangered3B           "\<HLOrangered3B\>"
syn match HLOrangered4B           "\<HLOrangered4B\>"
syn match HLLightredB             "\<HLLightredB\>"
syn match HLRed1B                 "\<HLRed1B\>"
syn match HLRed2B                 "\<HLRed2B\>"
syn match HLRed3B                 "\<HLRed3B\>"
syn match HLRed4B                 "\<HLRed4B\>"
syn match HLDeeppink1B            "\<HLDeeppink1B\>"
syn match HLDeeppink2B            "\<HLDeeppink2B\>"
syn match HLDeeppink3B            "\<HLDeeppink3B\>"
syn match HLDeeppink4B            "\<HLDeeppink4B\>"
syn match HLHotpink1B             "\<HLHotpink1B\>"
syn match HLHotpink2B             "\<HLHotpink2B\>"
syn match HLHotpink3B             "\<HLHotpink3B\>"
syn match HLHotpink4B             "\<HLHotpink4B\>"
syn match HLPink1B                "\<HLPink1B\>"
syn match HLPink2B                "\<HLPink2B\>"
syn match HLPink3B                "\<HLPink3B\>"
syn match HLPink4B                "\<HLPink4B\>"
syn match HLLightpink1B           "\<HLLightpink1B\>"
syn match HLLightpink2B           "\<HLLightpink2B\>"
syn match HLLightpink3B           "\<HLLightpink3B\>"
syn match HLLightpink4B           "\<HLLightpink4B\>"
syn match HLPalevioletred1B       "\<HLPalevioletred1B\>"
syn match HLPalevioletred2B       "\<HLPalevioletred2B\>"
syn match HLPalevioletred3B       "\<HLPalevioletred3B\>"
syn match HLPalevioletred4B       "\<HLPalevioletred4B\>"
syn match HLMaroon1B              "\<HLMaroon1B\>"
syn match HLMaroon2B              "\<HLMaroon2B\>"
syn match HLMaroon3B              "\<HLMaroon3B\>"
syn match HLMaroon4B              "\<HLMaroon4B\>"
syn match HLVioletred1B           "\<HLVioletred1B\>"
syn match HLVioletred2B           "\<HLVioletred2B\>"
syn match HLVioletred3B           "\<HLVioletred3B\>"
syn match HLVioletred4B           "\<HLVioletred4B\>"
syn match HLLightmagentaB         "\<HLLightmagentaB\>"
syn match HLMagenta1B             "\<HLMagenta1B\>"
syn match HLMagenta2B             "\<HLMagenta2B\>"
syn match HLMagenta3B             "\<HLMagenta3B\>"
syn match HLMagenta4B             "\<HLMagenta4B\>"
syn match HLOrchid1B              "\<HLOrchid1B\>"
syn match HLOrchid2B              "\<HLOrchid2B\>"
syn match HLOrchid3B              "\<HLOrchid3B\>"
syn match HLOrchid4B              "\<HLOrchid4B\>"
syn match HLPlum1B                "\<HLPlum1B\>"
syn match HLPlum2B                "\<HLPlum2B\>"
syn match HLPlum3B                "\<HLPlum3B\>"
syn match HLPlum4B                "\<HLPlum4B\>"
syn match HLMediumorchid1B        "\<HLMediumorchid1B\>"
syn match HLMediumorchid2B        "\<HLMediumorchid2B\>"
syn match HLMediumorchid3B        "\<HLMediumorchid3B\>"
syn match HLMediumorchid4B        "\<HLMediumorchid4B\>"
syn match HLDarkorchid1B          "\<HLDarkorchid1B\>"
syn match HLDarkorchid2B          "\<HLDarkorchid2B\>"
syn match HLDarkorchid3B          "\<HLDarkorchid3B\>"
syn match HLDarkorchid4B          "\<HLDarkorchid4B\>"
syn match HLPurple1B              "\<HLPurple1B\>"
syn match HLPurple2B              "\<HLPurple2B\>"
syn match HLPurple3B              "\<HLPurple3B\>"
syn match HLPurple4B              "\<HLPurple4B\>"
syn match HLMediumpurple1B        "\<HLMediumpurple1B\>"
syn match HLMediumpurple2B        "\<HLMediumpurple2B\>"
syn match HLMediumpurple3B        "\<HLMediumpurple3B\>"
syn match HLMediumpurple4B        "\<HLMediumpurple4B\>"
syn match HLThistle1B             "\<HLThistle1B\>"
syn match HLThistle2B             "\<HLThistle2B\>"
syn match HLThistle3B             "\<HLThistle3B\>"
syn match HLThistle4B             "\<HLThistle4B\>"
syn match HLGray0B                "\<HLGray0B\>"
syn match HLGrey0B                "\<HLGrey0B\>"
syn match HLGray1B                "\<HLGray1B\>"
syn match HLGrey1B                "\<HLGrey1B\>"
syn match HLGray2B                "\<HLGray2B\>"
syn match HLGrey2B                "\<HLGrey2B\>"
syn match HLGray3B                "\<HLGray3B\>"
syn match HLGrey3B                "\<HLGrey3B\>"
syn match HLGray4B                "\<HLGray4B\>"
syn match HLGrey4B                "\<HLGrey4B\>"
syn match HLGray5B                "\<HLGray5B\>"
syn match HLGrey5B                "\<HLGrey5B\>"
syn match HLGray6B                "\<HLGray6B\>"
syn match HLGrey6B                "\<HLGrey6B\>"
syn match HLGray7B                "\<HLGray7B\>"
syn match HLGrey7B                "\<HLGrey7B\>"
syn match HLGray8B                "\<HLGray8B\>"
syn match HLGrey8B                "\<HLGrey8B\>"
syn match HLGray9B                "\<HLGray9B\>"
syn match HLGrey9B                "\<HLGrey9B\>"
syn match HLGray10B               "\<HLGray10B\>"
syn match HLGrey10B               "\<HLGrey10B\>"
syn match HLGray11B               "\<HLGray11B\>"
syn match HLGrey11B               "\<HLGrey11B\>"
syn match HLGray12B               "\<HLGray12B\>"
syn match HLGrey12B               "\<HLGrey12B\>"
syn match HLGray13B               "\<HLGray13B\>"
syn match HLGrey13B               "\<HLGrey13B\>"
syn match HLGray14B               "\<HLGray14B\>"
syn match HLGrey14B               "\<HLGrey14B\>"
syn match HLGray15B               "\<HLGray15B\>"
syn match HLGrey15B               "\<HLGrey15B\>"
syn match HLGray16B               "\<HLGray16B\>"
syn match HLGrey16B               "\<HLGrey16B\>"
syn match HLGray17B               "\<HLGray17B\>"
syn match HLGrey17B               "\<HLGrey17B\>"
syn match HLGray18B               "\<HLGray18B\>"
syn match HLGrey18B               "\<HLGrey18B\>"
syn match HLGray19B               "\<HLGray19B\>"
syn match HLGrey19B               "\<HLGrey19B\>"
syn match HLGray20B               "\<HLGray20B\>"
syn match HLGrey20B               "\<HLGrey20B\>"
syn match HLGray21B               "\<HLGray21B\>"
syn match HLGrey21B               "\<HLGrey21B\>"
syn match HLGray22B               "\<HLGray22B\>"
syn match HLGrey22B               "\<HLGrey22B\>"
syn match HLGray23B               "\<HLGray23B\>"
syn match HLGrey23B               "\<HLGrey23B\>"
syn match HLGray24B               "\<HLGray24B\>"
syn match HLGrey24B               "\<HLGrey24B\>"
syn match HLGray25B               "\<HLGray25B\>"
syn match HLGrey25B               "\<HLGrey25B\>"
syn match HLGray26B               "\<HLGray26B\>"
syn match HLGrey26B               "\<HLGrey26B\>"
syn match HLGray27B               "\<HLGray27B\>"
syn match HLGrey27B               "\<HLGrey27B\>"
syn match HLGray28B               "\<HLGray28B\>"
syn match HLGrey28B               "\<HLGrey28B\>"
syn match HLGray29B               "\<HLGray29B\>"
syn match HLGrey29B               "\<HLGrey29B\>"
syn match HLGray30B               "\<HLGray30B\>"
syn match HLGrey30B               "\<HLGrey30B\>"
syn match HLGray31B               "\<HLGray31B\>"
syn match HLGrey31B               "\<HLGrey31B\>"
syn match HLGray32B               "\<HLGray32B\>"
syn match HLGrey32B               "\<HLGrey32B\>"
syn match HLGray33B               "\<HLGray33B\>"
syn match HLGrey33B               "\<HLGrey33B\>"
syn match HLGray34B               "\<HLGray34B\>"
syn match HLGrey34B               "\<HLGrey34B\>"
syn match HLGray35B               "\<HLGray35B\>"
syn match HLGrey35B               "\<HLGrey35B\>"
syn match HLGray36B               "\<HLGray36B\>"
syn match HLGrey36B               "\<HLGrey36B\>"
syn match HLGray37B               "\<HLGray37B\>"
syn match HLGrey37B               "\<HLGrey37B\>"
syn match HLGray38B               "\<HLGray38B\>"
syn match HLGrey38B               "\<HLGrey38B\>"
syn match HLGray39B               "\<HLGray39B\>"
syn match HLGrey39B               "\<HLGrey39B\>"
syn match HLGray40B               "\<HLGray40B\>"
syn match HLGrey40B               "\<HLGrey40B\>"
syn match HLGray41B               "\<HLGray41B\>"
syn match HLGrey41B               "\<HLGrey41B\>"
syn match HLGray42B               "\<HLGray42B\>"
syn match HLGrey42B               "\<HLGrey42B\>"
syn match HLGray43B               "\<HLGray43B\>"
syn match HLGrey43B               "\<HLGrey43B\>"
syn match HLGray44B               "\<HLGray44B\>"
syn match HLGrey44B               "\<HLGrey44B\>"
syn match HLGray45B               "\<HLGray45B\>"
syn match HLGrey45B               "\<HLGrey45B\>"
syn match HLGray46B               "\<HLGray46B\>"
syn match HLGrey46B               "\<HLGrey46B\>"
syn match HLGray47B               "\<HLGray47B\>"
syn match HLGrey47B               "\<HLGrey47B\>"
syn match HLGray48B               "\<HLGray48B\>"
syn match HLGrey48B               "\<HLGrey48B\>"
syn match HLGray49B               "\<HLGray49B\>"
syn match HLGrey49B               "\<HLGrey49B\>"
syn match HLGray50B               "\<HLGray50B\>"
syn match HLGrey50B               "\<HLGrey50B\>"
syn match HLGray51B               "\<HLGray51B\>"
syn match HLGrey51B               "\<HLGrey51B\>"
syn match HLGray52B               "\<HLGray52B\>"
syn match HLGrey52B               "\<HLGrey52B\>"
syn match HLGray53B               "\<HLGray53B\>"
syn match HLGrey53B               "\<HLGrey53B\>"
syn match HLGray54B               "\<HLGray54B\>"
syn match HLGrey54B               "\<HLGrey54B\>"
syn match HLGray55B               "\<HLGray55B\>"
syn match HLGrey55B               "\<HLGrey55B\>"
syn match HLGray56B               "\<HLGray56B\>"
syn match HLGrey56B               "\<HLGrey56B\>"
syn match HLGray57B               "\<HLGray57B\>"
syn match HLGrey57B               "\<HLGrey57B\>"
syn match HLGray58B               "\<HLGray58B\>"
syn match HLGrey58B               "\<HLGrey58B\>"
syn match HLGray59B               "\<HLGray59B\>"
syn match HLGrey59B               "\<HLGrey59B\>"
syn match HLGray60B               "\<HLGray60B\>"
syn match HLGrey60B               "\<HLGrey60B\>"
syn match HLGray61B               "\<HLGray61B\>"
syn match HLGrey61B               "\<HLGrey61B\>"
syn match HLGray62B               "\<HLGray62B\>"
syn match HLGrey62B               "\<HLGrey62B\>"
syn match HLGray63B               "\<HLGray63B\>"
syn match HLGrey63B               "\<HLGrey63B\>"
syn match HLGray64B               "\<HLGray64B\>"
syn match HLGrey64B               "\<HLGrey64B\>"
syn match HLGray65B               "\<HLGray65B\>"
syn match HLGrey65B               "\<HLGrey65B\>"
syn match HLGray66B               "\<HLGray66B\>"
syn match HLGrey66B               "\<HLGrey66B\>"
syn match HLGray67B               "\<HLGray67B\>"
syn match HLGrey67B               "\<HLGrey67B\>"
syn match HLGray68B               "\<HLGray68B\>"
syn match HLGrey68B               "\<HLGrey68B\>"
syn match HLGray69B               "\<HLGray69B\>"
syn match HLGrey69B               "\<HLGrey69B\>"
syn match HLGray70B               "\<HLGray70B\>"
syn match HLGrey70B               "\<HLGrey70B\>"
syn match HLGray71B               "\<HLGray71B\>"
syn match HLGrey71B               "\<HLGrey71B\>"
syn match HLGray72B               "\<HLGray72B\>"
syn match HLGrey72B               "\<HLGrey72B\>"
syn match HLGray73B               "\<HLGray73B\>"
syn match HLGrey73B               "\<HLGrey73B\>"
syn match HLGray74B               "\<HLGray74B\>"
syn match HLGrey74B               "\<HLGrey74B\>"
syn match HLGray75B               "\<HLGray75B\>"
syn match HLGrey75B               "\<HLGrey75B\>"
syn match HLGray76B               "\<HLGray76B\>"
syn match HLGrey76B               "\<HLGrey76B\>"
syn match HLGray77B               "\<HLGray77B\>"
syn match HLGrey77B               "\<HLGrey77B\>"
syn match HLGray78B               "\<HLGray78B\>"
syn match HLGrey78B               "\<HLGrey78B\>"
syn match HLGray79B               "\<HLGray79B\>"
syn match HLGrey79B               "\<HLGrey79B\>"
syn match HLGray80B               "\<HLGray80B\>"
syn match HLGrey80B               "\<HLGrey80B\>"
syn match HLGray81B               "\<HLGray81B\>"
syn match HLGrey81B               "\<HLGrey81B\>"
syn match HLGray82B               "\<HLGray82B\>"
syn match HLGrey82B               "\<HLGrey82B\>"
syn match HLGray83B               "\<HLGray83B\>"
syn match HLGrey83B               "\<HLGrey83B\>"
syn match HLGray84B               "\<HLGray84B\>"
syn match HLGrey84B               "\<HLGrey84B\>"
syn match HLGray85B               "\<HLGray85B\>"
syn match HLGrey85B               "\<HLGrey85B\>"
syn match HLGray86B               "\<HLGray86B\>"
syn match HLGrey86B               "\<HLGrey86B\>"
syn match HLGray87B               "\<HLGray87B\>"
syn match HLGrey87B               "\<HLGrey87B\>"
syn match HLGray88B               "\<HLGray88B\>"
syn match HLGrey88B               "\<HLGrey88B\>"
syn match HLGray89B               "\<HLGray89B\>"
syn match HLGrey89B               "\<HLGrey89B\>"
syn match HLGray90B               "\<HLGray90B\>"
syn match HLGrey90B               "\<HLGrey90B\>"
syn match HLGray91B               "\<HLGray91B\>"
syn match HLGrey91B               "\<HLGrey91B\>"
syn match HLGray92B               "\<HLGray92B\>"
syn match HLGrey92B               "\<HLGrey92B\>"
syn match HLGray93B               "\<HLGray93B\>"
syn match HLGrey93B               "\<HLGrey93B\>"
syn match HLGray94B               "\<HLGray94B\>"
syn match HLGrey94B               "\<HLGrey94B\>"
syn match HLGray95B               "\<HLGray95B\>"
syn match HLGrey95B               "\<HLGrey95B\>"
syn match HLGray96B               "\<HLGray96B\>"
syn match HLGrey96B               "\<HLGrey96B\>"
syn match HLGray97B               "\<HLGray97B\>"
syn match HLGrey97B               "\<HLGrey97B\>"
syn match HLGray98B               "\<HLGray98B\>"
syn match HLGrey98B               "\<HLGrey98B\>"
syn match HLGray99B               "\<HLGray99B\>"
syn match HLGrey99B               "\<HLGrey99B\>"
syn match HLGray100B              "\<HLGray100B\>"
syn match HLGrey100B              "\<HLGrey100B\>"
syn match HLDarkgreyB             "\<HLDarkgreyB\>"
syn match HLDarkgrayB             "\<HLDarkgrayB\>"
syn match HLDarkblueB             "\<HLDarkblueB\>"
syn match HLDarkcyanB             "\<HLDarkcyanB\>"
syn match HLDarkmagentaB          "\<HLDarkmagentaB\>"
syn match HLDarkredB              "\<HLDarkredB\>"
syn match HLLightgreenB           "\<HLLightgreenB\>"
syn match HLCrimsonB              "\<HLCrimsonB\>"
syn match HLIndigoB               "\<HLIndigoB\>"
syn match HLOliveB                "\<HLOliveB\>"
syn match HLRebeccapurpleB        "\<HLRebeccapurpleB\>"
syn match HLSilverB               "\<HLSilverB\>"
syn match HLTealB                 "\<HLTealB\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Bold and underline colors
syn match HLSnowBU                 "\<HLSnowBU\>"
syn match HLGhostwhiteBU           "\<HLGhostwhiteBU\>"
syn match HLWhitesmokeBU           "\<HLWhitesmokeBU\>"
syn match HLGainsboroBU            "\<HLGainsboroBU\>"
syn match HLFloralwhiteBU          "\<HLFloralwhiteBU\>"
syn match HLOldlaceBU              "\<HLOldlaceBU\>"
syn match HLLinenBU                "\<HLLinenBU\>"
syn match HLAntiquewhiteBU         "\<HLAntiquewhiteBU\>"
syn match HLPapayawhipBU           "\<HLPapayawhipBU\>"
syn match HLBlanchedalmondBU       "\<HLBlanchedalmondBU\>"
syn match HLBisqueBU               "\<HLBisqueBU\>"
syn match HLPeachpuffBU            "\<HLPeachpuffBU\>"
syn match HLNavajowhiteBU          "\<HLNavajowhiteBU\>"
syn match HLMoccasinBU             "\<HLMoccasinBU\>"
syn match HLCornsilkBU             "\<HLCornsilkBU\>"
syn match HLIvoryBU                "\<HLIvoryBU\>"
syn match HLLemonchiffonBU         "\<HLLemonchiffonBU\>"
syn match HLSeashellBU             "\<HLSeashellBU\>"
syn match HLHoneydewBU             "\<HLHoneydewBU\>"
syn match HLMintcreamBU            "\<HLMintcreamBU\>"
syn match HLAzureBU                "\<HLAzureBU\>"
syn match HLAliceblueBU            "\<HLAliceblueBU\>"
syn match HLLavenderBU             "\<HLLavenderBU\>"
syn match HLLavenderblushBU        "\<HLLavenderblushBU\>"
syn match HLMistyroseBU            "\<HLMistyroseBU\>"
syn match HLWhiteBU                "\<HLWhiteBU\>"
syn match HLBlackBU                "\<HLBlackBU\>"
syn match HLDarkslategrayBU        "\<HLDarkslategrayBU\>"
syn match HLDarkslategreyBU        "\<HLDarkslategreyBU\>"
syn match HLDimgrayBU              "\<HLDimgrayBU\>"
syn match HLDimgreyBU              "\<HLDimgreyBU\>"
syn match HLSlategrayBU            "\<HLSlategrayBU\>"
syn match HLSlategreyBU            "\<HLSlategreyBU\>"
syn match HLLightslategrayBU       "\<HLLightslategrayBU\>"
syn match HLLightslategreyBU       "\<HLLightslategreyBU\>"
syn match HLGrayBU                 "\<HLGrayBU\>"
syn match HLGreyBU                 "\<HLGreyBU\>"
syn match HLX11grayBU              "\<HLX11grayBU\>"
syn match HLX11greyBU              "\<HLX11greyBU\>"
syn match HLWebgrayBU              "\<HLWebgrayBU\>"
syn match HLWebgreyBU              "\<HLWebgreyBU\>"
syn match HLLightgreyBU            "\<HLLightgreyBU\>"
syn match HLLightgrayBU            "\<HLLightgrayBU\>"
syn match HLMidnightblueBU         "\<HLMidnightblueBU\>"
syn match HLNavyBU                 "\<HLNavyBU\>"
syn match HLNavyblueBU             "\<HLNavyblueBU\>"
syn match HLCornflowerblueBU       "\<HLCornflowerblueBU\>"
syn match HLDarkslateblueBU        "\<HLDarkslateblueBU\>"
syn match HLSlateblueBU            "\<HLSlateblueBU\>"
syn match HLMediumslateblueBU      "\<HLMediumslateblueBU\>"
syn match HLLightslateblueBU       "\<HLLightslateblueBU\>"
syn match HLMediumblueBU           "\<HLMediumblueBU\>"
syn match HLRoyalblueBU            "\<HLRoyalblueBU\>"
syn match HLBlueBU                 "\<HLBlueBU\>"
syn match HLDodgerblueBU           "\<HLDodgerblueBU\>"
syn match HLDeepskyblueBU          "\<HLDeepskyblueBU\>"
syn match HLSkyblueBU              "\<HLSkyblueBU\>"
syn match HLLightskyblueBU         "\<HLLightskyblueBU\>"
syn match HLSteelblueBU            "\<HLSteelblueBU\>"
syn match HLLightsteelblueBU       "\<HLLightsteelblueBU\>"
syn match HLLightblueBU            "\<HLLightblueBU\>"
syn match HLPowderblueBU           "\<HLPowderblueBU\>"
syn match HLPaleturquoiseBU        "\<HLPaleturquoiseBU\>"
syn match HLDarkturquoiseBU        "\<HLDarkturquoiseBU\>"
syn match HLMediumturquoiseBU      "\<HLMediumturquoiseBU\>"
syn match HLTurquoiseBU            "\<HLTurquoiseBU\>"
syn match HLCyanBU                 "\<HLCyanBU\>"
syn match HLAquaBU                 "\<HLAquaBU\>"
syn match HLLightcyanBU            "\<HLLightcyanBU\>"
syn match HLCadetblueBU            "\<HLCadetblueBU\>"
syn match HLMediumaquamarineBU     "\<HLMediumaquamarineBU\>"
syn match HLAquamarineBU           "\<HLAquamarineBU\>"
syn match HLDarkgreenBU            "\<HLDarkgreenBU\>"
syn match HLDarkolivegreenBU       "\<HLDarkolivegreenBU\>"
syn match HLDarkseagreenBU         "\<HLDarkseagreenBU\>"
syn match HLSeagreenBU             "\<HLSeagreenBU\>"
syn match HLMediumseagreenBU       "\<HLMediumseagreenBU\>"
syn match HLLightseagreenBU        "\<HLLightseagreenBU\>"
syn match HLPalegreenBU            "\<HLPalegreenBU\>"
syn match HLSpringgreenBU          "\<HLSpringgreenBU\>"
syn match HLLawngreenBU            "\<HLLawngreenBU\>"
syn match HLGreenBU                "\<HLGreenBU\>"
syn match HLLimeBU                 "\<HLLimeBU\>"
syn match HLX11greenBU             "\<HLX11greenBU\>"
syn match HLWebgreenBU             "\<HLWebgreenBU\>"
syn match HLChartreuseBU           "\<HLChartreuseBU\>"
syn match HLMediumspringgreenBU    "\<HLMediumspringgreenBU\>"
syn match HLGreenyellowBU          "\<HLGreenyellowBU\>"
syn match HLLimegreenBU            "\<HLLimegreenBU\>"
syn match HLYellowgreenBU          "\<HLYellowgreenBU\>"
syn match HLForestgreenBU          "\<HLForestgreenBU\>"
syn match HLOlivedrabBU            "\<HLOlivedrabBU\>"
syn match HLDarkkhakiBU            "\<HLDarkkhakiBU\>"
syn match HLKhakiBU                "\<HLKhakiBU\>"
syn match HLPalegoldenrodBU        "\<HLPalegoldenrodBU\>"
syn match HLLightgoldenrodyellowBU "\<HLLightgoldenrodyellowBU\>"
syn match HLLightyellowBU          "\<HLLightyellowBU\>"
syn match HLYellowBU               "\<HLYellowBU\>"
syn match HLGoldBU                 "\<HLGoldBU\>"
syn match HLLightgoldenrodBU       "\<HLLightgoldenrodBU\>"
syn match HLGoldenrodBU            "\<HLGoldenrodBU\>"
syn match HLDarkgoldenrodBU        "\<HLDarkgoldenrodBU\>"
syn match HLRosybrownBU            "\<HLRosybrownBU\>"
syn match HLIndianredBU            "\<HLIndianredBU\>"
syn match HLSaddlebrownBU          "\<HLSaddlebrownBU\>"
syn match HLSiennaBU               "\<HLSiennaBU\>"
syn match HLPeruBU                 "\<HLPeruBU\>"
syn match HLBurlywoodBU            "\<HLBurlywoodBU\>"
syn match HLBeigeBU                "\<HLBeigeBU\>"
syn match HLWheatBU                "\<HLWheatBU\>"
syn match HLSandybrownBU           "\<HLSandybrownBU\>"
syn match HLTanBU                  "\<HLTanBU\>"
syn match HLChocolateBU            "\<HLChocolateBU\>"
syn match HLFirebrickBU            "\<HLFirebrickBU\>"
syn match HLBrownBU                "\<HLBrownBU\>"
syn match HLDarksalmonBU           "\<HLDarksalmonBU\>"
syn match HLSalmonBU               "\<HLSalmonBU\>"
syn match HLLightsalmonBU          "\<HLLightsalmonBU\>"
syn match HLOrangeBU               "\<HLOrangeBU\>"
syn match HLDarkorangeBU           "\<HLDarkorangeBU\>"
syn match HLCoralBU                "\<HLCoralBU\>"
syn match HLLightcoralBU           "\<HLLightcoralBU\>"
syn match HLTomatoBU               "\<HLTomatoBU\>"
syn match HLOrangeredBU            "\<HLOrangeredBU\>"
syn match HLRedBU                  "\<HLRedBU\>"
syn match HLHotpinkBU              "\<HLHotpinkBU\>"
syn match HLDeeppinkBU             "\<HLDeeppinkBU\>"
syn match HLPinkBU                 "\<HLPinkBU\>"
syn match HLLightpinkBU            "\<HLLightpinkBU\>"
syn match HLPalevioletredBU        "\<HLPalevioletredBU\>"
syn match HLMaroonBU               "\<HLMaroonBU\>"
syn match HLX11maroonBU            "\<HLX11maroonBU\>"
syn match HLWebmaroonBU            "\<HLWebmaroonBU\>"
syn match HLMediumvioletredBU      "\<HLMediumvioletredBU\>"
syn match HLVioletredBU            "\<HLVioletredBU\>"
syn match HLMagentaBU              "\<HLMagentaBU\>"
syn match HLFuchsiaBU              "\<HLFuchsiaBU\>"
syn match HLVioletBU               "\<HLVioletBU\>"
syn match HLPlumBU                 "\<HLPlumBU\>"
syn match HLOrchidBU               "\<HLOrchidBU\>"
syn match HLMediumorchidBU         "\<HLMediumorchidBU\>"
syn match HLDarkorchidBU           "\<HLDarkorchidBU\>"
syn match HLDarkvioletBU           "\<HLDarkvioletBU\>"
syn match HLBluevioletBU           "\<HLBluevioletBU\>"
syn match HLPurpleBU               "\<HLPurpleBU\>"
syn match HLX11purpleBU            "\<HLX11purpleBU\>"
syn match HLWebpurpleBU            "\<HLWebpurpleBU\>"
syn match HLMediumpurpleBU         "\<HLMediumpurpleBU\>"
syn match HLThistleBU              "\<HLThistleBU\>"
syn match HLSnow1BU                "\<HLSnow1BU\>"
syn match HLSnow2BU                "\<HLSnow2BU\>"
syn match HLSnow3BU                "\<HLSnow3BU\>"
syn match HLSnow4BU                "\<HLSnow4BU\>"
syn match HLSeashell1BU            "\<HLSeashell1BU\>"
syn match HLSeashell2BU            "\<HLSeashell2BU\>"
syn match HLSeashell3BU            "\<HLSeashell3BU\>"
syn match HLSeashell4BU            "\<HLSeashell4BU\>"
syn match HLAntiquewhite1BU        "\<HLAntiquewhite1BU\>"
syn match HLAntiquewhite2BU        "\<HLAntiquewhite2BU\>"
syn match HLAntiquewhite3BU        "\<HLAntiquewhite3BU\>"
syn match HLAntiquewhite4BU        "\<HLAntiquewhite4BU\>"
syn match HLBisque1BU              "\<HLBisque1BU\>"
syn match HLBisque2BU              "\<HLBisque2BU\>"
syn match HLBisque3BU              "\<HLBisque3BU\>"
syn match HLBisque4BU              "\<HLBisque4BU\>"
syn match HLPeachpuff1BU           "\<HLPeachpuff1BU\>"
syn match HLPeachpuff2BU           "\<HLPeachpuff2BU\>"
syn match HLPeachpuff3BU           "\<HLPeachpuff3BU\>"
syn match HLPeachpuff4BU           "\<HLPeachpuff4BU\>"
syn match HLNavajowhite1BU         "\<HLNavajowhite1BU\>"
syn match HLNavajowhite2BU         "\<HLNavajowhite2BU\>"
syn match HLNavajowhite3BU         "\<HLNavajowhite3BU\>"
syn match HLNavajowhite4BU         "\<HLNavajowhite4BU\>"
syn match HLLemonchiffon1BU        "\<HLLemonchiffon1BU\>"
syn match HLLemonchiffon2BU        "\<HLLemonchiffon2BU\>"
syn match HLLemonchiffon3BU        "\<HLLemonchiffon3BU\>"
syn match HLLemonchiffon4BU        "\<HLLemonchiffon4BU\>"
syn match HLCornsilk1BU            "\<HLCornsilk1BU\>"
syn match HLCornsilk2BU            "\<HLCornsilk2BU\>"
syn match HLCornsilk3BU            "\<HLCornsilk3BU\>"
syn match HLCornsilk4BU            "\<HLCornsilk4BU\>"
syn match HLIvory1BU               "\<HLIvory1BU\>"
syn match HLIvory2BU               "\<HLIvory2BU\>"
syn match HLIvory3BU               "\<HLIvory3BU\>"
syn match HLIvory4BU               "\<HLIvory4BU\>"
syn match HLHoneydew1BU            "\<HLHoneydew1BU\>"
syn match HLHoneydew2BU            "\<HLHoneydew2BU\>"
syn match HLHoneydew3BU            "\<HLHoneydew3BU\>"
syn match HLHoneydew4BU            "\<HLHoneydew4BU\>"
syn match HLLavenderblush1BU       "\<HLLavenderblush1BU\>"
syn match HLLavenderblush2BU       "\<HLLavenderblush2BU\>"
syn match HLLavenderblush3BU       "\<HLLavenderblush3BU\>"
syn match HLLavenderblush4BU       "\<HLLavenderblush4BU\>"
syn match HLMistyrose1BU           "\<HLMistyrose1BU\>"
syn match HLMistyrose2BU           "\<HLMistyrose2BU\>"
syn match HLMistyrose3BU           "\<HLMistyrose3BU\>"
syn match HLMistyrose4BU           "\<HLMistyrose4BU\>"
syn match HLAzure1BU               "\<HLAzure1BU\>"
syn match HLAzure2BU               "\<HLAzure2BU\>"
syn match HLAzure3BU               "\<HLAzure3BU\>"
syn match HLAzure4BU               "\<HLAzure4BU\>"
syn match HLSlateblue1BU           "\<HLSlateblue1BU\>"
syn match HLSlateblue2BU           "\<HLSlateblue2BU\>"
syn match HLSlateblue3BU           "\<HLSlateblue3BU\>"
syn match HLSlateblue4BU           "\<HLSlateblue4BU\>"
syn match HLRoyalblue1BU           "\<HLRoyalblue1BU\>"
syn match HLRoyalblue2BU           "\<HLRoyalblue2BU\>"
syn match HLRoyalblue3BU           "\<HLRoyalblue3BU\>"
syn match HLRoyalblue4BU           "\<HLRoyalblue4BU\>"
syn match HLBlue1BU                "\<HLBlue1BU\>"
syn match HLBlue2BU                "\<HLBlue2BU\>"
syn match HLBlue3BU                "\<HLBlue3BU\>"
syn match HLBlue4BU                "\<HLBlue4BU\>"
syn match HLDodgerblue1BU          "\<HLDodgerblue1BU\>"
syn match HLDodgerblue2BU          "\<HLDodgerblue2BU\>"
syn match HLDodgerblue3BU          "\<HLDodgerblue3BU\>"
syn match HLDodgerblue4BU          "\<HLDodgerblue4BU\>"
syn match HLSteelblue1BU           "\<HLSteelblue1BU\>"
syn match HLSteelblue2BU           "\<HLSteelblue2BU\>"
syn match HLSteelblue3BU           "\<HLSteelblue3BU\>"
syn match HLSteelblue4BU           "\<HLSteelblue4BU\>"
syn match HLDeepskyblue1BU         "\<HLDeepskyblue1BU\>"
syn match HLDeepskyblue2BU         "\<HLDeepskyblue2BU\>"
syn match HLDeepskyblue3BU         "\<HLDeepskyblue3BU\>"
syn match HLDeepskyblue4BU         "\<HLDeepskyblue4BU\>"
syn match HLSkyblue1BU             "\<HLSkyblue1BU\>"
syn match HLSkyblue2BU             "\<HLSkyblue2BU\>"
syn match HLSkyblue3BU             "\<HLSkyblue3BU\>"
syn match HLSkyblue4BU             "\<HLSkyblue4BU\>"
syn match HLLightskyblue1BU        "\<HLLightskyblue1BU\>"
syn match HLLightskyblue2BU        "\<HLLightskyblue2BU\>"
syn match HLLightskyblue3BU        "\<HLLightskyblue3BU\>"
syn match HLLightskyblue4BU        "\<HLLightskyblue4BU\>"
syn match HLSlategray1BU           "\<HLSlategray1BU\>"
syn match HLSlategray2BU           "\<HLSlategray2BU\>"
syn match HLSlategray3BU           "\<HLSlategray3BU\>"
syn match HLSlategray4BU           "\<HLSlategray4BU\>"
syn match HLLightsteelblue1BU      "\<HLLightsteelblue1BU\>"
syn match HLLightsteelblue2BU      "\<HLLightsteelblue2BU\>"
syn match HLLightsteelblue3BU      "\<HLLightsteelblue3BU\>"
syn match HLLightsteelblue4BU      "\<HLLightsteelblue4BU\>"
syn match HLLightblue1BU           "\<HLLightblue1BU\>"
syn match HLLightblue2BU           "\<HLLightblue2BU\>"
syn match HLLightblue3BU           "\<HLLightblue3BU\>"
syn match HLLightblue4BU           "\<HLLightblue4BU\>"
syn match HLLightcyan1BU           "\<HLLightcyan1BU\>"
syn match HLLightcyan2BU           "\<HLLightcyan2BU\>"
syn match HLLightcyan3BU           "\<HLLightcyan3BU\>"
syn match HLLightcyan4BU           "\<HLLightcyan4BU\>"
syn match HLPaleturquoise1BU       "\<HLPaleturquoise1BU\>"
syn match HLPaleturquoise2BU       "\<HLPaleturquoise2BU\>"
syn match HLPaleturquoise3BU       "\<HLPaleturquoise3BU\>"
syn match HLPaleturquoise4BU       "\<HLPaleturquoise4BU\>"
syn match HLCadetblue1BU           "\<HLCadetblue1BU\>"
syn match HLCadetblue2BU           "\<HLCadetblue2BU\>"
syn match HLCadetblue3BU           "\<HLCadetblue3BU\>"
syn match HLCadetblue4BU           "\<HLCadetblue4BU\>"
syn match HLTurquoise1BU           "\<HLTurquoise1BU\>"
syn match HLTurquoise2BU           "\<HLTurquoise2BU\>"
syn match HLTurquoise3BU           "\<HLTurquoise3BU\>"
syn match HLTurquoise4BU           "\<HLTurquoise4BU\>"
syn match HLCyan1BU                "\<HLCyan1BU\>"
syn match HLCyan2BU                "\<HLCyan2BU\>"
syn match HLCyan3BU                "\<HLCyan3BU\>"
syn match HLCyan4BU                "\<HLCyan4BU\>"
syn match HLDarkslategray1BU       "\<HLDarkslategray1BU\>"
syn match HLDarkslategray2BU       "\<HLDarkslategray2BU\>"
syn match HLDarkslategray3BU       "\<HLDarkslategray3BU\>"
syn match HLDarkslategray4BU       "\<HLDarkslategray4BU\>"
syn match HLAquamarine1BU          "\<HLAquamarine1BU\>"
syn match HLAquamarine2BU          "\<HLAquamarine2BU\>"
syn match HLAquamarine3BU          "\<HLAquamarine3BU\>"
syn match HLAquamarine4BU          "\<HLAquamarine4BU\>"
syn match HLDarkseagreen1BU        "\<HLDarkseagreen1BU\>"
syn match HLDarkseagreen2BU        "\<HLDarkseagreen2BU\>"
syn match HLDarkseagreen3BU        "\<HLDarkseagreen3BU\>"
syn match HLDarkseagreen4BU        "\<HLDarkseagreen4BU\>"
syn match HLSeagreen1BU            "\<HLSeagreen1BU\>"
syn match HLSeagreen2BU            "\<HLSeagreen2BU\>"
syn match HLSeagreen3BU            "\<HLSeagreen3BU\>"
syn match HLSeagreen4BU            "\<HLSeagreen4BU\>"
syn match HLPalegreen1BU           "\<HLPalegreen1BU\>"
syn match HLPalegreen2BU           "\<HLPalegreen2BU\>"
syn match HLPalegreen3BU           "\<HLPalegreen3BU\>"
syn match HLPalegreen4BU           "\<HLPalegreen4BU\>"
syn match HLSpringgreen1BU         "\<HLSpringgreen1BU\>"
syn match HLSpringgreen2BU         "\<HLSpringgreen2BU\>"
syn match HLSpringgreen3BU         "\<HLSpringgreen3BU\>"
syn match HLSpringgreen4BU         "\<HLSpringgreen4BU\>"
syn match HLGreen1BU               "\<HLGreen1BU\>"
syn match HLGreen2BU               "\<HLGreen2BU\>"
syn match HLGreen3BU               "\<HLGreen3BU\>"
syn match HLGreen4BU               "\<HLGreen4BU\>"
syn match HLChartreuse1BU          "\<HLChartreuse1BU\>"
syn match HLChartreuse2BU          "\<HLChartreuse2BU\>"
syn match HLChartreuse3BU          "\<HLChartreuse3BU\>"
syn match HLChartreuse4BU          "\<HLChartreuse4BU\>"
syn match HLOlivedrab1BU           "\<HLOlivedrab1BU\>"
syn match HLOlivedrab2BU           "\<HLOlivedrab2BU\>"
syn match HLOlivedrab3BU           "\<HLOlivedrab3BU\>"
syn match HLOlivedrab4BU           "\<HLOlivedrab4BU\>"
syn match HLDarkolivegreen1BU      "\<HLDarkolivegreen1BU\>"
syn match HLDarkolivegreen2BU      "\<HLDarkolivegreen2BU\>"
syn match HLDarkolivegreen3BU      "\<HLDarkolivegreen3BU\>"
syn match HLDarkolivegreen4BU      "\<HLDarkolivegreen4BU\>"
syn match HLKhaki1BU               "\<HLKhaki1BU\>"
syn match HLKhaki2BU               "\<HLKhaki2BU\>"
syn match HLKhaki3BU               "\<HLKhaki3BU\>"
syn match HLKhaki4BU               "\<HLKhaki4BU\>"
syn match HLLightgoldenrod1BU      "\<HLLightgoldenrod1BU\>"
syn match HLLightgoldenrod2BU      "\<HLLightgoldenrod2BU\>"
syn match HLLightgoldenrod3BU      "\<HLLightgoldenrod3BU\>"
syn match HLLightgoldenrod4BU      "\<HLLightgoldenrod4BU\>"
syn match HLLightyellow1BU         "\<HLLightyellow1BU\>"
syn match HLLightyellow2BU         "\<HLLightyellow2BU\>"
syn match HLLightyellow3BU         "\<HLLightyellow3BU\>"
syn match HLLightyellow4BU         "\<HLLightyellow4BU\>"
syn match HLYellow1BU              "\<HLYellow1BU\>"
syn match HLYellow2BU              "\<HLYellow2BU\>"
syn match HLYellow3BU              "\<HLYellow3BU\>"
syn match HLYellow4BU              "\<HLYellow4BU\>"
syn match HLDarkyellowBU           "\<HLDarkyellowBU\>"
syn match HLGold1BU                "\<HLGold1BU\>"
syn match HLGold2BU                "\<HLGold2BU\>"
syn match HLGold3BU                "\<HLGold3BU\>"
syn match HLGold4BU                "\<HLGold4BU\>"
syn match HLGoldenrod1BU           "\<HLGoldenrod1BU\>"
syn match HLGoldenrod2BU           "\<HLGoldenrod2BU\>"
syn match HLGoldenrod3BU           "\<HLGoldenrod3BU\>"
syn match HLGoldenrod4BU           "\<HLGoldenrod4BU\>"
syn match HLDarkgoldenrod1BU       "\<HLDarkgoldenrod1BU\>"
syn match HLDarkgoldenrod2BU       "\<HLDarkgoldenrod2BU\>"
syn match HLDarkgoldenrod3BU       "\<HLDarkgoldenrod3BU\>"
syn match HLDarkgoldenrod4BU       "\<HLDarkgoldenrod4BU\>"
syn match HLRosybrown1BU           "\<HLRosybrown1BU\>"
syn match HLRosybrown2BU           "\<HLRosybrown2BU\>"
syn match HLRosybrown3BU           "\<HLRosybrown3BU\>"
syn match HLRosybrown4BU           "\<HLRosybrown4BU\>"
syn match HLIndianred1BU           "\<HLIndianred1BU\>"
syn match HLIndianred2BU           "\<HLIndianred2BU\>"
syn match HLIndianred3BU           "\<HLIndianred3BU\>"
syn match HLIndianred4BU           "\<HLIndianred4BU\>"
syn match HLSienna1BU              "\<HLSienna1BU\>"
syn match HLSienna2BU              "\<HLSienna2BU\>"
syn match HLSienna3BU              "\<HLSienna3BU\>"
syn match HLSienna4BU              "\<HLSienna4BU\>"
syn match HLBurlywood1BU           "\<HLBurlywood1BU\>"
syn match HLBurlywood2BU           "\<HLBurlywood2BU\>"
syn match HLBurlywood3BU           "\<HLBurlywood3BU\>"
syn match HLBurlywood4BU           "\<HLBurlywood4BU\>"
syn match HLWheat1BU               "\<HLWheat1BU\>"
syn match HLWheat2BU               "\<HLWheat2BU\>"
syn match HLWheat3BU               "\<HLWheat3BU\>"
syn match HLWheat4BU               "\<HLWheat4BU\>"
syn match HLTan1BU                 "\<HLTan1BU\>"
syn match HLTan2BU                 "\<HLTan2BU\>"
syn match HLTan3BU                 "\<HLTan3BU\>"
syn match HLTan4BU                 "\<HLTan4BU\>"
syn match HLChocolate1BU           "\<HLChocolate1BU\>"
syn match HLChocolate2BU           "\<HLChocolate2BU\>"
syn match HLChocolate3BU           "\<HLChocolate3BU\>"
syn match HLChocolate4BU           "\<HLChocolate4BU\>"
syn match HLFirebrick1BU           "\<HLFirebrick1BU\>"
syn match HLFirebrick2BU           "\<HLFirebrick2BU\>"
syn match HLFirebrick3BU           "\<HLFirebrick3BU\>"
syn match HLFirebrick4BU           "\<HLFirebrick4BU\>"
syn match HLBrown1BU               "\<HLBrown1BU\>"
syn match HLBrown2BU               "\<HLBrown2BU\>"
syn match HLBrown3BU               "\<HLBrown3BU\>"
syn match HLBrown4BU               "\<HLBrown4BU\>"
syn match HLSalmon1BU              "\<HLSalmon1BU\>"
syn match HLSalmon2BU              "\<HLSalmon2BU\>"
syn match HLSalmon3BU              "\<HLSalmon3BU\>"
syn match HLSalmon4BU              "\<HLSalmon4BU\>"
syn match HLLightsalmon1BU         "\<HLLightsalmon1BU\>"
syn match HLLightsalmon2BU         "\<HLLightsalmon2BU\>"
syn match HLLightsalmon3BU         "\<HLLightsalmon3BU\>"
syn match HLLightsalmon4BU         "\<HLLightsalmon4BU\>"
syn match HLOrange1BU              "\<HLOrange1BU\>"
syn match HLOrange2BU              "\<HLOrange2BU\>"
syn match HLOrange3BU              "\<HLOrange3BU\>"
syn match HLOrange4BU              "\<HLOrange4BU\>"
syn match HLDarkorange1BU          "\<HLDarkorange1BU\>"
syn match HLDarkorange2BU          "\<HLDarkorange2BU\>"
syn match HLDarkorange3BU          "\<HLDarkorange3BU\>"
syn match HLDarkorange4BU          "\<HLDarkorange4BU\>"
syn match HLCoral1BU               "\<HLCoral1BU\>"
syn match HLCoral2BU               "\<HLCoral2BU\>"
syn match HLCoral3BU               "\<HLCoral3BU\>"
syn match HLCoral4BU               "\<HLCoral4BU\>"
syn match HLTomato1BU              "\<HLTomato1BU\>"
syn match HLTomato2BU              "\<HLTomato2BU\>"
syn match HLTomato3BU              "\<HLTomato3BU\>"
syn match HLTomato4BU              "\<HLTomato4BU\>"
syn match HLOrangered1BU           "\<HLOrangered1BU\>"
syn match HLOrangered2BU           "\<HLOrangered2BU\>"
syn match HLOrangered3BU           "\<HLOrangered3BU\>"
syn match HLOrangered4BU           "\<HLOrangered4BU\>"
syn match HLLightredBU             "\<HLLightredBU\>"
syn match HLRed1BU                 "\<HLRed1BU\>"
syn match HLRed2BU                 "\<HLRed2BU\>"
syn match HLRed3BU                 "\<HLRed3BU\>"
syn match HLRed4BU                 "\<HLRed4BU\>"
syn match HLDeeppink1BU            "\<HLDeeppink1BU\>"
syn match HLDeeppink2BU            "\<HLDeeppink2BU\>"
syn match HLDeeppink3BU            "\<HLDeeppink3BU\>"
syn match HLDeeppink4BU            "\<HLDeeppink4BU\>"
syn match HLHotpink1BU             "\<HLHotpink1BU\>"
syn match HLHotpink2BU             "\<HLHotpink2BU\>"
syn match HLHotpink3BU             "\<HLHotpink3BU\>"
syn match HLHotpink4BU             "\<HLHotpink4BU\>"
syn match HLPink1BU                "\<HLPink1BU\>"
syn match HLPink2BU                "\<HLPink2BU\>"
syn match HLPink3BU                "\<HLPink3BU\>"
syn match HLPink4BU                "\<HLPink4BU\>"
syn match HLLightpink1BU           "\<HLLightpink1BU\>"
syn match HLLightpink2BU           "\<HLLightpink2BU\>"
syn match HLLightpink3BU           "\<HLLightpink3BU\>"
syn match HLLightpink4BU           "\<HLLightpink4BU\>"
syn match HLPalevioletred1BU       "\<HLPalevioletred1BU\>"
syn match HLPalevioletred2BU       "\<HLPalevioletred2BU\>"
syn match HLPalevioletred3BU       "\<HLPalevioletred3BU\>"
syn match HLPalevioletred4BU       "\<HLPalevioletred4BU\>"
syn match HLMaroon1BU              "\<HLMaroon1BU\>"
syn match HLMaroon2BU              "\<HLMaroon2BU\>"
syn match HLMaroon3BU              "\<HLMaroon3BU\>"
syn match HLMaroon4BU              "\<HLMaroon4BU\>"
syn match HLVioletred1BU           "\<HLVioletred1BU\>"
syn match HLVioletred2BU           "\<HLVioletred2BU\>"
syn match HLVioletred3BU           "\<HLVioletred3BU\>"
syn match HLVioletred4BU           "\<HLVioletred4BU\>"
syn match HLLightmagentaBU         "\<HLLightmagentaBU\>"
syn match HLMagenta1BU             "\<HLMagenta1BU\>"
syn match HLMagenta2BU             "\<HLMagenta2BU\>"
syn match HLMagenta3BU             "\<HLMagenta3BU\>"
syn match HLMagenta4BU             "\<HLMagenta4BU\>"
syn match HLOrchid1BU              "\<HLOrchid1BU\>"
syn match HLOrchid2BU              "\<HLOrchid2BU\>"
syn match HLOrchid3BU              "\<HLOrchid3BU\>"
syn match HLOrchid4BU              "\<HLOrchid4BU\>"
syn match HLPlum1BU                "\<HLPlum1BU\>"
syn match HLPlum2BU                "\<HLPlum2BU\>"
syn match HLPlum3BU                "\<HLPlum3BU\>"
syn match HLPlum4BU                "\<HLPlum4BU\>"
syn match HLMediumorchid1BU        "\<HLMediumorchid1BU\>"
syn match HLMediumorchid2BU        "\<HLMediumorchid2BU\>"
syn match HLMediumorchid3BU        "\<HLMediumorchid3BU\>"
syn match HLMediumorchid4BU        "\<HLMediumorchid4BU\>"
syn match HLDarkorchid1BU          "\<HLDarkorchid1BU\>"
syn match HLDarkorchid2BU          "\<HLDarkorchid2BU\>"
syn match HLDarkorchid3BU          "\<HLDarkorchid3BU\>"
syn match HLDarkorchid4BU          "\<HLDarkorchid4BU\>"
syn match HLPurple1BU              "\<HLPurple1BU\>"
syn match HLPurple2BU              "\<HLPurple2BU\>"
syn match HLPurple3BU              "\<HLPurple3BU\>"
syn match HLPurple4BU              "\<HLPurple4BU\>"
syn match HLMediumpurple1BU        "\<HLMediumpurple1BU\>"
syn match HLMediumpurple2BU        "\<HLMediumpurple2BU\>"
syn match HLMediumpurple3BU        "\<HLMediumpurple3BU\>"
syn match HLMediumpurple4BU        "\<HLMediumpurple4BU\>"
syn match HLThistle1BU             "\<HLThistle1BU\>"
syn match HLThistle2BU             "\<HLThistle2BU\>"
syn match HLThistle3BU             "\<HLThistle3BU\>"
syn match HLThistle4BU             "\<HLThistle4BU\>"
syn match HLGray0BU                "\<HLGray0BU\>"
syn match HLGrey0BU                "\<HLGrey0BU\>"
syn match HLGray1BU                "\<HLGray1BU\>"
syn match HLGrey1BU                "\<HLGrey1BU\>"
syn match HLGray2BU                "\<HLGray2BU\>"
syn match HLGrey2BU                "\<HLGrey2BU\>"
syn match HLGray3BU                "\<HLGray3BU\>"
syn match HLGrey3BU                "\<HLGrey3BU\>"
syn match HLGray4BU                "\<HLGray4BU\>"
syn match HLGrey4BU                "\<HLGrey4BU\>"
syn match HLGray5BU                "\<HLGray5BU\>"
syn match HLGrey5BU                "\<HLGrey5BU\>"
syn match HLGray6BU                "\<HLGray6BU\>"
syn match HLGrey6BU                "\<HLGrey6BU\>"
syn match HLGray7BU                "\<HLGray7BU\>"
syn match HLGrey7BU                "\<HLGrey7BU\>"
syn match HLGray8BU                "\<HLGray8BU\>"
syn match HLGrey8BU                "\<HLGrey8BU\>"
syn match HLGray9BU                "\<HLGray9BU\>"
syn match HLGrey9BU                "\<HLGrey9BU\>"
syn match HLGray10BU               "\<HLGray10BU\>"
syn match HLGrey10BU               "\<HLGrey10BU\>"
syn match HLGray11BU               "\<HLGray11BU\>"
syn match HLGrey11BU               "\<HLGrey11BU\>"
syn match HLGray12BU               "\<HLGray12BU\>"
syn match HLGrey12BU               "\<HLGrey12BU\>"
syn match HLGray13BU               "\<HLGray13BU\>"
syn match HLGrey13BU               "\<HLGrey13BU\>"
syn match HLGray14BU               "\<HLGray14BU\>"
syn match HLGrey14BU               "\<HLGrey14BU\>"
syn match HLGray15BU               "\<HLGray15BU\>"
syn match HLGrey15BU               "\<HLGrey15BU\>"
syn match HLGray16BU               "\<HLGray16BU\>"
syn match HLGrey16BU               "\<HLGrey16BU\>"
syn match HLGray17BU               "\<HLGray17BU\>"
syn match HLGrey17BU               "\<HLGrey17BU\>"
syn match HLGray18BU               "\<HLGray18BU\>"
syn match HLGrey18BU               "\<HLGrey18BU\>"
syn match HLGray19BU               "\<HLGray19BU\>"
syn match HLGrey19BU               "\<HLGrey19BU\>"
syn match HLGray20BU               "\<HLGray20BU\>"
syn match HLGrey20BU               "\<HLGrey20BU\>"
syn match HLGray21BU               "\<HLGray21BU\>"
syn match HLGrey21BU               "\<HLGrey21BU\>"
syn match HLGray22BU               "\<HLGray22BU\>"
syn match HLGrey22BU               "\<HLGrey22BU\>"
syn match HLGray23BU               "\<HLGray23BU\>"
syn match HLGrey23BU               "\<HLGrey23BU\>"
syn match HLGray24BU               "\<HLGray24BU\>"
syn match HLGrey24BU               "\<HLGrey24BU\>"
syn match HLGray25BU               "\<HLGray25BU\>"
syn match HLGrey25BU               "\<HLGrey25BU\>"
syn match HLGray26BU               "\<HLGray26BU\>"
syn match HLGrey26BU               "\<HLGrey26BU\>"
syn match HLGray27BU               "\<HLGray27BU\>"
syn match HLGrey27BU               "\<HLGrey27BU\>"
syn match HLGray28BU               "\<HLGray28BU\>"
syn match HLGrey28BU               "\<HLGrey28BU\>"
syn match HLGray29BU               "\<HLGray29BU\>"
syn match HLGrey29BU               "\<HLGrey29BU\>"
syn match HLGray30BU               "\<HLGray30BU\>"
syn match HLGrey30BU               "\<HLGrey30BU\>"
syn match HLGray31BU               "\<HLGray31BU\>"
syn match HLGrey31BU               "\<HLGrey31BU\>"
syn match HLGray32BU               "\<HLGray32BU\>"
syn match HLGrey32BU               "\<HLGrey32BU\>"
syn match HLGray33BU               "\<HLGray33BU\>"
syn match HLGrey33BU               "\<HLGrey33BU\>"
syn match HLGray34BU               "\<HLGray34BU\>"
syn match HLGrey34BU               "\<HLGrey34BU\>"
syn match HLGray35BU               "\<HLGray35BU\>"
syn match HLGrey35BU               "\<HLGrey35BU\>"
syn match HLGray36BU               "\<HLGray36BU\>"
syn match HLGrey36BU               "\<HLGrey36BU\>"
syn match HLGray37BU               "\<HLGray37BU\>"
syn match HLGrey37BU               "\<HLGrey37BU\>"
syn match HLGray38BU               "\<HLGray38BU\>"
syn match HLGrey38BU               "\<HLGrey38BU\>"
syn match HLGray39BU               "\<HLGray39BU\>"
syn match HLGrey39BU               "\<HLGrey39BU\>"
syn match HLGray40BU               "\<HLGray40BU\>"
syn match HLGrey40BU               "\<HLGrey40BU\>"
syn match HLGray41BU               "\<HLGray41BU\>"
syn match HLGrey41BU               "\<HLGrey41BU\>"
syn match HLGray42BU               "\<HLGray42BU\>"
syn match HLGrey42BU               "\<HLGrey42BU\>"
syn match HLGray43BU               "\<HLGray43BU\>"
syn match HLGrey43BU               "\<HLGrey43BU\>"
syn match HLGray44BU               "\<HLGray44BU\>"
syn match HLGrey44BU               "\<HLGrey44BU\>"
syn match HLGray45BU               "\<HLGray45BU\>"
syn match HLGrey45BU               "\<HLGrey45BU\>"
syn match HLGray46BU               "\<HLGray46BU\>"
syn match HLGrey46BU               "\<HLGrey46BU\>"
syn match HLGray47BU               "\<HLGray47BU\>"
syn match HLGrey47BU               "\<HLGrey47BU\>"
syn match HLGray48BU               "\<HLGray48BU\>"
syn match HLGrey48BU               "\<HLGrey48BU\>"
syn match HLGray49BU               "\<HLGray49BU\>"
syn match HLGrey49BU               "\<HLGrey49BU\>"
syn match HLGray50BU               "\<HLGray50BU\>"
syn match HLGrey50BU               "\<HLGrey50BU\>"
syn match HLGray51BU               "\<HLGray51BU\>"
syn match HLGrey51BU               "\<HLGrey51BU\>"
syn match HLGray52BU               "\<HLGray52BU\>"
syn match HLGrey52BU               "\<HLGrey52BU\>"
syn match HLGray53BU               "\<HLGray53BU\>"
syn match HLGrey53BU               "\<HLGrey53BU\>"
syn match HLGray54BU               "\<HLGray54BU\>"
syn match HLGrey54BU               "\<HLGrey54BU\>"
syn match HLGray55BU               "\<HLGray55BU\>"
syn match HLGrey55BU               "\<HLGrey55BU\>"
syn match HLGray56BU               "\<HLGray56BU\>"
syn match HLGrey56BU               "\<HLGrey56BU\>"
syn match HLGray57BU               "\<HLGray57BU\>"
syn match HLGrey57BU               "\<HLGrey57BU\>"
syn match HLGray58BU               "\<HLGray58BU\>"
syn match HLGrey58BU               "\<HLGrey58BU\>"
syn match HLGray59BU               "\<HLGray59BU\>"
syn match HLGrey59BU               "\<HLGrey59BU\>"
syn match HLGray60BU               "\<HLGray60BU\>"
syn match HLGrey60BU               "\<HLGrey60BU\>"
syn match HLGray61BU               "\<HLGray61BU\>"
syn match HLGrey61BU               "\<HLGrey61BU\>"
syn match HLGray62BU               "\<HLGray62BU\>"
syn match HLGrey62BU               "\<HLGrey62BU\>"
syn match HLGray63BU               "\<HLGray63BU\>"
syn match HLGrey63BU               "\<HLGrey63BU\>"
syn match HLGray64BU               "\<HLGray64BU\>"
syn match HLGrey64BU               "\<HLGrey64BU\>"
syn match HLGray65BU               "\<HLGray65BU\>"
syn match HLGrey65BU               "\<HLGrey65BU\>"
syn match HLGray66BU               "\<HLGray66BU\>"
syn match HLGrey66BU               "\<HLGrey66BU\>"
syn match HLGray67BU               "\<HLGray67BU\>"
syn match HLGrey67BU               "\<HLGrey67BU\>"
syn match HLGray68BU               "\<HLGray68BU\>"
syn match HLGrey68BU               "\<HLGrey68BU\>"
syn match HLGray69BU               "\<HLGray69BU\>"
syn match HLGrey69BU               "\<HLGrey69BU\>"
syn match HLGray70BU               "\<HLGray70BU\>"
syn match HLGrey70BU               "\<HLGrey70BU\>"
syn match HLGray71BU               "\<HLGray71BU\>"
syn match HLGrey71BU               "\<HLGrey71BU\>"
syn match HLGray72BU               "\<HLGray72BU\>"
syn match HLGrey72BU               "\<HLGrey72BU\>"
syn match HLGray73BU               "\<HLGray73BU\>"
syn match HLGrey73BU               "\<HLGrey73BU\>"
syn match HLGray74BU               "\<HLGray74BU\>"
syn match HLGrey74BU               "\<HLGrey74BU\>"
syn match HLGray75BU               "\<HLGray75BU\>"
syn match HLGrey75BU               "\<HLGrey75BU\>"
syn match HLGray76BU               "\<HLGray76BU\>"
syn match HLGrey76BU               "\<HLGrey76BU\>"
syn match HLGray77BU               "\<HLGray77BU\>"
syn match HLGrey77BU               "\<HLGrey77BU\>"
syn match HLGray78BU               "\<HLGray78BU\>"
syn match HLGrey78BU               "\<HLGrey78BU\>"
syn match HLGray79BU               "\<HLGray79BU\>"
syn match HLGrey79BU               "\<HLGrey79BU\>"
syn match HLGray80BU               "\<HLGray80BU\>"
syn match HLGrey80BU               "\<HLGrey80BU\>"
syn match HLGray81BU               "\<HLGray81BU\>"
syn match HLGrey81BU               "\<HLGrey81BU\>"
syn match HLGray82BU               "\<HLGray82BU\>"
syn match HLGrey82BU               "\<HLGrey82BU\>"
syn match HLGray83BU               "\<HLGray83BU\>"
syn match HLGrey83BU               "\<HLGrey83BU\>"
syn match HLGray84BU               "\<HLGray84BU\>"
syn match HLGrey84BU               "\<HLGrey84BU\>"
syn match HLGray85BU               "\<HLGray85BU\>"
syn match HLGrey85BU               "\<HLGrey85BU\>"
syn match HLGray86BU               "\<HLGray86BU\>"
syn match HLGrey86BU               "\<HLGrey86BU\>"
syn match HLGray87BU               "\<HLGray87BU\>"
syn match HLGrey87BU               "\<HLGrey87BU\>"
syn match HLGray88BU               "\<HLGray88BU\>"
syn match HLGrey88BU               "\<HLGrey88BU\>"
syn match HLGray89BU               "\<HLGray89BU\>"
syn match HLGrey89BU               "\<HLGrey89BU\>"
syn match HLGray90BU               "\<HLGray90BU\>"
syn match HLGrey90BU               "\<HLGrey90BU\>"
syn match HLGray91BU               "\<HLGray91BU\>"
syn match HLGrey91BU               "\<HLGrey91BU\>"
syn match HLGray92BU               "\<HLGray92BU\>"
syn match HLGrey92BU               "\<HLGrey92BU\>"
syn match HLGray93BU               "\<HLGray93BU\>"
syn match HLGrey93BU               "\<HLGrey93BU\>"
syn match HLGray94BU               "\<HLGray94BU\>"
syn match HLGrey94BU               "\<HLGrey94BU\>"
syn match HLGray95BU               "\<HLGray95BU\>"
syn match HLGrey95BU               "\<HLGrey95BU\>"
syn match HLGray96BU               "\<HLGray96BU\>"
syn match HLGrey96BU               "\<HLGrey96BU\>"
syn match HLGray97BU               "\<HLGray97BU\>"
syn match HLGrey97BU               "\<HLGrey97BU\>"
syn match HLGray98BU               "\<HLGray98BU\>"
syn match HLGrey98BU               "\<HLGrey98BU\>"
syn match HLGray99BU               "\<HLGray99BU\>"
syn match HLGrey99BU               "\<HLGrey99BU\>"
syn match HLGray100BU              "\<HLGray100BU\>"
syn match HLGrey100BU              "\<HLGrey100BU\>"
syn match HLDarkgreyBU             "\<HLDarkgreyBU\>"
syn match HLDarkgrayBU             "\<HLDarkgrayBU\>"
syn match HLDarkblueBU             "\<HLDarkblueBU\>"
syn match HLDarkcyanBU             "\<HLDarkcyanBU\>"
syn match HLDarkmagentaBU          "\<HLDarkmagentaBU\>"
syn match HLDarkredBU              "\<HLDarkredBU\>"
syn match HLLightgreenBU           "\<HLLightgreenBU\>"
syn match HLCrimsonBU              "\<HLCrimsonBU\>"
syn match HLIndigoBU               "\<HLIndigoBU\>"
syn match HLOliveBU                "\<HLOliveBU\>"
syn match HLRebeccapurpleBU        "\<HLRebeccapurpleBU\>"
syn match HLSilverBU               "\<HLSilverBU\>"
syn match HLTealBU                 "\<HLTealBU\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Background colors on black foreground
syn match HLSnowBgB                 "\<HLSnowBgB\>"
syn match HLGhostwhiteBgB           "\<HLGhostwhiteBgB\>"
syn match HLWhitesmokeBgB           "\<HLWhitesmokeBgB\>"
syn match HLGainsboroBgB            "\<HLGainsboroBgB\>"
syn match HLFloralwhiteBgB          "\<HLFloralwhiteBgB\>"
syn match HLOldlaceBgB              "\<HLOldlaceBgB\>"
syn match HLLinenBgB                "\<HLLinenBgB\>"
syn match HLAntiquewhiteBgB         "\<HLAntiquewhiteBgB\>"
syn match HLPapayawhipBgB           "\<HLPapayawhipBgB\>"
syn match HLBlanchedalmondBgB       "\<HLBlanchedalmondBgB\>"
syn match HLBisqueBgB               "\<HLBisqueBgB\>"
syn match HLPeachpuffBgB            "\<HLPeachpuffBgB\>"
syn match HLNavajowhiteBgB          "\<HLNavajowhiteBgB\>"
syn match HLMoccasinBgB             "\<HLMoccasinBgB\>"
syn match HLCornsilkBgB             "\<HLCornsilkBgB\>"
syn match HLIvoryBgB                "\<HLIvoryBgB\>"
syn match HLLemonchiffonBgB         "\<HLLemonchiffonBgB\>"
syn match HLSeashellBgB             "\<HLSeashellBgB\>"
syn match HLHoneydewBgB             "\<HLHoneydewBgB\>"
syn match HLMintcreamBgB            "\<HLMintcreamBgB\>"
syn match HLAzureBgB                "\<HLAzureBgB\>"
syn match HLAliceblueBgB            "\<HLAliceblueBgB\>"
syn match HLLavenderBgB             "\<HLLavenderBgB\>"
syn match HLLavenderblushBgB        "\<HLLavenderblushBgB\>"
syn match HLMistyroseBgB            "\<HLMistyroseBgB\>"
syn match HLWhiteBgB                "\<HLWhiteBgB\>"
syn match HLBlackBgB                "\<HLBlackBgB\>"
syn match HLDarkslategrayBgB        "\<HLDarkslategrayBgB\>"
syn match HLDarkslategreyBgB        "\<HLDarkslategreyBgB\>"
syn match HLDimgrayBgB              "\<HLDimgrayBgB\>"
syn match HLDimgreyBgB              "\<HLDimgreyBgB\>"
syn match HLSlategrayBgB            "\<HLSlategrayBgB\>"
syn match HLSlategreyBgB            "\<HLSlategreyBgB\>"
syn match HLLightslategrayBgB       "\<HLLightslategrayBgB\>"
syn match HLLightslategreyBgB       "\<HLLightslategreyBgB\>"
syn match HLGrayBgB                 "\<HLGrayBgB\>"
syn match HLGreyBgB                 "\<HLGreyBgB\>"
syn match HLX11grayBgB              "\<HLX11grayBgB\>"
syn match HLX11greyBgB              "\<HLX11greyBgB\>"
syn match HLWebgrayBgB              "\<HLWebgrayBgB\>"
syn match HLWebgreyBgB              "\<HLWebgreyBgB\>"
syn match HLLightgreyBgB            "\<HLLightgreyBgB\>"
syn match HLLightgrayBgB            "\<HLLightgrayBgB\>"
syn match HLMidnightblueBgB         "\<HLMidnightblueBgB\>"
syn match HLNavyBgB                 "\<HLNavyBgB\>"
syn match HLNavyblueBgB             "\<HLNavyblueBgB\>"
syn match HLCornflowerblueBgB       "\<HLCornflowerblueBgB\>"
syn match HLDarkslateblueBgB        "\<HLDarkslateblueBgB\>"
syn match HLSlateblueBgB            "\<HLSlateblueBgB\>"
syn match HLMediumslateblueBgB      "\<HLMediumslateblueBgB\>"
syn match HLLightslateblueBgB       "\<HLLightslateblueBgB\>"
syn match HLMediumblueBgB           "\<HLMediumblueBgB\>"
syn match HLRoyalblueBgB            "\<HLRoyalblueBgB\>"
syn match HLBlueBgB                 "\<HLBlueBgB\>"
syn match HLDodgerblueBgB           "\<HLDodgerblueBgB\>"
syn match HLDeepskyblueBgB          "\<HLDeepskyblueBgB\>"
syn match HLSkyblueBgB              "\<HLSkyblueBgB\>"
syn match HLLightskyblueBgB         "\<HLLightskyblueBgB\>"
syn match HLSteelblueBgB            "\<HLSteelblueBgB\>"
syn match HLLightsteelblueBgB       "\<HLLightsteelblueBgB\>"
syn match HLLightblueBgB            "\<HLLightblueBgB\>"
syn match HLPowderblueBgB           "\<HLPowderblueBgB\>"
syn match HLPaleturquoiseBgB        "\<HLPaleturquoiseBgB\>"
syn match HLDarkturquoiseBgB        "\<HLDarkturquoiseBgB\>"
syn match HLMediumturquoiseBgB      "\<HLMediumturquoiseBgB\>"
syn match HLTurquoiseBgB            "\<HLTurquoiseBgB\>"
syn match HLCyanBgB                 "\<HLCyanBgB\>"
syn match HLAquaBgB                 "\<HLAquaBgB\>"
syn match HLLightcyanBgB            "\<HLLightcyanBgB\>"
syn match HLCadetblueBgB            "\<HLCadetblueBgB\>"
syn match HLMediumaquamarineBgB     "\<HLMediumaquamarineBgB\>"
syn match HLAquamarineBgB           "\<HLAquamarineBgB\>"
syn match HLDarkgreenBgB            "\<HLDarkgreenBgB\>"
syn match HLDarkolivegreenBgB       "\<HLDarkolivegreenBgB\>"
syn match HLDarkseagreenBgB         "\<HLDarkseagreenBgB\>"
syn match HLSeagreenBgB             "\<HLSeagreenBgB\>"
syn match HLMediumseagreenBgB       "\<HLMediumseagreenBgB\>"
syn match HLLightseagreenBgB        "\<HLLightseagreenBgB\>"
syn match HLPalegreenBgB            "\<HLPalegreenBgB\>"
syn match HLSpringgreenBgB          "\<HLSpringgreenBgB\>"
syn match HLLawngreenBgB            "\<HLLawngreenBgB\>"
syn match HLGreenBgB                "\<HLGreenBgB\>"
syn match HLLimeBgB                 "\<HLLimeBgB\>"
syn match HLX11greenBgB             "\<HLX11greenBgB\>"
syn match HLWebgreenBgB             "\<HLWebgreenBgB\>"
syn match HLChartreuseBgB           "\<HLChartreuseBgB\>"
syn match HLMediumspringgreenBgB    "\<HLMediumspringgreenBgB\>"
syn match HLGreenyellowBgB          "\<HLGreenyellowBgB\>"
syn match HLLimegreenBgB            "\<HLLimegreenBgB\>"
syn match HLYellowgreenBgB          "\<HLYellowgreenBgB\>"
syn match HLForestgreenBgB          "\<HLForestgreenBgB\>"
syn match HLOlivedrabBgB            "\<HLOlivedrabBgB\>"
syn match HLDarkkhakiBgB            "\<HLDarkkhakiBgB\>"
syn match HLKhakiBgB                "\<HLKhakiBgB\>"
syn match HLPalegoldenrodBgB        "\<HLPalegoldenrodBgB\>"
syn match HLLightgoldenrodyellowBgB "\<HLLightgoldenrodyellowBgB\>"
syn match HLLightyellowBgB          "\<HLLightyellowBgB\>"
syn match HLYellowBgB               "\<HLYellowBgB\>"
syn match HLGoldBgB                 "\<HLGoldBgB\>"
syn match HLLightgoldenrodBgB       "\<HLLightgoldenrodBgB\>"
syn match HLGoldenrodBgB            "\<HLGoldenrodBgB\>"
syn match HLDarkgoldenrodBgB        "\<HLDarkgoldenrodBgB\>"
syn match HLRosybrownBgB            "\<HLRosybrownBgB\>"
syn match HLIndianredBgB            "\<HLIndianredBgB\>"
syn match HLSaddlebrownBgB          "\<HLSaddlebrownBgB\>"
syn match HLSiennaBgB               "\<HLSiennaBgB\>"
syn match HLPeruBgB                 "\<HLPeruBgB\>"
syn match HLBurlywoodBgB            "\<HLBurlywoodBgB\>"
syn match HLBeigeBgB                "\<HLBeigeBgB\>"
syn match HLWheatBgB                "\<HLWheatBgB\>"
syn match HLSandybrownBgB           "\<HLSandybrownBgB\>"
syn match HLTanBgB                  "\<HLTanBgB\>"
syn match HLChocolateBgB            "\<HLChocolateBgB\>"
syn match HLFirebrickBgB            "\<HLFirebrickBgB\>"
syn match HLBrownBgB                "\<HLBrownBgB\>"
syn match HLDarksalmonBgB           "\<HLDarksalmonBgB\>"
syn match HLSalmonBgB               "\<HLSalmonBgB\>"
syn match HLLightsalmonBgB          "\<HLLightsalmonBgB\>"
syn match HLOrangeBgB               "\<HLOrangeBgB\>"
syn match HLDarkorangeBgB           "\<HLDarkorangeBgB\>"
syn match HLCoralBgB                "\<HLCoralBgB\>"
syn match HLLightcoralBgB           "\<HLLightcoralBgB\>"
syn match HLTomatoBgB               "\<HLTomatoBgB\>"
syn match HLOrangeredBgB            "\<HLOrangeredBgB\>"
syn match HLRedBgB                  "\<HLRedBgB\>"
syn match HLHotpinkBgB              "\<HLHotpinkBgB\>"
syn match HLDeeppinkBgB             "\<HLDeeppinkBgB\>"
syn match HLPinkBgB                 "\<HLPinkBgB\>"
syn match HLLightpinkBgB            "\<HLLightpinkBgB\>"
syn match HLPalevioletredBgB        "\<HLPalevioletredBgB\>"
syn match HLMaroonBgB               "\<HLMaroonBgB\>"
syn match HLX11maroonBgB            "\<HLX11maroonBgB\>"
syn match HLWebmaroonBgB            "\<HLWebmaroonBgB\>"
syn match HLMediumvioletredBgB      "\<HLMediumvioletredBgB\>"
syn match HLVioletredBgB            "\<HLVioletredBgB\>"
syn match HLMagentaBgB              "\<HLMagentaBgB\>"
syn match HLFuchsiaBgB              "\<HLFuchsiaBgB\>"
syn match HLVioletBgB               "\<HLVioletBgB\>"
syn match HLPlumBgB                 "\<HLPlumBgB\>"
syn match HLOrchidBgB               "\<HLOrchidBgB\>"
syn match HLMediumorchidBgB         "\<HLMediumorchidBgB\>"
syn match HLDarkorchidBgB           "\<HLDarkorchidBgB\>"
syn match HLDarkvioletBgB           "\<HLDarkvioletBgB\>"
syn match HLBluevioletBgB           "\<HLBluevioletBgB\>"
syn match HLPurpleBgB               "\<HLPurpleBgB\>"
syn match HLX11purpleBgB            "\<HLX11purpleBgB\>"
syn match HLWebpurpleBgB            "\<HLWebpurpleBgB\>"
syn match HLMediumpurpleBgB         "\<HLMediumpurpleBgB\>"
syn match HLThistleBgB              "\<HLThistleBgB\>"
syn match HLSnow1BgB                "\<HLSnow1BgB\>"
syn match HLSnow2BgB                "\<HLSnow2BgB\>"
syn match HLSnow3BgB                "\<HLSnow3BgB\>"
syn match HLSnow4BgB                "\<HLSnow4BgB\>"
syn match HLSeashell1BgB            "\<HLSeashell1BgB\>"
syn match HLSeashell2BgB            "\<HLSeashell2BgB\>"
syn match HLSeashell3BgB            "\<HLSeashell3BgB\>"
syn match HLSeashell4BgB            "\<HLSeashell4BgB\>"
syn match HLAntiquewhite1BgB        "\<HLAntiquewhite1BgB\>"
syn match HLAntiquewhite2BgB        "\<HLAntiquewhite2BgB\>"
syn match HLAntiquewhite3BgB        "\<HLAntiquewhite3BgB\>"
syn match HLAntiquewhite4BgB        "\<HLAntiquewhite4BgB\>"
syn match HLBisque1BgB              "\<HLBisque1BgB\>"
syn match HLBisque2BgB              "\<HLBisque2BgB\>"
syn match HLBisque3BgB              "\<HLBisque3BgB\>"
syn match HLBisque4BgB              "\<HLBisque4BgB\>"
syn match HLPeachpuff1BgB           "\<HLPeachpuff1BgB\>"
syn match HLPeachpuff2BgB           "\<HLPeachpuff2BgB\>"
syn match HLPeachpuff3BgB           "\<HLPeachpuff3BgB\>"
syn match HLPeachpuff4BgB           "\<HLPeachpuff4BgB\>"
syn match HLNavajowhite1BgB         "\<HLNavajowhite1BgB\>"
syn match HLNavajowhite2BgB         "\<HLNavajowhite2BgB\>"
syn match HLNavajowhite3BgB         "\<HLNavajowhite3BgB\>"
syn match HLNavajowhite4BgB         "\<HLNavajowhite4BgB\>"
syn match HLLemonchiffon1BgB        "\<HLLemonchiffon1BgB\>"
syn match HLLemonchiffon2BgB        "\<HLLemonchiffon2BgB\>"
syn match HLLemonchiffon3BgB        "\<HLLemonchiffon3BgB\>"
syn match HLLemonchiffon4BgB        "\<HLLemonchiffon4BgB\>"
syn match HLCornsilk1BgB            "\<HLCornsilk1BgB\>"
syn match HLCornsilk2BgB            "\<HLCornsilk2BgB\>"
syn match HLCornsilk3BgB            "\<HLCornsilk3BgB\>"
syn match HLCornsilk4BgB            "\<HLCornsilk4BgB\>"
syn match HLIvory1BgB               "\<HLIvory1BgB\>"
syn match HLIvory2BgB               "\<HLIvory2BgB\>"
syn match HLIvory3BgB               "\<HLIvory3BgB\>"
syn match HLIvory4BgB               "\<HLIvory4BgB\>"
syn match HLHoneydew1BgB            "\<HLHoneydew1BgB\>"
syn match HLHoneydew2BgB            "\<HLHoneydew2BgB\>"
syn match HLHoneydew3BgB            "\<HLHoneydew3BgB\>"
syn match HLHoneydew4BgB            "\<HLHoneydew4BgB\>"
syn match HLLavenderblush1BgB       "\<HLLavenderblush1BgB\>"
syn match HLLavenderblush2BgB       "\<HLLavenderblush2BgB\>"
syn match HLLavenderblush3BgB       "\<HLLavenderblush3BgB\>"
syn match HLLavenderblush4BgB       "\<HLLavenderblush4BgB\>"
syn match HLMistyrose1BgB           "\<HLMistyrose1BgB\>"
syn match HLMistyrose2BgB           "\<HLMistyrose2BgB\>"
syn match HLMistyrose3BgB           "\<HLMistyrose3BgB\>"
syn match HLMistyrose4BgB           "\<HLMistyrose4BgB\>"
syn match HLAzure1BgB               "\<HLAzure1BgB\>"
syn match HLAzure2BgB               "\<HLAzure2BgB\>"
syn match HLAzure3BgB               "\<HLAzure3BgB\>"
syn match HLAzure4BgB               "\<HLAzure4BgB\>"
syn match HLSlateblue1BgB           "\<HLSlateblue1BgB\>"
syn match HLSlateblue2BgB           "\<HLSlateblue2BgB\>"
syn match HLSlateblue3BgB           "\<HLSlateblue3BgB\>"
syn match HLSlateblue4BgB           "\<HLSlateblue4BgB\>"
syn match HLRoyalblue1BgB           "\<HLRoyalblue1BgB\>"
syn match HLRoyalblue2BgB           "\<HLRoyalblue2BgB\>"
syn match HLRoyalblue3BgB           "\<HLRoyalblue3BgB\>"
syn match HLRoyalblue4BgB           "\<HLRoyalblue4BgB\>"
syn match HLBlue1BgB                "\<HLBlue1BgB\>"
syn match HLBlue2BgB                "\<HLBlue2BgB\>"
syn match HLBlue3BgB                "\<HLBlue3BgB\>"
syn match HLBlue4BgB                "\<HLBlue4BgB\>"
syn match HLDodgerblue1BgB          "\<HLDodgerblue1BgB\>"
syn match HLDodgerblue2BgB          "\<HLDodgerblue2BgB\>"
syn match HLDodgerblue3BgB          "\<HLDodgerblue3BgB\>"
syn match HLDodgerblue4BgB          "\<HLDodgerblue4BgB\>"
syn match HLSteelblue1BgB           "\<HLSteelblue1BgB\>"
syn match HLSteelblue2BgB           "\<HLSteelblue2BgB\>"
syn match HLSteelblue3BgB           "\<HLSteelblue3BgB\>"
syn match HLSteelblue4BgB           "\<HLSteelblue4BgB\>"
syn match HLDeepskyblue1BgB         "\<HLDeepskyblue1BgB\>"
syn match HLDeepskyblue2BgB         "\<HLDeepskyblue2BgB\>"
syn match HLDeepskyblue3BgB         "\<HLDeepskyblue3BgB\>"
syn match HLDeepskyblue4BgB         "\<HLDeepskyblue4BgB\>"
syn match HLSkyblue1BgB             "\<HLSkyblue1BgB\>"
syn match HLSkyblue2BgB             "\<HLSkyblue2BgB\>"
syn match HLSkyblue3BgB             "\<HLSkyblue3BgB\>"
syn match HLSkyblue4BgB             "\<HLSkyblue4BgB\>"
syn match HLLightskyblue1BgB        "\<HLLightskyblue1BgB\>"
syn match HLLightskyblue2BgB        "\<HLLightskyblue2BgB\>"
syn match HLLightskyblue3BgB        "\<HLLightskyblue3BgB\>"
syn match HLLightskyblue4BgB        "\<HLLightskyblue4BgB\>"
syn match HLSlategray1BgB           "\<HLSlategray1BgB\>"
syn match HLSlategray2BgB           "\<HLSlategray2BgB\>"
syn match HLSlategray3BgB           "\<HLSlategray3BgB\>"
syn match HLSlategray4BgB           "\<HLSlategray4BgB\>"
syn match HLLightsteelblue1BgB      "\<HLLightsteelblue1BgB\>"
syn match HLLightsteelblue2BgB      "\<HLLightsteelblue2BgB\>"
syn match HLLightsteelblue3BgB      "\<HLLightsteelblue3BgB\>"
syn match HLLightsteelblue4BgB      "\<HLLightsteelblue4BgB\>"
syn match HLLightblue1BgB           "\<HLLightblue1BgB\>"
syn match HLLightblue2BgB           "\<HLLightblue2BgB\>"
syn match HLLightblue3BgB           "\<HLLightblue3BgB\>"
syn match HLLightblue4BgB           "\<HLLightblue4BgB\>"
syn match HLLightcyan1BgB           "\<HLLightcyan1BgB\>"
syn match HLLightcyan2BgB           "\<HLLightcyan2BgB\>"
syn match HLLightcyan3BgB           "\<HLLightcyan3BgB\>"
syn match HLLightcyan4BgB           "\<HLLightcyan4BgB\>"
syn match HLPaleturquoise1BgB       "\<HLPaleturquoise1BgB\>"
syn match HLPaleturquoise2BgB       "\<HLPaleturquoise2BgB\>"
syn match HLPaleturquoise3BgB       "\<HLPaleturquoise3BgB\>"
syn match HLPaleturquoise4BgB       "\<HLPaleturquoise4BgB\>"
syn match HLCadetblue1BgB           "\<HLCadetblue1BgB\>"
syn match HLCadetblue2BgB           "\<HLCadetblue2BgB\>"
syn match HLCadetblue3BgB           "\<HLCadetblue3BgB\>"
syn match HLCadetblue4BgB           "\<HLCadetblue4BgB\>"
syn match HLTurquoise1BgB           "\<HLTurquoise1BgB\>"
syn match HLTurquoise2BgB           "\<HLTurquoise2BgB\>"
syn match HLTurquoise3BgB           "\<HLTurquoise3BgB\>"
syn match HLTurquoise4BgB           "\<HLTurquoise4BgB\>"
syn match HLCyan1BgB                "\<HLCyan1BgB\>"
syn match HLCyan2BgB                "\<HLCyan2BgB\>"
syn match HLCyan3BgB                "\<HLCyan3BgB\>"
syn match HLCyan4BgB                "\<HLCyan4BgB\>"
syn match HLDarkslategray1BgB       "\<HLDarkslategray1BgB\>"
syn match HLDarkslategray2BgB       "\<HLDarkslategray2BgB\>"
syn match HLDarkslategray3BgB       "\<HLDarkslategray3BgB\>"
syn match HLDarkslategray4BgB       "\<HLDarkslategray4BgB\>"
syn match HLAquamarine1BgB          "\<HLAquamarine1BgB\>"
syn match HLAquamarine2BgB          "\<HLAquamarine2BgB\>"
syn match HLAquamarine3BgB          "\<HLAquamarine3BgB\>"
syn match HLAquamarine4BgB          "\<HLAquamarine4BgB\>"
syn match HLDarkseagreen1BgB        "\<HLDarkseagreen1BgB\>"
syn match HLDarkseagreen2BgB        "\<HLDarkseagreen2BgB\>"
syn match HLDarkseagreen3BgB        "\<HLDarkseagreen3BgB\>"
syn match HLDarkseagreen4BgB        "\<HLDarkseagreen4BgB\>"
syn match HLSeagreen1BgB            "\<HLSeagreen1BgB\>"
syn match HLSeagreen2BgB            "\<HLSeagreen2BgB\>"
syn match HLSeagreen3BgB            "\<HLSeagreen3BgB\>"
syn match HLSeagreen4BgB            "\<HLSeagreen4BgB\>"
syn match HLPalegreen1BgB           "\<HLPalegreen1BgB\>"
syn match HLPalegreen2BgB           "\<HLPalegreen2BgB\>"
syn match HLPalegreen3BgB           "\<HLPalegreen3BgB\>"
syn match HLPalegreen4BgB           "\<HLPalegreen4BgB\>"
syn match HLSpringgreen1BgB         "\<HLSpringgreen1BgB\>"
syn match HLSpringgreen2BgB         "\<HLSpringgreen2BgB\>"
syn match HLSpringgreen3BgB         "\<HLSpringgreen3BgB\>"
syn match HLSpringgreen4BgB         "\<HLSpringgreen4BgB\>"
syn match HLGreen1BgB               "\<HLGreen1BgB\>"
syn match HLGreen2BgB               "\<HLGreen2BgB\>"
syn match HLGreen3BgB               "\<HLGreen3BgB\>"
syn match HLGreen4BgB               "\<HLGreen4BgB\>"
syn match HLChartreuse1BgB          "\<HLChartreuse1BgB\>"
syn match HLChartreuse2BgB          "\<HLChartreuse2BgB\>"
syn match HLChartreuse3BgB          "\<HLChartreuse3BgB\>"
syn match HLChartreuse4BgB          "\<HLChartreuse4BgB\>"
syn match HLOlivedrab1BgB           "\<HLOlivedrab1BgB\>"
syn match HLOlivedrab2BgB           "\<HLOlivedrab2BgB\>"
syn match HLOlivedrab3BgB           "\<HLOlivedrab3BgB\>"
syn match HLOlivedrab4BgB           "\<HLOlivedrab4BgB\>"
syn match HLDarkolivegreen1BgB      "\<HLDarkolivegreen1BgB\>"
syn match HLDarkolivegreen2BgB      "\<HLDarkolivegreen2BgB\>"
syn match HLDarkolivegreen3BgB      "\<HLDarkolivegreen3BgB\>"
syn match HLDarkolivegreen4BgB      "\<HLDarkolivegreen4BgB\>"
syn match HLKhaki1BgB               "\<HLKhaki1BgB\>"
syn match HLKhaki2BgB               "\<HLKhaki2BgB\>"
syn match HLKhaki3BgB               "\<HLKhaki3BgB\>"
syn match HLKhaki4BgB               "\<HLKhaki4BgB\>"
syn match HLLightgoldenrod1BgB      "\<HLLightgoldenrod1BgB\>"
syn match HLLightgoldenrod2BgB      "\<HLLightgoldenrod2BgB\>"
syn match HLLightgoldenrod3BgB      "\<HLLightgoldenrod3BgB\>"
syn match HLLightgoldenrod4BgB      "\<HLLightgoldenrod4BgB\>"
syn match HLLightyellow1BgB         "\<HLLightyellow1BgB\>"
syn match HLLightyellow2BgB         "\<HLLightyellow2BgB\>"
syn match HLLightyellow3BgB         "\<HLLightyellow3BgB\>"
syn match HLLightyellow4BgB         "\<HLLightyellow4BgB\>"
syn match HLYellow1BgB              "\<HLYellow1BgB\>"
syn match HLYellow2BgB              "\<HLYellow2BgB\>"
syn match HLYellow3BgB              "\<HLYellow3BgB\>"
syn match HLYellow4BgB              "\<HLYellow4BgB\>"
syn match HLDarkyellowBgB           "\<HLDarkyellowBgB\>"
syn match HLGold1BgB                "\<HLGold1BgB\>"
syn match HLGold2BgB                "\<HLGold2BgB\>"
syn match HLGold3BgB                "\<HLGold3BgB\>"
syn match HLGold4BgB                "\<HLGold4BgB\>"
syn match HLGoldenrod1BgB           "\<HLGoldenrod1BgB\>"
syn match HLGoldenrod2BgB           "\<HLGoldenrod2BgB\>"
syn match HLGoldenrod3BgB           "\<HLGoldenrod3BgB\>"
syn match HLGoldenrod4BgB           "\<HLGoldenrod4BgB\>"
syn match HLDarkgoldenrod1BgB       "\<HLDarkgoldenrod1BgB\>"
syn match HLDarkgoldenrod2BgB       "\<HLDarkgoldenrod2BgB\>"
syn match HLDarkgoldenrod3BgB       "\<HLDarkgoldenrod3BgB\>"
syn match HLDarkgoldenrod4BgB       "\<HLDarkgoldenrod4BgB\>"
syn match HLRosybrown1BgB           "\<HLRosybrown1BgB\>"
syn match HLRosybrown2BgB           "\<HLRosybrown2BgB\>"
syn match HLRosybrown3BgB           "\<HLRosybrown3BgB\>"
syn match HLRosybrown4BgB           "\<HLRosybrown4BgB\>"
syn match HLIndianred1BgB           "\<HLIndianred1BgB\>"
syn match HLIndianred2BgB           "\<HLIndianred2BgB\>"
syn match HLIndianred3BgB           "\<HLIndianred3BgB\>"
syn match HLIndianred4BgB           "\<HLIndianred4BgB\>"
syn match HLSienna1BgB              "\<HLSienna1BgB\>"
syn match HLSienna2BgB              "\<HLSienna2BgB\>"
syn match HLSienna3BgB              "\<HLSienna3BgB\>"
syn match HLSienna4BgB              "\<HLSienna4BgB\>"
syn match HLBurlywood1BgB           "\<HLBurlywood1BgB\>"
syn match HLBurlywood2BgB           "\<HLBurlywood2BgB\>"
syn match HLBurlywood3BgB           "\<HLBurlywood3BgB\>"
syn match HLBurlywood4BgB           "\<HLBurlywood4BgB\>"
syn match HLWheat1BgB               "\<HLWheat1BgB\>"
syn match HLWheat2BgB               "\<HLWheat2BgB\>"
syn match HLWheat3BgB               "\<HLWheat3BgB\>"
syn match HLWheat4BgB               "\<HLWheat4BgB\>"
syn match HLTan1BgB                 "\<HLTan1BgB\>"
syn match HLTan2BgB                 "\<HLTan2BgB\>"
syn match HLTan3BgB                 "\<HLTan3BgB\>"
syn match HLTan4BgB                 "\<HLTan4BgB\>"
syn match HLChocolate1BgB           "\<HLChocolate1BgB\>"
syn match HLChocolate2BgB           "\<HLChocolate2BgB\>"
syn match HLChocolate3BgB           "\<HLChocolate3BgB\>"
syn match HLChocolate4BgB           "\<HLChocolate4BgB\>"
syn match HLFirebrick1BgB           "\<HLFirebrick1BgB\>"
syn match HLFirebrick2BgB           "\<HLFirebrick2BgB\>"
syn match HLFirebrick3BgB           "\<HLFirebrick3BgB\>"
syn match HLFirebrick4BgB           "\<HLFirebrick4BgB\>"
syn match HLBrown1BgB               "\<HLBrown1BgB\>"
syn match HLBrown2BgB               "\<HLBrown2BgB\>"
syn match HLBrown3BgB               "\<HLBrown3BgB\>"
syn match HLBrown4BgB               "\<HLBrown4BgB\>"
syn match HLSalmon1BgB              "\<HLSalmon1BgB\>"
syn match HLSalmon2BgB              "\<HLSalmon2BgB\>"
syn match HLSalmon3BgB              "\<HLSalmon3BgB\>"
syn match HLSalmon4BgB              "\<HLSalmon4BgB\>"
syn match HLLightsalmon1BgB         "\<HLLightsalmon1BgB\>"
syn match HLLightsalmon2BgB         "\<HLLightsalmon2BgB\>"
syn match HLLightsalmon3BgB         "\<HLLightsalmon3BgB\>"
syn match HLLightsalmon4BgB         "\<HLLightsalmon4BgB\>"
syn match HLOrange1BgB              "\<HLOrange1BgB\>"
syn match HLOrange2BgB              "\<HLOrange2BgB\>"
syn match HLOrange3BgB              "\<HLOrange3BgB\>"
syn match HLOrange4BgB              "\<HLOrange4BgB\>"
syn match HLDarkorange1BgB          "\<HLDarkorange1BgB\>"
syn match HLDarkorange2BgB          "\<HLDarkorange2BgB\>"
syn match HLDarkorange3BgB          "\<HLDarkorange3BgB\>"
syn match HLDarkorange4BgB          "\<HLDarkorange4BgB\>"
syn match HLCoral1BgB               "\<HLCoral1BgB\>"
syn match HLCoral2BgB               "\<HLCoral2BgB\>"
syn match HLCoral3BgB               "\<HLCoral3BgB\>"
syn match HLCoral4BgB               "\<HLCoral4BgB\>"
syn match HLTomato1BgB              "\<HLTomato1BgB\>"
syn match HLTomato2BgB              "\<HLTomato2BgB\>"
syn match HLTomato3BgB              "\<HLTomato3BgB\>"
syn match HLTomato4BgB              "\<HLTomato4BgB\>"
syn match HLOrangered1BgB           "\<HLOrangered1BgB\>"
syn match HLOrangered2BgB           "\<HLOrangered2BgB\>"
syn match HLOrangered3BgB           "\<HLOrangered3BgB\>"
syn match HLOrangered4BgB           "\<HLOrangered4BgB\>"
syn match HLLightredBgB             "\<HLLightredBgB\>"
syn match HLRed1BgB                 "\<HLRed1BgB\>"
syn match HLRed2BgB                 "\<HLRed2BgB\>"
syn match HLRed3BgB                 "\<HLRed3BgB\>"
syn match HLRed4BgB                 "\<HLRed4BgB\>"
syn match HLDeeppink1BgB            "\<HLDeeppink1BgB\>"
syn match HLDeeppink2BgB            "\<HLDeeppink2BgB\>"
syn match HLDeeppink3BgB            "\<HLDeeppink3BgB\>"
syn match HLDeeppink4BgB            "\<HLDeeppink4BgB\>"
syn match HLHotpink1BgB             "\<HLHotpink1BgB\>"
syn match HLHotpink2BgB             "\<HLHotpink2BgB\>"
syn match HLHotpink3BgB             "\<HLHotpink3BgB\>"
syn match HLHotpink4BgB             "\<HLHotpink4BgB\>"
syn match HLPink1BgB                "\<HLPink1BgB\>"
syn match HLPink2BgB                "\<HLPink2BgB\>"
syn match HLPink3BgB                "\<HLPink3BgB\>"
syn match HLPink4BgB                "\<HLPink4BgB\>"
syn match HLLightpink1BgB           "\<HLLightpink1BgB\>"
syn match HLLightpink2BgB           "\<HLLightpink2BgB\>"
syn match HLLightpink3BgB           "\<HLLightpink3BgB\>"
syn match HLLightpink4BgB           "\<HLLightpink4BgB\>"
syn match HLPalevioletred1BgB       "\<HLPalevioletred1BgB\>"
syn match HLPalevioletred2BgB       "\<HLPalevioletred2BgB\>"
syn match HLPalevioletred3BgB       "\<HLPalevioletred3BgB\>"
syn match HLPalevioletred4BgB       "\<HLPalevioletred4BgB\>"
syn match HLMaroon1BgB              "\<HLMaroon1BgB\>"
syn match HLMaroon2BgB              "\<HLMaroon2BgB\>"
syn match HLMaroon3BgB              "\<HLMaroon3BgB\>"
syn match HLMaroon4BgB              "\<HLMaroon4BgB\>"
syn match HLVioletred1BgB           "\<HLVioletred1BgB\>"
syn match HLVioletred2BgB           "\<HLVioletred2BgB\>"
syn match HLVioletred3BgB           "\<HLVioletred3BgB\>"
syn match HLVioletred4BgB           "\<HLVioletred4BgB\>"
syn match HLLightmagentaBgB         "\<HLLightmagentaBgB\>"
syn match HLMagenta1BgB             "\<HLMagenta1BgB\>"
syn match HLMagenta2BgB             "\<HLMagenta2BgB\>"
syn match HLMagenta3BgB             "\<HLMagenta3BgB\>"
syn match HLMagenta4BgB             "\<HLMagenta4BgB\>"
syn match HLOrchid1BgB              "\<HLOrchid1BgB\>"
syn match HLOrchid2BgB              "\<HLOrchid2BgB\>"
syn match HLOrchid3BgB              "\<HLOrchid3BgB\>"
syn match HLOrchid4BgB              "\<HLOrchid4BgB\>"
syn match HLPlum1BgB                "\<HLPlum1BgB\>"
syn match HLPlum2BgB                "\<HLPlum2BgB\>"
syn match HLPlum3BgB                "\<HLPlum3BgB\>"
syn match HLPlum4BgB                "\<HLPlum4BgB\>"
syn match HLMediumorchid1BgB        "\<HLMediumorchid1BgB\>"
syn match HLMediumorchid2BgB        "\<HLMediumorchid2BgB\>"
syn match HLMediumorchid3BgB        "\<HLMediumorchid3BgB\>"
syn match HLMediumorchid4BgB        "\<HLMediumorchid4BgB\>"
syn match HLDarkorchid1BgB          "\<HLDarkorchid1BgB\>"
syn match HLDarkorchid2BgB          "\<HLDarkorchid2BgB\>"
syn match HLDarkorchid3BgB          "\<HLDarkorchid3BgB\>"
syn match HLDarkorchid4BgB          "\<HLDarkorchid4BgB\>"
syn match HLPurple1BgB              "\<HLPurple1BgB\>"
syn match HLPurple2BgB              "\<HLPurple2BgB\>"
syn match HLPurple3BgB              "\<HLPurple3BgB\>"
syn match HLPurple4BgB              "\<HLPurple4BgB\>"
syn match HLMediumpurple1BgB        "\<HLMediumpurple1BgB\>"
syn match HLMediumpurple2BgB        "\<HLMediumpurple2BgB\>"
syn match HLMediumpurple3BgB        "\<HLMediumpurple3BgB\>"
syn match HLMediumpurple4BgB        "\<HLMediumpurple4BgB\>"
syn match HLThistle1BgB             "\<HLThistle1BgB\>"
syn match HLThistle2BgB             "\<HLThistle2BgB\>"
syn match HLThistle3BgB             "\<HLThistle3BgB\>"
syn match HLThistle4BgB             "\<HLThistle4BgB\>"
syn match HLGray0BgB                "\<HLGray0BgB\>"
syn match HLGrey0BgB                "\<HLGrey0BgB\>"
syn match HLGray1BgB                "\<HLGray1BgB\>"
syn match HLGrey1BgB                "\<HLGrey1BgB\>"
syn match HLGray2BgB                "\<HLGray2BgB\>"
syn match HLGrey2BgB                "\<HLGrey2BgB\>"
syn match HLGray3BgB                "\<HLGray3BgB\>"
syn match HLGrey3BgB                "\<HLGrey3BgB\>"
syn match HLGray4BgB                "\<HLGray4BgB\>"
syn match HLGrey4BgB                "\<HLGrey4BgB\>"
syn match HLGray5BgB                "\<HLGray5BgB\>"
syn match HLGrey5BgB                "\<HLGrey5BgB\>"
syn match HLGray6BgB                "\<HLGray6BgB\>"
syn match HLGrey6BgB                "\<HLGrey6BgB\>"
syn match HLGray7BgB                "\<HLGray7BgB\>"
syn match HLGrey7BgB                "\<HLGrey7BgB\>"
syn match HLGray8BgB                "\<HLGray8BgB\>"
syn match HLGrey8BgB                "\<HLGrey8BgB\>"
syn match HLGray9BgB                "\<HLGray9BgB\>"
syn match HLGrey9BgB                "\<HLGrey9BgB\>"
syn match HLGray10BgB               "\<HLGray10BgB\>"
syn match HLGrey10BgB               "\<HLGrey10BgB\>"
syn match HLGray11BgB               "\<HLGray11BgB\>"
syn match HLGrey11BgB               "\<HLGrey11BgB\>"
syn match HLGray12BgB               "\<HLGray12BgB\>"
syn match HLGrey12BgB               "\<HLGrey12BgB\>"
syn match HLGray13BgB               "\<HLGray13BgB\>"
syn match HLGrey13BgB               "\<HLGrey13BgB\>"
syn match HLGray14BgB               "\<HLGray14BgB\>"
syn match HLGrey14BgB               "\<HLGrey14BgB\>"
syn match HLGray15BgB               "\<HLGray15BgB\>"
syn match HLGrey15BgB               "\<HLGrey15BgB\>"
syn match HLGray16BgB               "\<HLGray16BgB\>"
syn match HLGrey16BgB               "\<HLGrey16BgB\>"
syn match HLGray17BgB               "\<HLGray17BgB\>"
syn match HLGrey17BgB               "\<HLGrey17BgB\>"
syn match HLGray18BgB               "\<HLGray18BgB\>"
syn match HLGrey18BgB               "\<HLGrey18BgB\>"
syn match HLGray19BgB               "\<HLGray19BgB\>"
syn match HLGrey19BgB               "\<HLGrey19BgB\>"
syn match HLGray20BgB               "\<HLGray20BgB\>"
syn match HLGrey20BgB               "\<HLGrey20BgB\>"
syn match HLGray21BgB               "\<HLGray21BgB\>"
syn match HLGrey21BgB               "\<HLGrey21BgB\>"
syn match HLGray22BgB               "\<HLGray22BgB\>"
syn match HLGrey22BgB               "\<HLGrey22BgB\>"
syn match HLGray23BgB               "\<HLGray23BgB\>"
syn match HLGrey23BgB               "\<HLGrey23BgB\>"
syn match HLGray24BgB               "\<HLGray24BgB\>"
syn match HLGrey24BgB               "\<HLGrey24BgB\>"
syn match HLGray25BgB               "\<HLGray25BgB\>"
syn match HLGrey25BgB               "\<HLGrey25BgB\>"
syn match HLGray26BgB               "\<HLGray26BgB\>"
syn match HLGrey26BgB               "\<HLGrey26BgB\>"
syn match HLGray27BgB               "\<HLGray27BgB\>"
syn match HLGrey27BgB               "\<HLGrey27BgB\>"
syn match HLGray28BgB               "\<HLGray28BgB\>"
syn match HLGrey28BgB               "\<HLGrey28BgB\>"
syn match HLGray29BgB               "\<HLGray29BgB\>"
syn match HLGrey29BgB               "\<HLGrey29BgB\>"
syn match HLGray30BgB               "\<HLGray30BgB\>"
syn match HLGrey30BgB               "\<HLGrey30BgB\>"
syn match HLGray31BgB               "\<HLGray31BgB\>"
syn match HLGrey31BgB               "\<HLGrey31BgB\>"
syn match HLGray32BgB               "\<HLGray32BgB\>"
syn match HLGrey32BgB               "\<HLGrey32BgB\>"
syn match HLGray33BgB               "\<HLGray33BgB\>"
syn match HLGrey33BgB               "\<HLGrey33BgB\>"
syn match HLGray34BgB               "\<HLGray34BgB\>"
syn match HLGrey34BgB               "\<HLGrey34BgB\>"
syn match HLGray35BgB               "\<HLGray35BgB\>"
syn match HLGrey35BgB               "\<HLGrey35BgB\>"
syn match HLGray36BgB               "\<HLGray36BgB\>"
syn match HLGrey36BgB               "\<HLGrey36BgB\>"
syn match HLGray37BgB               "\<HLGray37BgB\>"
syn match HLGrey37BgB               "\<HLGrey37BgB\>"
syn match HLGray38BgB               "\<HLGray38BgB\>"
syn match HLGrey38BgB               "\<HLGrey38BgB\>"
syn match HLGray39BgB               "\<HLGray39BgB\>"
syn match HLGrey39BgB               "\<HLGrey39BgB\>"
syn match HLGray40BgB               "\<HLGray40BgB\>"
syn match HLGrey40BgB               "\<HLGrey40BgB\>"
syn match HLGray41BgB               "\<HLGray41BgB\>"
syn match HLGrey41BgB               "\<HLGrey41BgB\>"
syn match HLGray42BgB               "\<HLGray42BgB\>"
syn match HLGrey42BgB               "\<HLGrey42BgB\>"
syn match HLGray43BgB               "\<HLGray43BgB\>"
syn match HLGrey43BgB               "\<HLGrey43BgB\>"
syn match HLGray44BgB               "\<HLGray44BgB\>"
syn match HLGrey44BgB               "\<HLGrey44BgB\>"
syn match HLGray45BgB               "\<HLGray45BgB\>"
syn match HLGrey45BgB               "\<HLGrey45BgB\>"
syn match HLGray46BgB               "\<HLGray46BgB\>"
syn match HLGrey46BgB               "\<HLGrey46BgB\>"
syn match HLGray47BgB               "\<HLGray47BgB\>"
syn match HLGrey47BgB               "\<HLGrey47BgB\>"
syn match HLGray48BgB               "\<HLGray48BgB\>"
syn match HLGrey48BgB               "\<HLGrey48BgB\>"
syn match HLGray49BgB               "\<HLGray49BgB\>"
syn match HLGrey49BgB               "\<HLGrey49BgB\>"
syn match HLGray50BgB               "\<HLGray50BgB\>"
syn match HLGrey50BgB               "\<HLGrey50BgB\>"
syn match HLGray51BgB               "\<HLGray51BgB\>"
syn match HLGrey51BgB               "\<HLGrey51BgB\>"
syn match HLGray52BgB               "\<HLGray52BgB\>"
syn match HLGrey52BgB               "\<HLGrey52BgB\>"
syn match HLGray53BgB               "\<HLGray53BgB\>"
syn match HLGrey53BgB               "\<HLGrey53BgB\>"
syn match HLGray54BgB               "\<HLGray54BgB\>"
syn match HLGrey54BgB               "\<HLGrey54BgB\>"
syn match HLGray55BgB               "\<HLGray55BgB\>"
syn match HLGrey55BgB               "\<HLGrey55BgB\>"
syn match HLGray56BgB               "\<HLGray56BgB\>"
syn match HLGrey56BgB               "\<HLGrey56BgB\>"
syn match HLGray57BgB               "\<HLGray57BgB\>"
syn match HLGrey57BgB               "\<HLGrey57BgB\>"
syn match HLGray58BgB               "\<HLGray58BgB\>"
syn match HLGrey58BgB               "\<HLGrey58BgB\>"
syn match HLGray59BgB               "\<HLGray59BgB\>"
syn match HLGrey59BgB               "\<HLGrey59BgB\>"
syn match HLGray60BgB               "\<HLGray60BgB\>"
syn match HLGrey60BgB               "\<HLGrey60BgB\>"
syn match HLGray61BgB               "\<HLGray61BgB\>"
syn match HLGrey61BgB               "\<HLGrey61BgB\>"
syn match HLGray62BgB               "\<HLGray62BgB\>"
syn match HLGrey62BgB               "\<HLGrey62BgB\>"
syn match HLGray63BgB               "\<HLGray63BgB\>"
syn match HLGrey63BgB               "\<HLGrey63BgB\>"
syn match HLGray64BgB               "\<HLGray64BgB\>"
syn match HLGrey64BgB               "\<HLGrey64BgB\>"
syn match HLGray65BgB               "\<HLGray65BgB\>"
syn match HLGrey65BgB               "\<HLGrey65BgB\>"
syn match HLGray66BgB               "\<HLGray66BgB\>"
syn match HLGrey66BgB               "\<HLGrey66BgB\>"
syn match HLGray67BgB               "\<HLGray67BgB\>"
syn match HLGrey67BgB               "\<HLGrey67BgB\>"
syn match HLGray68BgB               "\<HLGray68BgB\>"
syn match HLGrey68BgB               "\<HLGrey68BgB\>"
syn match HLGray69BgB               "\<HLGray69BgB\>"
syn match HLGrey69BgB               "\<HLGrey69BgB\>"
syn match HLGray70BgB               "\<HLGray70BgB\>"
syn match HLGrey70BgB               "\<HLGrey70BgB\>"
syn match HLGray71BgB               "\<HLGray71BgB\>"
syn match HLGrey71BgB               "\<HLGrey71BgB\>"
syn match HLGray72BgB               "\<HLGray72BgB\>"
syn match HLGrey72BgB               "\<HLGrey72BgB\>"
syn match HLGray73BgB               "\<HLGray73BgB\>"
syn match HLGrey73BgB               "\<HLGrey73BgB\>"
syn match HLGray74BgB               "\<HLGray74BgB\>"
syn match HLGrey74BgB               "\<HLGrey74BgB\>"
syn match HLGray75BgB               "\<HLGray75BgB\>"
syn match HLGrey75BgB               "\<HLGrey75BgB\>"
syn match HLGray76BgB               "\<HLGray76BgB\>"
syn match HLGrey76BgB               "\<HLGrey76BgB\>"
syn match HLGray77BgB               "\<HLGray77BgB\>"
syn match HLGrey77BgB               "\<HLGrey77BgB\>"
syn match HLGray78BgB               "\<HLGray78BgB\>"
syn match HLGrey78BgB               "\<HLGrey78BgB\>"
syn match HLGray79BgB               "\<HLGray79BgB\>"
syn match HLGrey79BgB               "\<HLGrey79BgB\>"
syn match HLGray80BgB               "\<HLGray80BgB\>"
syn match HLGrey80BgB               "\<HLGrey80BgB\>"
syn match HLGray81BgB               "\<HLGray81BgB\>"
syn match HLGrey81BgB               "\<HLGrey81BgB\>"
syn match HLGray82BgB               "\<HLGray82BgB\>"
syn match HLGrey82BgB               "\<HLGrey82BgB\>"
syn match HLGray83BgB               "\<HLGray83BgB\>"
syn match HLGrey83BgB               "\<HLGrey83BgB\>"
syn match HLGray84BgB               "\<HLGray84BgB\>"
syn match HLGrey84BgB               "\<HLGrey84BgB\>"
syn match HLGray85BgB               "\<HLGray85BgB\>"
syn match HLGrey85BgB               "\<HLGrey85BgB\>"
syn match HLGray86BgB               "\<HLGray86BgB\>"
syn match HLGrey86BgB               "\<HLGrey86BgB\>"
syn match HLGray87BgB               "\<HLGray87BgB\>"
syn match HLGrey87BgB               "\<HLGrey87BgB\>"
syn match HLGray88BgB               "\<HLGray88BgB\>"
syn match HLGrey88BgB               "\<HLGrey88BgB\>"
syn match HLGray89BgB               "\<HLGray89BgB\>"
syn match HLGrey89BgB               "\<HLGrey89BgB\>"
syn match HLGray90BgB               "\<HLGray90BgB\>"
syn match HLGrey90BgB               "\<HLGrey90BgB\>"
syn match HLGray91BgB               "\<HLGray91BgB\>"
syn match HLGrey91BgB               "\<HLGrey91BgB\>"
syn match HLGray92BgB               "\<HLGray92BgB\>"
syn match HLGrey92BgB               "\<HLGrey92BgB\>"
syn match HLGray93BgB               "\<HLGray93BgB\>"
syn match HLGrey93BgB               "\<HLGrey93BgB\>"
syn match HLGray94BgB               "\<HLGray94BgB\>"
syn match HLGrey94BgB               "\<HLGrey94BgB\>"
syn match HLGray95BgB               "\<HLGray95BgB\>"
syn match HLGrey95BgB               "\<HLGrey95BgB\>"
syn match HLGray96BgB               "\<HLGray96BgB\>"
syn match HLGrey96BgB               "\<HLGrey96BgB\>"
syn match HLGray97BgB               "\<HLGray97BgB\>"
syn match HLGrey97BgB               "\<HLGrey97BgB\>"
syn match HLGray98BgB               "\<HLGray98BgB\>"
syn match HLGrey98BgB               "\<HLGrey98BgB\>"
syn match HLGray99BgB               "\<HLGray99BgB\>"
syn match HLGrey99BgB               "\<HLGrey99BgB\>"
syn match HLGray100BgB              "\<HLGray100BgB\>"
syn match HLGrey100BgB              "\<HLGrey100BgB\>"
syn match HLDarkgreyBgB             "\<HLDarkgreyBgB\>"
syn match HLDarkgrayBgB             "\<HLDarkgrayBgB\>"
syn match HLDarkblueBgB             "\<HLDarkblueBgB\>"
syn match HLDarkcyanBgB             "\<HLDarkcyanBgB\>"
syn match HLDarkmagentaBgB          "\<HLDarkmagentaBgB\>"
syn match HLDarkredBgB              "\<HLDarkredBgB\>"
syn match HLLightgreenBgB           "\<HLLightgreenBgB\>"
syn match HLCrimsonBgB              "\<HLCrimsonBgB\>"
syn match HLIndigoBgB               "\<HLIndigoBgB\>"
syn match HLOliveBgB                "\<HLOliveBgB\>"
syn match HLRebeccapurpleBgB        "\<HLRebeccapurpleBgB\>"
syn match HLSilverBgB               "\<HLSilverBgB\>"
syn match HLTealBgB                 "\<HLTealBgB\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Background colors on white foreground
syn match HLSnowBgW                 "\<HLSnowBgW\>"
syn match HLGhostwhiteBgW           "\<HLGhostwhiteBgW\>"
syn match HLWhitesmokeBgW           "\<HLWhitesmokeBgW\>"
syn match HLGainsboroBgW            "\<HLGainsboroBgW\>"
syn match HLFloralwhiteBgW          "\<HLFloralwhiteBgW\>"
syn match HLOldlaceBgW              "\<HLOldlaceBgW\>"
syn match HLLinenBgW                "\<HLLinenBgW\>"
syn match HLAntiquewhiteBgW         "\<HLAntiquewhiteBgW\>"
syn match HLPapayawhipBgW           "\<HLPapayawhipBgW\>"
syn match HLBlanchedalmondBgW       "\<HLBlanchedalmondBgW\>"
syn match HLBisqueBgW               "\<HLBisqueBgW\>"
syn match HLPeachpuffBgW            "\<HLPeachpuffBgW\>"
syn match HLNavajowhiteBgW          "\<HLNavajowhiteBgW\>"
syn match HLMoccasinBgW             "\<HLMoccasinBgW\>"
syn match HLCornsilkBgW             "\<HLCornsilkBgW\>"
syn match HLIvoryBgW                "\<HLIvoryBgW\>"
syn match HLLemonchiffonBgW         "\<HLLemonchiffonBgW\>"
syn match HLSeashellBgW             "\<HLSeashellBgW\>"
syn match HLHoneydewBgW             "\<HLHoneydewBgW\>"
syn match HLMintcreamBgW            "\<HLMintcreamBgW\>"
syn match HLAzureBgW                "\<HLAzureBgW\>"
syn match HLAliceblueBgW            "\<HLAliceblueBgW\>"
syn match HLLavenderBgW             "\<HLLavenderBgW\>"
syn match HLLavenderblushBgW        "\<HLLavenderblushBgW\>"
syn match HLMistyroseBgW            "\<HLMistyroseBgW\>"
syn match HLWhiteBgW                "\<HLWhiteBgW\>"
syn match HLBlackBgW                "\<HLBlackBgW\>"
syn match HLDarkslategrayBgW        "\<HLDarkslategrayBgW\>"
syn match HLDarkslategreyBgW        "\<HLDarkslategreyBgW\>"
syn match HLDimgrayBgW              "\<HLDimgrayBgW\>"
syn match HLDimgreyBgW              "\<HLDimgreyBgW\>"
syn match HLSlategrayBgW            "\<HLSlategrayBgW\>"
syn match HLSlategreyBgW            "\<HLSlategreyBgW\>"
syn match HLLightslategrayBgW       "\<HLLightslategrayBgW\>"
syn match HLLightslategreyBgW       "\<HLLightslategreyBgW\>"
syn match HLGrayBgW                 "\<HLGrayBgW\>"
syn match HLGreyBgW                 "\<HLGreyBgW\>"
syn match HLX11grayBgW              "\<HLX11grayBgW\>"
syn match HLX11greyBgW              "\<HLX11greyBgW\>"
syn match HLWebgrayBgW              "\<HLWebgrayBgW\>"
syn match HLWebgreyBgW              "\<HLWebgreyBgW\>"
syn match HLLightgreyBgW            "\<HLLightgreyBgW\>"
syn match HLLightgrayBgW            "\<HLLightgrayBgW\>"
syn match HLMidnightblueBgW         "\<HLMidnightblueBgW\>"
syn match HLNavyBgW                 "\<HLNavyBgW\>"
syn match HLNavyblueBgW             "\<HLNavyblueBgW\>"
syn match HLCornflowerblueBgW       "\<HLCornflowerblueBgW\>"
syn match HLDarkslateblueBgW        "\<HLDarkslateblueBgW\>"
syn match HLSlateblueBgW            "\<HLSlateblueBgW\>"
syn match HLMediumslateblueBgW      "\<HLMediumslateblueBgW\>"
syn match HLLightslateblueBgW       "\<HLLightslateblueBgW\>"
syn match HLMediumblueBgW           "\<HLMediumblueBgW\>"
syn match HLRoyalblueBgW            "\<HLRoyalblueBgW\>"
syn match HLBlueBgW                 "\<HLBlueBgW\>"
syn match HLDodgerblueBgW           "\<HLDodgerblueBgW\>"
syn match HLDeepskyblueBgW          "\<HLDeepskyblueBgW\>"
syn match HLSkyblueBgW              "\<HLSkyblueBgW\>"
syn match HLLightskyblueBgW         "\<HLLightskyblueBgW\>"
syn match HLSteelblueBgW            "\<HLSteelblueBgW\>"
syn match HLLightsteelblueBgW       "\<HLLightsteelblueBgW\>"
syn match HLLightblueBgW            "\<HLLightblueBgW\>"
syn match HLPowderblueBgW           "\<HLPowderblueBgW\>"
syn match HLPaleturquoiseBgW        "\<HLPaleturquoiseBgW\>"
syn match HLDarkturquoiseBgW        "\<HLDarkturquoiseBgW\>"
syn match HLMediumturquoiseBgW      "\<HLMediumturquoiseBgW\>"
syn match HLTurquoiseBgW            "\<HLTurquoiseBgW\>"
syn match HLCyanBgW                 "\<HLCyanBgW\>"
syn match HLAquaBgW                 "\<HLAquaBgW\>"
syn match HLLightcyanBgW            "\<HLLightcyanBgW\>"
syn match HLCadetblueBgW            "\<HLCadetblueBgW\>"
syn match HLMediumaquamarineBgW     "\<HLMediumaquamarineBgW\>"
syn match HLAquamarineBgW           "\<HLAquamarineBgW\>"
syn match HLDarkgreenBgW            "\<HLDarkgreenBgW\>"
syn match HLDarkolivegreenBgW       "\<HLDarkolivegreenBgW\>"
syn match HLDarkseagreenBgW         "\<HLDarkseagreenBgW\>"
syn match HLSeagreenBgW             "\<HLSeagreenBgW\>"
syn match HLMediumseagreenBgW       "\<HLMediumseagreenBgW\>"
syn match HLLightseagreenBgW        "\<HLLightseagreenBgW\>"
syn match HLPalegreenBgW            "\<HLPalegreenBgW\>"
syn match HLSpringgreenBgW          "\<HLSpringgreenBgW\>"
syn match HLLawngreenBgW            "\<HLLawngreenBgW\>"
syn match HLGreenBgW                "\<HLGreenBgW\>"
syn match HLLimeBgW                 "\<HLLimeBgW\>"
syn match HLX11greenBgW             "\<HLX11greenBgW\>"
syn match HLWebgreenBgW             "\<HLWebgreenBgW\>"
syn match HLChartreuseBgW           "\<HLChartreuseBgW\>"
syn match HLMediumspringgreenBgW    "\<HLMediumspringgreenBgW\>"
syn match HLGreenyellowBgW          "\<HLGreenyellowBgW\>"
syn match HLLimegreenBgW            "\<HLLimegreenBgW\>"
syn match HLYellowgreenBgW          "\<HLYellowgreenBgW\>"
syn match HLForestgreenBgW          "\<HLForestgreenBgW\>"
syn match HLOlivedrabBgW            "\<HLOlivedrabBgW\>"
syn match HLDarkkhakiBgW            "\<HLDarkkhakiBgW\>"
syn match HLKhakiBgW                "\<HLKhakiBgW\>"
syn match HLPalegoldenrodBgW        "\<HLPalegoldenrodBgW\>"
syn match HLLightgoldenrodyellowBgW "\<HLLightgoldenrodyellowBgW\>"
syn match HLLightyellowBgW          "\<HLLightyellowBgW\>"
syn match HLYellowBgW               "\<HLYellowBgW\>"
syn match HLGoldBgW                 "\<HLGoldBgW\>"
syn match HLLightgoldenrodBgW       "\<HLLightgoldenrodBgW\>"
syn match HLGoldenrodBgW            "\<HLGoldenrodBgW\>"
syn match HLDarkgoldenrodBgW        "\<HLDarkgoldenrodBgW\>"
syn match HLRosybrownBgW            "\<HLRosybrownBgW\>"
syn match HLIndianredBgW            "\<HLIndianredBgW\>"
syn match HLSaddlebrownBgW          "\<HLSaddlebrownBgW\>"
syn match HLSiennaBgW               "\<HLSiennaBgW\>"
syn match HLPeruBgW                 "\<HLPeruBgW\>"
syn match HLBurlywoodBgW            "\<HLBurlywoodBgW\>"
syn match HLBeigeBgW                "\<HLBeigeBgW\>"
syn match HLWheatBgW                "\<HLWheatBgW\>"
syn match HLSandybrownBgW           "\<HLSandybrownBgW\>"
syn match HLTanBgW                  "\<HLTanBgW\>"
syn match HLChocolateBgW            "\<HLChocolateBgW\>"
syn match HLFirebrickBgW            "\<HLFirebrickBgW\>"
syn match HLBrownBgW                "\<HLBrownBgW\>"
syn match HLDarksalmonBgW           "\<HLDarksalmonBgW\>"
syn match HLSalmonBgW               "\<HLSalmonBgW\>"
syn match HLLightsalmonBgW          "\<HLLightsalmonBgW\>"
syn match HLOrangeBgW               "\<HLOrangeBgW\>"
syn match HLDarkorangeBgW           "\<HLDarkorangeBgW\>"
syn match HLCoralBgW                "\<HLCoralBgW\>"
syn match HLLightcoralBgW           "\<HLLightcoralBgW\>"
syn match HLTomatoBgW               "\<HLTomatoBgW\>"
syn match HLOrangeredBgW            "\<HLOrangeredBgW\>"
syn match HLRedBgW                  "\<HLRedBgW\>"
syn match HLHotpinkBgW              "\<HLHotpinkBgW\>"
syn match HLDeeppinkBgW             "\<HLDeeppinkBgW\>"
syn match HLPinkBgW                 "\<HLPinkBgW\>"
syn match HLLightpinkBgW            "\<HLLightpinkBgW\>"
syn match HLPalevioletredBgW        "\<HLPalevioletredBgW\>"
syn match HLMaroonBgW               "\<HLMaroonBgW\>"
syn match HLX11maroonBgW            "\<HLX11maroonBgW\>"
syn match HLWebmaroonBgW            "\<HLWebmaroonBgW\>"
syn match HLMediumvioletredBgW      "\<HLMediumvioletredBgW\>"
syn match HLVioletredBgW            "\<HLVioletredBgW\>"
syn match HLMagentaBgW              "\<HLMagentaBgW\>"
syn match HLFuchsiaBgW              "\<HLFuchsiaBgW\>"
syn match HLVioletBgW               "\<HLVioletBgW\>"
syn match HLPlumBgW                 "\<HLPlumBgW\>"
syn match HLOrchidBgW               "\<HLOrchidBgW\>"
syn match HLMediumorchidBgW         "\<HLMediumorchidBgW\>"
syn match HLDarkorchidBgW           "\<HLDarkorchidBgW\>"
syn match HLDarkvioletBgW           "\<HLDarkvioletBgW\>"
syn match HLBluevioletBgW           "\<HLBluevioletBgW\>"
syn match HLPurpleBgW               "\<HLPurpleBgW\>"
syn match HLX11purpleBgW            "\<HLX11purpleBgW\>"
syn match HLWebpurpleBgW            "\<HLWebpurpleBgW\>"
syn match HLMediumpurpleBgW         "\<HLMediumpurpleBgW\>"
syn match HLThistleBgW              "\<HLThistleBgW\>"
syn match HLSnow1BgW                "\<HLSnow1BgW\>"
syn match HLSnow2BgW                "\<HLSnow2BgW\>"
syn match HLSnow3BgW                "\<HLSnow3BgW\>"
syn match HLSnow4BgW                "\<HLSnow4BgW\>"
syn match HLSeashell1BgW            "\<HLSeashell1BgW\>"
syn match HLSeashell2BgW            "\<HLSeashell2BgW\>"
syn match HLSeashell3BgW            "\<HLSeashell3BgW\>"
syn match HLSeashell4BgW            "\<HLSeashell4BgW\>"
syn match HLAntiquewhite1BgW        "\<HLAntiquewhite1BgW\>"
syn match HLAntiquewhite2BgW        "\<HLAntiquewhite2BgW\>"
syn match HLAntiquewhite3BgW        "\<HLAntiquewhite3BgW\>"
syn match HLAntiquewhite4BgW        "\<HLAntiquewhite4BgW\>"
syn match HLBisque1BgW              "\<HLBisque1BgW\>"
syn match HLBisque2BgW              "\<HLBisque2BgW\>"
syn match HLBisque3BgW              "\<HLBisque3BgW\>"
syn match HLBisque4BgW              "\<HLBisque4BgW\>"
syn match HLPeachpuff1BgW           "\<HLPeachpuff1BgW\>"
syn match HLPeachpuff2BgW           "\<HLPeachpuff2BgW\>"
syn match HLPeachpuff3BgW           "\<HLPeachpuff3BgW\>"
syn match HLPeachpuff4BgW           "\<HLPeachpuff4BgW\>"
syn match HLNavajowhite1BgW         "\<HLNavajowhite1BgW\>"
syn match HLNavajowhite2BgW         "\<HLNavajowhite2BgW\>"
syn match HLNavajowhite3BgW         "\<HLNavajowhite3BgW\>"
syn match HLNavajowhite4BgW         "\<HLNavajowhite4BgW\>"
syn match HLLemonchiffon1BgW        "\<HLLemonchiffon1BgW\>"
syn match HLLemonchiffon2BgW        "\<HLLemonchiffon2BgW\>"
syn match HLLemonchiffon3BgW        "\<HLLemonchiffon3BgW\>"
syn match HLLemonchiffon4BgW        "\<HLLemonchiffon4BgW\>"
syn match HLCornsilk1BgW            "\<HLCornsilk1BgW\>"
syn match HLCornsilk2BgW            "\<HLCornsilk2BgW\>"
syn match HLCornsilk3BgW            "\<HLCornsilk3BgW\>"
syn match HLCornsilk4BgW            "\<HLCornsilk4BgW\>"
syn match HLIvory1BgW               "\<HLIvory1BgW\>"
syn match HLIvory2BgW               "\<HLIvory2BgW\>"
syn match HLIvory3BgW               "\<HLIvory3BgW\>"
syn match HLIvory4BgW               "\<HLIvory4BgW\>"
syn match HLHoneydew1BgW            "\<HLHoneydew1BgW\>"
syn match HLHoneydew2BgW            "\<HLHoneydew2BgW\>"
syn match HLHoneydew3BgW            "\<HLHoneydew3BgW\>"
syn match HLHoneydew4BgW            "\<HLHoneydew4BgW\>"
syn match HLLavenderblush1BgW       "\<HLLavenderblush1BgW\>"
syn match HLLavenderblush2BgW       "\<HLLavenderblush2BgW\>"
syn match HLLavenderblush3BgW       "\<HLLavenderblush3BgW\>"
syn match HLLavenderblush4BgW       "\<HLLavenderblush4BgW\>"
syn match HLMistyrose1BgW           "\<HLMistyrose1BgW\>"
syn match HLMistyrose2BgW           "\<HLMistyrose2BgW\>"
syn match HLMistyrose3BgW           "\<HLMistyrose3BgW\>"
syn match HLMistyrose4BgW           "\<HLMistyrose4BgW\>"
syn match HLAzure1BgW               "\<HLAzure1BgW\>"
syn match HLAzure2BgW               "\<HLAzure2BgW\>"
syn match HLAzure3BgW               "\<HLAzure3BgW\>"
syn match HLAzure4BgW               "\<HLAzure4BgW\>"
syn match HLSlateblue1BgW           "\<HLSlateblue1BgW\>"
syn match HLSlateblue2BgW           "\<HLSlateblue2BgW\>"
syn match HLSlateblue3BgW           "\<HLSlateblue3BgW\>"
syn match HLSlateblue4BgW           "\<HLSlateblue4BgW\>"
syn match HLRoyalblue1BgW           "\<HLRoyalblue1BgW\>"
syn match HLRoyalblue2BgW           "\<HLRoyalblue2BgW\>"
syn match HLRoyalblue3BgW           "\<HLRoyalblue3BgW\>"
syn match HLRoyalblue4BgW           "\<HLRoyalblue4BgW\>"
syn match HLBlue1BgW                "\<HLBlue1BgW\>"
syn match HLBlue2BgW                "\<HLBlue2BgW\>"
syn match HLBlue3BgW                "\<HLBlue3BgW\>"
syn match HLBlue4BgW                "\<HLBlue4BgW\>"
syn match HLDodgerblue1BgW          "\<HLDodgerblue1BgW\>"
syn match HLDodgerblue2BgW          "\<HLDodgerblue2BgW\>"
syn match HLDodgerblue3BgW          "\<HLDodgerblue3BgW\>"
syn match HLDodgerblue4BgW          "\<HLDodgerblue4BgW\>"
syn match HLSteelblue1BgW           "\<HLSteelblue1BgW\>"
syn match HLSteelblue2BgW           "\<HLSteelblue2BgW\>"
syn match HLSteelblue3BgW           "\<HLSteelblue3BgW\>"
syn match HLSteelblue4BgW           "\<HLSteelblue4BgW\>"
syn match HLDeepskyblue1BgW         "\<HLDeepskyblue1BgW\>"
syn match HLDeepskyblue2BgW         "\<HLDeepskyblue2BgW\>"
syn match HLDeepskyblue3BgW         "\<HLDeepskyblue3BgW\>"
syn match HLDeepskyblue4BgW         "\<HLDeepskyblue4BgW\>"
syn match HLSkyblue1BgW             "\<HLSkyblue1BgW\>"
syn match HLSkyblue2BgW             "\<HLSkyblue2BgW\>"
syn match HLSkyblue3BgW             "\<HLSkyblue3BgW\>"
syn match HLSkyblue4BgW             "\<HLSkyblue4BgW\>"
syn match HLLightskyblue1BgW        "\<HLLightskyblue1BgW\>"
syn match HLLightskyblue2BgW        "\<HLLightskyblue2BgW\>"
syn match HLLightskyblue3BgW        "\<HLLightskyblue3BgW\>"
syn match HLLightskyblue4BgW        "\<HLLightskyblue4BgW\>"
syn match HLSlategray1BgW           "\<HLSlategray1BgW\>"
syn match HLSlategray2BgW           "\<HLSlategray2BgW\>"
syn match HLSlategray3BgW           "\<HLSlategray3BgW\>"
syn match HLSlategray4BgW           "\<HLSlategray4BgW\>"
syn match HLLightsteelblue1BgW      "\<HLLightsteelblue1BgW\>"
syn match HLLightsteelblue2BgW      "\<HLLightsteelblue2BgW\>"
syn match HLLightsteelblue3BgW      "\<HLLightsteelblue3BgW\>"
syn match HLLightsteelblue4BgW      "\<HLLightsteelblue4BgW\>"
syn match HLLightblue1BgW           "\<HLLightblue1BgW\>"
syn match HLLightblue2BgW           "\<HLLightblue2BgW\>"
syn match HLLightblue3BgW           "\<HLLightblue3BgW\>"
syn match HLLightblue4BgW           "\<HLLightblue4BgW\>"
syn match HLLightcyan1BgW           "\<HLLightcyan1BgW\>"
syn match HLLightcyan2BgW           "\<HLLightcyan2BgW\>"
syn match HLLightcyan3BgW           "\<HLLightcyan3BgW\>"
syn match HLLightcyan4BgW           "\<HLLightcyan4BgW\>"
syn match HLPaleturquoise1BgW       "\<HLPaleturquoise1BgW\>"
syn match HLPaleturquoise2BgW       "\<HLPaleturquoise2BgW\>"
syn match HLPaleturquoise3BgW       "\<HLPaleturquoise3BgW\>"
syn match HLPaleturquoise4BgW       "\<HLPaleturquoise4BgW\>"
syn match HLCadetblue1BgW           "\<HLCadetblue1BgW\>"
syn match HLCadetblue2BgW           "\<HLCadetblue2BgW\>"
syn match HLCadetblue3BgW           "\<HLCadetblue3BgW\>"
syn match HLCadetblue4BgW           "\<HLCadetblue4BgW\>"
syn match HLTurquoise1BgW           "\<HLTurquoise1BgW\>"
syn match HLTurquoise2BgW           "\<HLTurquoise2BgW\>"
syn match HLTurquoise3BgW           "\<HLTurquoise3BgW\>"
syn match HLTurquoise4BgW           "\<HLTurquoise4BgW\>"
syn match HLCyan1BgW                "\<HLCyan1BgW\>"
syn match HLCyan2BgW                "\<HLCyan2BgW\>"
syn match HLCyan3BgW                "\<HLCyan3BgW\>"
syn match HLCyan4BgW                "\<HLCyan4BgW\>"
syn match HLDarkslategray1BgW       "\<HLDarkslategray1BgW\>"
syn match HLDarkslategray2BgW       "\<HLDarkslategray2BgW\>"
syn match HLDarkslategray3BgW       "\<HLDarkslategray3BgW\>"
syn match HLDarkslategray4BgW       "\<HLDarkslategray4BgW\>"
syn match HLAquamarine1BgW          "\<HLAquamarine1BgW\>"
syn match HLAquamarine2BgW          "\<HLAquamarine2BgW\>"
syn match HLAquamarine3BgW          "\<HLAquamarine3BgW\>"
syn match HLAquamarine4BgW          "\<HLAquamarine4BgW\>"
syn match HLDarkseagreen1BgW        "\<HLDarkseagreen1BgW\>"
syn match HLDarkseagreen2BgW        "\<HLDarkseagreen2BgW\>"
syn match HLDarkseagreen3BgW        "\<HLDarkseagreen3BgW\>"
syn match HLDarkseagreen4BgW        "\<HLDarkseagreen4BgW\>"
syn match HLSeagreen1BgW            "\<HLSeagreen1BgW\>"
syn match HLSeagreen2BgW            "\<HLSeagreen2BgW\>"
syn match HLSeagreen3BgW            "\<HLSeagreen3BgW\>"
syn match HLSeagreen4BgW            "\<HLSeagreen4BgW\>"
syn match HLPalegreen1BgW           "\<HLPalegreen1BgW\>"
syn match HLPalegreen2BgW           "\<HLPalegreen2BgW\>"
syn match HLPalegreen3BgW           "\<HLPalegreen3BgW\>"
syn match HLPalegreen4BgW           "\<HLPalegreen4BgW\>"
syn match HLSpringgreen1BgW         "\<HLSpringgreen1BgW\>"
syn match HLSpringgreen2BgW         "\<HLSpringgreen2BgW\>"
syn match HLSpringgreen3BgW         "\<HLSpringgreen3BgW\>"
syn match HLSpringgreen4BgW         "\<HLSpringgreen4BgW\>"
syn match HLGreen1BgW               "\<HLGreen1BgW\>"
syn match HLGreen2BgW               "\<HLGreen2BgW\>"
syn match HLGreen3BgW               "\<HLGreen3BgW\>"
syn match HLGreen4BgW               "\<HLGreen4BgW\>"
syn match HLChartreuse1BgW          "\<HLChartreuse1BgW\>"
syn match HLChartreuse2BgW          "\<HLChartreuse2BgW\>"
syn match HLChartreuse3BgW          "\<HLChartreuse3BgW\>"
syn match HLChartreuse4BgW          "\<HLChartreuse4BgW\>"
syn match HLOlivedrab1BgW           "\<HLOlivedrab1BgW\>"
syn match HLOlivedrab2BgW           "\<HLOlivedrab2BgW\>"
syn match HLOlivedrab3BgW           "\<HLOlivedrab3BgW\>"
syn match HLOlivedrab4BgW           "\<HLOlivedrab4BgW\>"
syn match HLDarkolivegreen1BgW      "\<HLDarkolivegreen1BgW\>"
syn match HLDarkolivegreen2BgW      "\<HLDarkolivegreen2BgW\>"
syn match HLDarkolivegreen3BgW      "\<HLDarkolivegreen3BgW\>"
syn match HLDarkolivegreen4BgW      "\<HLDarkolivegreen4BgW\>"
syn match HLKhaki1BgW               "\<HLKhaki1BgW\>"
syn match HLKhaki2BgW               "\<HLKhaki2BgW\>"
syn match HLKhaki3BgW               "\<HLKhaki3BgW\>"
syn match HLKhaki4BgW               "\<HLKhaki4BgW\>"
syn match HLLightgoldenrod1BgW      "\<HLLightgoldenrod1BgW\>"
syn match HLLightgoldenrod2BgW      "\<HLLightgoldenrod2BgW\>"
syn match HLLightgoldenrod3BgW      "\<HLLightgoldenrod3BgW\>"
syn match HLLightgoldenrod4BgW      "\<HLLightgoldenrod4BgW\>"
syn match HLLightyellow1BgW         "\<HLLightyellow1BgW\>"
syn match HLLightyellow2BgW         "\<HLLightyellow2BgW\>"
syn match HLLightyellow3BgW         "\<HLLightyellow3BgW\>"
syn match HLLightyellow4BgW         "\<HLLightyellow4BgW\>"
syn match HLYellow1BgW              "\<HLYellow1BgW\>"
syn match HLYellow2BgW              "\<HLYellow2BgW\>"
syn match HLYellow3BgW              "\<HLYellow3BgW\>"
syn match HLYellow4BgW              "\<HLYellow4BgW\>"
syn match HLDarkyellowBgW           "\<HLDarkyellowBgW\>"
syn match HLGold1BgW                "\<HLGold1BgW\>"
syn match HLGold2BgW                "\<HLGold2BgW\>"
syn match HLGold3BgW                "\<HLGold3BgW\>"
syn match HLGold4BgW                "\<HLGold4BgW\>"
syn match HLGoldenrod1BgW           "\<HLGoldenrod1BgW\>"
syn match HLGoldenrod2BgW           "\<HLGoldenrod2BgW\>"
syn match HLGoldenrod3BgW           "\<HLGoldenrod3BgW\>"
syn match HLGoldenrod4BgW           "\<HLGoldenrod4BgW\>"
syn match HLDarkgoldenrod1BgW       "\<HLDarkgoldenrod1BgW\>"
syn match HLDarkgoldenrod2BgW       "\<HLDarkgoldenrod2BgW\>"
syn match HLDarkgoldenrod3BgW       "\<HLDarkgoldenrod3BgW\>"
syn match HLDarkgoldenrod4BgW       "\<HLDarkgoldenrod4BgW\>"
syn match HLRosybrown1BgW           "\<HLRosybrown1BgW\>"
syn match HLRosybrown2BgW           "\<HLRosybrown2BgW\>"
syn match HLRosybrown3BgW           "\<HLRosybrown3BgW\>"
syn match HLRosybrown4BgW           "\<HLRosybrown4BgW\>"
syn match HLIndianred1BgW           "\<HLIndianred1BgW\>"
syn match HLIndianred2BgW           "\<HLIndianred2BgW\>"
syn match HLIndianred3BgW           "\<HLIndianred3BgW\>"
syn match HLIndianred4BgW           "\<HLIndianred4BgW\>"
syn match HLSienna1BgW              "\<HLSienna1BgW\>"
syn match HLSienna2BgW              "\<HLSienna2BgW\>"
syn match HLSienna3BgW              "\<HLSienna3BgW\>"
syn match HLSienna4BgW              "\<HLSienna4BgW\>"
syn match HLBurlywood1BgW           "\<HLBurlywood1BgW\>"
syn match HLBurlywood2BgW           "\<HLBurlywood2BgW\>"
syn match HLBurlywood3BgW           "\<HLBurlywood3BgW\>"
syn match HLBurlywood4BgW           "\<HLBurlywood4BgW\>"
syn match HLWheat1BgW               "\<HLWheat1BgW\>"
syn match HLWheat2BgW               "\<HLWheat2BgW\>"
syn match HLWheat3BgW               "\<HLWheat3BgW\>"
syn match HLWheat4BgW               "\<HLWheat4BgW\>"
syn match HLTan1BgW                 "\<HLTan1BgW\>"
syn match HLTan2BgW                 "\<HLTan2BgW\>"
syn match HLTan3BgW                 "\<HLTan3BgW\>"
syn match HLTan4BgW                 "\<HLTan4BgW\>"
syn match HLChocolate1BgW           "\<HLChocolate1BgW\>"
syn match HLChocolate2BgW           "\<HLChocolate2BgW\>"
syn match HLChocolate3BgW           "\<HLChocolate3BgW\>"
syn match HLChocolate4BgW           "\<HLChocolate4BgW\>"
syn match HLFirebrick1BgW           "\<HLFirebrick1BgW\>"
syn match HLFirebrick2BgW           "\<HLFirebrick2BgW\>"
syn match HLFirebrick3BgW           "\<HLFirebrick3BgW\>"
syn match HLFirebrick4BgW           "\<HLFirebrick4BgW\>"
syn match HLBrown1BgW               "\<HLBrown1BgW\>"
syn match HLBrown2BgW               "\<HLBrown2BgW\>"
syn match HLBrown3BgW               "\<HLBrown3BgW\>"
syn match HLBrown4BgW               "\<HLBrown4BgW\>"
syn match HLSalmon1BgW              "\<HLSalmon1BgW\>"
syn match HLSalmon2BgW              "\<HLSalmon2BgW\>"
syn match HLSalmon3BgW              "\<HLSalmon3BgW\>"
syn match HLSalmon4BgW              "\<HLSalmon4BgW\>"
syn match HLLightsalmon1BgW         "\<HLLightsalmon1BgW\>"
syn match HLLightsalmon2BgW         "\<HLLightsalmon2BgW\>"
syn match HLLightsalmon3BgW         "\<HLLightsalmon3BgW\>"
syn match HLLightsalmon4BgW         "\<HLLightsalmon4BgW\>"
syn match HLOrange1BgW              "\<HLOrange1BgW\>"
syn match HLOrange2BgW              "\<HLOrange2BgW\>"
syn match HLOrange3BgW              "\<HLOrange3BgW\>"
syn match HLOrange4BgW              "\<HLOrange4BgW\>"
syn match HLDarkorange1BgW          "\<HLDarkorange1BgW\>"
syn match HLDarkorange2BgW          "\<HLDarkorange2BgW\>"
syn match HLDarkorange3BgW          "\<HLDarkorange3BgW\>"
syn match HLDarkorange4BgW          "\<HLDarkorange4BgW\>"
syn match HLCoral1BgW               "\<HLCoral1BgW\>"
syn match HLCoral2BgW               "\<HLCoral2BgW\>"
syn match HLCoral3BgW               "\<HLCoral3BgW\>"
syn match HLCoral4BgW               "\<HLCoral4BgW\>"
syn match HLTomato1BgW              "\<HLTomato1BgW\>"
syn match HLTomato2BgW              "\<HLTomato2BgW\>"
syn match HLTomato3BgW              "\<HLTomato3BgW\>"
syn match HLTomato4BgW              "\<HLTomato4BgW\>"
syn match HLOrangered1BgW           "\<HLOrangered1BgW\>"
syn match HLOrangered2BgW           "\<HLOrangered2BgW\>"
syn match HLOrangered3BgW           "\<HLOrangered3BgW\>"
syn match HLOrangered4BgW           "\<HLOrangered4BgW\>"
syn match HLLightredBgW             "\<HLLightredBgW\>"
syn match HLRed1BgW                 "\<HLRed1BgW\>"
syn match HLRed2BgW                 "\<HLRed2BgW\>"
syn match HLRed3BgW                 "\<HLRed3BgW\>"
syn match HLRed4BgW                 "\<HLRed4BgW\>"
syn match HLDeeppink1BgW            "\<HLDeeppink1BgW\>"
syn match HLDeeppink2BgW            "\<HLDeeppink2BgW\>"
syn match HLDeeppink3BgW            "\<HLDeeppink3BgW\>"
syn match HLDeeppink4BgW            "\<HLDeeppink4BgW\>"
syn match HLHotpink1BgW             "\<HLHotpink1BgW\>"
syn match HLHotpink2BgW             "\<HLHotpink2BgW\>"
syn match HLHotpink3BgW             "\<HLHotpink3BgW\>"
syn match HLHotpink4BgW             "\<HLHotpink4BgW\>"
syn match HLPink1BgW                "\<HLPink1BgW\>"
syn match HLPink2BgW                "\<HLPink2BgW\>"
syn match HLPink3BgW                "\<HLPink3BgW\>"
syn match HLPink4BgW                "\<HLPink4BgW\>"
syn match HLLightpink1BgW           "\<HLLightpink1BgW\>"
syn match HLLightpink2BgW           "\<HLLightpink2BgW\>"
syn match HLLightpink3BgW           "\<HLLightpink3BgW\>"
syn match HLLightpink4BgW           "\<HLLightpink4BgW\>"
syn match HLPalevioletred1BgW       "\<HLPalevioletred1BgW\>"
syn match HLPalevioletred2BgW       "\<HLPalevioletred2BgW\>"
syn match HLPalevioletred3BgW       "\<HLPalevioletred3BgW\>"
syn match HLPalevioletred4BgW       "\<HLPalevioletred4BgW\>"
syn match HLMaroon1BgW              "\<HLMaroon1BgW\>"
syn match HLMaroon2BgW              "\<HLMaroon2BgW\>"
syn match HLMaroon3BgW              "\<HLMaroon3BgW\>"
syn match HLMaroon4BgW              "\<HLMaroon4BgW\>"
syn match HLVioletred1BgW           "\<HLVioletred1BgW\>"
syn match HLVioletred2BgW           "\<HLVioletred2BgW\>"
syn match HLVioletred3BgW           "\<HLVioletred3BgW\>"
syn match HLVioletred4BgW           "\<HLVioletred4BgW\>"
syn match HLLightmagentaBgW         "\<HLLightmagentaBgW\>"
syn match HLMagenta1BgW             "\<HLMagenta1BgW\>"
syn match HLMagenta2BgW             "\<HLMagenta2BgW\>"
syn match HLMagenta3BgW             "\<HLMagenta3BgW\>"
syn match HLMagenta4BgW             "\<HLMagenta4BgW\>"
syn match HLOrchid1BgW              "\<HLOrchid1BgW\>"
syn match HLOrchid2BgW              "\<HLOrchid2BgW\>"
syn match HLOrchid3BgW              "\<HLOrchid3BgW\>"
syn match HLOrchid4BgW              "\<HLOrchid4BgW\>"
syn match HLPlum1BgW                "\<HLPlum1BgW\>"
syn match HLPlum2BgW                "\<HLPlum2BgW\>"
syn match HLPlum3BgW                "\<HLPlum3BgW\>"
syn match HLPlum4BgW                "\<HLPlum4BgW\>"
syn match HLMediumorchid1BgW        "\<HLMediumorchid1BgW\>"
syn match HLMediumorchid2BgW        "\<HLMediumorchid2BgW\>"
syn match HLMediumorchid3BgW        "\<HLMediumorchid3BgW\>"
syn match HLMediumorchid4BgW        "\<HLMediumorchid4BgW\>"
syn match HLDarkorchid1BgW          "\<HLDarkorchid1BgW\>"
syn match HLDarkorchid2BgW          "\<HLDarkorchid2BgW\>"
syn match HLDarkorchid3BgW          "\<HLDarkorchid3BgW\>"
syn match HLDarkorchid4BgW          "\<HLDarkorchid4BgW\>"
syn match HLPurple1BgW              "\<HLPurple1BgW\>"
syn match HLPurple2BgW              "\<HLPurple2BgW\>"
syn match HLPurple3BgW              "\<HLPurple3BgW\>"
syn match HLPurple4BgW              "\<HLPurple4BgW\>"
syn match HLMediumpurple1BgW        "\<HLMediumpurple1BgW\>"
syn match HLMediumpurple2BgW        "\<HLMediumpurple2BgW\>"
syn match HLMediumpurple3BgW        "\<HLMediumpurple3BgW\>"
syn match HLMediumpurple4BgW        "\<HLMediumpurple4BgW\>"
syn match HLThistle1BgW             "\<HLThistle1BgW\>"
syn match HLThistle2BgW             "\<HLThistle2BgW\>"
syn match HLThistle3BgW             "\<HLThistle3BgW\>"
syn match HLThistle4BgW             "\<HLThistle4BgW\>"
syn match HLGray0BgW                "\<HLGray0BgW\>"
syn match HLGrey0BgW                "\<HLGrey0BgW\>"
syn match HLGray1BgW                "\<HLGray1BgW\>"
syn match HLGrey1BgW                "\<HLGrey1BgW\>"
syn match HLGray2BgW                "\<HLGray2BgW\>"
syn match HLGrey2BgW                "\<HLGrey2BgW\>"
syn match HLGray3BgW                "\<HLGray3BgW\>"
syn match HLGrey3BgW                "\<HLGrey3BgW\>"
syn match HLGray4BgW                "\<HLGray4BgW\>"
syn match HLGrey4BgW                "\<HLGrey4BgW\>"
syn match HLGray5BgW                "\<HLGray5BgW\>"
syn match HLGrey5BgW                "\<HLGrey5BgW\>"
syn match HLGray6BgW                "\<HLGray6BgW\>"
syn match HLGrey6BgW                "\<HLGrey6BgW\>"
syn match HLGray7BgW                "\<HLGray7BgW\>"
syn match HLGrey7BgW                "\<HLGrey7BgW\>"
syn match HLGray8BgW                "\<HLGray8BgW\>"
syn match HLGrey8BgW                "\<HLGrey8BgW\>"
syn match HLGray9BgW                "\<HLGray9BgW\>"
syn match HLGrey9BgW                "\<HLGrey9BgW\>"
syn match HLGray10BgW               "\<HLGray10BgW\>"
syn match HLGrey10BgW               "\<HLGrey10BgW\>"
syn match HLGray11BgW               "\<HLGray11BgW\>"
syn match HLGrey11BgW               "\<HLGrey11BgW\>"
syn match HLGray12BgW               "\<HLGray12BgW\>"
syn match HLGrey12BgW               "\<HLGrey12BgW\>"
syn match HLGray13BgW               "\<HLGray13BgW\>"
syn match HLGrey13BgW               "\<HLGrey13BgW\>"
syn match HLGray14BgW               "\<HLGray14BgW\>"
syn match HLGrey14BgW               "\<HLGrey14BgW\>"
syn match HLGray15BgW               "\<HLGray15BgW\>"
syn match HLGrey15BgW               "\<HLGrey15BgW\>"
syn match HLGray16BgW               "\<HLGray16BgW\>"
syn match HLGrey16BgW               "\<HLGrey16BgW\>"
syn match HLGray17BgW               "\<HLGray17BgW\>"
syn match HLGrey17BgW               "\<HLGrey17BgW\>"
syn match HLGray18BgW               "\<HLGray18BgW\>"
syn match HLGrey18BgW               "\<HLGrey18BgW\>"
syn match HLGray19BgW               "\<HLGray19BgW\>"
syn match HLGrey19BgW               "\<HLGrey19BgW\>"
syn match HLGray20BgW               "\<HLGray20BgW\>"
syn match HLGrey20BgW               "\<HLGrey20BgW\>"
syn match HLGray21BgW               "\<HLGray21BgW\>"
syn match HLGrey21BgW               "\<HLGrey21BgW\>"
syn match HLGray22BgW               "\<HLGray22BgW\>"
syn match HLGrey22BgW               "\<HLGrey22BgW\>"
syn match HLGray23BgW               "\<HLGray23BgW\>"
syn match HLGrey23BgW               "\<HLGrey23BgW\>"
syn match HLGray24BgW               "\<HLGray24BgW\>"
syn match HLGrey24BgW               "\<HLGrey24BgW\>"
syn match HLGray25BgW               "\<HLGray25BgW\>"
syn match HLGrey25BgW               "\<HLGrey25BgW\>"
syn match HLGray26BgW               "\<HLGray26BgW\>"
syn match HLGrey26BgW               "\<HLGrey26BgW\>"
syn match HLGray27BgW               "\<HLGray27BgW\>"
syn match HLGrey27BgW               "\<HLGrey27BgW\>"
syn match HLGray28BgW               "\<HLGray28BgW\>"
syn match HLGrey28BgW               "\<HLGrey28BgW\>"
syn match HLGray29BgW               "\<HLGray29BgW\>"
syn match HLGrey29BgW               "\<HLGrey29BgW\>"
syn match HLGray30BgW               "\<HLGray30BgW\>"
syn match HLGrey30BgW               "\<HLGrey30BgW\>"
syn match HLGray31BgW               "\<HLGray31BgW\>"
syn match HLGrey31BgW               "\<HLGrey31BgW\>"
syn match HLGray32BgW               "\<HLGray32BgW\>"
syn match HLGrey32BgW               "\<HLGrey32BgW\>"
syn match HLGray33BgW               "\<HLGray33BgW\>"
syn match HLGrey33BgW               "\<HLGrey33BgW\>"
syn match HLGray34BgW               "\<HLGray34BgW\>"
syn match HLGrey34BgW               "\<HLGrey34BgW\>"
syn match HLGray35BgW               "\<HLGray35BgW\>"
syn match HLGrey35BgW               "\<HLGrey35BgW\>"
syn match HLGray36BgW               "\<HLGray36BgW\>"
syn match HLGrey36BgW               "\<HLGrey36BgW\>"
syn match HLGray37BgW               "\<HLGray37BgW\>"
syn match HLGrey37BgW               "\<HLGrey37BgW\>"
syn match HLGray38BgW               "\<HLGray38BgW\>"
syn match HLGrey38BgW               "\<HLGrey38BgW\>"
syn match HLGray39BgW               "\<HLGray39BgW\>"
syn match HLGrey39BgW               "\<HLGrey39BgW\>"
syn match HLGray40BgW               "\<HLGray40BgW\>"
syn match HLGrey40BgW               "\<HLGrey40BgW\>"
syn match HLGray41BgW               "\<HLGray41BgW\>"
syn match HLGrey41BgW               "\<HLGrey41BgW\>"
syn match HLGray42BgW               "\<HLGray42BgW\>"
syn match HLGrey42BgW               "\<HLGrey42BgW\>"
syn match HLGray43BgW               "\<HLGray43BgW\>"
syn match HLGrey43BgW               "\<HLGrey43BgW\>"
syn match HLGray44BgW               "\<HLGray44BgW\>"
syn match HLGrey44BgW               "\<HLGrey44BgW\>"
syn match HLGray45BgW               "\<HLGray45BgW\>"
syn match HLGrey45BgW               "\<HLGrey45BgW\>"
syn match HLGray46BgW               "\<HLGray46BgW\>"
syn match HLGrey46BgW               "\<HLGrey46BgW\>"
syn match HLGray47BgW               "\<HLGray47BgW\>"
syn match HLGrey47BgW               "\<HLGrey47BgW\>"
syn match HLGray48BgW               "\<HLGray48BgW\>"
syn match HLGrey48BgW               "\<HLGrey48BgW\>"
syn match HLGray49BgW               "\<HLGray49BgW\>"
syn match HLGrey49BgW               "\<HLGrey49BgW\>"
syn match HLGray50BgW               "\<HLGray50BgW\>"
syn match HLGrey50BgW               "\<HLGrey50BgW\>"
syn match HLGray51BgW               "\<HLGray51BgW\>"
syn match HLGrey51BgW               "\<HLGrey51BgW\>"
syn match HLGray52BgW               "\<HLGray52BgW\>"
syn match HLGrey52BgW               "\<HLGrey52BgW\>"
syn match HLGray53BgW               "\<HLGray53BgW\>"
syn match HLGrey53BgW               "\<HLGrey53BgW\>"
syn match HLGray54BgW               "\<HLGray54BgW\>"
syn match HLGrey54BgW               "\<HLGrey54BgW\>"
syn match HLGray55BgW               "\<HLGray55BgW\>"
syn match HLGrey55BgW               "\<HLGrey55BgW\>"
syn match HLGray56BgW               "\<HLGray56BgW\>"
syn match HLGrey56BgW               "\<HLGrey56BgW\>"
syn match HLGray57BgW               "\<HLGray57BgW\>"
syn match HLGrey57BgW               "\<HLGrey57BgW\>"
syn match HLGray58BgW               "\<HLGray58BgW\>"
syn match HLGrey58BgW               "\<HLGrey58BgW\>"
syn match HLGray59BgW               "\<HLGray59BgW\>"
syn match HLGrey59BgW               "\<HLGrey59BgW\>"
syn match HLGray60BgW               "\<HLGray60BgW\>"
syn match HLGrey60BgW               "\<HLGrey60BgW\>"
syn match HLGray61BgW               "\<HLGray61BgW\>"
syn match HLGrey61BgW               "\<HLGrey61BgW\>"
syn match HLGray62BgW               "\<HLGray62BgW\>"
syn match HLGrey62BgW               "\<HLGrey62BgW\>"
syn match HLGray63BgW               "\<HLGray63BgW\>"
syn match HLGrey63BgW               "\<HLGrey63BgW\>"
syn match HLGray64BgW               "\<HLGray64BgW\>"
syn match HLGrey64BgW               "\<HLGrey64BgW\>"
syn match HLGray65BgW               "\<HLGray65BgW\>"
syn match HLGrey65BgW               "\<HLGrey65BgW\>"
syn match HLGray66BgW               "\<HLGray66BgW\>"
syn match HLGrey66BgW               "\<HLGrey66BgW\>"
syn match HLGray67BgW               "\<HLGray67BgW\>"
syn match HLGrey67BgW               "\<HLGrey67BgW\>"
syn match HLGray68BgW               "\<HLGray68BgW\>"
syn match HLGrey68BgW               "\<HLGrey68BgW\>"
syn match HLGray69BgW               "\<HLGray69BgW\>"
syn match HLGrey69BgW               "\<HLGrey69BgW\>"
syn match HLGray70BgW               "\<HLGray70BgW\>"
syn match HLGrey70BgW               "\<HLGrey70BgW\>"
syn match HLGray71BgW               "\<HLGray71BgW\>"
syn match HLGrey71BgW               "\<HLGrey71BgW\>"
syn match HLGray72BgW               "\<HLGray72BgW\>"
syn match HLGrey72BgW               "\<HLGrey72BgW\>"
syn match HLGray73BgW               "\<HLGray73BgW\>"
syn match HLGrey73BgW               "\<HLGrey73BgW\>"
syn match HLGray74BgW               "\<HLGray74BgW\>"
syn match HLGrey74BgW               "\<HLGrey74BgW\>"
syn match HLGray75BgW               "\<HLGray75BgW\>"
syn match HLGrey75BgW               "\<HLGrey75BgW\>"
syn match HLGray76BgW               "\<HLGray76BgW\>"
syn match HLGrey76BgW               "\<HLGrey76BgW\>"
syn match HLGray77BgW               "\<HLGray77BgW\>"
syn match HLGrey77BgW               "\<HLGrey77BgW\>"
syn match HLGray78BgW               "\<HLGray78BgW\>"
syn match HLGrey78BgW               "\<HLGrey78BgW\>"
syn match HLGray79BgW               "\<HLGray79BgW\>"
syn match HLGrey79BgW               "\<HLGrey79BgW\>"
syn match HLGray80BgW               "\<HLGray80BgW\>"
syn match HLGrey80BgW               "\<HLGrey80BgW\>"
syn match HLGray81BgW               "\<HLGray81BgW\>"
syn match HLGrey81BgW               "\<HLGrey81BgW\>"
syn match HLGray82BgW               "\<HLGray82BgW\>"
syn match HLGrey82BgW               "\<HLGrey82BgW\>"
syn match HLGray83BgW               "\<HLGray83BgW\>"
syn match HLGrey83BgW               "\<HLGrey83BgW\>"
syn match HLGray84BgW               "\<HLGray84BgW\>"
syn match HLGrey84BgW               "\<HLGrey84BgW\>"
syn match HLGray85BgW               "\<HLGray85BgW\>"
syn match HLGrey85BgW               "\<HLGrey85BgW\>"
syn match HLGray86BgW               "\<HLGray86BgW\>"
syn match HLGrey86BgW               "\<HLGrey86BgW\>"
syn match HLGray87BgW               "\<HLGray87BgW\>"
syn match HLGrey87BgW               "\<HLGrey87BgW\>"
syn match HLGray88BgW               "\<HLGray88BgW\>"
syn match HLGrey88BgW               "\<HLGrey88BgW\>"
syn match HLGray89BgW               "\<HLGray89BgW\>"
syn match HLGrey89BgW               "\<HLGrey89BgW\>"
syn match HLGray90BgW               "\<HLGray90BgW\>"
syn match HLGrey90BgW               "\<HLGrey90BgW\>"
syn match HLGray91BgW               "\<HLGray91BgW\>"
syn match HLGrey91BgW               "\<HLGrey91BgW\>"
syn match HLGray92BgW               "\<HLGray92BgW\>"
syn match HLGrey92BgW               "\<HLGrey92BgW\>"
syn match HLGray93BgW               "\<HLGray93BgW\>"
syn match HLGrey93BgW               "\<HLGrey93BgW\>"
syn match HLGray94BgW               "\<HLGray94BgW\>"
syn match HLGrey94BgW               "\<HLGrey94BgW\>"
syn match HLGray95BgW               "\<HLGray95BgW\>"
syn match HLGrey95BgW               "\<HLGrey95BgW\>"
syn match HLGray96BgW               "\<HLGray96BgW\>"
syn match HLGrey96BgW               "\<HLGrey96BgW\>"
syn match HLGray97BgW               "\<HLGray97BgW\>"
syn match HLGrey97BgW               "\<HLGrey97BgW\>"
syn match HLGray98BgW               "\<HLGray98BgW\>"
syn match HLGrey98BgW               "\<HLGrey98BgW\>"
syn match HLGray99BgW               "\<HLGray99BgW\>"
syn match HLGrey99BgW               "\<HLGrey99BgW\>"
syn match HLGray100BgW              "\<HLGray100BgW\>"
syn match HLGrey100BgW              "\<HLGrey100BgW\>"
syn match HLDarkgreyBgW             "\<HLDarkgreyBgW\>"
syn match HLDarkgrayBgW             "\<HLDarkgrayBgW\>"
syn match HLDarkblueBgW             "\<HLDarkblueBgW\>"
syn match HLDarkcyanBgW             "\<HLDarkcyanBgW\>"
syn match HLDarkmagentaBgW          "\<HLDarkmagentaBgW\>"
syn match HLDarkredBgW              "\<HLDarkredBgW\>"
syn match HLLightgreenBgW           "\<HLLightgreenBgW\>"
syn match HLCrimsonBgW              "\<HLCrimsonBgW\>"
syn match HLIndigoBgW               "\<HLIndigoBgW\>"
syn match HLOliveBgW                "\<HLOliveBgW\>"
syn match HLRebeccapurpleBgW        "\<HLRebeccapurpleBgW\>"
syn match HLSilverBgW               "\<HLSilverBgW\>"
syn match HLTealBgW                 "\<HLTealBgW\>"
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Cterm bold colors (colors in vim with no GUI)
" NOTE: You can also see the colors below in vim with no GUI
hi default HLCterm0           cterm=bold ctermfg=0
hi default HLCterm1           cterm=bold ctermfg=1
hi default HLCterm2           cterm=bold ctermfg=2
hi default HLCterm3           cterm=bold ctermfg=3
hi default HLCterm4           cterm=bold ctermfg=4
hi default HLCterm5           cterm=bold ctermfg=5
hi default HLCterm6           cterm=bold ctermfg=6
hi default HLCterm7           cterm=bold ctermfg=7
hi default HLCterm8           cterm=bold ctermfg=8
hi default HLCterm9           cterm=bold ctermfg=9
hi default HLCterm10          cterm=bold ctermfg=10
hi default HLCterm11          cterm=bold ctermfg=11
hi default HLCterm12          cterm=bold ctermfg=12
hi default HLCterm13          cterm=bold ctermfg=13
hi default HLCterm14          cterm=bold ctermfg=14
hi default HLCterm15          cterm=bold ctermfg=15
hi default HLCterm16          cterm=bold ctermfg=16
hi default HLCterm17          cterm=bold ctermfg=17
hi default HLCterm18          cterm=bold ctermfg=18
hi default HLCterm19          cterm=bold ctermfg=19
hi default HLCterm20          cterm=bold ctermfg=20
hi default HLCterm21          cterm=bold ctermfg=21
hi default HLCterm22          cterm=bold ctermfg=22
hi default HLCterm23          cterm=bold ctermfg=23
hi default HLCterm24          cterm=bold ctermfg=24
hi default HLCterm25          cterm=bold ctermfg=25
hi default HLCterm26          cterm=bold ctermfg=26
hi default HLCterm27          cterm=bold ctermfg=27
hi default HLCterm28          cterm=bold ctermfg=28
hi default HLCterm29          cterm=bold ctermfg=29
hi default HLCterm30          cterm=bold ctermfg=30
hi default HLCterm31          cterm=bold ctermfg=31
hi default HLCterm32          cterm=bold ctermfg=32
hi default HLCterm33          cterm=bold ctermfg=33
hi default HLCterm34          cterm=bold ctermfg=34
hi default HLCterm35          cterm=bold ctermfg=35
hi default HLCterm36          cterm=bold ctermfg=36
hi default HLCterm37          cterm=bold ctermfg=37
hi default HLCterm38          cterm=bold ctermfg=38
hi default HLCterm39          cterm=bold ctermfg=39
hi default HLCterm40          cterm=bold ctermfg=40
hi default HLCterm41          cterm=bold ctermfg=41
hi default HLCterm42          cterm=bold ctermfg=42
hi default HLCterm43          cterm=bold ctermfg=43
hi default HLCterm44          cterm=bold ctermfg=44
hi default HLCterm45          cterm=bold ctermfg=45
hi default HLCterm46          cterm=bold ctermfg=46
hi default HLCterm47          cterm=bold ctermfg=47
hi default HLCterm48          cterm=bold ctermfg=48
hi default HLCterm49          cterm=bold ctermfg=49
hi default HLCterm50          cterm=bold ctermfg=50
hi default HLCterm51          cterm=bold ctermfg=51
hi default HLCterm52          cterm=bold ctermfg=52
hi default HLCterm53          cterm=bold ctermfg=53
hi default HLCterm54          cterm=bold ctermfg=54
hi default HLCterm55          cterm=bold ctermfg=55
hi default HLCterm56          cterm=bold ctermfg=56
hi default HLCterm57          cterm=bold ctermfg=57
hi default HLCterm58          cterm=bold ctermfg=58
hi default HLCterm59          cterm=bold ctermfg=59
hi default HLCterm60          cterm=bold ctermfg=60
hi default HLCterm61          cterm=bold ctermfg=61
hi default HLCterm62          cterm=bold ctermfg=62
hi default HLCterm63          cterm=bold ctermfg=63
hi default HLCterm64          cterm=bold ctermfg=64
hi default HLCterm65          cterm=bold ctermfg=65
hi default HLCterm66          cterm=bold ctermfg=66
hi default HLCterm67          cterm=bold ctermfg=67
hi default HLCterm68          cterm=bold ctermfg=68
hi default HLCterm69          cterm=bold ctermfg=69
hi default HLCterm70          cterm=bold ctermfg=70
hi default HLCterm71          cterm=bold ctermfg=71
hi default HLCterm72          cterm=bold ctermfg=72
hi default HLCterm73          cterm=bold ctermfg=73
hi default HLCterm74          cterm=bold ctermfg=74
hi default HLCterm75          cterm=bold ctermfg=75
hi default HLCterm76          cterm=bold ctermfg=76
hi default HLCterm77          cterm=bold ctermfg=77
hi default HLCterm78          cterm=bold ctermfg=78
hi default HLCterm79          cterm=bold ctermfg=79
hi default HLCterm80          cterm=bold ctermfg=80
hi default HLCterm81          cterm=bold ctermfg=81
hi default HLCterm82          cterm=bold ctermfg=82
hi default HLCterm83          cterm=bold ctermfg=83
hi default HLCterm84          cterm=bold ctermfg=84
hi default HLCterm85          cterm=bold ctermfg=85
hi default HLCterm86          cterm=bold ctermfg=86
hi default HLCterm87          cterm=bold ctermfg=87
hi default HLCterm88          cterm=bold ctermfg=88
hi default HLCterm89          cterm=bold ctermfg=89
hi default HLCterm90          cterm=bold ctermfg=90
hi default HLCterm91          cterm=bold ctermfg=91
hi default HLCterm92          cterm=bold ctermfg=92
hi default HLCterm93          cterm=bold ctermfg=93
hi default HLCterm94          cterm=bold ctermfg=94
hi default HLCterm95          cterm=bold ctermfg=95
hi default HLCterm96          cterm=bold ctermfg=96
hi default HLCterm97          cterm=bold ctermfg=97
hi default HLCterm98          cterm=bold ctermfg=98
hi default HLCterm99          cterm=bold ctermfg=99
hi default HLCterm100         cterm=bold ctermfg=100
hi default HLCterm101         cterm=bold ctermfg=101
hi default HLCterm102         cterm=bold ctermfg=102
hi default HLCterm103         cterm=bold ctermfg=103
hi default HLCterm104         cterm=bold ctermfg=104
hi default HLCterm105         cterm=bold ctermfg=105
hi default HLCterm106         cterm=bold ctermfg=106
hi default HLCterm107         cterm=bold ctermfg=107
hi default HLCterm108         cterm=bold ctermfg=108
hi default HLCterm109         cterm=bold ctermfg=109
hi default HLCterm110         cterm=bold ctermfg=110
hi default HLCterm111         cterm=bold ctermfg=111
hi default HLCterm112         cterm=bold ctermfg=112
hi default HLCterm113         cterm=bold ctermfg=113
hi default HLCterm114         cterm=bold ctermfg=114
hi default HLCterm115         cterm=bold ctermfg=115
hi default HLCterm116         cterm=bold ctermfg=116
hi default HLCterm117         cterm=bold ctermfg=117
hi default HLCterm118         cterm=bold ctermfg=118
hi default HLCterm119         cterm=bold ctermfg=119
hi default HLCterm120         cterm=bold ctermfg=120
hi default HLCterm121         cterm=bold ctermfg=121
hi default HLCterm122         cterm=bold ctermfg=122
hi default HLCterm123         cterm=bold ctermfg=123
hi default HLCterm124         cterm=bold ctermfg=124
hi default HLCterm125         cterm=bold ctermfg=125
hi default HLCterm126         cterm=bold ctermfg=126
hi default HLCterm127         cterm=bold ctermfg=127
hi default HLCterm128         cterm=bold ctermfg=128
hi default HLCterm129         cterm=bold ctermfg=129
hi default HLCterm130         cterm=bold ctermfg=130
hi default HLCterm131         cterm=bold ctermfg=131
hi default HLCterm132         cterm=bold ctermfg=132
hi default HLCterm133         cterm=bold ctermfg=133
hi default HLCterm134         cterm=bold ctermfg=134
hi default HLCterm135         cterm=bold ctermfg=135
hi default HLCterm136         cterm=bold ctermfg=136
hi default HLCterm137         cterm=bold ctermfg=137
hi default HLCterm138         cterm=bold ctermfg=138
hi default HLCterm139         cterm=bold ctermfg=139
hi default HLCterm140         cterm=bold ctermfg=140
hi default HLCterm141         cterm=bold ctermfg=141
hi default HLCterm142         cterm=bold ctermfg=142
hi default HLCterm143         cterm=bold ctermfg=143
hi default HLCterm144         cterm=bold ctermfg=144
hi default HLCterm145         cterm=bold ctermfg=145
hi default HLCterm146         cterm=bold ctermfg=146
hi default HLCterm147         cterm=bold ctermfg=147
hi default HLCterm148         cterm=bold ctermfg=148
hi default HLCterm149         cterm=bold ctermfg=149
hi default HLCterm150         cterm=bold ctermfg=150
hi default HLCterm151         cterm=bold ctermfg=151
hi default HLCterm152         cterm=bold ctermfg=152
hi default HLCterm153         cterm=bold ctermfg=153
hi default HLCterm154         cterm=bold ctermfg=154
hi default HLCterm155         cterm=bold ctermfg=155
hi default HLCterm156         cterm=bold ctermfg=156
hi default HLCterm157         cterm=bold ctermfg=157
hi default HLCterm158         cterm=bold ctermfg=158
hi default HLCterm159         cterm=bold ctermfg=159
hi default HLCterm160         cterm=bold ctermfg=160
hi default HLCterm161         cterm=bold ctermfg=161
hi default HLCterm162         cterm=bold ctermfg=162
hi default HLCterm163         cterm=bold ctermfg=163
hi default HLCterm164         cterm=bold ctermfg=164
hi default HLCterm165         cterm=bold ctermfg=165
hi default HLCterm166         cterm=bold ctermfg=166
hi default HLCterm167         cterm=bold ctermfg=167
hi default HLCterm168         cterm=bold ctermfg=168
hi default HLCterm169         cterm=bold ctermfg=169
hi default HLCterm170         cterm=bold ctermfg=170
hi default HLCterm171         cterm=bold ctermfg=171
hi default HLCterm172         cterm=bold ctermfg=172
hi default HLCterm173         cterm=bold ctermfg=173
hi default HLCterm174         cterm=bold ctermfg=174
hi default HLCterm175         cterm=bold ctermfg=175
hi default HLCterm176         cterm=bold ctermfg=176
hi default HLCterm177         cterm=bold ctermfg=177
hi default HLCterm178         cterm=bold ctermfg=178
hi default HLCterm179         cterm=bold ctermfg=179
hi default HLCterm180         cterm=bold ctermfg=180
hi default HLCterm181         cterm=bold ctermfg=181
hi default HLCterm182         cterm=bold ctermfg=182
hi default HLCterm183         cterm=bold ctermfg=183
hi default HLCterm184         cterm=bold ctermfg=184
hi default HLCterm185         cterm=bold ctermfg=185
hi default HLCterm186         cterm=bold ctermfg=186
hi default HLCterm187         cterm=bold ctermfg=187
hi default HLCterm188         cterm=bold ctermfg=188
hi default HLCterm189         cterm=bold ctermfg=189
hi default HLCterm190         cterm=bold ctermfg=190
hi default HLCterm191         cterm=bold ctermfg=191
hi default HLCterm192         cterm=bold ctermfg=192
hi default HLCterm193         cterm=bold ctermfg=193
hi default HLCterm194         cterm=bold ctermfg=194
hi default HLCterm195         cterm=bold ctermfg=195
hi default HLCterm196         cterm=bold ctermfg=196
hi default HLCterm197         cterm=bold ctermfg=197
hi default HLCterm198         cterm=bold ctermfg=198
hi default HLCterm199         cterm=bold ctermfg=199
hi default HLCterm200         cterm=bold ctermfg=200
hi default HLCterm201         cterm=bold ctermfg=201
hi default HLCterm202         cterm=bold ctermfg=202
hi default HLCterm203         cterm=bold ctermfg=203
hi default HLCterm204         cterm=bold ctermfg=204
hi default HLCterm205         cterm=bold ctermfg=205
hi default HLCterm206         cterm=bold ctermfg=206
hi default HLCterm207         cterm=bold ctermfg=207
hi default HLCterm208         cterm=bold ctermfg=208
hi default HLCterm209         cterm=bold ctermfg=209
hi default HLCterm210         cterm=bold ctermfg=210
hi default HLCterm211         cterm=bold ctermfg=211
hi default HLCterm212         cterm=bold ctermfg=212
hi default HLCterm213         cterm=bold ctermfg=213
hi default HLCterm214         cterm=bold ctermfg=214
hi default HLCterm215         cterm=bold ctermfg=215
hi default HLCterm216         cterm=bold ctermfg=216
hi default HLCterm217         cterm=bold ctermfg=217
hi default HLCterm218         cterm=bold ctermfg=218
hi default HLCterm219         cterm=bold ctermfg=219
hi default HLCterm220         cterm=bold ctermfg=220
hi default HLCterm221         cterm=bold ctermfg=221
hi default HLCterm222         cterm=bold ctermfg=222
hi default HLCterm223         cterm=bold ctermfg=223
hi default HLCterm224         cterm=bold ctermfg=224
hi default HLCterm225         cterm=bold ctermfg=225
hi default HLCterm226         cterm=bold ctermfg=226
hi default HLCterm227         cterm=bold ctermfg=227
hi default HLCterm228         cterm=bold ctermfg=228
hi default HLCterm229         cterm=bold ctermfg=229
hi default HLCterm230         cterm=bold ctermfg=230
hi default HLCterm231         cterm=bold ctermfg=231
hi default HLCterm232         cterm=bold ctermfg=232
hi default HLCterm233         cterm=bold ctermfg=233
hi default HLCterm234         cterm=bold ctermfg=234
hi default HLCterm235         cterm=bold ctermfg=235
hi default HLCterm236         cterm=bold ctermfg=236
hi default HLCterm237         cterm=bold ctermfg=237
hi default HLCterm238         cterm=bold ctermfg=238
hi default HLCterm239         cterm=bold ctermfg=239
hi default HLCterm240         cterm=bold ctermfg=240
hi default HLCterm241         cterm=bold ctermfg=241
hi default HLCterm242         cterm=bold ctermfg=242
hi default HLCterm243         cterm=bold ctermfg=243
hi default HLCterm244         cterm=bold ctermfg=244
hi default HLCterm245         cterm=bold ctermfg=245
hi default HLCterm246         cterm=bold ctermfg=246
hi default HLCterm247         cterm=bold ctermfg=247
hi default HLCterm248         cterm=bold ctermfg=248
hi default HLCterm249         cterm=bold ctermfg=249
hi default HLCterm250         cterm=bold ctermfg=250
hi default HLCterm251         cterm=bold ctermfg=251
hi default HLCterm252         cterm=bold ctermfg=252
hi default HLCterm253         cterm=bold ctermfg=253
hi default HLCterm254         cterm=bold ctermfg=254
hi default HLCterm255         cterm=bold ctermfg=255
hi default HLCterm256         cterm=bold ctermfg=256
"------------------------------------------------------------------------------

" Other syntax matchings were cleared to improve this file's performance
" So recreating basic matchings just for this file.
hi  link    AllColorsMatch1   Statement
syn match   AllColorsMatch1   '\<syn\>'
syn match   AllColorsMatch1   '\<hi\>'

hi  link    AllColorsMatch2   Type
syn match   AllColorsMatch2   '\<\%(match\|default\|link\|bold\|underline\|exists\)\>'

hi  link    AllColorsMatch3   Comment
syn match   AllColorsMatch3   "^ *\".*"

hi  link    AllColorsMatch4   Function
syn match   AllColorsMatch4   '\<gui\%(\|fg\|bg\)\>'
syn match   AllColorsMatch4   '\<cterm\%(\|fg\|bg\)\>'

hi  link    AllColorsMatch5   Conditional
syn match   AllColorsMatch5   '\<\%(if\|endif\)\>'

hi  link    AllColorsHLNote   Note
syn match   AllColorsHLNote   "\<NOTE\%(:\|\>\)\@=" contained containedin=AllColorsMatch3

