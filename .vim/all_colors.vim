"==============================================================================
" File: all_colors.vim
"------------------------------------------------------------------------------
" Description: Contains all the colors available in Vim.
" NOTE: See also custom_colorscheme.vim. and colors.vim.
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
syn keyword   HLSnow                 HLSnow
syn keyword   HLGhostwhite           HLGhostwhite
syn keyword   HLWhitesmoke           HLWhitesmoke
syn keyword   HLGainsboro            HLGainsboro
syn keyword   HLFloralwhite          HLFloralwhite
syn keyword   HLOldlace              HLOldlace
syn keyword   HLLinen                HLLinen
syn keyword   HLAntiquewhite         HLAntiquewhite
syn keyword   HLPapayawhip           HLPapayawhip
syn keyword   HLBlanchedalmond       HLBlanchedalmond
syn keyword   HLBisque               HLBisque
syn keyword   HLPeachpuff            HLPeachpuff
syn keyword   HLNavajowhite          HLNavajowhite
syn keyword   HLMoccasin             HLMoccasin
syn keyword   HLCornsilk             HLCornsilk
syn keyword   HLIvory                HLIvory
syn keyword   HLLemonchiffon         HLLemonchiffon
syn keyword   HLSeashell             HLSeashell
syn keyword   HLHoneydew             HLHoneydew
syn keyword   HLMintcream            HLMintcream
syn keyword   HLAzure                HLAzure
syn keyword   HLAliceblue            HLAliceblue
syn keyword   HLLavender             HLLavender
syn keyword   HLLavenderblush        HLLavenderblush
syn keyword   HLMistyrose            HLMistyrose
syn keyword   HLWhite                HLWhite
syn keyword   HLBlack                HLBlack
syn keyword   HLDarkslategray        HLDarkslategray
syn keyword   HLDarkslategrey        HLDarkslategrey
syn keyword   HLDimgray              HLDimgray
syn keyword   HLDimgrey              HLDimgrey
syn keyword   HLSlategray            HLSlategray
syn keyword   HLSlategrey            HLSlategrey
syn keyword   HLLightslategray       HLLightslategray
syn keyword   HLLightslategrey       HLLightslategrey
syn keyword   HLGray                 HLGray
syn keyword   HLGrey                 HLGrey
syn keyword   HLX11gray              HLX11gray
syn keyword   HLX11grey              HLX11grey
syn keyword   HLWebgray              HLWebgray
syn keyword   HLWebgrey              HLWebgrey
syn keyword   HLLightgrey            HLLightgrey
syn keyword   HLLightgray            HLLightgray
syn keyword   HLMidnightblue         HLMidnightblue
syn keyword   HLNavy                 HLNavy
syn keyword   HLNavyblue             HLNavyblue
syn keyword   HLCornflowerblue       HLCornflowerblue
syn keyword   HLDarkslateblue        HLDarkslateblue
syn keyword   HLSlateblue            HLSlateblue
syn keyword   HLMediumslateblue      HLMediumslateblue
syn keyword   HLLightslateblue       HLLightslateblue
syn keyword   HLMediumblue           HLMediumblue
syn keyword   HLRoyalblue            HLRoyalblue
syn keyword   HLBlue                 HLBlue
syn keyword   HLDodgerblue           HLDodgerblue
syn keyword   HLDeepskyblue          HLDeepskyblue
syn keyword   HLSkyblue              HLSkyblue
syn keyword   HLLightskyblue         HLLightskyblue
syn keyword   HLSteelblue            HLSteelblue
syn keyword   HLLightsteelblue       HLLightsteelblue
syn keyword   HLLightblue            HLLightblue
syn keyword   HLPowderblue           HLPowderblue
syn keyword   HLPaleturquoise        HLPaleturquoise
syn keyword   HLDarkturquoise        HLDarkturquoise
syn keyword   HLMediumturquoise      HLMediumturquoise
syn keyword   HLTurquoise            HLTurquoise
syn keyword   HLCyan                 HLCyan
syn keyword   HLAqua                 HLAqua
syn keyword   HLLightcyan            HLLightcyan
syn keyword   HLCadetblue            HLCadetblue
syn keyword   HLMediumaquamarine     HLMediumaquamarine
syn keyword   HLAquamarine           HLAquamarine
syn keyword   HLDarkgreen            HLDarkgreen
syn keyword   HLDarkolivegreen       HLDarkolivegreen
syn keyword   HLDarkseagreen         HLDarkseagreen
syn keyword   HLSeagreen             HLSeagreen
syn keyword   HLMediumseagreen       HLMediumseagreen
syn keyword   HLLightseagreen        HLLightseagreen
syn keyword   HLPalegreen            HLPalegreen
syn keyword   HLSpringgreen          HLSpringgreen
syn keyword   HLLawngreen            HLLawngreen
syn keyword   HLGreen                HLGreen
syn keyword   HLLime                 HLLime
syn keyword   HLX11green             HLX11green
syn keyword   HLWebgreen             HLWebgreen
syn keyword   HLChartreuse           HLChartreuse
syn keyword   HLMediumspringgreen    HLMediumspringgreen
syn keyword   HLGreenyellow          HLGreenyellow
syn keyword   HLLimegreen            HLLimegreen
syn keyword   HLYellowgreen          HLYellowgreen
syn keyword   HLForestgreen          HLForestgreen
syn keyword   HLOlivedrab            HLOlivedrab
syn keyword   HLDarkkhaki            HLDarkkhaki
syn keyword   HLKhaki                HLKhaki
syn keyword   HLPalegoldenrod        HLPalegoldenrod
syn keyword   HLLightgoldenrodyellow HLLightgoldenrodyellow
syn keyword   HLLightyellow          HLLightyellow
syn keyword   HLYellow               HLYellow
syn keyword   HLGold                 HLGold
syn keyword   HLLightgoldenrod       HLLightgoldenrod
syn keyword   HLGoldenrod            HLGoldenrod
syn keyword   HLDarkgoldenrod        HLDarkgoldenrod
syn keyword   HLRosybrown            HLRosybrown
syn keyword   HLIndianred            HLIndianred
syn keyword   HLSaddlebrown          HLSaddlebrown
syn keyword   HLSienna               HLSienna
syn keyword   HLPeru                 HLPeru
syn keyword   HLBurlywood            HLBurlywood
syn keyword   HLBeige                HLBeige
syn keyword   HLWheat                HLWheat
syn keyword   HLSandybrown           HLSandybrown
syn keyword   HLTan                  HLTan
syn keyword   HLChocolate            HLChocolate
syn keyword   HLFirebrick            HLFirebrick
syn keyword   HLBrown                HLBrown
syn keyword   HLDarksalmon           HLDarksalmon
syn keyword   HLSalmon               HLSalmon
syn keyword   HLLightsalmon          HLLightsalmon
syn keyword   HLOrange               HLOrange
syn keyword   HLDarkorange           HLDarkorange
syn keyword   HLCoral                HLCoral
syn keyword   HLLightcoral           HLLightcoral
syn keyword   HLTomato               HLTomato
syn keyword   HLOrangered            HLOrangered
syn keyword   HLRed                  HLRed
syn keyword   HLHotpink              HLHotpink
syn keyword   HLDeeppink             HLDeeppink
syn keyword   HLPink                 HLPink
syn keyword   HLLightpink            HLLightpink
syn keyword   HLPalevioletred        HLPalevioletred
syn keyword   HLMaroon               HLMaroon
syn keyword   HLX11maroon            HLX11maroon
syn keyword   HLWebmaroon            HLWebmaroon
syn keyword   HLMediumvioletred      HLMediumvioletred
syn keyword   HLVioletred            HLVioletred
syn keyword   HLMagenta              HLMagenta
syn keyword   HLFuchsia              HLFuchsia
syn keyword   HLViolet               HLViolet
syn keyword   HLPlum                 HLPlum
syn keyword   HLOrchid               HLOrchid
syn keyword   HLMediumorchid         HLMediumorchid
syn keyword   HLDarkorchid           HLDarkorchid
syn keyword   HLDarkviolet           HLDarkviolet
syn keyword   HLBlueviolet           HLBlueviolet
syn keyword   HLPurple               HLPurple
syn keyword   HLX11purple            HLX11purple
syn keyword   HLWebpurple            HLWebpurple
syn keyword   HLMediumpurple         HLMediumpurple
syn keyword   HLThistle              HLThistle
syn keyword   HLSnow1                HLSnow1
syn keyword   HLSnow2                HLSnow2
syn keyword   HLSnow3                HLSnow3
syn keyword   HLSnow4                HLSnow4
syn keyword   HLSeashell1            HLSeashell1
syn keyword   HLSeashell2            HLSeashell2
syn keyword   HLSeashell3            HLSeashell3
syn keyword   HLSeashell4            HLSeashell4
syn keyword   HLAntiquewhite1        HLAntiquewhite1
syn keyword   HLAntiquewhite2        HLAntiquewhite2
syn keyword   HLAntiquewhite3        HLAntiquewhite3
syn keyword   HLAntiquewhite4        HLAntiquewhite4
syn keyword   HLBisque1              HLBisque1
syn keyword   HLBisque2              HLBisque2
syn keyword   HLBisque3              HLBisque3
syn keyword   HLBisque4              HLBisque4
syn keyword   HLPeachpuff1           HLPeachpuff1
syn keyword   HLPeachpuff2           HLPeachpuff2
syn keyword   HLPeachpuff3           HLPeachpuff3
syn keyword   HLPeachpuff4           HLPeachpuff4
syn keyword   HLNavajowhite1         HLNavajowhite1
syn keyword   HLNavajowhite2         HLNavajowhite2
syn keyword   HLNavajowhite3         HLNavajowhite3
syn keyword   HLNavajowhite4         HLNavajowhite4
syn keyword   HLLemonchiffon1        HLLemonchiffon1
syn keyword   HLLemonchiffon2        HLLemonchiffon2
syn keyword   HLLemonchiffon3        HLLemonchiffon3
syn keyword   HLLemonchiffon4        HLLemonchiffon4
syn keyword   HLCornsilk1            HLCornsilk1
syn keyword   HLCornsilk2            HLCornsilk2
syn keyword   HLCornsilk3            HLCornsilk3
syn keyword   HLCornsilk4            HLCornsilk4
syn keyword   HLIvory1               HLIvory1
syn keyword   HLIvory2               HLIvory2
syn keyword   HLIvory3               HLIvory3
syn keyword   HLIvory4               HLIvory4
syn keyword   HLHoneydew1            HLHoneydew1
syn keyword   HLHoneydew2            HLHoneydew2
syn keyword   HLHoneydew3            HLHoneydew3
syn keyword   HLHoneydew4            HLHoneydew4
syn keyword   HLLavenderblush1       HLLavenderblush1
syn keyword   HLLavenderblush2       HLLavenderblush2
syn keyword   HLLavenderblush3       HLLavenderblush3
syn keyword   HLLavenderblush4       HLLavenderblush4
syn keyword   HLMistyrose1           HLMistyrose1
syn keyword   HLMistyrose2           HLMistyrose2
syn keyword   HLMistyrose3           HLMistyrose3
syn keyword   HLMistyrose4           HLMistyrose4
syn keyword   HLAzure1               HLAzure1
syn keyword   HLAzure2               HLAzure2
syn keyword   HLAzure3               HLAzure3
syn keyword   HLAzure4               HLAzure4
syn keyword   HLSlateblue1           HLSlateblue1
syn keyword   HLSlateblue2           HLSlateblue2
syn keyword   HLSlateblue3           HLSlateblue3
syn keyword   HLSlateblue4           HLSlateblue4
syn keyword   HLRoyalblue1           HLRoyalblue1
syn keyword   HLRoyalblue2           HLRoyalblue2
syn keyword   HLRoyalblue3           HLRoyalblue3
syn keyword   HLRoyalblue4           HLRoyalblue4
syn keyword   HLBlue1                HLBlue1
syn keyword   HLBlue2                HLBlue2
syn keyword   HLBlue3                HLBlue3
syn keyword   HLBlue4                HLBlue4
syn keyword   HLDodgerblue1          HLDodgerblue1
syn keyword   HLDodgerblue2          HLDodgerblue2
syn keyword   HLDodgerblue3          HLDodgerblue3
syn keyword   HLDodgerblue4          HLDodgerblue4
syn keyword   HLSteelblue1           HLSteelblue1
syn keyword   HLSteelblue2           HLSteelblue2
syn keyword   HLSteelblue3           HLSteelblue3
syn keyword   HLSteelblue4           HLSteelblue4
syn keyword   HLDeepskyblue1         HLDeepskyblue1
syn keyword   HLDeepskyblue2         HLDeepskyblue2
syn keyword   HLDeepskyblue3         HLDeepskyblue3
syn keyword   HLDeepskyblue4         HLDeepskyblue4
syn keyword   HLSkyblue1             HLSkyblue1
syn keyword   HLSkyblue2             HLSkyblue2
syn keyword   HLSkyblue3             HLSkyblue3
syn keyword   HLSkyblue4             HLSkyblue4
syn keyword   HLLightskyblue1        HLLightskyblue1
syn keyword   HLLightskyblue2        HLLightskyblue2
syn keyword   HLLightskyblue3        HLLightskyblue3
syn keyword   HLLightskyblue4        HLLightskyblue4
syn keyword   HLSlategray1           HLSlategray1
syn keyword   HLSlategray2           HLSlategray2
syn keyword   HLSlategray3           HLSlategray3
syn keyword   HLSlategray4           HLSlategray4
syn keyword   HLLightsteelblue1      HLLightsteelblue1
syn keyword   HLLightsteelblue2      HLLightsteelblue2
syn keyword   HLLightsteelblue3      HLLightsteelblue3
syn keyword   HLLightsteelblue4      HLLightsteelblue4
syn keyword   HLLightblue1           HLLightblue1
syn keyword   HLLightblue2           HLLightblue2
syn keyword   HLLightblue3           HLLightblue3
syn keyword   HLLightblue4           HLLightblue4
syn keyword   HLLightcyan1           HLLightcyan1
syn keyword   HLLightcyan2           HLLightcyan2
syn keyword   HLLightcyan3           HLLightcyan3
syn keyword   HLLightcyan4           HLLightcyan4
syn keyword   HLPaleturquoise1       HLPaleturquoise1
syn keyword   HLPaleturquoise2       HLPaleturquoise2
syn keyword   HLPaleturquoise3       HLPaleturquoise3
syn keyword   HLPaleturquoise4       HLPaleturquoise4
syn keyword   HLCadetblue1           HLCadetblue1
syn keyword   HLCadetblue2           HLCadetblue2
syn keyword   HLCadetblue3           HLCadetblue3
syn keyword   HLCadetblue4           HLCadetblue4
syn keyword   HLTurquoise1           HLTurquoise1
syn keyword   HLTurquoise2           HLTurquoise2
syn keyword   HLTurquoise3           HLTurquoise3
syn keyword   HLTurquoise4           HLTurquoise4
syn keyword   HLCyan1                HLCyan1
syn keyword   HLCyan2                HLCyan2
syn keyword   HLCyan3                HLCyan3
syn keyword   HLCyan4                HLCyan4
syn keyword   HLDarkslategray1       HLDarkslategray1
syn keyword   HLDarkslategray2       HLDarkslategray2
syn keyword   HLDarkslategray3       HLDarkslategray3
syn keyword   HLDarkslategray4       HLDarkslategray4
syn keyword   HLAquamarine1          HLAquamarine1
syn keyword   HLAquamarine2          HLAquamarine2
syn keyword   HLAquamarine3          HLAquamarine3
syn keyword   HLAquamarine4          HLAquamarine4
syn keyword   HLDarkseagreen1        HLDarkseagreen1
syn keyword   HLDarkseagreen2        HLDarkseagreen2
syn keyword   HLDarkseagreen3        HLDarkseagreen3
syn keyword   HLDarkseagreen4        HLDarkseagreen4
syn keyword   HLSeagreen1            HLSeagreen1
syn keyword   HLSeagreen2            HLSeagreen2
syn keyword   HLSeagreen3            HLSeagreen3
syn keyword   HLSeagreen4            HLSeagreen4
syn keyword   HLPalegreen1           HLPalegreen1
syn keyword   HLPalegreen2           HLPalegreen2
syn keyword   HLPalegreen3           HLPalegreen3
syn keyword   HLPalegreen4           HLPalegreen4
syn keyword   HLSpringgreen1         HLSpringgreen1
syn keyword   HLSpringgreen2         HLSpringgreen2
syn keyword   HLSpringgreen3         HLSpringgreen3
syn keyword   HLSpringgreen4         HLSpringgreen4
syn keyword   HLGreen1               HLGreen1
syn keyword   HLGreen2               HLGreen2
syn keyword   HLGreen3               HLGreen3
syn keyword   HLGreen4               HLGreen4
syn keyword   HLChartreuse1          HLChartreuse1
syn keyword   HLChartreuse2          HLChartreuse2
syn keyword   HLChartreuse3          HLChartreuse3
syn keyword   HLChartreuse4          HLChartreuse4
syn keyword   HLOlivedrab1           HLOlivedrab1
syn keyword   HLOlivedrab2           HLOlivedrab2
syn keyword   HLOlivedrab3           HLOlivedrab3
syn keyword   HLOlivedrab4           HLOlivedrab4
syn keyword   HLDarkolivegreen1      HLDarkolivegreen1
syn keyword   HLDarkolivegreen2      HLDarkolivegreen2
syn keyword   HLDarkolivegreen3      HLDarkolivegreen3
syn keyword   HLDarkolivegreen4      HLDarkolivegreen4
syn keyword   HLKhaki1               HLKhaki1
syn keyword   HLKhaki2               HLKhaki2
syn keyword   HLKhaki3               HLKhaki3
syn keyword   HLKhaki4               HLKhaki4
syn keyword   HLLightgoldenrod1      HLLightgoldenrod1
syn keyword   HLLightgoldenrod2      HLLightgoldenrod2
syn keyword   HLLightgoldenrod3      HLLightgoldenrod3
syn keyword   HLLightgoldenrod4      HLLightgoldenrod4
syn keyword   HLLightyellow1         HLLightyellow1
syn keyword   HLLightyellow2         HLLightyellow2
syn keyword   HLLightyellow3         HLLightyellow3
syn keyword   HLLightyellow4         HLLightyellow4
syn keyword   HLYellow1              HLYellow1
syn keyword   HLYellow2              HLYellow2
syn keyword   HLYellow3              HLYellow3
syn keyword   HLYellow4              HLYellow4
syn keyword   HLDarkyellow           HLDarkyellow
syn keyword   HLGold1                HLGold1
syn keyword   HLGold2                HLGold2
syn keyword   HLGold3                HLGold3
syn keyword   HLGold4                HLGold4
syn keyword   HLGoldenrod1           HLGoldenrod1
syn keyword   HLGoldenrod2           HLGoldenrod2
syn keyword   HLGoldenrod3           HLGoldenrod3
syn keyword   HLGoldenrod4           HLGoldenrod4
syn keyword   HLDarkgoldenrod1       HLDarkgoldenrod1
syn keyword   HLDarkgoldenrod2       HLDarkgoldenrod2
syn keyword   HLDarkgoldenrod3       HLDarkgoldenrod3
syn keyword   HLDarkgoldenrod4       HLDarkgoldenrod4
syn keyword   HLRosybrown1           HLRosybrown1
syn keyword   HLRosybrown2           HLRosybrown2
syn keyword   HLRosybrown3           HLRosybrown3
syn keyword   HLRosybrown4           HLRosybrown4
syn keyword   HLIndianred1           HLIndianred1
syn keyword   HLIndianred2           HLIndianred2
syn keyword   HLIndianred3           HLIndianred3
syn keyword   HLIndianred4           HLIndianred4
syn keyword   HLSienna1              HLSienna1
syn keyword   HLSienna2              HLSienna2
syn keyword   HLSienna3              HLSienna3
syn keyword   HLSienna4              HLSienna4
syn keyword   HLBurlywood1           HLBurlywood1
syn keyword   HLBurlywood2           HLBurlywood2
syn keyword   HLBurlywood3           HLBurlywood3
syn keyword   HLBurlywood4           HLBurlywood4
syn keyword   HLWheat1               HLWheat1
syn keyword   HLWheat2               HLWheat2
syn keyword   HLWheat3               HLWheat3
syn keyword   HLWheat4               HLWheat4
syn keyword   HLTan1                 HLTan1
syn keyword   HLTan2                 HLTan2
syn keyword   HLTan3                 HLTan3
syn keyword   HLTan4                 HLTan4
syn keyword   HLChocolate1           HLChocolate1
syn keyword   HLChocolate2           HLChocolate2
syn keyword   HLChocolate3           HLChocolate3
syn keyword   HLChocolate4           HLChocolate4
syn keyword   HLFirebrick1           HLFirebrick1
syn keyword   HLFirebrick2           HLFirebrick2
syn keyword   HLFirebrick3           HLFirebrick3
syn keyword   HLFirebrick4           HLFirebrick4
syn keyword   HLBrown1               HLBrown1
syn keyword   HLBrown2               HLBrown2
syn keyword   HLBrown3               HLBrown3
syn keyword   HLBrown4               HLBrown4
syn keyword   HLSalmon1              HLSalmon1
syn keyword   HLSalmon2              HLSalmon2
syn keyword   HLSalmon3              HLSalmon3
syn keyword   HLSalmon4              HLSalmon4
syn keyword   HLLightsalmon1         HLLightsalmon1
syn keyword   HLLightsalmon2         HLLightsalmon2
syn keyword   HLLightsalmon3         HLLightsalmon3
syn keyword   HLLightsalmon4         HLLightsalmon4
syn keyword   HLOrange1              HLOrange1
syn keyword   HLOrange2              HLOrange2
syn keyword   HLOrange3              HLOrange3
syn keyword   HLOrange4              HLOrange4
syn keyword   HLDarkorange1          HLDarkorange1
syn keyword   HLDarkorange2          HLDarkorange2
syn keyword   HLDarkorange3          HLDarkorange3
syn keyword   HLDarkorange4          HLDarkorange4
syn keyword   HLCoral1               HLCoral1
syn keyword   HLCoral2               HLCoral2
syn keyword   HLCoral3               HLCoral3
syn keyword   HLCoral4               HLCoral4
syn keyword   HLTomato1              HLTomato1
syn keyword   HLTomato2              HLTomato2
syn keyword   HLTomato3              HLTomato3
syn keyword   HLTomato4              HLTomato4
syn keyword   HLOrangered1           HLOrangered1
syn keyword   HLOrangered2           HLOrangered2
syn keyword   HLOrangered3           HLOrangered3
syn keyword   HLOrangered4           HLOrangered4
syn keyword   HLLightred             HLLightred
syn keyword   HLRed1                 HLRed1
syn keyword   HLRed2                 HLRed2
syn keyword   HLRed3                 HLRed3
syn keyword   HLRed4                 HLRed4
syn keyword   HLDeeppink1            HLDeeppink1
syn keyword   HLDeeppink2            HLDeeppink2
syn keyword   HLDeeppink3            HLDeeppink3
syn keyword   HLDeeppink4            HLDeeppink4
syn keyword   HLHotpink1             HLHotpink1
syn keyword   HLHotpink2             HLHotpink2
syn keyword   HLHotpink3             HLHotpink3
syn keyword   HLHotpink4             HLHotpink4
syn keyword   HLPink1                HLPink1
syn keyword   HLPink2                HLPink2
syn keyword   HLPink3                HLPink3
syn keyword   HLPink4                HLPink4
syn keyword   HLLightpink1           HLLightpink1
syn keyword   HLLightpink2           HLLightpink2
syn keyword   HLLightpink3           HLLightpink3
syn keyword   HLLightpink4           HLLightpink4
syn keyword   HLPalevioletred1       HLPalevioletred1
syn keyword   HLPalevioletred2       HLPalevioletred2
syn keyword   HLPalevioletred3       HLPalevioletred3
syn keyword   HLPalevioletred4       HLPalevioletred4
syn keyword   HLMaroon1              HLMaroon1
syn keyword   HLMaroon2              HLMaroon2
syn keyword   HLMaroon3              HLMaroon3
syn keyword   HLMaroon4              HLMaroon4
syn keyword   HLVioletred1           HLVioletred1
syn keyword   HLVioletred2           HLVioletred2
syn keyword   HLVioletred3           HLVioletred3
syn keyword   HLVioletred4           HLVioletred4
syn keyword   HLLightmagenta         HLLightmagenta
syn keyword   HLMagenta1             HLMagenta1
syn keyword   HLMagenta2             HLMagenta2
syn keyword   HLMagenta3             HLMagenta3
syn keyword   HLMagenta4             HLMagenta4
syn keyword   HLOrchid1              HLOrchid1
syn keyword   HLOrchid2              HLOrchid2
syn keyword   HLOrchid3              HLOrchid3
syn keyword   HLOrchid4              HLOrchid4
syn keyword   HLPlum1                HLPlum1
syn keyword   HLPlum2                HLPlum2
syn keyword   HLPlum3                HLPlum3
syn keyword   HLPlum4                HLPlum4
syn keyword   HLMediumorchid1        HLMediumorchid1
syn keyword   HLMediumorchid2        HLMediumorchid2
syn keyword   HLMediumorchid3        HLMediumorchid3
syn keyword   HLMediumorchid4        HLMediumorchid4
syn keyword   HLDarkorchid1          HLDarkorchid1
syn keyword   HLDarkorchid2          HLDarkorchid2
syn keyword   HLDarkorchid3          HLDarkorchid3
syn keyword   HLDarkorchid4          HLDarkorchid4
syn keyword   HLPurple1              HLPurple1
syn keyword   HLPurple2              HLPurple2
syn keyword   HLPurple3              HLPurple3
syn keyword   HLPurple4              HLPurple4
syn keyword   HLMediumpurple1        HLMediumpurple1
syn keyword   HLMediumpurple2        HLMediumpurple2
syn keyword   HLMediumpurple3        HLMediumpurple3
syn keyword   HLMediumpurple4        HLMediumpurple4
syn keyword   HLThistle1             HLThistle1
syn keyword   HLThistle2             HLThistle2
syn keyword   HLThistle3             HLThistle3
syn keyword   HLThistle4             HLThistle4
syn keyword   HLGray0                HLGray0
syn keyword   HLGrey0                HLGrey0
syn keyword   HLGray1                HLGray1
syn keyword   HLGrey1                HLGrey1
syn keyword   HLGray2                HLGray2
syn keyword   HLGrey2                HLGrey2
syn keyword   HLGray3                HLGray3
syn keyword   HLGrey3                HLGrey3
syn keyword   HLGray4                HLGray4
syn keyword   HLGrey4                HLGrey4
syn keyword   HLGray5                HLGray5
syn keyword   HLGrey5                HLGrey5
syn keyword   HLGray6                HLGray6
syn keyword   HLGrey6                HLGrey6
syn keyword   HLGray7                HLGray7
syn keyword   HLGrey7                HLGrey7
syn keyword   HLGray8                HLGray8
syn keyword   HLGrey8                HLGrey8
syn keyword   HLGray9                HLGray9
syn keyword   HLGrey9                HLGrey9
syn keyword   HLGray10               HLGray10
syn keyword   HLGrey10               HLGrey10
syn keyword   HLGray11               HLGray11
syn keyword   HLGrey11               HLGrey11
syn keyword   HLGray12               HLGray12
syn keyword   HLGrey12               HLGrey12
syn keyword   HLGray13               HLGray13
syn keyword   HLGrey13               HLGrey13
syn keyword   HLGray14               HLGray14
syn keyword   HLGrey14               HLGrey14
syn keyword   HLGray15               HLGray15
syn keyword   HLGrey15               HLGrey15
syn keyword   HLGray16               HLGray16
syn keyword   HLGrey16               HLGrey16
syn keyword   HLGray17               HLGray17
syn keyword   HLGrey17               HLGrey17
syn keyword   HLGray18               HLGray18
syn keyword   HLGrey18               HLGrey18
syn keyword   HLGray19               HLGray19
syn keyword   HLGrey19               HLGrey19
syn keyword   HLGray20               HLGray20
syn keyword   HLGrey20               HLGrey20
syn keyword   HLGray21               HLGray21
syn keyword   HLGrey21               HLGrey21
syn keyword   HLGray22               HLGray22
syn keyword   HLGrey22               HLGrey22
syn keyword   HLGray23               HLGray23
syn keyword   HLGrey23               HLGrey23
syn keyword   HLGray24               HLGray24
syn keyword   HLGrey24               HLGrey24
syn keyword   HLGray25               HLGray25
syn keyword   HLGrey25               HLGrey25
syn keyword   HLGray26               HLGray26
syn keyword   HLGrey26               HLGrey26
syn keyword   HLGray27               HLGray27
syn keyword   HLGrey27               HLGrey27
syn keyword   HLGray28               HLGray28
syn keyword   HLGrey28               HLGrey28
syn keyword   HLGray29               HLGray29
syn keyword   HLGrey29               HLGrey29
syn keyword   HLGray30               HLGray30
syn keyword   HLGrey30               HLGrey30
syn keyword   HLGray31               HLGray31
syn keyword   HLGrey31               HLGrey31
syn keyword   HLGray32               HLGray32
syn keyword   HLGrey32               HLGrey32
syn keyword   HLGray33               HLGray33
syn keyword   HLGrey33               HLGrey33
syn keyword   HLGray34               HLGray34
syn keyword   HLGrey34               HLGrey34
syn keyword   HLGray35               HLGray35
syn keyword   HLGrey35               HLGrey35
syn keyword   HLGray36               HLGray36
syn keyword   HLGrey36               HLGrey36
syn keyword   HLGray37               HLGray37
syn keyword   HLGrey37               HLGrey37
syn keyword   HLGray38               HLGray38
syn keyword   HLGrey38               HLGrey38
syn keyword   HLGray39               HLGray39
syn keyword   HLGrey39               HLGrey39
syn keyword   HLGray40               HLGray40
syn keyword   HLGrey40               HLGrey40
syn keyword   HLGray41               HLGray41
syn keyword   HLGrey41               HLGrey41
syn keyword   HLGray42               HLGray42
syn keyword   HLGrey42               HLGrey42
syn keyword   HLGray43               HLGray43
syn keyword   HLGrey43               HLGrey43
syn keyword   HLGray44               HLGray44
syn keyword   HLGrey44               HLGrey44
syn keyword   HLGray45               HLGray45
syn keyword   HLGrey45               HLGrey45
syn keyword   HLGray46               HLGray46
syn keyword   HLGrey46               HLGrey46
syn keyword   HLGray47               HLGray47
syn keyword   HLGrey47               HLGrey47
syn keyword   HLGray48               HLGray48
syn keyword   HLGrey48               HLGrey48
syn keyword   HLGray49               HLGray49
syn keyword   HLGrey49               HLGrey49
syn keyword   HLGray50               HLGray50
syn keyword   HLGrey50               HLGrey50
syn keyword   HLGray51               HLGray51
syn keyword   HLGrey51               HLGrey51
syn keyword   HLGray52               HLGray52
syn keyword   HLGrey52               HLGrey52
syn keyword   HLGray53               HLGray53
syn keyword   HLGrey53               HLGrey53
syn keyword   HLGray54               HLGray54
syn keyword   HLGrey54               HLGrey54
syn keyword   HLGray55               HLGray55
syn keyword   HLGrey55               HLGrey55
syn keyword   HLGray56               HLGray56
syn keyword   HLGrey56               HLGrey56
syn keyword   HLGray57               HLGray57
syn keyword   HLGrey57               HLGrey57
syn keyword   HLGray58               HLGray58
syn keyword   HLGrey58               HLGrey58
syn keyword   HLGray59               HLGray59
syn keyword   HLGrey59               HLGrey59
syn keyword   HLGray60               HLGray60
syn keyword   HLGrey60               HLGrey60
syn keyword   HLGray61               HLGray61
syn keyword   HLGrey61               HLGrey61
syn keyword   HLGray62               HLGray62
syn keyword   HLGrey62               HLGrey62
syn keyword   HLGray63               HLGray63
syn keyword   HLGrey63               HLGrey63
syn keyword   HLGray64               HLGray64
syn keyword   HLGrey64               HLGrey64
syn keyword   HLGray65               HLGray65
syn keyword   HLGrey65               HLGrey65
syn keyword   HLGray66               HLGray66
syn keyword   HLGrey66               HLGrey66
syn keyword   HLGray67               HLGray67
syn keyword   HLGrey67               HLGrey67
syn keyword   HLGray68               HLGray68
syn keyword   HLGrey68               HLGrey68
syn keyword   HLGray69               HLGray69
syn keyword   HLGrey69               HLGrey69
syn keyword   HLGray70               HLGray70
syn keyword   HLGrey70               HLGrey70
syn keyword   HLGray71               HLGray71
syn keyword   HLGrey71               HLGrey71
syn keyword   HLGray72               HLGray72
syn keyword   HLGrey72               HLGrey72
syn keyword   HLGray73               HLGray73
syn keyword   HLGrey73               HLGrey73
syn keyword   HLGray74               HLGray74
syn keyword   HLGrey74               HLGrey74
syn keyword   HLGray75               HLGray75
syn keyword   HLGrey75               HLGrey75
syn keyword   HLGray76               HLGray76
syn keyword   HLGrey76               HLGrey76
syn keyword   HLGray77               HLGray77
syn keyword   HLGrey77               HLGrey77
syn keyword   HLGray78               HLGray78
syn keyword   HLGrey78               HLGrey78
syn keyword   HLGray79               HLGray79
syn keyword   HLGrey79               HLGrey79
syn keyword   HLGray80               HLGray80
syn keyword   HLGrey80               HLGrey80
syn keyword   HLGray81               HLGray81
syn keyword   HLGrey81               HLGrey81
syn keyword   HLGray82               HLGray82
syn keyword   HLGrey82               HLGrey82
syn keyword   HLGray83               HLGray83
syn keyword   HLGrey83               HLGrey83
syn keyword   HLGray84               HLGray84
syn keyword   HLGrey84               HLGrey84
syn keyword   HLGray85               HLGray85
syn keyword   HLGrey85               HLGrey85
syn keyword   HLGray86               HLGray86
syn keyword   HLGrey86               HLGrey86
syn keyword   HLGray87               HLGray87
syn keyword   HLGrey87               HLGrey87
syn keyword   HLGray88               HLGray88
syn keyword   HLGrey88               HLGrey88
syn keyword   HLGray89               HLGray89
syn keyword   HLGrey89               HLGrey89
syn keyword   HLGray90               HLGray90
syn keyword   HLGrey90               HLGrey90
syn keyword   HLGray91               HLGray91
syn keyword   HLGrey91               HLGrey91
syn keyword   HLGray92               HLGray92
syn keyword   HLGrey92               HLGrey92
syn keyword   HLGray93               HLGray93
syn keyword   HLGrey93               HLGrey93
syn keyword   HLGray94               HLGray94
syn keyword   HLGrey94               HLGrey94
syn keyword   HLGray95               HLGray95
syn keyword   HLGrey95               HLGrey95
syn keyword   HLGray96               HLGray96
syn keyword   HLGrey96               HLGrey96
syn keyword   HLGray97               HLGray97
syn keyword   HLGrey97               HLGrey97
syn keyword   HLGray98               HLGray98
syn keyword   HLGrey98               HLGrey98
syn keyword   HLGray99               HLGray99
syn keyword   HLGrey99               HLGrey99
syn keyword   HLGray100              HLGray100
syn keyword   HLGrey100              HLGrey100
syn keyword   HLDarkgrey             HLDarkgrey
syn keyword   HLDarkgray             HLDarkgray
syn keyword   HLDarkblue             HLDarkblue
syn keyword   HLDarkcyan             HLDarkcyan
syn keyword   HLDarkmagenta          HLDarkmagenta
syn keyword   HLDarkred              HLDarkred
syn keyword   HLLightgreen           HLLightgreen
syn keyword   HLCrimson              HLCrimson
syn keyword   HLIndigo               HLIndigo
syn keyword   HLOlive                HLOlive
syn keyword   HLRebeccapurple        HLRebeccapurple
syn keyword   HLSilver               HLSilver
syn keyword   HLTeal                 HLTeal
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" NOTE: You can also see the colors below in vim with no GUI
syn keyword   HLCterm0             HLCterm0
syn keyword   HLCterm1             HLCterm1
syn keyword   HLCterm2             HLCterm2
syn keyword   HLCterm3             HLCterm3
syn keyword   HLCterm4             HLCterm4
syn keyword   HLCterm5             HLCterm5
syn keyword   HLCterm6             HLCterm6
syn keyword   HLCterm7             HLCterm7
syn keyword   HLCterm8             HLCterm8
syn keyword   HLCterm9             HLCterm9
syn keyword   HLCterm10            HLCterm10
syn keyword   HLCterm11            HLCterm11
syn keyword   HLCterm12            HLCterm12
syn keyword   HLCterm13            HLCterm13
syn keyword   HLCterm14            HLCterm14
syn keyword   HLCterm15            HLCterm15
syn keyword   HLCterm16            HLCterm16
syn keyword   HLCterm17            HLCterm17
syn keyword   HLCterm18            HLCterm18
syn keyword   HLCterm19            HLCterm19
syn keyword   HLCterm20            HLCterm20
syn keyword   HLCterm21            HLCterm21
syn keyword   HLCterm22            HLCterm22
syn keyword   HLCterm23            HLCterm23
syn keyword   HLCterm24            HLCterm24
syn keyword   HLCterm25            HLCterm25
syn keyword   HLCterm26            HLCterm26
syn keyword   HLCterm27            HLCterm27
syn keyword   HLCterm28            HLCterm28
syn keyword   HLCterm29            HLCterm29
syn keyword   HLCterm30            HLCterm30
syn keyword   HLCterm31            HLCterm31
syn keyword   HLCterm32            HLCterm32
syn keyword   HLCterm33            HLCterm33
syn keyword   HLCterm34            HLCterm34
syn keyword   HLCterm35            HLCterm35
syn keyword   HLCterm36            HLCterm36
syn keyword   HLCterm37            HLCterm37
syn keyword   HLCterm38            HLCterm38
syn keyword   HLCterm39            HLCterm39
syn keyword   HLCterm40            HLCterm40
syn keyword   HLCterm41            HLCterm41
syn keyword   HLCterm42            HLCterm42
syn keyword   HLCterm43            HLCterm43
syn keyword   HLCterm44            HLCterm44
syn keyword   HLCterm45            HLCterm45
syn keyword   HLCterm46            HLCterm46
syn keyword   HLCterm47            HLCterm47
syn keyword   HLCterm48            HLCterm48
syn keyword   HLCterm49            HLCterm49
syn keyword   HLCterm50            HLCterm50
syn keyword   HLCterm51            HLCterm51
syn keyword   HLCterm52            HLCterm52
syn keyword   HLCterm53            HLCterm53
syn keyword   HLCterm54            HLCterm54
syn keyword   HLCterm55            HLCterm55
syn keyword   HLCterm56            HLCterm56
syn keyword   HLCterm57            HLCterm57
syn keyword   HLCterm58            HLCterm58
syn keyword   HLCterm59            HLCterm59
syn keyword   HLCterm60            HLCterm60
syn keyword   HLCterm61            HLCterm61
syn keyword   HLCterm62            HLCterm62
syn keyword   HLCterm63            HLCterm63
syn keyword   HLCterm64            HLCterm64
syn keyword   HLCterm65            HLCterm65
syn keyword   HLCterm66            HLCterm66
syn keyword   HLCterm67            HLCterm67
syn keyword   HLCterm68            HLCterm68
syn keyword   HLCterm69            HLCterm69
syn keyword   HLCterm70            HLCterm70
syn keyword   HLCterm71            HLCterm71
syn keyword   HLCterm72            HLCterm72
syn keyword   HLCterm73            HLCterm73
syn keyword   HLCterm74            HLCterm74
syn keyword   HLCterm75            HLCterm75
syn keyword   HLCterm76            HLCterm76
syn keyword   HLCterm77            HLCterm77
syn keyword   HLCterm78            HLCterm78
syn keyword   HLCterm79            HLCterm79
syn keyword   HLCterm80            HLCterm80
syn keyword   HLCterm81            HLCterm81
syn keyword   HLCterm82            HLCterm82
syn keyword   HLCterm83            HLCterm83
syn keyword   HLCterm84            HLCterm84
syn keyword   HLCterm85            HLCterm85
syn keyword   HLCterm86            HLCterm86
syn keyword   HLCterm87            HLCterm87
syn keyword   HLCterm88            HLCterm88
syn keyword   HLCterm89            HLCterm89
syn keyword   HLCterm90            HLCterm90
syn keyword   HLCterm91            HLCterm91
syn keyword   HLCterm92            HLCterm92
syn keyword   HLCterm93            HLCterm93
syn keyword   HLCterm94            HLCterm94
syn keyword   HLCterm95            HLCterm95
syn keyword   HLCterm96            HLCterm96
syn keyword   HLCterm97            HLCterm97
syn keyword   HLCterm98            HLCterm98
syn keyword   HLCterm99            HLCterm99
syn keyword   HLCterm100           HLCterm100
syn keyword   HLCterm101           HLCterm101
syn keyword   HLCterm102           HLCterm102
syn keyword   HLCterm103           HLCterm103
syn keyword   HLCterm104           HLCterm104
syn keyword   HLCterm105           HLCterm105
syn keyword   HLCterm106           HLCterm106
syn keyword   HLCterm107           HLCterm107
syn keyword   HLCterm108           HLCterm108
syn keyword   HLCterm109           HLCterm109
syn keyword   HLCterm110           HLCterm110
syn keyword   HLCterm111           HLCterm111
syn keyword   HLCterm112           HLCterm112
syn keyword   HLCterm113           HLCterm113
syn keyword   HLCterm114           HLCterm114
syn keyword   HLCterm115           HLCterm115
syn keyword   HLCterm116           HLCterm116
syn keyword   HLCterm117           HLCterm117
syn keyword   HLCterm118           HLCterm118
syn keyword   HLCterm119           HLCterm119
syn keyword   HLCterm120           HLCterm120
syn keyword   HLCterm121           HLCterm121
syn keyword   HLCterm122           HLCterm122
syn keyword   HLCterm123           HLCterm123
syn keyword   HLCterm124           HLCterm124
syn keyword   HLCterm125           HLCterm125
syn keyword   HLCterm126           HLCterm126
syn keyword   HLCterm127           HLCterm127
syn keyword   HLCterm128           HLCterm128
syn keyword   HLCterm129           HLCterm129
syn keyword   HLCterm130           HLCterm130
syn keyword   HLCterm131           HLCterm131
syn keyword   HLCterm132           HLCterm132
syn keyword   HLCterm133           HLCterm133
syn keyword   HLCterm134           HLCterm134
syn keyword   HLCterm135           HLCterm135
syn keyword   HLCterm136           HLCterm136
syn keyword   HLCterm137           HLCterm137
syn keyword   HLCterm138           HLCterm138
syn keyword   HLCterm139           HLCterm139
syn keyword   HLCterm140           HLCterm140
syn keyword   HLCterm141           HLCterm141
syn keyword   HLCterm142           HLCterm142
syn keyword   HLCterm143           HLCterm143
syn keyword   HLCterm144           HLCterm144
syn keyword   HLCterm145           HLCterm145
syn keyword   HLCterm146           HLCterm146
syn keyword   HLCterm147           HLCterm147
syn keyword   HLCterm148           HLCterm148
syn keyword   HLCterm149           HLCterm149
syn keyword   HLCterm150           HLCterm150
syn keyword   HLCterm151           HLCterm151
syn keyword   HLCterm152           HLCterm152
syn keyword   HLCterm153           HLCterm153
syn keyword   HLCterm154           HLCterm154
syn keyword   HLCterm155           HLCterm155
syn keyword   HLCterm156           HLCterm156
syn keyword   HLCterm157           HLCterm157
syn keyword   HLCterm158           HLCterm158
syn keyword   HLCterm159           HLCterm159
syn keyword   HLCterm160           HLCterm160
syn keyword   HLCterm161           HLCterm161
syn keyword   HLCterm162           HLCterm162
syn keyword   HLCterm163           HLCterm163
syn keyword   HLCterm164           HLCterm164
syn keyword   HLCterm165           HLCterm165
syn keyword   HLCterm166           HLCterm166
syn keyword   HLCterm167           HLCterm167
syn keyword   HLCterm168           HLCterm168
syn keyword   HLCterm169           HLCterm169
syn keyword   HLCterm170           HLCterm170
syn keyword   HLCterm171           HLCterm171
syn keyword   HLCterm172           HLCterm172
syn keyword   HLCterm173           HLCterm173
syn keyword   HLCterm174           HLCterm174
syn keyword   HLCterm175           HLCterm175
syn keyword   HLCterm176           HLCterm176
syn keyword   HLCterm177           HLCterm177
syn keyword   HLCterm178           HLCterm178
syn keyword   HLCterm179           HLCterm179
syn keyword   HLCterm180           HLCterm180
syn keyword   HLCterm181           HLCterm181
syn keyword   HLCterm182           HLCterm182
syn keyword   HLCterm183           HLCterm183
syn keyword   HLCterm184           HLCterm184
syn keyword   HLCterm185           HLCterm185
syn keyword   HLCterm186           HLCterm186
syn keyword   HLCterm187           HLCterm187
syn keyword   HLCterm188           HLCterm188
syn keyword   HLCterm189           HLCterm189
syn keyword   HLCterm190           HLCterm190
syn keyword   HLCterm191           HLCterm191
syn keyword   HLCterm192           HLCterm192
syn keyword   HLCterm193           HLCterm193
syn keyword   HLCterm194           HLCterm194
syn keyword   HLCterm195           HLCterm195
syn keyword   HLCterm196           HLCterm196
syn keyword   HLCterm197           HLCterm197
syn keyword   HLCterm198           HLCterm198
syn keyword   HLCterm199           HLCterm199
syn keyword   HLCterm200           HLCterm200
syn keyword   HLCterm201           HLCterm201
syn keyword   HLCterm202           HLCterm202
syn keyword   HLCterm203           HLCterm203
syn keyword   HLCterm204           HLCterm204
syn keyword   HLCterm205           HLCterm205
syn keyword   HLCterm206           HLCterm206
syn keyword   HLCterm207           HLCterm207
syn keyword   HLCterm208           HLCterm208
syn keyword   HLCterm209           HLCterm209
syn keyword   HLCterm210           HLCterm210
syn keyword   HLCterm211           HLCterm211
syn keyword   HLCterm212           HLCterm212
syn keyword   HLCterm213           HLCterm213
syn keyword   HLCterm214           HLCterm214
syn keyword   HLCterm215           HLCterm215
syn keyword   HLCterm216           HLCterm216
syn keyword   HLCterm217           HLCterm217
syn keyword   HLCterm218           HLCterm218
syn keyword   HLCterm219           HLCterm219
syn keyword   HLCterm220           HLCterm220
syn keyword   HLCterm221           HLCterm221
syn keyword   HLCterm222           HLCterm222
syn keyword   HLCterm223           HLCterm223
syn keyword   HLCterm224           HLCterm224
syn keyword   HLCterm225           HLCterm225
syn keyword   HLCterm226           HLCterm226
syn keyword   HLCterm227           HLCterm227
syn keyword   HLCterm228           HLCterm228
syn keyword   HLCterm229           HLCterm229
syn keyword   HLCterm230           HLCterm230
syn keyword   HLCterm231           HLCterm231
syn keyword   HLCterm232           HLCterm232
syn keyword   HLCterm233           HLCterm233
syn keyword   HLCterm234           HLCterm234
syn keyword   HLCterm235           HLCterm235
syn keyword   HLCterm236           HLCterm236
syn keyword   HLCterm237           HLCterm237
syn keyword   HLCterm238           HLCterm238
syn keyword   HLCterm239           HLCterm239
syn keyword   HLCterm240           HLCterm240
syn keyword   HLCterm241           HLCterm241
syn keyword   HLCterm242           HLCterm242
syn keyword   HLCterm243           HLCterm243
syn keyword   HLCterm244           HLCterm244
syn keyword   HLCterm245           HLCterm245
syn keyword   HLCterm246           HLCterm246
syn keyword   HLCterm247           HLCterm247
syn keyword   HLCterm248           HLCterm248
syn keyword   HLCterm249           HLCterm249
syn keyword   HLCterm250           HLCterm250
syn keyword   HLCterm251           HLCterm251
syn keyword   HLCterm252           HLCterm252
syn keyword   HLCterm253           HLCterm253
syn keyword   HLCterm254           HLCterm254
syn keyword   HLCterm255           HLCterm255
syn keyword   HLCterm256           HLCterm256
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Bold colors
syn keyword HLSnowB                 HLSnowB
syn keyword HLGhostwhiteB           HLGhostwhiteB
syn keyword HLWhitesmokeB           HLWhitesmokeB
syn keyword HLGainsboroB            HLGainsboroB
syn keyword HLFloralwhiteB          HLFloralwhiteB
syn keyword HLOldlaceB              HLOldlaceB
syn keyword HLLinenB                HLLinenB
syn keyword HLAntiquewhiteB         HLAntiquewhiteB
syn keyword HLPapayawhipB           HLPapayawhipB
syn keyword HLBlanchedalmondB       HLBlanchedalmondB
syn keyword HLBisqueB               HLBisqueB
syn keyword HLPeachpuffB            HLPeachpuffB
syn keyword HLNavajowhiteB          HLNavajowhiteB
syn keyword HLMoccasinB             HLMoccasinB
syn keyword HLCornsilkB             HLCornsilkB
syn keyword HLIvoryB                HLIvoryB
syn keyword HLLemonchiffonB         HLLemonchiffonB
syn keyword HLSeashellB             HLSeashellB
syn keyword HLHoneydewB             HLHoneydewB
syn keyword HLMintcreamB            HLMintcreamB
syn keyword HLAzureB                HLAzureB
syn keyword HLAliceblueB            HLAliceblueB
syn keyword HLLavenderB             HLLavenderB
syn keyword HLLavenderblushB        HLLavenderblushB
syn keyword HLMistyroseB            HLMistyroseB
syn keyword HLWhiteB                HLWhiteB
syn keyword HLBlackB                HLBlackB
syn keyword HLDarkslategrayB        HLDarkslategrayB
syn keyword HLDarkslategreyB        HLDarkslategreyB
syn keyword HLDimgrayB              HLDimgrayB
syn keyword HLDimgreyB              HLDimgreyB
syn keyword HLSlategrayB            HLSlategrayB
syn keyword HLSlategreyB            HLSlategreyB
syn keyword HLLightslategrayB       HLLightslategrayB
syn keyword HLLightslategreyB       HLLightslategreyB
syn keyword HLGrayB                 HLGrayB
syn keyword HLGreyB                 HLGreyB
syn keyword HLX11grayB              HLX11grayB
syn keyword HLX11greyB              HLX11greyB
syn keyword HLWebgrayB              HLWebgrayB
syn keyword HLWebgreyB              HLWebgreyB
syn keyword HLLightgreyB            HLLightgreyB
syn keyword HLLightgrayB            HLLightgrayB
syn keyword HLMidnightblueB         HLMidnightblueB
syn keyword HLNavyB                 HLNavyB
syn keyword HLNavyblueB             HLNavyblueB
syn keyword HLCornflowerblueB       HLCornflowerblueB
syn keyword HLDarkslateblueB        HLDarkslateblueB
syn keyword HLSlateblueB            HLSlateblueB
syn keyword HLMediumslateblueB      HLMediumslateblueB
syn keyword HLLightslateblueB       HLLightslateblueB
syn keyword HLMediumblueB           HLMediumblueB
syn keyword HLRoyalblueB            HLRoyalblueB
syn keyword HLBlueB                 HLBlueB
syn keyword HLDodgerblueB           HLDodgerblueB
syn keyword HLDeepskyblueB          HLDeepskyblueB
syn keyword HLSkyblueB              HLSkyblueB
syn keyword HLLightskyblueB         HLLightskyblueB
syn keyword HLSteelblueB            HLSteelblueB
syn keyword HLLightsteelblueB       HLLightsteelblueB
syn keyword HLLightblueB            HLLightblueB
syn keyword HLPowderblueB           HLPowderblueB
syn keyword HLPaleturquoiseB        HLPaleturquoiseB
syn keyword HLDarkturquoiseB        HLDarkturquoiseB
syn keyword HLMediumturquoiseB      HLMediumturquoiseB
syn keyword HLTurquoiseB            HLTurquoiseB
syn keyword HLCyanB                 HLCyanB
syn keyword HLAquaB                 HLAquaB
syn keyword HLLightcyanB            HLLightcyanB
syn keyword HLCadetblueB            HLCadetblueB
syn keyword HLMediumaquamarineB     HLMediumaquamarineB
syn keyword HLAquamarineB           HLAquamarineB
syn keyword HLDarkgreenB            HLDarkgreenB
syn keyword HLDarkolivegreenB       HLDarkolivegreenB
syn keyword HLDarkseagreenB         HLDarkseagreenB
syn keyword HLSeagreenB             HLSeagreenB
syn keyword HLMediumseagreenB       HLMediumseagreenB
syn keyword HLLightseagreenB        HLLightseagreenB
syn keyword HLPalegreenB            HLPalegreenB
syn keyword HLSpringgreenB          HLSpringgreenB
syn keyword HLLawngreenB            HLLawngreenB
syn keyword HLGreenB                HLGreenB
syn keyword HLLimeB                 HLLimeB
syn keyword HLX11greenB             HLX11greenB
syn keyword HLWebgreenB             HLWebgreenB
syn keyword HLChartreuseB           HLChartreuseB
syn keyword HLMediumspringgreenB    HLMediumspringgreenB
syn keyword HLGreenyellowB          HLGreenyellowB
syn keyword HLLimegreenB            HLLimegreenB
syn keyword HLYellowgreenB          HLYellowgreenB
syn keyword HLForestgreenB          HLForestgreenB
syn keyword HLOlivedrabB            HLOlivedrabB
syn keyword HLDarkkhakiB            HLDarkkhakiB
syn keyword HLKhakiB                HLKhakiB
syn keyword HLPalegoldenrodB        HLPalegoldenrodB
syn keyword HLLightgoldenrodyellowB HLLightgoldenrodyellowB
syn keyword HLLightyellowB          HLLightyellowB
syn keyword HLYellowB               HLYellowB
syn keyword HLGoldB                 HLGoldB
syn keyword HLLightgoldenrodB       HLLightgoldenrodB
syn keyword HLGoldenrodB            HLGoldenrodB
syn keyword HLDarkgoldenrodB        HLDarkgoldenrodB
syn keyword HLRosybrownB            HLRosybrownB
syn keyword HLIndianredB            HLIndianredB
syn keyword HLSaddlebrownB          HLSaddlebrownB
syn keyword HLSiennaB               HLSiennaB
syn keyword HLPeruB                 HLPeruB
syn keyword HLBurlywoodB            HLBurlywoodB
syn keyword HLBeigeB                HLBeigeB
syn keyword HLWheatB                HLWheatB
syn keyword HLSandybrownB           HLSandybrownB
syn keyword HLTanB                  HLTanB
syn keyword HLChocolateB            HLChocolateB
syn keyword HLFirebrickB            HLFirebrickB
syn keyword HLBrownB                HLBrownB
syn keyword HLDarksalmonB           HLDarksalmonB
syn keyword HLSalmonB               HLSalmonB
syn keyword HLLightsalmonB          HLLightsalmonB
syn keyword HLOrangeB               HLOrangeB
syn keyword HLDarkorangeB           HLDarkorangeB
syn keyword HLCoralB                HLCoralB
syn keyword HLLightcoralB           HLLightcoralB
syn keyword HLTomatoB               HLTomatoB
syn keyword HLOrangeredB            HLOrangeredB
syn keyword HLRedB                  HLRedB
syn keyword HLHotpinkB              HLHotpinkB
syn keyword HLDeeppinkB             HLDeeppinkB
syn keyword HLPinkB                 HLPinkB
syn keyword HLLightpinkB            HLLightpinkB
syn keyword HLPalevioletredB        HLPalevioletredB
syn keyword HLMaroonB               HLMaroonB
syn keyword HLX11maroonB            HLX11maroonB
syn keyword HLWebmaroonB            HLWebmaroonB
syn keyword HLMediumvioletredB      HLMediumvioletredB
syn keyword HLVioletredB            HLVioletredB
syn keyword HLMagentaB              HLMagentaB
syn keyword HLFuchsiaB              HLFuchsiaB
syn keyword HLVioletB               HLVioletB
syn keyword HLPlumB                 HLPlumB
syn keyword HLOrchidB               HLOrchidB
syn keyword HLMediumorchidB         HLMediumorchidB
syn keyword HLDarkorchidB           HLDarkorchidB
syn keyword HLDarkvioletB           HLDarkvioletB
syn keyword HLBluevioletB           HLBluevioletB
syn keyword HLPurpleB               HLPurpleB
syn keyword HLX11purpleB            HLX11purpleB
syn keyword HLWebpurpleB            HLWebpurpleB
syn keyword HLMediumpurpleB         HLMediumpurpleB
syn keyword HLThistleB              HLThistleB
syn keyword HLSnow1B                HLSnow1B
syn keyword HLSnow2B                HLSnow2B
syn keyword HLSnow3B                HLSnow3B
syn keyword HLSnow4B                HLSnow4B
syn keyword HLSeashell1B            HLSeashell1B
syn keyword HLSeashell2B            HLSeashell2B
syn keyword HLSeashell3B            HLSeashell3B
syn keyword HLSeashell4B            HLSeashell4B
syn keyword HLAntiquewhite1B        HLAntiquewhite1B
syn keyword HLAntiquewhite2B        HLAntiquewhite2B
syn keyword HLAntiquewhite3B        HLAntiquewhite3B
syn keyword HLAntiquewhite4B        HLAntiquewhite4B
syn keyword HLBisque1B              HLBisque1B
syn keyword HLBisque2B              HLBisque2B
syn keyword HLBisque3B              HLBisque3B
syn keyword HLBisque4B              HLBisque4B
syn keyword HLPeachpuff1B           HLPeachpuff1B
syn keyword HLPeachpuff2B           HLPeachpuff2B
syn keyword HLPeachpuff3B           HLPeachpuff3B
syn keyword HLPeachpuff4B           HLPeachpuff4B
syn keyword HLNavajowhite1B         HLNavajowhite1B
syn keyword HLNavajowhite2B         HLNavajowhite2B
syn keyword HLNavajowhite3B         HLNavajowhite3B
syn keyword HLNavajowhite4B         HLNavajowhite4B
syn keyword HLLemonchiffon1B        HLLemonchiffon1B
syn keyword HLLemonchiffon2B        HLLemonchiffon2B
syn keyword HLLemonchiffon3B        HLLemonchiffon3B
syn keyword HLLemonchiffon4B        HLLemonchiffon4B
syn keyword HLCornsilk1B            HLCornsilk1B
syn keyword HLCornsilk2B            HLCornsilk2B
syn keyword HLCornsilk3B            HLCornsilk3B
syn keyword HLCornsilk4B            HLCornsilk4B
syn keyword HLIvory1B               HLIvory1B
syn keyword HLIvory2B               HLIvory2B
syn keyword HLIvory3B               HLIvory3B
syn keyword HLIvory4B               HLIvory4B
syn keyword HLHoneydew1B            HLHoneydew1B
syn keyword HLHoneydew2B            HLHoneydew2B
syn keyword HLHoneydew3B            HLHoneydew3B
syn keyword HLHoneydew4B            HLHoneydew4B
syn keyword HLLavenderblush1B       HLLavenderblush1B
syn keyword HLLavenderblush2B       HLLavenderblush2B
syn keyword HLLavenderblush3B       HLLavenderblush3B
syn keyword HLLavenderblush4B       HLLavenderblush4B
syn keyword HLMistyrose1B           HLMistyrose1B
syn keyword HLMistyrose2B           HLMistyrose2B
syn keyword HLMistyrose3B           HLMistyrose3B
syn keyword HLMistyrose4B           HLMistyrose4B
syn keyword HLAzure1B               HLAzure1B
syn keyword HLAzure2B               HLAzure2B
syn keyword HLAzure3B               HLAzure3B
syn keyword HLAzure4B               HLAzure4B
syn keyword HLSlateblue1B           HLSlateblue1B
syn keyword HLSlateblue2B           HLSlateblue2B
syn keyword HLSlateblue3B           HLSlateblue3B
syn keyword HLSlateblue4B           HLSlateblue4B
syn keyword HLRoyalblue1B           HLRoyalblue1B
syn keyword HLRoyalblue2B           HLRoyalblue2B
syn keyword HLRoyalblue3B           HLRoyalblue3B
syn keyword HLRoyalblue4B           HLRoyalblue4B
syn keyword HLBlue1B                HLBlue1B
syn keyword HLBlue2B                HLBlue2B
syn keyword HLBlue3B                HLBlue3B
syn keyword HLBlue4B                HLBlue4B
syn keyword HLDodgerblue1B          HLDodgerblue1B
syn keyword HLDodgerblue2B          HLDodgerblue2B
syn keyword HLDodgerblue3B          HLDodgerblue3B
syn keyword HLDodgerblue4B          HLDodgerblue4B
syn keyword HLSteelblue1B           HLSteelblue1B
syn keyword HLSteelblue2B           HLSteelblue2B
syn keyword HLSteelblue3B           HLSteelblue3B
syn keyword HLSteelblue4B           HLSteelblue4B
syn keyword HLDeepskyblue1B         HLDeepskyblue1B
syn keyword HLDeepskyblue2B         HLDeepskyblue2B
syn keyword HLDeepskyblue3B         HLDeepskyblue3B
syn keyword HLDeepskyblue4B         HLDeepskyblue4B
syn keyword HLSkyblue1B             HLSkyblue1B
syn keyword HLSkyblue2B             HLSkyblue2B
syn keyword HLSkyblue3B             HLSkyblue3B
syn keyword HLSkyblue4B             HLSkyblue4B
syn keyword HLLightskyblue1B        HLLightskyblue1B
syn keyword HLLightskyblue2B        HLLightskyblue2B
syn keyword HLLightskyblue3B        HLLightskyblue3B
syn keyword HLLightskyblue4B        HLLightskyblue4B
syn keyword HLSlategray1B           HLSlategray1B
syn keyword HLSlategray2B           HLSlategray2B
syn keyword HLSlategray3B           HLSlategray3B
syn keyword HLSlategray4B           HLSlategray4B
syn keyword HLLightsteelblue1B      HLLightsteelblue1B
syn keyword HLLightsteelblue2B      HLLightsteelblue2B
syn keyword HLLightsteelblue3B      HLLightsteelblue3B
syn keyword HLLightsteelblue4B      HLLightsteelblue4B
syn keyword HLLightblue1B           HLLightblue1B
syn keyword HLLightblue2B           HLLightblue2B
syn keyword HLLightblue3B           HLLightblue3B
syn keyword HLLightblue4B           HLLightblue4B
syn keyword HLLightcyan1B           HLLightcyan1B
syn keyword HLLightcyan2B           HLLightcyan2B
syn keyword HLLightcyan3B           HLLightcyan3B
syn keyword HLLightcyan4B           HLLightcyan4B
syn keyword HLPaleturquoise1B       HLPaleturquoise1B
syn keyword HLPaleturquoise2B       HLPaleturquoise2B
syn keyword HLPaleturquoise3B       HLPaleturquoise3B
syn keyword HLPaleturquoise4B       HLPaleturquoise4B
syn keyword HLCadetblue1B           HLCadetblue1B
syn keyword HLCadetblue2B           HLCadetblue2B
syn keyword HLCadetblue3B           HLCadetblue3B
syn keyword HLCadetblue4B           HLCadetblue4B
syn keyword HLTurquoise1B           HLTurquoise1B
syn keyword HLTurquoise2B           HLTurquoise2B
syn keyword HLTurquoise3B           HLTurquoise3B
syn keyword HLTurquoise4B           HLTurquoise4B
syn keyword HLCyan1B                HLCyan1B
syn keyword HLCyan2B                HLCyan2B
syn keyword HLCyan3B                HLCyan3B
syn keyword HLCyan4B                HLCyan4B
syn keyword HLDarkslategray1B       HLDarkslategray1B
syn keyword HLDarkslategray2B       HLDarkslategray2B
syn keyword HLDarkslategray3B       HLDarkslategray3B
syn keyword HLDarkslategray4B       HLDarkslategray4B
syn keyword HLAquamarine1B          HLAquamarine1B
syn keyword HLAquamarine2B          HLAquamarine2B
syn keyword HLAquamarine3B          HLAquamarine3B
syn keyword HLAquamarine4B          HLAquamarine4B
syn keyword HLDarkseagreen1B        HLDarkseagreen1B
syn keyword HLDarkseagreen2B        HLDarkseagreen2B
syn keyword HLDarkseagreen3B        HLDarkseagreen3B
syn keyword HLDarkseagreen4B        HLDarkseagreen4B
syn keyword HLSeagreen1B            HLSeagreen1B
syn keyword HLSeagreen2B            HLSeagreen2B
syn keyword HLSeagreen3B            HLSeagreen3B
syn keyword HLSeagreen4B            HLSeagreen4B
syn keyword HLPalegreen1B           HLPalegreen1B
syn keyword HLPalegreen2B           HLPalegreen2B
syn keyword HLPalegreen3B           HLPalegreen3B
syn keyword HLPalegreen4B           HLPalegreen4B
syn keyword HLSpringgreen1B         HLSpringgreen1B
syn keyword HLSpringgreen2B         HLSpringgreen2B
syn keyword HLSpringgreen3B         HLSpringgreen3B
syn keyword HLSpringgreen4B         HLSpringgreen4B
syn keyword HLGreen1B               HLGreen1B
syn keyword HLGreen2B               HLGreen2B
syn keyword HLGreen3B               HLGreen3B
syn keyword HLGreen4B               HLGreen4B
syn keyword HLChartreuse1B          HLChartreuse1B
syn keyword HLChartreuse2B          HLChartreuse2B
syn keyword HLChartreuse3B          HLChartreuse3B
syn keyword HLChartreuse4B          HLChartreuse4B
syn keyword HLOlivedrab1B           HLOlivedrab1B
syn keyword HLOlivedrab2B           HLOlivedrab2B
syn keyword HLOlivedrab3B           HLOlivedrab3B
syn keyword HLOlivedrab4B           HLOlivedrab4B
syn keyword HLDarkolivegreen1B      HLDarkolivegreen1B
syn keyword HLDarkolivegreen2B      HLDarkolivegreen2B
syn keyword HLDarkolivegreen3B      HLDarkolivegreen3B
syn keyword HLDarkolivegreen4B      HLDarkolivegreen4B
syn keyword HLKhaki1B               HLKhaki1B
syn keyword HLKhaki2B               HLKhaki2B
syn keyword HLKhaki3B               HLKhaki3B
syn keyword HLKhaki4B               HLKhaki4B
syn keyword HLLightgoldenrod1B      HLLightgoldenrod1B
syn keyword HLLightgoldenrod2B      HLLightgoldenrod2B
syn keyword HLLightgoldenrod3B      HLLightgoldenrod3B
syn keyword HLLightgoldenrod4B      HLLightgoldenrod4B
syn keyword HLLightyellow1B         HLLightyellow1B
syn keyword HLLightyellow2B         HLLightyellow2B
syn keyword HLLightyellow3B         HLLightyellow3B
syn keyword HLLightyellow4B         HLLightyellow4B
syn keyword HLYellow1B              HLYellow1B
syn keyword HLYellow2B              HLYellow2B
syn keyword HLYellow3B              HLYellow3B
syn keyword HLYellow4B              HLYellow4B
syn keyword HLDarkyellowB           HLDarkyellowB
syn keyword HLGold1B                HLGold1B
syn keyword HLGold2B                HLGold2B
syn keyword HLGold3B                HLGold3B
syn keyword HLGold4B                HLGold4B
syn keyword HLGoldenrod1B           HLGoldenrod1B
syn keyword HLGoldenrod2B           HLGoldenrod2B
syn keyword HLGoldenrod3B           HLGoldenrod3B
syn keyword HLGoldenrod4B           HLGoldenrod4B
syn keyword HLDarkgoldenrod1B       HLDarkgoldenrod1B
syn keyword HLDarkgoldenrod2B       HLDarkgoldenrod2B
syn keyword HLDarkgoldenrod3B       HLDarkgoldenrod3B
syn keyword HLDarkgoldenrod4B       HLDarkgoldenrod4B
syn keyword HLRosybrown1B           HLRosybrown1B
syn keyword HLRosybrown2B           HLRosybrown2B
syn keyword HLRosybrown3B           HLRosybrown3B
syn keyword HLRosybrown4B           HLRosybrown4B
syn keyword HLIndianred1B           HLIndianred1B
syn keyword HLIndianred2B           HLIndianred2B
syn keyword HLIndianred3B           HLIndianred3B
syn keyword HLIndianred4B           HLIndianred4B
syn keyword HLSienna1B              HLSienna1B
syn keyword HLSienna2B              HLSienna2B
syn keyword HLSienna3B              HLSienna3B
syn keyword HLSienna4B              HLSienna4B
syn keyword HLBurlywood1B           HLBurlywood1B
syn keyword HLBurlywood2B           HLBurlywood2B
syn keyword HLBurlywood3B           HLBurlywood3B
syn keyword HLBurlywood4B           HLBurlywood4B
syn keyword HLWheat1B               HLWheat1B
syn keyword HLWheat2B               HLWheat2B
syn keyword HLWheat3B               HLWheat3B
syn keyword HLWheat4B               HLWheat4B
syn keyword HLTan1B                 HLTan1B
syn keyword HLTan2B                 HLTan2B
syn keyword HLTan3B                 HLTan3B
syn keyword HLTan4B                 HLTan4B
syn keyword HLChocolate1B           HLChocolate1B
syn keyword HLChocolate2B           HLChocolate2B
syn keyword HLChocolate3B           HLChocolate3B
syn keyword HLChocolate4B           HLChocolate4B
syn keyword HLFirebrick1B           HLFirebrick1B
syn keyword HLFirebrick2B           HLFirebrick2B
syn keyword HLFirebrick3B           HLFirebrick3B
syn keyword HLFirebrick4B           HLFirebrick4B
syn keyword HLBrown1B               HLBrown1B
syn keyword HLBrown2B               HLBrown2B
syn keyword HLBrown3B               HLBrown3B
syn keyword HLBrown4B               HLBrown4B
syn keyword HLSalmon1B              HLSalmon1B
syn keyword HLSalmon2B              HLSalmon2B
syn keyword HLSalmon3B              HLSalmon3B
syn keyword HLSalmon4B              HLSalmon4B
syn keyword HLLightsalmon1B         HLLightsalmon1B
syn keyword HLLightsalmon2B         HLLightsalmon2B
syn keyword HLLightsalmon3B         HLLightsalmon3B
syn keyword HLLightsalmon4B         HLLightsalmon4B
syn keyword HLOrange1B              HLOrange1B
syn keyword HLOrange2B              HLOrange2B
syn keyword HLOrange3B              HLOrange3B
syn keyword HLOrange4B              HLOrange4B
syn keyword HLDarkorange1B          HLDarkorange1B
syn keyword HLDarkorange2B          HLDarkorange2B
syn keyword HLDarkorange3B          HLDarkorange3B
syn keyword HLDarkorange4B          HLDarkorange4B
syn keyword HLCoral1B               HLCoral1B
syn keyword HLCoral2B               HLCoral2B
syn keyword HLCoral3B               HLCoral3B
syn keyword HLCoral4B               HLCoral4B
syn keyword HLTomato1B              HLTomato1B
syn keyword HLTomato2B              HLTomato2B
syn keyword HLTomato3B              HLTomato3B
syn keyword HLTomato4B              HLTomato4B
syn keyword HLOrangered1B           HLOrangered1B
syn keyword HLOrangered2B           HLOrangered2B
syn keyword HLOrangered3B           HLOrangered3B
syn keyword HLOrangered4B           HLOrangered4B
syn keyword HLLightredB             HLLightredB
syn keyword HLRed1B                 HLRed1B
syn keyword HLRed2B                 HLRed2B
syn keyword HLRed3B                 HLRed3B
syn keyword HLRed4B                 HLRed4B
syn keyword HLDeeppink1B            HLDeeppink1B
syn keyword HLDeeppink2B            HLDeeppink2B
syn keyword HLDeeppink3B            HLDeeppink3B
syn keyword HLDeeppink4B            HLDeeppink4B
syn keyword HLHotpink1B             HLHotpink1B
syn keyword HLHotpink2B             HLHotpink2B
syn keyword HLHotpink3B             HLHotpink3B
syn keyword HLHotpink4B             HLHotpink4B
syn keyword HLPink1B                HLPink1B
syn keyword HLPink2B                HLPink2B
syn keyword HLPink3B                HLPink3B
syn keyword HLPink4B                HLPink4B
syn keyword HLLightpink1B           HLLightpink1B
syn keyword HLLightpink2B           HLLightpink2B
syn keyword HLLightpink3B           HLLightpink3B
syn keyword HLLightpink4B           HLLightpink4B
syn keyword HLPalevioletred1B       HLPalevioletred1B
syn keyword HLPalevioletred2B       HLPalevioletred2B
syn keyword HLPalevioletred3B       HLPalevioletred3B
syn keyword HLPalevioletred4B       HLPalevioletred4B
syn keyword HLMaroon1B              HLMaroon1B
syn keyword HLMaroon2B              HLMaroon2B
syn keyword HLMaroon3B              HLMaroon3B
syn keyword HLMaroon4B              HLMaroon4B
syn keyword HLVioletred1B           HLVioletred1B
syn keyword HLVioletred2B           HLVioletred2B
syn keyword HLVioletred3B           HLVioletred3B
syn keyword HLVioletred4B           HLVioletred4B
syn keyword HLLightmagentaB         HLLightmagentaB
syn keyword HLMagenta1B             HLMagenta1B
syn keyword HLMagenta2B             HLMagenta2B
syn keyword HLMagenta3B             HLMagenta3B
syn keyword HLMagenta4B             HLMagenta4B
syn keyword HLOrchid1B              HLOrchid1B
syn keyword HLOrchid2B              HLOrchid2B
syn keyword HLOrchid3B              HLOrchid3B
syn keyword HLOrchid4B              HLOrchid4B
syn keyword HLPlum1B                HLPlum1B
syn keyword HLPlum2B                HLPlum2B
syn keyword HLPlum3B                HLPlum3B
syn keyword HLPlum4B                HLPlum4B
syn keyword HLMediumorchid1B        HLMediumorchid1B
syn keyword HLMediumorchid2B        HLMediumorchid2B
syn keyword HLMediumorchid3B        HLMediumorchid3B
syn keyword HLMediumorchid4B        HLMediumorchid4B
syn keyword HLDarkorchid1B          HLDarkorchid1B
syn keyword HLDarkorchid2B          HLDarkorchid2B
syn keyword HLDarkorchid3B          HLDarkorchid3B
syn keyword HLDarkorchid4B          HLDarkorchid4B
syn keyword HLPurple1B              HLPurple1B
syn keyword HLPurple2B              HLPurple2B
syn keyword HLPurple3B              HLPurple3B
syn keyword HLPurple4B              HLPurple4B
syn keyword HLMediumpurple1B        HLMediumpurple1B
syn keyword HLMediumpurple2B        HLMediumpurple2B
syn keyword HLMediumpurple3B        HLMediumpurple3B
syn keyword HLMediumpurple4B        HLMediumpurple4B
syn keyword HLThistle1B             HLThistle1B
syn keyword HLThistle2B             HLThistle2B
syn keyword HLThistle3B             HLThistle3B
syn keyword HLThistle4B             HLThistle4B
syn keyword HLGray0B                HLGray0B
syn keyword HLGrey0B                HLGrey0B
syn keyword HLGray1B                HLGray1B
syn keyword HLGrey1B                HLGrey1B
syn keyword HLGray2B                HLGray2B
syn keyword HLGrey2B                HLGrey2B
syn keyword HLGray3B                HLGray3B
syn keyword HLGrey3B                HLGrey3B
syn keyword HLGray4B                HLGray4B
syn keyword HLGrey4B                HLGrey4B
syn keyword HLGray5B                HLGray5B
syn keyword HLGrey5B                HLGrey5B
syn keyword HLGray6B                HLGray6B
syn keyword HLGrey6B                HLGrey6B
syn keyword HLGray7B                HLGray7B
syn keyword HLGrey7B                HLGrey7B
syn keyword HLGray8B                HLGray8B
syn keyword HLGrey8B                HLGrey8B
syn keyword HLGray9B                HLGray9B
syn keyword HLGrey9B                HLGrey9B
syn keyword HLGray10B               HLGray10B
syn keyword HLGrey10B               HLGrey10B
syn keyword HLGray11B               HLGray11B
syn keyword HLGrey11B               HLGrey11B
syn keyword HLGray12B               HLGray12B
syn keyword HLGrey12B               HLGrey12B
syn keyword HLGray13B               HLGray13B
syn keyword HLGrey13B               HLGrey13B
syn keyword HLGray14B               HLGray14B
syn keyword HLGrey14B               HLGrey14B
syn keyword HLGray15B               HLGray15B
syn keyword HLGrey15B               HLGrey15B
syn keyword HLGray16B               HLGray16B
syn keyword HLGrey16B               HLGrey16B
syn keyword HLGray17B               HLGray17B
syn keyword HLGrey17B               HLGrey17B
syn keyword HLGray18B               HLGray18B
syn keyword HLGrey18B               HLGrey18B
syn keyword HLGray19B               HLGray19B
syn keyword HLGrey19B               HLGrey19B
syn keyword HLGray20B               HLGray20B
syn keyword HLGrey20B               HLGrey20B
syn keyword HLGray21B               HLGray21B
syn keyword HLGrey21B               HLGrey21B
syn keyword HLGray22B               HLGray22B
syn keyword HLGrey22B               HLGrey22B
syn keyword HLGray23B               HLGray23B
syn keyword HLGrey23B               HLGrey23B
syn keyword HLGray24B               HLGray24B
syn keyword HLGrey24B               HLGrey24B
syn keyword HLGray25B               HLGray25B
syn keyword HLGrey25B               HLGrey25B
syn keyword HLGray26B               HLGray26B
syn keyword HLGrey26B               HLGrey26B
syn keyword HLGray27B               HLGray27B
syn keyword HLGrey27B               HLGrey27B
syn keyword HLGray28B               HLGray28B
syn keyword HLGrey28B               HLGrey28B
syn keyword HLGray29B               HLGray29B
syn keyword HLGrey29B               HLGrey29B
syn keyword HLGray30B               HLGray30B
syn keyword HLGrey30B               HLGrey30B
syn keyword HLGray31B               HLGray31B
syn keyword HLGrey31B               HLGrey31B
syn keyword HLGray32B               HLGray32B
syn keyword HLGrey32B               HLGrey32B
syn keyword HLGray33B               HLGray33B
syn keyword HLGrey33B               HLGrey33B
syn keyword HLGray34B               HLGray34B
syn keyword HLGrey34B               HLGrey34B
syn keyword HLGray35B               HLGray35B
syn keyword HLGrey35B               HLGrey35B
syn keyword HLGray36B               HLGray36B
syn keyword HLGrey36B               HLGrey36B
syn keyword HLGray37B               HLGray37B
syn keyword HLGrey37B               HLGrey37B
syn keyword HLGray38B               HLGray38B
syn keyword HLGrey38B               HLGrey38B
syn keyword HLGray39B               HLGray39B
syn keyword HLGrey39B               HLGrey39B
syn keyword HLGray40B               HLGray40B
syn keyword HLGrey40B               HLGrey40B
syn keyword HLGray41B               HLGray41B
syn keyword HLGrey41B               HLGrey41B
syn keyword HLGray42B               HLGray42B
syn keyword HLGrey42B               HLGrey42B
syn keyword HLGray43B               HLGray43B
syn keyword HLGrey43B               HLGrey43B
syn keyword HLGray44B               HLGray44B
syn keyword HLGrey44B               HLGrey44B
syn keyword HLGray45B               HLGray45B
syn keyword HLGrey45B               HLGrey45B
syn keyword HLGray46B               HLGray46B
syn keyword HLGrey46B               HLGrey46B
syn keyword HLGray47B               HLGray47B
syn keyword HLGrey47B               HLGrey47B
syn keyword HLGray48B               HLGray48B
syn keyword HLGrey48B               HLGrey48B
syn keyword HLGray49B               HLGray49B
syn keyword HLGrey49B               HLGrey49B
syn keyword HLGray50B               HLGray50B
syn keyword HLGrey50B               HLGrey50B
syn keyword HLGray51B               HLGray51B
syn keyword HLGrey51B               HLGrey51B
syn keyword HLGray52B               HLGray52B
syn keyword HLGrey52B               HLGrey52B
syn keyword HLGray53B               HLGray53B
syn keyword HLGrey53B               HLGrey53B
syn keyword HLGray54B               HLGray54B
syn keyword HLGrey54B               HLGrey54B
syn keyword HLGray55B               HLGray55B
syn keyword HLGrey55B               HLGrey55B
syn keyword HLGray56B               HLGray56B
syn keyword HLGrey56B               HLGrey56B
syn keyword HLGray57B               HLGray57B
syn keyword HLGrey57B               HLGrey57B
syn keyword HLGray58B               HLGray58B
syn keyword HLGrey58B               HLGrey58B
syn keyword HLGray59B               HLGray59B
syn keyword HLGrey59B               HLGrey59B
syn keyword HLGray60B               HLGray60B
syn keyword HLGrey60B               HLGrey60B
syn keyword HLGray61B               HLGray61B
syn keyword HLGrey61B               HLGrey61B
syn keyword HLGray62B               HLGray62B
syn keyword HLGrey62B               HLGrey62B
syn keyword HLGray63B               HLGray63B
syn keyword HLGrey63B               HLGrey63B
syn keyword HLGray64B               HLGray64B
syn keyword HLGrey64B               HLGrey64B
syn keyword HLGray65B               HLGray65B
syn keyword HLGrey65B               HLGrey65B
syn keyword HLGray66B               HLGray66B
syn keyword HLGrey66B               HLGrey66B
syn keyword HLGray67B               HLGray67B
syn keyword HLGrey67B               HLGrey67B
syn keyword HLGray68B               HLGray68B
syn keyword HLGrey68B               HLGrey68B
syn keyword HLGray69B               HLGray69B
syn keyword HLGrey69B               HLGrey69B
syn keyword HLGray70B               HLGray70B
syn keyword HLGrey70B               HLGrey70B
syn keyword HLGray71B               HLGray71B
syn keyword HLGrey71B               HLGrey71B
syn keyword HLGray72B               HLGray72B
syn keyword HLGrey72B               HLGrey72B
syn keyword HLGray73B               HLGray73B
syn keyword HLGrey73B               HLGrey73B
syn keyword HLGray74B               HLGray74B
syn keyword HLGrey74B               HLGrey74B
syn keyword HLGray75B               HLGray75B
syn keyword HLGrey75B               HLGrey75B
syn keyword HLGray76B               HLGray76B
syn keyword HLGrey76B               HLGrey76B
syn keyword HLGray77B               HLGray77B
syn keyword HLGrey77B               HLGrey77B
syn keyword HLGray78B               HLGray78B
syn keyword HLGrey78B               HLGrey78B
syn keyword HLGray79B               HLGray79B
syn keyword HLGrey79B               HLGrey79B
syn keyword HLGray80B               HLGray80B
syn keyword HLGrey80B               HLGrey80B
syn keyword HLGray81B               HLGray81B
syn keyword HLGrey81B               HLGrey81B
syn keyword HLGray82B               HLGray82B
syn keyword HLGrey82B               HLGrey82B
syn keyword HLGray83B               HLGray83B
syn keyword HLGrey83B               HLGrey83B
syn keyword HLGray84B               HLGray84B
syn keyword HLGrey84B               HLGrey84B
syn keyword HLGray85B               HLGray85B
syn keyword HLGrey85B               HLGrey85B
syn keyword HLGray86B               HLGray86B
syn keyword HLGrey86B               HLGrey86B
syn keyword HLGray87B               HLGray87B
syn keyword HLGrey87B               HLGrey87B
syn keyword HLGray88B               HLGray88B
syn keyword HLGrey88B               HLGrey88B
syn keyword HLGray89B               HLGray89B
syn keyword HLGrey89B               HLGrey89B
syn keyword HLGray90B               HLGray90B
syn keyword HLGrey90B               HLGrey90B
syn keyword HLGray91B               HLGray91B
syn keyword HLGrey91B               HLGrey91B
syn keyword HLGray92B               HLGray92B
syn keyword HLGrey92B               HLGrey92B
syn keyword HLGray93B               HLGray93B
syn keyword HLGrey93B               HLGrey93B
syn keyword HLGray94B               HLGray94B
syn keyword HLGrey94B               HLGrey94B
syn keyword HLGray95B               HLGray95B
syn keyword HLGrey95B               HLGrey95B
syn keyword HLGray96B               HLGray96B
syn keyword HLGrey96B               HLGrey96B
syn keyword HLGray97B               HLGray97B
syn keyword HLGrey97B               HLGrey97B
syn keyword HLGray98B               HLGray98B
syn keyword HLGrey98B               HLGrey98B
syn keyword HLGray99B               HLGray99B
syn keyword HLGrey99B               HLGrey99B
syn keyword HLGray100B              HLGray100B
syn keyword HLGrey100B              HLGrey100B
syn keyword HLDarkgreyB             HLDarkgreyB
syn keyword HLDarkgrayB             HLDarkgrayB
syn keyword HLDarkblueB             HLDarkblueB
syn keyword HLDarkcyanB             HLDarkcyanB
syn keyword HLDarkmagentaB          HLDarkmagentaB
syn keyword HLDarkredB              HLDarkredB
syn keyword HLLightgreenB           HLLightgreenB
syn keyword HLCrimsonB              HLCrimsonB
syn keyword HLIndigoB               HLIndigoB
syn keyword HLOliveB                HLOliveB
syn keyword HLRebeccapurpleB        HLRebeccapurpleB
syn keyword HLSilverB               HLSilverB
syn keyword HLTealB                 HLTealB
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Bold and underline colors
syn keyword HLSnowBU                 HLSnowBU
syn keyword HLGhostwhiteBU           HLGhostwhiteBU
syn keyword HLWhitesmokeBU           HLWhitesmokeBU
syn keyword HLGainsboroBU            HLGainsboroBU
syn keyword HLFloralwhiteBU          HLFloralwhiteBU
syn keyword HLOldlaceBU              HLOldlaceBU
syn keyword HLLinenBU                HLLinenBU
syn keyword HLAntiquewhiteBU         HLAntiquewhiteBU
syn keyword HLPapayawhipBU           HLPapayawhipBU
syn keyword HLBlanchedalmondBU       HLBlanchedalmondBU
syn keyword HLBisqueBU               HLBisqueBU
syn keyword HLPeachpuffBU            HLPeachpuffBU
syn keyword HLNavajowhiteBU          HLNavajowhiteBU
syn keyword HLMoccasinBU             HLMoccasinBU
syn keyword HLCornsilkBU             HLCornsilkBU
syn keyword HLIvoryBU                HLIvoryBU
syn keyword HLLemonchiffonBU         HLLemonchiffonBU
syn keyword HLSeashellBU             HLSeashellBU
syn keyword HLHoneydewBU             HLHoneydewBU
syn keyword HLMintcreamBU            HLMintcreamBU
syn keyword HLAzureBU                HLAzureBU
syn keyword HLAliceblueBU            HLAliceblueBU
syn keyword HLLavenderBU             HLLavenderBU
syn keyword HLLavenderblushBU        HLLavenderblushBU
syn keyword HLMistyroseBU            HLMistyroseBU
syn keyword HLWhiteBU                HLWhiteBU
syn keyword HLBlackBU                HLBlackBU
syn keyword HLDarkslategrayBU        HLDarkslategrayBU
syn keyword HLDarkslategreyBU        HLDarkslategreyBU
syn keyword HLDimgrayBU              HLDimgrayBU
syn keyword HLDimgreyBU              HLDimgreyBU
syn keyword HLSlategrayBU            HLSlategrayBU
syn keyword HLSlategreyBU            HLSlategreyBU
syn keyword HLLightslategrayBU       HLLightslategrayBU
syn keyword HLLightslategreyBU       HLLightslategreyBU
syn keyword HLGrayBU                 HLGrayBU
syn keyword HLGreyBU                 HLGreyBU
syn keyword HLX11grayBU              HLX11grayBU
syn keyword HLX11greyBU              HLX11greyBU
syn keyword HLWebgrayBU              HLWebgrayBU
syn keyword HLWebgreyBU              HLWebgreyBU
syn keyword HLLightgreyBU            HLLightgreyBU
syn keyword HLLightgrayBU            HLLightgrayBU
syn keyword HLMidnightblueBU         HLMidnightblueBU
syn keyword HLNavyBU                 HLNavyBU
syn keyword HLNavyblueBU             HLNavyblueBU
syn keyword HLCornflowerblueBU       HLCornflowerblueBU
syn keyword HLDarkslateblueBU        HLDarkslateblueBU
syn keyword HLSlateblueBU            HLSlateblueBU
syn keyword HLMediumslateblueBU      HLMediumslateblueBU
syn keyword HLLightslateblueBU       HLLightslateblueBU
syn keyword HLMediumblueBU           HLMediumblueBU
syn keyword HLRoyalblueBU            HLRoyalblueBU
syn keyword HLBlueBU                 HLBlueBU
syn keyword HLDodgerblueBU           HLDodgerblueBU
syn keyword HLDeepskyblueBU          HLDeepskyblueBU
syn keyword HLSkyblueBU              HLSkyblueBU
syn keyword HLLightskyblueBU         HLLightskyblueBU
syn keyword HLSteelblueBU            HLSteelblueBU
syn keyword HLLightsteelblueBU       HLLightsteelblueBU
syn keyword HLLightblueBU            HLLightblueBU
syn keyword HLPowderblueBU           HLPowderblueBU
syn keyword HLPaleturquoiseBU        HLPaleturquoiseBU
syn keyword HLDarkturquoiseBU        HLDarkturquoiseBU
syn keyword HLMediumturquoiseBU      HLMediumturquoiseBU
syn keyword HLTurquoiseBU            HLTurquoiseBU
syn keyword HLCyanBU                 HLCyanBU
syn keyword HLAquaBU                 HLAquaBU
syn keyword HLLightcyanBU            HLLightcyanBU
syn keyword HLCadetblueBU            HLCadetblueBU
syn keyword HLMediumaquamarineBU     HLMediumaquamarineBU
syn keyword HLAquamarineBU           HLAquamarineBU
syn keyword HLDarkgreenBU            HLDarkgreenBU
syn keyword HLDarkolivegreenBU       HLDarkolivegreenBU
syn keyword HLDarkseagreenBU         HLDarkseagreenBU
syn keyword HLSeagreenBU             HLSeagreenBU
syn keyword HLMediumseagreenBU       HLMediumseagreenBU
syn keyword HLLightseagreenBU        HLLightseagreenBU
syn keyword HLPalegreenBU            HLPalegreenBU
syn keyword HLSpringgreenBU          HLSpringgreenBU
syn keyword HLLawngreenBU            HLLawngreenBU
syn keyword HLGreenBU                HLGreenBU
syn keyword HLLimeBU                 HLLimeBU
syn keyword HLX11greenBU             HLX11greenBU
syn keyword HLWebgreenBU             HLWebgreenBU
syn keyword HLChartreuseBU           HLChartreuseBU
syn keyword HLMediumspringgreenBU    HLMediumspringgreenBU
syn keyword HLGreenyellowBU          HLGreenyellowBU
syn keyword HLLimegreenBU            HLLimegreenBU
syn keyword HLYellowgreenBU          HLYellowgreenBU
syn keyword HLForestgreenBU          HLForestgreenBU
syn keyword HLOlivedrabBU            HLOlivedrabBU
syn keyword HLDarkkhakiBU            HLDarkkhakiBU
syn keyword HLKhakiBU                HLKhakiBU
syn keyword HLPalegoldenrodBU        HLPalegoldenrodBU
syn keyword HLLightgoldenrodyellowBU HLLightgoldenrodyellowBU
syn keyword HLLightyellowBU          HLLightyellowBU
syn keyword HLYellowBU               HLYellowBU
syn keyword HLGoldBU                 HLGoldBU
syn keyword HLLightgoldenrodBU       HLLightgoldenrodBU
syn keyword HLGoldenrodBU            HLGoldenrodBU
syn keyword HLDarkgoldenrodBU        HLDarkgoldenrodBU
syn keyword HLRosybrownBU            HLRosybrownBU
syn keyword HLIndianredBU            HLIndianredBU
syn keyword HLSaddlebrownBU          HLSaddlebrownBU
syn keyword HLSiennaBU               HLSiennaBU
syn keyword HLPeruBU                 HLPeruBU
syn keyword HLBurlywoodBU            HLBurlywoodBU
syn keyword HLBeigeBU                HLBeigeBU
syn keyword HLWheatBU                HLWheatBU
syn keyword HLSandybrownBU           HLSandybrownBU
syn keyword HLTanBU                  HLTanBU
syn keyword HLChocolateBU            HLChocolateBU
syn keyword HLFirebrickBU            HLFirebrickBU
syn keyword HLBrownBU                HLBrownBU
syn keyword HLDarksalmonBU           HLDarksalmonBU
syn keyword HLSalmonBU               HLSalmonBU
syn keyword HLLightsalmonBU          HLLightsalmonBU
syn keyword HLOrangeBU               HLOrangeBU
syn keyword HLDarkorangeBU           HLDarkorangeBU
syn keyword HLCoralBU                HLCoralBU
syn keyword HLLightcoralBU           HLLightcoralBU
syn keyword HLTomatoBU               HLTomatoBU
syn keyword HLOrangeredBU            HLOrangeredBU
syn keyword HLRedBU                  HLRedBU
syn keyword HLHotpinkBU              HLHotpinkBU
syn keyword HLDeeppinkBU             HLDeeppinkBU
syn keyword HLPinkBU                 HLPinkBU
syn keyword HLLightpinkBU            HLLightpinkBU
syn keyword HLPalevioletredBU        HLPalevioletredBU
syn keyword HLMaroonBU               HLMaroonBU
syn keyword HLX11maroonBU            HLX11maroonBU
syn keyword HLWebmaroonBU            HLWebmaroonBU
syn keyword HLMediumvioletredBU      HLMediumvioletredBU
syn keyword HLVioletredBU            HLVioletredBU
syn keyword HLMagentaBU              HLMagentaBU
syn keyword HLFuchsiaBU              HLFuchsiaBU
syn keyword HLVioletBU               HLVioletBU
syn keyword HLPlumBU                 HLPlumBU
syn keyword HLOrchidBU               HLOrchidBU
syn keyword HLMediumorchidBU         HLMediumorchidBU
syn keyword HLDarkorchidBU           HLDarkorchidBU
syn keyword HLDarkvioletBU           HLDarkvioletBU
syn keyword HLBluevioletBU           HLBluevioletBU
syn keyword HLPurpleBU               HLPurpleBU
syn keyword HLX11purpleBU            HLX11purpleBU
syn keyword HLWebpurpleBU            HLWebpurpleBU
syn keyword HLMediumpurpleBU         HLMediumpurpleBU
syn keyword HLThistleBU              HLThistleBU
syn keyword HLSnow1BU                HLSnow1BU
syn keyword HLSnow2BU                HLSnow2BU
syn keyword HLSnow3BU                HLSnow3BU
syn keyword HLSnow4BU                HLSnow4BU
syn keyword HLSeashell1BU            HLSeashell1BU
syn keyword HLSeashell2BU            HLSeashell2BU
syn keyword HLSeashell3BU            HLSeashell3BU
syn keyword HLSeashell4BU            HLSeashell4BU
syn keyword HLAntiquewhite1BU        HLAntiquewhite1BU
syn keyword HLAntiquewhite2BU        HLAntiquewhite2BU
syn keyword HLAntiquewhite3BU        HLAntiquewhite3BU
syn keyword HLAntiquewhite4BU        HLAntiquewhite4BU
syn keyword HLBisque1BU              HLBisque1BU
syn keyword HLBisque2BU              HLBisque2BU
syn keyword HLBisque3BU              HLBisque3BU
syn keyword HLBisque4BU              HLBisque4BU
syn keyword HLPeachpuff1BU           HLPeachpuff1BU
syn keyword HLPeachpuff2BU           HLPeachpuff2BU
syn keyword HLPeachpuff3BU           HLPeachpuff3BU
syn keyword HLPeachpuff4BU           HLPeachpuff4BU
syn keyword HLNavajowhite1BU         HLNavajowhite1BU
syn keyword HLNavajowhite2BU         HLNavajowhite2BU
syn keyword HLNavajowhite3BU         HLNavajowhite3BU
syn keyword HLNavajowhite4BU         HLNavajowhite4BU
syn keyword HLLemonchiffon1BU        HLLemonchiffon1BU
syn keyword HLLemonchiffon2BU        HLLemonchiffon2BU
syn keyword HLLemonchiffon3BU        HLLemonchiffon3BU
syn keyword HLLemonchiffon4BU        HLLemonchiffon4BU
syn keyword HLCornsilk1BU            HLCornsilk1BU
syn keyword HLCornsilk2BU            HLCornsilk2BU
syn keyword HLCornsilk3BU            HLCornsilk3BU
syn keyword HLCornsilk4BU            HLCornsilk4BU
syn keyword HLIvory1BU               HLIvory1BU
syn keyword HLIvory2BU               HLIvory2BU
syn keyword HLIvory3BU               HLIvory3BU
syn keyword HLIvory4BU               HLIvory4BU
syn keyword HLHoneydew1BU            HLHoneydew1BU
syn keyword HLHoneydew2BU            HLHoneydew2BU
syn keyword HLHoneydew3BU            HLHoneydew3BU
syn keyword HLHoneydew4BU            HLHoneydew4BU
syn keyword HLLavenderblush1BU       HLLavenderblush1BU
syn keyword HLLavenderblush2BU       HLLavenderblush2BU
syn keyword HLLavenderblush3BU       HLLavenderblush3BU
syn keyword HLLavenderblush4BU       HLLavenderblush4BU
syn keyword HLMistyrose1BU           HLMistyrose1BU
syn keyword HLMistyrose2BU           HLMistyrose2BU
syn keyword HLMistyrose3BU           HLMistyrose3BU
syn keyword HLMistyrose4BU           HLMistyrose4BU
syn keyword HLAzure1BU               HLAzure1BU
syn keyword HLAzure2BU               HLAzure2BU
syn keyword HLAzure3BU               HLAzure3BU
syn keyword HLAzure4BU               HLAzure4BU
syn keyword HLSlateblue1BU           HLSlateblue1BU
syn keyword HLSlateblue2BU           HLSlateblue2BU
syn keyword HLSlateblue3BU           HLSlateblue3BU
syn keyword HLSlateblue4BU           HLSlateblue4BU
syn keyword HLRoyalblue1BU           HLRoyalblue1BU
syn keyword HLRoyalblue2BU           HLRoyalblue2BU
syn keyword HLRoyalblue3BU           HLRoyalblue3BU
syn keyword HLRoyalblue4BU           HLRoyalblue4BU
syn keyword HLBlue1BU                HLBlue1BU
syn keyword HLBlue2BU                HLBlue2BU
syn keyword HLBlue3BU                HLBlue3BU
syn keyword HLBlue4BU                HLBlue4BU
syn keyword HLDodgerblue1BU          HLDodgerblue1BU
syn keyword HLDodgerblue2BU          HLDodgerblue2BU
syn keyword HLDodgerblue3BU          HLDodgerblue3BU
syn keyword HLDodgerblue4BU          HLDodgerblue4BU
syn keyword HLSteelblue1BU           HLSteelblue1BU
syn keyword HLSteelblue2BU           HLSteelblue2BU
syn keyword HLSteelblue3BU           HLSteelblue3BU
syn keyword HLSteelblue4BU           HLSteelblue4BU
syn keyword HLDeepskyblue1BU         HLDeepskyblue1BU
syn keyword HLDeepskyblue2BU         HLDeepskyblue2BU
syn keyword HLDeepskyblue3BU         HLDeepskyblue3BU
syn keyword HLDeepskyblue4BU         HLDeepskyblue4BU
syn keyword HLSkyblue1BU             HLSkyblue1BU
syn keyword HLSkyblue2BU             HLSkyblue2BU
syn keyword HLSkyblue3BU             HLSkyblue3BU
syn keyword HLSkyblue4BU             HLSkyblue4BU
syn keyword HLLightskyblue1BU        HLLightskyblue1BU
syn keyword HLLightskyblue2BU        HLLightskyblue2BU
syn keyword HLLightskyblue3BU        HLLightskyblue3BU
syn keyword HLLightskyblue4BU        HLLightskyblue4BU
syn keyword HLSlategray1BU           HLSlategray1BU
syn keyword HLSlategray2BU           HLSlategray2BU
syn keyword HLSlategray3BU           HLSlategray3BU
syn keyword HLSlategray4BU           HLSlategray4BU
syn keyword HLLightsteelblue1BU      HLLightsteelblue1BU
syn keyword HLLightsteelblue2BU      HLLightsteelblue2BU
syn keyword HLLightsteelblue3BU      HLLightsteelblue3BU
syn keyword HLLightsteelblue4BU      HLLightsteelblue4BU
syn keyword HLLightblue1BU           HLLightblue1BU
syn keyword HLLightblue2BU           HLLightblue2BU
syn keyword HLLightblue3BU           HLLightblue3BU
syn keyword HLLightblue4BU           HLLightblue4BU
syn keyword HLLightcyan1BU           HLLightcyan1BU
syn keyword HLLightcyan2BU           HLLightcyan2BU
syn keyword HLLightcyan3BU           HLLightcyan3BU
syn keyword HLLightcyan4BU           HLLightcyan4BU
syn keyword HLPaleturquoise1BU       HLPaleturquoise1BU
syn keyword HLPaleturquoise2BU       HLPaleturquoise2BU
syn keyword HLPaleturquoise3BU       HLPaleturquoise3BU
syn keyword HLPaleturquoise4BU       HLPaleturquoise4BU
syn keyword HLCadetblue1BU           HLCadetblue1BU
syn keyword HLCadetblue2BU           HLCadetblue2BU
syn keyword HLCadetblue3BU           HLCadetblue3BU
syn keyword HLCadetblue4BU           HLCadetblue4BU
syn keyword HLTurquoise1BU           HLTurquoise1BU
syn keyword HLTurquoise2BU           HLTurquoise2BU
syn keyword HLTurquoise3BU           HLTurquoise3BU
syn keyword HLTurquoise4BU           HLTurquoise4BU
syn keyword HLCyan1BU                HLCyan1BU
syn keyword HLCyan2BU                HLCyan2BU
syn keyword HLCyan3BU                HLCyan3BU
syn keyword HLCyan4BU                HLCyan4BU
syn keyword HLDarkslategray1BU       HLDarkslategray1BU
syn keyword HLDarkslategray2BU       HLDarkslategray2BU
syn keyword HLDarkslategray3BU       HLDarkslategray3BU
syn keyword HLDarkslategray4BU       HLDarkslategray4BU
syn keyword HLAquamarine1BU          HLAquamarine1BU
syn keyword HLAquamarine2BU          HLAquamarine2BU
syn keyword HLAquamarine3BU          HLAquamarine3BU
syn keyword HLAquamarine4BU          HLAquamarine4BU
syn keyword HLDarkseagreen1BU        HLDarkseagreen1BU
syn keyword HLDarkseagreen2BU        HLDarkseagreen2BU
syn keyword HLDarkseagreen3BU        HLDarkseagreen3BU
syn keyword HLDarkseagreen4BU        HLDarkseagreen4BU
syn keyword HLSeagreen1BU            HLSeagreen1BU
syn keyword HLSeagreen2BU            HLSeagreen2BU
syn keyword HLSeagreen3BU            HLSeagreen3BU
syn keyword HLSeagreen4BU            HLSeagreen4BU
syn keyword HLPalegreen1BU           HLPalegreen1BU
syn keyword HLPalegreen2BU           HLPalegreen2BU
syn keyword HLPalegreen3BU           HLPalegreen3BU
syn keyword HLPalegreen4BU           HLPalegreen4BU
syn keyword HLSpringgreen1BU         HLSpringgreen1BU
syn keyword HLSpringgreen2BU         HLSpringgreen2BU
syn keyword HLSpringgreen3BU         HLSpringgreen3BU
syn keyword HLSpringgreen4BU         HLSpringgreen4BU
syn keyword HLGreen1BU               HLGreen1BU
syn keyword HLGreen2BU               HLGreen2BU
syn keyword HLGreen3BU               HLGreen3BU
syn keyword HLGreen4BU               HLGreen4BU
syn keyword HLChartreuse1BU          HLChartreuse1BU
syn keyword HLChartreuse2BU          HLChartreuse2BU
syn keyword HLChartreuse3BU          HLChartreuse3BU
syn keyword HLChartreuse4BU          HLChartreuse4BU
syn keyword HLOlivedrab1BU           HLOlivedrab1BU
syn keyword HLOlivedrab2BU           HLOlivedrab2BU
syn keyword HLOlivedrab3BU           HLOlivedrab3BU
syn keyword HLOlivedrab4BU           HLOlivedrab4BU
syn keyword HLDarkolivegreen1BU      HLDarkolivegreen1BU
syn keyword HLDarkolivegreen2BU      HLDarkolivegreen2BU
syn keyword HLDarkolivegreen3BU      HLDarkolivegreen3BU
syn keyword HLDarkolivegreen4BU      HLDarkolivegreen4BU
syn keyword HLKhaki1BU               HLKhaki1BU
syn keyword HLKhaki2BU               HLKhaki2BU
syn keyword HLKhaki3BU               HLKhaki3BU
syn keyword HLKhaki4BU               HLKhaki4BU
syn keyword HLLightgoldenrod1BU      HLLightgoldenrod1BU
syn keyword HLLightgoldenrod2BU      HLLightgoldenrod2BU
syn keyword HLLightgoldenrod3BU      HLLightgoldenrod3BU
syn keyword HLLightgoldenrod4BU      HLLightgoldenrod4BU
syn keyword HLLightyellow1BU         HLLightyellow1BU
syn keyword HLLightyellow2BU         HLLightyellow2BU
syn keyword HLLightyellow3BU         HLLightyellow3BU
syn keyword HLLightyellow4BU         HLLightyellow4BU
syn keyword HLYellow1BU              HLYellow1BU
syn keyword HLYellow2BU              HLYellow2BU
syn keyword HLYellow3BU              HLYellow3BU
syn keyword HLYellow4BU              HLYellow4BU
syn keyword HLDarkyellowBU           HLDarkyellowBU
syn keyword HLGold1BU                HLGold1BU
syn keyword HLGold2BU                HLGold2BU
syn keyword HLGold3BU                HLGold3BU
syn keyword HLGold4BU                HLGold4BU
syn keyword HLGoldenrod1BU           HLGoldenrod1BU
syn keyword HLGoldenrod2BU           HLGoldenrod2BU
syn keyword HLGoldenrod3BU           HLGoldenrod3BU
syn keyword HLGoldenrod4BU           HLGoldenrod4BU
syn keyword HLDarkgoldenrod1BU       HLDarkgoldenrod1BU
syn keyword HLDarkgoldenrod2BU       HLDarkgoldenrod2BU
syn keyword HLDarkgoldenrod3BU       HLDarkgoldenrod3BU
syn keyword HLDarkgoldenrod4BU       HLDarkgoldenrod4BU
syn keyword HLRosybrown1BU           HLRosybrown1BU
syn keyword HLRosybrown2BU           HLRosybrown2BU
syn keyword HLRosybrown3BU           HLRosybrown3BU
syn keyword HLRosybrown4BU           HLRosybrown4BU
syn keyword HLIndianred1BU           HLIndianred1BU
syn keyword HLIndianred2BU           HLIndianred2BU
syn keyword HLIndianred3BU           HLIndianred3BU
syn keyword HLIndianred4BU           HLIndianred4BU
syn keyword HLSienna1BU              HLSienna1BU
syn keyword HLSienna2BU              HLSienna2BU
syn keyword HLSienna3BU              HLSienna3BU
syn keyword HLSienna4BU              HLSienna4BU
syn keyword HLBurlywood1BU           HLBurlywood1BU
syn keyword HLBurlywood2BU           HLBurlywood2BU
syn keyword HLBurlywood3BU           HLBurlywood3BU
syn keyword HLBurlywood4BU           HLBurlywood4BU
syn keyword HLWheat1BU               HLWheat1BU
syn keyword HLWheat2BU               HLWheat2BU
syn keyword HLWheat3BU               HLWheat3BU
syn keyword HLWheat4BU               HLWheat4BU
syn keyword HLTan1BU                 HLTan1BU
syn keyword HLTan2BU                 HLTan2BU
syn keyword HLTan3BU                 HLTan3BU
syn keyword HLTan4BU                 HLTan4BU
syn keyword HLChocolate1BU           HLChocolate1BU
syn keyword HLChocolate2BU           HLChocolate2BU
syn keyword HLChocolate3BU           HLChocolate3BU
syn keyword HLChocolate4BU           HLChocolate4BU
syn keyword HLFirebrick1BU           HLFirebrick1BU
syn keyword HLFirebrick2BU           HLFirebrick2BU
syn keyword HLFirebrick3BU           HLFirebrick3BU
syn keyword HLFirebrick4BU           HLFirebrick4BU
syn keyword HLBrown1BU               HLBrown1BU
syn keyword HLBrown2BU               HLBrown2BU
syn keyword HLBrown3BU               HLBrown3BU
syn keyword HLBrown4BU               HLBrown4BU
syn keyword HLSalmon1BU              HLSalmon1BU
syn keyword HLSalmon2BU              HLSalmon2BU
syn keyword HLSalmon3BU              HLSalmon3BU
syn keyword HLSalmon4BU              HLSalmon4BU
syn keyword HLLightsalmon1BU         HLLightsalmon1BU
syn keyword HLLightsalmon2BU         HLLightsalmon2BU
syn keyword HLLightsalmon3BU         HLLightsalmon3BU
syn keyword HLLightsalmon4BU         HLLightsalmon4BU
syn keyword HLOrange1BU              HLOrange1BU
syn keyword HLOrange2BU              HLOrange2BU
syn keyword HLOrange3BU              HLOrange3BU
syn keyword HLOrange4BU              HLOrange4BU
syn keyword HLDarkorange1BU          HLDarkorange1BU
syn keyword HLDarkorange2BU          HLDarkorange2BU
syn keyword HLDarkorange3BU          HLDarkorange3BU
syn keyword HLDarkorange4BU          HLDarkorange4BU
syn keyword HLCoral1BU               HLCoral1BU
syn keyword HLCoral2BU               HLCoral2BU
syn keyword HLCoral3BU               HLCoral3BU
syn keyword HLCoral4BU               HLCoral4BU
syn keyword HLTomato1BU              HLTomato1BU
syn keyword HLTomato2BU              HLTomato2BU
syn keyword HLTomato3BU              HLTomato3BU
syn keyword HLTomato4BU              HLTomato4BU
syn keyword HLOrangered1BU           HLOrangered1BU
syn keyword HLOrangered2BU           HLOrangered2BU
syn keyword HLOrangered3BU           HLOrangered3BU
syn keyword HLOrangered4BU           HLOrangered4BU
syn keyword HLLightredBU             HLLightredBU
syn keyword HLRed1BU                 HLRed1BU
syn keyword HLRed2BU                 HLRed2BU
syn keyword HLRed3BU                 HLRed3BU
syn keyword HLRed4BU                 HLRed4BU
syn keyword HLDeeppink1BU            HLDeeppink1BU
syn keyword HLDeeppink2BU            HLDeeppink2BU
syn keyword HLDeeppink3BU            HLDeeppink3BU
syn keyword HLDeeppink4BU            HLDeeppink4BU
syn keyword HLHotpink1BU             HLHotpink1BU
syn keyword HLHotpink2BU             HLHotpink2BU
syn keyword HLHotpink3BU             HLHotpink3BU
syn keyword HLHotpink4BU             HLHotpink4BU
syn keyword HLPink1BU                HLPink1BU
syn keyword HLPink2BU                HLPink2BU
syn keyword HLPink3BU                HLPink3BU
syn keyword HLPink4BU                HLPink4BU
syn keyword HLLightpink1BU           HLLightpink1BU
syn keyword HLLightpink2BU           HLLightpink2BU
syn keyword HLLightpink3BU           HLLightpink3BU
syn keyword HLLightpink4BU           HLLightpink4BU
syn keyword HLPalevioletred1BU       HLPalevioletred1BU
syn keyword HLPalevioletred2BU       HLPalevioletred2BU
syn keyword HLPalevioletred3BU       HLPalevioletred3BU
syn keyword HLPalevioletred4BU       HLPalevioletred4BU
syn keyword HLMaroon1BU              HLMaroon1BU
syn keyword HLMaroon2BU              HLMaroon2BU
syn keyword HLMaroon3BU              HLMaroon3BU
syn keyword HLMaroon4BU              HLMaroon4BU
syn keyword HLVioletred1BU           HLVioletred1BU
syn keyword HLVioletred2BU           HLVioletred2BU
syn keyword HLVioletred3BU           HLVioletred3BU
syn keyword HLVioletred4BU           HLVioletred4BU
syn keyword HLLightmagentaBU         HLLightmagentaBU
syn keyword HLMagenta1BU             HLMagenta1BU
syn keyword HLMagenta2BU             HLMagenta2BU
syn keyword HLMagenta3BU             HLMagenta3BU
syn keyword HLMagenta4BU             HLMagenta4BU
syn keyword HLOrchid1BU              HLOrchid1BU
syn keyword HLOrchid2BU              HLOrchid2BU
syn keyword HLOrchid3BU              HLOrchid3BU
syn keyword HLOrchid4BU              HLOrchid4BU
syn keyword HLPlum1BU                HLPlum1BU
syn keyword HLPlum2BU                HLPlum2BU
syn keyword HLPlum3BU                HLPlum3BU
syn keyword HLPlum4BU                HLPlum4BU
syn keyword HLMediumorchid1BU        HLMediumorchid1BU
syn keyword HLMediumorchid2BU        HLMediumorchid2BU
syn keyword HLMediumorchid3BU        HLMediumorchid3BU
syn keyword HLMediumorchid4BU        HLMediumorchid4BU
syn keyword HLDarkorchid1BU          HLDarkorchid1BU
syn keyword HLDarkorchid2BU          HLDarkorchid2BU
syn keyword HLDarkorchid3BU          HLDarkorchid3BU
syn keyword HLDarkorchid4BU          HLDarkorchid4BU
syn keyword HLPurple1BU              HLPurple1BU
syn keyword HLPurple2BU              HLPurple2BU
syn keyword HLPurple3BU              HLPurple3BU
syn keyword HLPurple4BU              HLPurple4BU
syn keyword HLMediumpurple1BU        HLMediumpurple1BU
syn keyword HLMediumpurple2BU        HLMediumpurple2BU
syn keyword HLMediumpurple3BU        HLMediumpurple3BU
syn keyword HLMediumpurple4BU        HLMediumpurple4BU
syn keyword HLThistle1BU             HLThistle1BU
syn keyword HLThistle2BU             HLThistle2BU
syn keyword HLThistle3BU             HLThistle3BU
syn keyword HLThistle4BU             HLThistle4BU
syn keyword HLGray0BU                HLGray0BU
syn keyword HLGrey0BU                HLGrey0BU
syn keyword HLGray1BU                HLGray1BU
syn keyword HLGrey1BU                HLGrey1BU
syn keyword HLGray2BU                HLGray2BU
syn keyword HLGrey2BU                HLGrey2BU
syn keyword HLGray3BU                HLGray3BU
syn keyword HLGrey3BU                HLGrey3BU
syn keyword HLGray4BU                HLGray4BU
syn keyword HLGrey4BU                HLGrey4BU
syn keyword HLGray5BU                HLGray5BU
syn keyword HLGrey5BU                HLGrey5BU
syn keyword HLGray6BU                HLGray6BU
syn keyword HLGrey6BU                HLGrey6BU
syn keyword HLGray7BU                HLGray7BU
syn keyword HLGrey7BU                HLGrey7BU
syn keyword HLGray8BU                HLGray8BU
syn keyword HLGrey8BU                HLGrey8BU
syn keyword HLGray9BU                HLGray9BU
syn keyword HLGrey9BU                HLGrey9BU
syn keyword HLGray10BU               HLGray10BU
syn keyword HLGrey10BU               HLGrey10BU
syn keyword HLGray11BU               HLGray11BU
syn keyword HLGrey11BU               HLGrey11BU
syn keyword HLGray12BU               HLGray12BU
syn keyword HLGrey12BU               HLGrey12BU
syn keyword HLGray13BU               HLGray13BU
syn keyword HLGrey13BU               HLGrey13BU
syn keyword HLGray14BU               HLGray14BU
syn keyword HLGrey14BU               HLGrey14BU
syn keyword HLGray15BU               HLGray15BU
syn keyword HLGrey15BU               HLGrey15BU
syn keyword HLGray16BU               HLGray16BU
syn keyword HLGrey16BU               HLGrey16BU
syn keyword HLGray17BU               HLGray17BU
syn keyword HLGrey17BU               HLGrey17BU
syn keyword HLGray18BU               HLGray18BU
syn keyword HLGrey18BU               HLGrey18BU
syn keyword HLGray19BU               HLGray19BU
syn keyword HLGrey19BU               HLGrey19BU
syn keyword HLGray20BU               HLGray20BU
syn keyword HLGrey20BU               HLGrey20BU
syn keyword HLGray21BU               HLGray21BU
syn keyword HLGrey21BU               HLGrey21BU
syn keyword HLGray22BU               HLGray22BU
syn keyword HLGrey22BU               HLGrey22BU
syn keyword HLGray23BU               HLGray23BU
syn keyword HLGrey23BU               HLGrey23BU
syn keyword HLGray24BU               HLGray24BU
syn keyword HLGrey24BU               HLGrey24BU
syn keyword HLGray25BU               HLGray25BU
syn keyword HLGrey25BU               HLGrey25BU
syn keyword HLGray26BU               HLGray26BU
syn keyword HLGrey26BU               HLGrey26BU
syn keyword HLGray27BU               HLGray27BU
syn keyword HLGrey27BU               HLGrey27BU
syn keyword HLGray28BU               HLGray28BU
syn keyword HLGrey28BU               HLGrey28BU
syn keyword HLGray29BU               HLGray29BU
syn keyword HLGrey29BU               HLGrey29BU
syn keyword HLGray30BU               HLGray30BU
syn keyword HLGrey30BU               HLGrey30BU
syn keyword HLGray31BU               HLGray31BU
syn keyword HLGrey31BU               HLGrey31BU
syn keyword HLGray32BU               HLGray32BU
syn keyword HLGrey32BU               HLGrey32BU
syn keyword HLGray33BU               HLGray33BU
syn keyword HLGrey33BU               HLGrey33BU
syn keyword HLGray34BU               HLGray34BU
syn keyword HLGrey34BU               HLGrey34BU
syn keyword HLGray35BU               HLGray35BU
syn keyword HLGrey35BU               HLGrey35BU
syn keyword HLGray36BU               HLGray36BU
syn keyword HLGrey36BU               HLGrey36BU
syn keyword HLGray37BU               HLGray37BU
syn keyword HLGrey37BU               HLGrey37BU
syn keyword HLGray38BU               HLGray38BU
syn keyword HLGrey38BU               HLGrey38BU
syn keyword HLGray39BU               HLGray39BU
syn keyword HLGrey39BU               HLGrey39BU
syn keyword HLGray40BU               HLGray40BU
syn keyword HLGrey40BU               HLGrey40BU
syn keyword HLGray41BU               HLGray41BU
syn keyword HLGrey41BU               HLGrey41BU
syn keyword HLGray42BU               HLGray42BU
syn keyword HLGrey42BU               HLGrey42BU
syn keyword HLGray43BU               HLGray43BU
syn keyword HLGrey43BU               HLGrey43BU
syn keyword HLGray44BU               HLGray44BU
syn keyword HLGrey44BU               HLGrey44BU
syn keyword HLGray45BU               HLGray45BU
syn keyword HLGrey45BU               HLGrey45BU
syn keyword HLGray46BU               HLGray46BU
syn keyword HLGrey46BU               HLGrey46BU
syn keyword HLGray47BU               HLGray47BU
syn keyword HLGrey47BU               HLGrey47BU
syn keyword HLGray48BU               HLGray48BU
syn keyword HLGrey48BU               HLGrey48BU
syn keyword HLGray49BU               HLGray49BU
syn keyword HLGrey49BU               HLGrey49BU
syn keyword HLGray50BU               HLGray50BU
syn keyword HLGrey50BU               HLGrey50BU
syn keyword HLGray51BU               HLGray51BU
syn keyword HLGrey51BU               HLGrey51BU
syn keyword HLGray52BU               HLGray52BU
syn keyword HLGrey52BU               HLGrey52BU
syn keyword HLGray53BU               HLGray53BU
syn keyword HLGrey53BU               HLGrey53BU
syn keyword HLGray54BU               HLGray54BU
syn keyword HLGrey54BU               HLGrey54BU
syn keyword HLGray55BU               HLGray55BU
syn keyword HLGrey55BU               HLGrey55BU
syn keyword HLGray56BU               HLGray56BU
syn keyword HLGrey56BU               HLGrey56BU
syn keyword HLGray57BU               HLGray57BU
syn keyword HLGrey57BU               HLGrey57BU
syn keyword HLGray58BU               HLGray58BU
syn keyword HLGrey58BU               HLGrey58BU
syn keyword HLGray59BU               HLGray59BU
syn keyword HLGrey59BU               HLGrey59BU
syn keyword HLGray60BU               HLGray60BU
syn keyword HLGrey60BU               HLGrey60BU
syn keyword HLGray61BU               HLGray61BU
syn keyword HLGrey61BU               HLGrey61BU
syn keyword HLGray62BU               HLGray62BU
syn keyword HLGrey62BU               HLGrey62BU
syn keyword HLGray63BU               HLGray63BU
syn keyword HLGrey63BU               HLGrey63BU
syn keyword HLGray64BU               HLGray64BU
syn keyword HLGrey64BU               HLGrey64BU
syn keyword HLGray65BU               HLGray65BU
syn keyword HLGrey65BU               HLGrey65BU
syn keyword HLGray66BU               HLGray66BU
syn keyword HLGrey66BU               HLGrey66BU
syn keyword HLGray67BU               HLGray67BU
syn keyword HLGrey67BU               HLGrey67BU
syn keyword HLGray68BU               HLGray68BU
syn keyword HLGrey68BU               HLGrey68BU
syn keyword HLGray69BU               HLGray69BU
syn keyword HLGrey69BU               HLGrey69BU
syn keyword HLGray70BU               HLGray70BU
syn keyword HLGrey70BU               HLGrey70BU
syn keyword HLGray71BU               HLGray71BU
syn keyword HLGrey71BU               HLGrey71BU
syn keyword HLGray72BU               HLGray72BU
syn keyword HLGrey72BU               HLGrey72BU
syn keyword HLGray73BU               HLGray73BU
syn keyword HLGrey73BU               HLGrey73BU
syn keyword HLGray74BU               HLGray74BU
syn keyword HLGrey74BU               HLGrey74BU
syn keyword HLGray75BU               HLGray75BU
syn keyword HLGrey75BU               HLGrey75BU
syn keyword HLGray76BU               HLGray76BU
syn keyword HLGrey76BU               HLGrey76BU
syn keyword HLGray77BU               HLGray77BU
syn keyword HLGrey77BU               HLGrey77BU
syn keyword HLGray78BU               HLGray78BU
syn keyword HLGrey78BU               HLGrey78BU
syn keyword HLGray79BU               HLGray79BU
syn keyword HLGrey79BU               HLGrey79BU
syn keyword HLGray80BU               HLGray80BU
syn keyword HLGrey80BU               HLGrey80BU
syn keyword HLGray81BU               HLGray81BU
syn keyword HLGrey81BU               HLGrey81BU
syn keyword HLGray82BU               HLGray82BU
syn keyword HLGrey82BU               HLGrey82BU
syn keyword HLGray83BU               HLGray83BU
syn keyword HLGrey83BU               HLGrey83BU
syn keyword HLGray84BU               HLGray84BU
syn keyword HLGrey84BU               HLGrey84BU
syn keyword HLGray85BU               HLGray85BU
syn keyword HLGrey85BU               HLGrey85BU
syn keyword HLGray86BU               HLGray86BU
syn keyword HLGrey86BU               HLGrey86BU
syn keyword HLGray87BU               HLGray87BU
syn keyword HLGrey87BU               HLGrey87BU
syn keyword HLGray88BU               HLGray88BU
syn keyword HLGrey88BU               HLGrey88BU
syn keyword HLGray89BU               HLGray89BU
syn keyword HLGrey89BU               HLGrey89BU
syn keyword HLGray90BU               HLGray90BU
syn keyword HLGrey90BU               HLGrey90BU
syn keyword HLGray91BU               HLGray91BU
syn keyword HLGrey91BU               HLGrey91BU
syn keyword HLGray92BU               HLGray92BU
syn keyword HLGrey92BU               HLGrey92BU
syn keyword HLGray93BU               HLGray93BU
syn keyword HLGrey93BU               HLGrey93BU
syn keyword HLGray94BU               HLGray94BU
syn keyword HLGrey94BU               HLGrey94BU
syn keyword HLGray95BU               HLGray95BU
syn keyword HLGrey95BU               HLGrey95BU
syn keyword HLGray96BU               HLGray96BU
syn keyword HLGrey96BU               HLGrey96BU
syn keyword HLGray97BU               HLGray97BU
syn keyword HLGrey97BU               HLGrey97BU
syn keyword HLGray98BU               HLGray98BU
syn keyword HLGrey98BU               HLGrey98BU
syn keyword HLGray99BU               HLGray99BU
syn keyword HLGrey99BU               HLGrey99BU
syn keyword HLGray100BU              HLGray100BU
syn keyword HLGrey100BU              HLGrey100BU
syn keyword HLDarkgreyBU             HLDarkgreyBU
syn keyword HLDarkgrayBU             HLDarkgrayBU
syn keyword HLDarkblueBU             HLDarkblueBU
syn keyword HLDarkcyanBU             HLDarkcyanBU
syn keyword HLDarkmagentaBU          HLDarkmagentaBU
syn keyword HLDarkredBU              HLDarkredBU
syn keyword HLLightgreenBU           HLLightgreenBU
syn keyword HLCrimsonBU              HLCrimsonBU
syn keyword HLIndigoBU               HLIndigoBU
syn keyword HLOliveBU                HLOliveBU
syn keyword HLRebeccapurpleBU        HLRebeccapurpleBU
syn keyword HLSilverBU               HLSilverBU
syn keyword HLTealBU                 HLTealBU
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Background colors on black foreground
syn keyword HLSnowBgB                 HLSnowBgB
syn keyword HLGhostwhiteBgB           HLGhostwhiteBgB
syn keyword HLWhitesmokeBgB           HLWhitesmokeBgB
syn keyword HLGainsboroBgB            HLGainsboroBgB
syn keyword HLFloralwhiteBgB          HLFloralwhiteBgB
syn keyword HLOldlaceBgB              HLOldlaceBgB
syn keyword HLLinenBgB                HLLinenBgB
syn keyword HLAntiquewhiteBgB         HLAntiquewhiteBgB
syn keyword HLPapayawhipBgB           HLPapayawhipBgB
syn keyword HLBlanchedalmondBgB       HLBlanchedalmondBgB
syn keyword HLBisqueBgB               HLBisqueBgB
syn keyword HLPeachpuffBgB            HLPeachpuffBgB
syn keyword HLNavajowhiteBgB          HLNavajowhiteBgB
syn keyword HLMoccasinBgB             HLMoccasinBgB
syn keyword HLCornsilkBgB             HLCornsilkBgB
syn keyword HLIvoryBgB                HLIvoryBgB
syn keyword HLLemonchiffonBgB         HLLemonchiffonBgB
syn keyword HLSeashellBgB             HLSeashellBgB
syn keyword HLHoneydewBgB             HLHoneydewBgB
syn keyword HLMintcreamBgB            HLMintcreamBgB
syn keyword HLAzureBgB                HLAzureBgB
syn keyword HLAliceblueBgB            HLAliceblueBgB
syn keyword HLLavenderBgB             HLLavenderBgB
syn keyword HLLavenderblushBgB        HLLavenderblushBgB
syn keyword HLMistyroseBgB            HLMistyroseBgB
syn keyword HLWhiteBgB                HLWhiteBgB
syn keyword HLBlackBgB                HLBlackBgB
syn keyword HLDarkslategrayBgB        HLDarkslategrayBgB
syn keyword HLDarkslategreyBgB        HLDarkslategreyBgB
syn keyword HLDimgrayBgB              HLDimgrayBgB
syn keyword HLDimgreyBgB              HLDimgreyBgB
syn keyword HLSlategrayBgB            HLSlategrayBgB
syn keyword HLSlategreyBgB            HLSlategreyBgB
syn keyword HLLightslategrayBgB       HLLightslategrayBgB
syn keyword HLLightslategreyBgB       HLLightslategreyBgB
syn keyword HLGrayBgB                 HLGrayBgB
syn keyword HLGreyBgB                 HLGreyBgB
syn keyword HLX11grayBgB              HLX11grayBgB
syn keyword HLX11greyBgB              HLX11greyBgB
syn keyword HLWebgrayBgB              HLWebgrayBgB
syn keyword HLWebgreyBgB              HLWebgreyBgB
syn keyword HLLightgreyBgB            HLLightgreyBgB
syn keyword HLLightgrayBgB            HLLightgrayBgB
syn keyword HLMidnightblueBgB         HLMidnightblueBgB
syn keyword HLNavyBgB                 HLNavyBgB
syn keyword HLNavyblueBgB             HLNavyblueBgB
syn keyword HLCornflowerblueBgB       HLCornflowerblueBgB
syn keyword HLDarkslateblueBgB        HLDarkslateblueBgB
syn keyword HLSlateblueBgB            HLSlateblueBgB
syn keyword HLMediumslateblueBgB      HLMediumslateblueBgB
syn keyword HLLightslateblueBgB       HLLightslateblueBgB
syn keyword HLMediumblueBgB           HLMediumblueBgB
syn keyword HLRoyalblueBgB            HLRoyalblueBgB
syn keyword HLBlueBgB                 HLBlueBgB
syn keyword HLDodgerblueBgB           HLDodgerblueBgB
syn keyword HLDeepskyblueBgB          HLDeepskyblueBgB
syn keyword HLSkyblueBgB              HLSkyblueBgB
syn keyword HLLightskyblueBgB         HLLightskyblueBgB
syn keyword HLSteelblueBgB            HLSteelblueBgB
syn keyword HLLightsteelblueBgB       HLLightsteelblueBgB
syn keyword HLLightblueBgB            HLLightblueBgB
syn keyword HLPowderblueBgB           HLPowderblueBgB
syn keyword HLPaleturquoiseBgB        HLPaleturquoiseBgB
syn keyword HLDarkturquoiseBgB        HLDarkturquoiseBgB
syn keyword HLMediumturquoiseBgB      HLMediumturquoiseBgB
syn keyword HLTurquoiseBgB            HLTurquoiseBgB
syn keyword HLCyanBgB                 HLCyanBgB
syn keyword HLAquaBgB                 HLAquaBgB
syn keyword HLLightcyanBgB            HLLightcyanBgB
syn keyword HLCadetblueBgB            HLCadetblueBgB
syn keyword HLMediumaquamarineBgB     HLMediumaquamarineBgB
syn keyword HLAquamarineBgB           HLAquamarineBgB
syn keyword HLDarkgreenBgB            HLDarkgreenBgB
syn keyword HLDarkolivegreenBgB       HLDarkolivegreenBgB
syn keyword HLDarkseagreenBgB         HLDarkseagreenBgB
syn keyword HLSeagreenBgB             HLSeagreenBgB
syn keyword HLMediumseagreenBgB       HLMediumseagreenBgB
syn keyword HLLightseagreenBgB        HLLightseagreenBgB
syn keyword HLPalegreenBgB            HLPalegreenBgB
syn keyword HLSpringgreenBgB          HLSpringgreenBgB
syn keyword HLLawngreenBgB            HLLawngreenBgB
syn keyword HLGreenBgB                HLGreenBgB
syn keyword HLLimeBgB                 HLLimeBgB
syn keyword HLX11greenBgB             HLX11greenBgB
syn keyword HLWebgreenBgB             HLWebgreenBgB
syn keyword HLChartreuseBgB           HLChartreuseBgB
syn keyword HLMediumspringgreenBgB    HLMediumspringgreenBgB
syn keyword HLGreenyellowBgB          HLGreenyellowBgB
syn keyword HLLimegreenBgB            HLLimegreenBgB
syn keyword HLYellowgreenBgB          HLYellowgreenBgB
syn keyword HLForestgreenBgB          HLForestgreenBgB
syn keyword HLOlivedrabBgB            HLOlivedrabBgB
syn keyword HLDarkkhakiBgB            HLDarkkhakiBgB
syn keyword HLKhakiBgB                HLKhakiBgB
syn keyword HLPalegoldenrodBgB        HLPalegoldenrodBgB
syn keyword HLLightgoldenrodyellowBgB HLLightgoldenrodyellowBgB
syn keyword HLLightyellowBgB          HLLightyellowBgB
syn keyword HLYellowBgB               HLYellowBgB
syn keyword HLGoldBgB                 HLGoldBgB
syn keyword HLLightgoldenrodBgB       HLLightgoldenrodBgB
syn keyword HLGoldenrodBgB            HLGoldenrodBgB
syn keyword HLDarkgoldenrodBgB        HLDarkgoldenrodBgB
syn keyword HLRosybrownBgB            HLRosybrownBgB
syn keyword HLIndianredBgB            HLIndianredBgB
syn keyword HLSaddlebrownBgB          HLSaddlebrownBgB
syn keyword HLSiennaBgB               HLSiennaBgB
syn keyword HLPeruBgB                 HLPeruBgB
syn keyword HLBurlywoodBgB            HLBurlywoodBgB
syn keyword HLBeigeBgB                HLBeigeBgB
syn keyword HLWheatBgB                HLWheatBgB
syn keyword HLSandybrownBgB           HLSandybrownBgB
syn keyword HLTanBgB                  HLTanBgB
syn keyword HLChocolateBgB            HLChocolateBgB
syn keyword HLFirebrickBgB            HLFirebrickBgB
syn keyword HLBrownBgB                HLBrownBgB
syn keyword HLDarksalmonBgB           HLDarksalmonBgB
syn keyword HLSalmonBgB               HLSalmonBgB
syn keyword HLLightsalmonBgB          HLLightsalmonBgB
syn keyword HLOrangeBgB               HLOrangeBgB
syn keyword HLDarkorangeBgB           HLDarkorangeBgB
syn keyword HLCoralBgB                HLCoralBgB
syn keyword HLLightcoralBgB           HLLightcoralBgB
syn keyword HLTomatoBgB               HLTomatoBgB
syn keyword HLOrangeredBgB            HLOrangeredBgB
syn keyword HLRedBgB                  HLRedBgB
syn keyword HLHotpinkBgB              HLHotpinkBgB
syn keyword HLDeeppinkBgB             HLDeeppinkBgB
syn keyword HLPinkBgB                 HLPinkBgB
syn keyword HLLightpinkBgB            HLLightpinkBgB
syn keyword HLPalevioletredBgB        HLPalevioletredBgB
syn keyword HLMaroonBgB               HLMaroonBgB
syn keyword HLX11maroonBgB            HLX11maroonBgB
syn keyword HLWebmaroonBgB            HLWebmaroonBgB
syn keyword HLMediumvioletredBgB      HLMediumvioletredBgB
syn keyword HLVioletredBgB            HLVioletredBgB
syn keyword HLMagentaBgB              HLMagentaBgB
syn keyword HLFuchsiaBgB              HLFuchsiaBgB
syn keyword HLVioletBgB               HLVioletBgB
syn keyword HLPlumBgB                 HLPlumBgB
syn keyword HLOrchidBgB               HLOrchidBgB
syn keyword HLMediumorchidBgB         HLMediumorchidBgB
syn keyword HLDarkorchidBgB           HLDarkorchidBgB
syn keyword HLDarkvioletBgB           HLDarkvioletBgB
syn keyword HLBluevioletBgB           HLBluevioletBgB
syn keyword HLPurpleBgB               HLPurpleBgB
syn keyword HLX11purpleBgB            HLX11purpleBgB
syn keyword HLWebpurpleBgB            HLWebpurpleBgB
syn keyword HLMediumpurpleBgB         HLMediumpurpleBgB
syn keyword HLThistleBgB              HLThistleBgB
syn keyword HLSnow1BgB                HLSnow1BgB
syn keyword HLSnow2BgB                HLSnow2BgB
syn keyword HLSnow3BgB                HLSnow3BgB
syn keyword HLSnow4BgB                HLSnow4BgB
syn keyword HLSeashell1BgB            HLSeashell1BgB
syn keyword HLSeashell2BgB            HLSeashell2BgB
syn keyword HLSeashell3BgB            HLSeashell3BgB
syn keyword HLSeashell4BgB            HLSeashell4BgB
syn keyword HLAntiquewhite1BgB        HLAntiquewhite1BgB
syn keyword HLAntiquewhite2BgB        HLAntiquewhite2BgB
syn keyword HLAntiquewhite3BgB        HLAntiquewhite3BgB
syn keyword HLAntiquewhite4BgB        HLAntiquewhite4BgB
syn keyword HLBisque1BgB              HLBisque1BgB
syn keyword HLBisque2BgB              HLBisque2BgB
syn keyword HLBisque3BgB              HLBisque3BgB
syn keyword HLBisque4BgB              HLBisque4BgB
syn keyword HLPeachpuff1BgB           HLPeachpuff1BgB
syn keyword HLPeachpuff2BgB           HLPeachpuff2BgB
syn keyword HLPeachpuff3BgB           HLPeachpuff3BgB
syn keyword HLPeachpuff4BgB           HLPeachpuff4BgB
syn keyword HLNavajowhite1BgB         HLNavajowhite1BgB
syn keyword HLNavajowhite2BgB         HLNavajowhite2BgB
syn keyword HLNavajowhite3BgB         HLNavajowhite3BgB
syn keyword HLNavajowhite4BgB         HLNavajowhite4BgB
syn keyword HLLemonchiffon1BgB        HLLemonchiffon1BgB
syn keyword HLLemonchiffon2BgB        HLLemonchiffon2BgB
syn keyword HLLemonchiffon3BgB        HLLemonchiffon3BgB
syn keyword HLLemonchiffon4BgB        HLLemonchiffon4BgB
syn keyword HLCornsilk1BgB            HLCornsilk1BgB
syn keyword HLCornsilk2BgB            HLCornsilk2BgB
syn keyword HLCornsilk3BgB            HLCornsilk3BgB
syn keyword HLCornsilk4BgB            HLCornsilk4BgB
syn keyword HLIvory1BgB               HLIvory1BgB
syn keyword HLIvory2BgB               HLIvory2BgB
syn keyword HLIvory3BgB               HLIvory3BgB
syn keyword HLIvory4BgB               HLIvory4BgB
syn keyword HLHoneydew1BgB            HLHoneydew1BgB
syn keyword HLHoneydew2BgB            HLHoneydew2BgB
syn keyword HLHoneydew3BgB            HLHoneydew3BgB
syn keyword HLHoneydew4BgB            HLHoneydew4BgB
syn keyword HLLavenderblush1BgB       HLLavenderblush1BgB
syn keyword HLLavenderblush2BgB       HLLavenderblush2BgB
syn keyword HLLavenderblush3BgB       HLLavenderblush3BgB
syn keyword HLLavenderblush4BgB       HLLavenderblush4BgB
syn keyword HLMistyrose1BgB           HLMistyrose1BgB
syn keyword HLMistyrose2BgB           HLMistyrose2BgB
syn keyword HLMistyrose3BgB           HLMistyrose3BgB
syn keyword HLMistyrose4BgB           HLMistyrose4BgB
syn keyword HLAzure1BgB               HLAzure1BgB
syn keyword HLAzure2BgB               HLAzure2BgB
syn keyword HLAzure3BgB               HLAzure3BgB
syn keyword HLAzure4BgB               HLAzure4BgB
syn keyword HLSlateblue1BgB           HLSlateblue1BgB
syn keyword HLSlateblue2BgB           HLSlateblue2BgB
syn keyword HLSlateblue3BgB           HLSlateblue3BgB
syn keyword HLSlateblue4BgB           HLSlateblue4BgB
syn keyword HLRoyalblue1BgB           HLRoyalblue1BgB
syn keyword HLRoyalblue2BgB           HLRoyalblue2BgB
syn keyword HLRoyalblue3BgB           HLRoyalblue3BgB
syn keyword HLRoyalblue4BgB           HLRoyalblue4BgB
syn keyword HLBlue1BgB                HLBlue1BgB
syn keyword HLBlue2BgB                HLBlue2BgB
syn keyword HLBlue3BgB                HLBlue3BgB
syn keyword HLBlue4BgB                HLBlue4BgB
syn keyword HLDodgerblue1BgB          HLDodgerblue1BgB
syn keyword HLDodgerblue2BgB          HLDodgerblue2BgB
syn keyword HLDodgerblue3BgB          HLDodgerblue3BgB
syn keyword HLDodgerblue4BgB          HLDodgerblue4BgB
syn keyword HLSteelblue1BgB           HLSteelblue1BgB
syn keyword HLSteelblue2BgB           HLSteelblue2BgB
syn keyword HLSteelblue3BgB           HLSteelblue3BgB
syn keyword HLSteelblue4BgB           HLSteelblue4BgB
syn keyword HLDeepskyblue1BgB         HLDeepskyblue1BgB
syn keyword HLDeepskyblue2BgB         HLDeepskyblue2BgB
syn keyword HLDeepskyblue3BgB         HLDeepskyblue3BgB
syn keyword HLDeepskyblue4BgB         HLDeepskyblue4BgB
syn keyword HLSkyblue1BgB             HLSkyblue1BgB
syn keyword HLSkyblue2BgB             HLSkyblue2BgB
syn keyword HLSkyblue3BgB             HLSkyblue3BgB
syn keyword HLSkyblue4BgB             HLSkyblue4BgB
syn keyword HLLightskyblue1BgB        HLLightskyblue1BgB
syn keyword HLLightskyblue2BgB        HLLightskyblue2BgB
syn keyword HLLightskyblue3BgB        HLLightskyblue3BgB
syn keyword HLLightskyblue4BgB        HLLightskyblue4BgB
syn keyword HLSlategray1BgB           HLSlategray1BgB
syn keyword HLSlategray2BgB           HLSlategray2BgB
syn keyword HLSlategray3BgB           HLSlategray3BgB
syn keyword HLSlategray4BgB           HLSlategray4BgB
syn keyword HLLightsteelblue1BgB      HLLightsteelblue1BgB
syn keyword HLLightsteelblue2BgB      HLLightsteelblue2BgB
syn keyword HLLightsteelblue3BgB      HLLightsteelblue3BgB
syn keyword HLLightsteelblue4BgB      HLLightsteelblue4BgB
syn keyword HLLightblue1BgB           HLLightblue1BgB
syn keyword HLLightblue2BgB           HLLightblue2BgB
syn keyword HLLightblue3BgB           HLLightblue3BgB
syn keyword HLLightblue4BgB           HLLightblue4BgB
syn keyword HLLightcyan1BgB           HLLightcyan1BgB
syn keyword HLLightcyan2BgB           HLLightcyan2BgB
syn keyword HLLightcyan3BgB           HLLightcyan3BgB
syn keyword HLLightcyan4BgB           HLLightcyan4BgB
syn keyword HLPaleturquoise1BgB       HLPaleturquoise1BgB
syn keyword HLPaleturquoise2BgB       HLPaleturquoise2BgB
syn keyword HLPaleturquoise3BgB       HLPaleturquoise3BgB
syn keyword HLPaleturquoise4BgB       HLPaleturquoise4BgB
syn keyword HLCadetblue1BgB           HLCadetblue1BgB
syn keyword HLCadetblue2BgB           HLCadetblue2BgB
syn keyword HLCadetblue3BgB           HLCadetblue3BgB
syn keyword HLCadetblue4BgB           HLCadetblue4BgB
syn keyword HLTurquoise1BgB           HLTurquoise1BgB
syn keyword HLTurquoise2BgB           HLTurquoise2BgB
syn keyword HLTurquoise3BgB           HLTurquoise3BgB
syn keyword HLTurquoise4BgB           HLTurquoise4BgB
syn keyword HLCyan1BgB                HLCyan1BgB
syn keyword HLCyan2BgB                HLCyan2BgB
syn keyword HLCyan3BgB                HLCyan3BgB
syn keyword HLCyan4BgB                HLCyan4BgB
syn keyword HLDarkslategray1BgB       HLDarkslategray1BgB
syn keyword HLDarkslategray2BgB       HLDarkslategray2BgB
syn keyword HLDarkslategray3BgB       HLDarkslategray3BgB
syn keyword HLDarkslategray4BgB       HLDarkslategray4BgB
syn keyword HLAquamarine1BgB          HLAquamarine1BgB
syn keyword HLAquamarine2BgB          HLAquamarine2BgB
syn keyword HLAquamarine3BgB          HLAquamarine3BgB
syn keyword HLAquamarine4BgB          HLAquamarine4BgB
syn keyword HLDarkseagreen1BgB        HLDarkseagreen1BgB
syn keyword HLDarkseagreen2BgB        HLDarkseagreen2BgB
syn keyword HLDarkseagreen3BgB        HLDarkseagreen3BgB
syn keyword HLDarkseagreen4BgB        HLDarkseagreen4BgB
syn keyword HLSeagreen1BgB            HLSeagreen1BgB
syn keyword HLSeagreen2BgB            HLSeagreen2BgB
syn keyword HLSeagreen3BgB            HLSeagreen3BgB
syn keyword HLSeagreen4BgB            HLSeagreen4BgB
syn keyword HLPalegreen1BgB           HLPalegreen1BgB
syn keyword HLPalegreen2BgB           HLPalegreen2BgB
syn keyword HLPalegreen3BgB           HLPalegreen3BgB
syn keyword HLPalegreen4BgB           HLPalegreen4BgB
syn keyword HLSpringgreen1BgB         HLSpringgreen1BgB
syn keyword HLSpringgreen2BgB         HLSpringgreen2BgB
syn keyword HLSpringgreen3BgB         HLSpringgreen3BgB
syn keyword HLSpringgreen4BgB         HLSpringgreen4BgB
syn keyword HLGreen1BgB               HLGreen1BgB
syn keyword HLGreen2BgB               HLGreen2BgB
syn keyword HLGreen3BgB               HLGreen3BgB
syn keyword HLGreen4BgB               HLGreen4BgB
syn keyword HLChartreuse1BgB          HLChartreuse1BgB
syn keyword HLChartreuse2BgB          HLChartreuse2BgB
syn keyword HLChartreuse3BgB          HLChartreuse3BgB
syn keyword HLChartreuse4BgB          HLChartreuse4BgB
syn keyword HLOlivedrab1BgB           HLOlivedrab1BgB
syn keyword HLOlivedrab2BgB           HLOlivedrab2BgB
syn keyword HLOlivedrab3BgB           HLOlivedrab3BgB
syn keyword HLOlivedrab4BgB           HLOlivedrab4BgB
syn keyword HLDarkolivegreen1BgB      HLDarkolivegreen1BgB
syn keyword HLDarkolivegreen2BgB      HLDarkolivegreen2BgB
syn keyword HLDarkolivegreen3BgB      HLDarkolivegreen3BgB
syn keyword HLDarkolivegreen4BgB      HLDarkolivegreen4BgB
syn keyword HLKhaki1BgB               HLKhaki1BgB
syn keyword HLKhaki2BgB               HLKhaki2BgB
syn keyword HLKhaki3BgB               HLKhaki3BgB
syn keyword HLKhaki4BgB               HLKhaki4BgB
syn keyword HLLightgoldenrod1BgB      HLLightgoldenrod1BgB
syn keyword HLLightgoldenrod2BgB      HLLightgoldenrod2BgB
syn keyword HLLightgoldenrod3BgB      HLLightgoldenrod3BgB
syn keyword HLLightgoldenrod4BgB      HLLightgoldenrod4BgB
syn keyword HLLightyellow1BgB         HLLightyellow1BgB
syn keyword HLLightyellow2BgB         HLLightyellow2BgB
syn keyword HLLightyellow3BgB         HLLightyellow3BgB
syn keyword HLLightyellow4BgB         HLLightyellow4BgB
syn keyword HLYellow1BgB              HLYellow1BgB
syn keyword HLYellow2BgB              HLYellow2BgB
syn keyword HLYellow3BgB              HLYellow3BgB
syn keyword HLYellow4BgB              HLYellow4BgB
syn keyword HLDarkyellowBgB           HLDarkyellowBgB
syn keyword HLGold1BgB                HLGold1BgB
syn keyword HLGold2BgB                HLGold2BgB
syn keyword HLGold3BgB                HLGold3BgB
syn keyword HLGold4BgB                HLGold4BgB
syn keyword HLGoldenrod1BgB           HLGoldenrod1BgB
syn keyword HLGoldenrod2BgB           HLGoldenrod2BgB
syn keyword HLGoldenrod3BgB           HLGoldenrod3BgB
syn keyword HLGoldenrod4BgB           HLGoldenrod4BgB
syn keyword HLDarkgoldenrod1BgB       HLDarkgoldenrod1BgB
syn keyword HLDarkgoldenrod2BgB       HLDarkgoldenrod2BgB
syn keyword HLDarkgoldenrod3BgB       HLDarkgoldenrod3BgB
syn keyword HLDarkgoldenrod4BgB       HLDarkgoldenrod4BgB
syn keyword HLRosybrown1BgB           HLRosybrown1BgB
syn keyword HLRosybrown2BgB           HLRosybrown2BgB
syn keyword HLRosybrown3BgB           HLRosybrown3BgB
syn keyword HLRosybrown4BgB           HLRosybrown4BgB
syn keyword HLIndianred1BgB           HLIndianred1BgB
syn keyword HLIndianred2BgB           HLIndianred2BgB
syn keyword HLIndianred3BgB           HLIndianred3BgB
syn keyword HLIndianred4BgB           HLIndianred4BgB
syn keyword HLSienna1BgB              HLSienna1BgB
syn keyword HLSienna2BgB              HLSienna2BgB
syn keyword HLSienna3BgB              HLSienna3BgB
syn keyword HLSienna4BgB              HLSienna4BgB
syn keyword HLBurlywood1BgB           HLBurlywood1BgB
syn keyword HLBurlywood2BgB           HLBurlywood2BgB
syn keyword HLBurlywood3BgB           HLBurlywood3BgB
syn keyword HLBurlywood4BgB           HLBurlywood4BgB
syn keyword HLWheat1BgB               HLWheat1BgB
syn keyword HLWheat2BgB               HLWheat2BgB
syn keyword HLWheat3BgB               HLWheat3BgB
syn keyword HLWheat4BgB               HLWheat4BgB
syn keyword HLTan1BgB                 HLTan1BgB
syn keyword HLTan2BgB                 HLTan2BgB
syn keyword HLTan3BgB                 HLTan3BgB
syn keyword HLTan4BgB                 HLTan4BgB
syn keyword HLChocolate1BgB           HLChocolate1BgB
syn keyword HLChocolate2BgB           HLChocolate2BgB
syn keyword HLChocolate3BgB           HLChocolate3BgB
syn keyword HLChocolate4BgB           HLChocolate4BgB
syn keyword HLFirebrick1BgB           HLFirebrick1BgB
syn keyword HLFirebrick2BgB           HLFirebrick2BgB
syn keyword HLFirebrick3BgB           HLFirebrick3BgB
syn keyword HLFirebrick4BgB           HLFirebrick4BgB
syn keyword HLBrown1BgB               HLBrown1BgB
syn keyword HLBrown2BgB               HLBrown2BgB
syn keyword HLBrown3BgB               HLBrown3BgB
syn keyword HLBrown4BgB               HLBrown4BgB
syn keyword HLSalmon1BgB              HLSalmon1BgB
syn keyword HLSalmon2BgB              HLSalmon2BgB
syn keyword HLSalmon3BgB              HLSalmon3BgB
syn keyword HLSalmon4BgB              HLSalmon4BgB
syn keyword HLLightsalmon1BgB         HLLightsalmon1BgB
syn keyword HLLightsalmon2BgB         HLLightsalmon2BgB
syn keyword HLLightsalmon3BgB         HLLightsalmon3BgB
syn keyword HLLightsalmon4BgB         HLLightsalmon4BgB
syn keyword HLOrange1BgB              HLOrange1BgB
syn keyword HLOrange2BgB              HLOrange2BgB
syn keyword HLOrange3BgB              HLOrange3BgB
syn keyword HLOrange4BgB              HLOrange4BgB
syn keyword HLDarkorange1BgB          HLDarkorange1BgB
syn keyword HLDarkorange2BgB          HLDarkorange2BgB
syn keyword HLDarkorange3BgB          HLDarkorange3BgB
syn keyword HLDarkorange4BgB          HLDarkorange4BgB
syn keyword HLCoral1BgB               HLCoral1BgB
syn keyword HLCoral2BgB               HLCoral2BgB
syn keyword HLCoral3BgB               HLCoral3BgB
syn keyword HLCoral4BgB               HLCoral4BgB
syn keyword HLTomato1BgB              HLTomato1BgB
syn keyword HLTomato2BgB              HLTomato2BgB
syn keyword HLTomato3BgB              HLTomato3BgB
syn keyword HLTomato4BgB              HLTomato4BgB
syn keyword HLOrangered1BgB           HLOrangered1BgB
syn keyword HLOrangered2BgB           HLOrangered2BgB
syn keyword HLOrangered3BgB           HLOrangered3BgB
syn keyword HLOrangered4BgB           HLOrangered4BgB
syn keyword HLLightredBgB             HLLightredBgB
syn keyword HLRed1BgB                 HLRed1BgB
syn keyword HLRed2BgB                 HLRed2BgB
syn keyword HLRed3BgB                 HLRed3BgB
syn keyword HLRed4BgB                 HLRed4BgB
syn keyword HLDeeppink1BgB            HLDeeppink1BgB
syn keyword HLDeeppink2BgB            HLDeeppink2BgB
syn keyword HLDeeppink3BgB            HLDeeppink3BgB
syn keyword HLDeeppink4BgB            HLDeeppink4BgB
syn keyword HLHotpink1BgB             HLHotpink1BgB
syn keyword HLHotpink2BgB             HLHotpink2BgB
syn keyword HLHotpink3BgB             HLHotpink3BgB
syn keyword HLHotpink4BgB             HLHotpink4BgB
syn keyword HLPink1BgB                HLPink1BgB
syn keyword HLPink2BgB                HLPink2BgB
syn keyword HLPink3BgB                HLPink3BgB
syn keyword HLPink4BgB                HLPink4BgB
syn keyword HLLightpink1BgB           HLLightpink1BgB
syn keyword HLLightpink2BgB           HLLightpink2BgB
syn keyword HLLightpink3BgB           HLLightpink3BgB
syn keyword HLLightpink4BgB           HLLightpink4BgB
syn keyword HLPalevioletred1BgB       HLPalevioletred1BgB
syn keyword HLPalevioletred2BgB       HLPalevioletred2BgB
syn keyword HLPalevioletred3BgB       HLPalevioletred3BgB
syn keyword HLPalevioletred4BgB       HLPalevioletred4BgB
syn keyword HLMaroon1BgB              HLMaroon1BgB
syn keyword HLMaroon2BgB              HLMaroon2BgB
syn keyword HLMaroon3BgB              HLMaroon3BgB
syn keyword HLMaroon4BgB              HLMaroon4BgB
syn keyword HLVioletred1BgB           HLVioletred1BgB
syn keyword HLVioletred2BgB           HLVioletred2BgB
syn keyword HLVioletred3BgB           HLVioletred3BgB
syn keyword HLVioletred4BgB           HLVioletred4BgB
syn keyword HLLightmagentaBgB         HLLightmagentaBgB
syn keyword HLMagenta1BgB             HLMagenta1BgB
syn keyword HLMagenta2BgB             HLMagenta2BgB
syn keyword HLMagenta3BgB             HLMagenta3BgB
syn keyword HLMagenta4BgB             HLMagenta4BgB
syn keyword HLOrchid1BgB              HLOrchid1BgB
syn keyword HLOrchid2BgB              HLOrchid2BgB
syn keyword HLOrchid3BgB              HLOrchid3BgB
syn keyword HLOrchid4BgB              HLOrchid4BgB
syn keyword HLPlum1BgB                HLPlum1BgB
syn keyword HLPlum2BgB                HLPlum2BgB
syn keyword HLPlum3BgB                HLPlum3BgB
syn keyword HLPlum4BgB                HLPlum4BgB
syn keyword HLMediumorchid1BgB        HLMediumorchid1BgB
syn keyword HLMediumorchid2BgB        HLMediumorchid2BgB
syn keyword HLMediumorchid3BgB        HLMediumorchid3BgB
syn keyword HLMediumorchid4BgB        HLMediumorchid4BgB
syn keyword HLDarkorchid1BgB          HLDarkorchid1BgB
syn keyword HLDarkorchid2BgB          HLDarkorchid2BgB
syn keyword HLDarkorchid3BgB          HLDarkorchid3BgB
syn keyword HLDarkorchid4BgB          HLDarkorchid4BgB
syn keyword HLPurple1BgB              HLPurple1BgB
syn keyword HLPurple2BgB              HLPurple2BgB
syn keyword HLPurple3BgB              HLPurple3BgB
syn keyword HLPurple4BgB              HLPurple4BgB
syn keyword HLMediumpurple1BgB        HLMediumpurple1BgB
syn keyword HLMediumpurple2BgB        HLMediumpurple2BgB
syn keyword HLMediumpurple3BgB        HLMediumpurple3BgB
syn keyword HLMediumpurple4BgB        HLMediumpurple4BgB
syn keyword HLThistle1BgB             HLThistle1BgB
syn keyword HLThistle2BgB             HLThistle2BgB
syn keyword HLThistle3BgB             HLThistle3BgB
syn keyword HLThistle4BgB             HLThistle4BgB
syn keyword HLGray0BgB                HLGray0BgB
syn keyword HLGrey0BgB                HLGrey0BgB
syn keyword HLGray1BgB                HLGray1BgB
syn keyword HLGrey1BgB                HLGrey1BgB
syn keyword HLGray2BgB                HLGray2BgB
syn keyword HLGrey2BgB                HLGrey2BgB
syn keyword HLGray3BgB                HLGray3BgB
syn keyword HLGrey3BgB                HLGrey3BgB
syn keyword HLGray4BgB                HLGray4BgB
syn keyword HLGrey4BgB                HLGrey4BgB
syn keyword HLGray5BgB                HLGray5BgB
syn keyword HLGrey5BgB                HLGrey5BgB
syn keyword HLGray6BgB                HLGray6BgB
syn keyword HLGrey6BgB                HLGrey6BgB
syn keyword HLGray7BgB                HLGray7BgB
syn keyword HLGrey7BgB                HLGrey7BgB
syn keyword HLGray8BgB                HLGray8BgB
syn keyword HLGrey8BgB                HLGrey8BgB
syn keyword HLGray9BgB                HLGray9BgB
syn keyword HLGrey9BgB                HLGrey9BgB
syn keyword HLGray10BgB               HLGray10BgB
syn keyword HLGrey10BgB               HLGrey10BgB
syn keyword HLGray11BgB               HLGray11BgB
syn keyword HLGrey11BgB               HLGrey11BgB
syn keyword HLGray12BgB               HLGray12BgB
syn keyword HLGrey12BgB               HLGrey12BgB
syn keyword HLGray13BgB               HLGray13BgB
syn keyword HLGrey13BgB               HLGrey13BgB
syn keyword HLGray14BgB               HLGray14BgB
syn keyword HLGrey14BgB               HLGrey14BgB
syn keyword HLGray15BgB               HLGray15BgB
syn keyword HLGrey15BgB               HLGrey15BgB
syn keyword HLGray16BgB               HLGray16BgB
syn keyword HLGrey16BgB               HLGrey16BgB
syn keyword HLGray17BgB               HLGray17BgB
syn keyword HLGrey17BgB               HLGrey17BgB
syn keyword HLGray18BgB               HLGray18BgB
syn keyword HLGrey18BgB               HLGrey18BgB
syn keyword HLGray19BgB               HLGray19BgB
syn keyword HLGrey19BgB               HLGrey19BgB
syn keyword HLGray20BgB               HLGray20BgB
syn keyword HLGrey20BgB               HLGrey20BgB
syn keyword HLGray21BgB               HLGray21BgB
syn keyword HLGrey21BgB               HLGrey21BgB
syn keyword HLGray22BgB               HLGray22BgB
syn keyword HLGrey22BgB               HLGrey22BgB
syn keyword HLGray23BgB               HLGray23BgB
syn keyword HLGrey23BgB               HLGrey23BgB
syn keyword HLGray24BgB               HLGray24BgB
syn keyword HLGrey24BgB               HLGrey24BgB
syn keyword HLGray25BgB               HLGray25BgB
syn keyword HLGrey25BgB               HLGrey25BgB
syn keyword HLGray26BgB               HLGray26BgB
syn keyword HLGrey26BgB               HLGrey26BgB
syn keyword HLGray27BgB               HLGray27BgB
syn keyword HLGrey27BgB               HLGrey27BgB
syn keyword HLGray28BgB               HLGray28BgB
syn keyword HLGrey28BgB               HLGrey28BgB
syn keyword HLGray29BgB               HLGray29BgB
syn keyword HLGrey29BgB               HLGrey29BgB
syn keyword HLGray30BgB               HLGray30BgB
syn keyword HLGrey30BgB               HLGrey30BgB
syn keyword HLGray31BgB               HLGray31BgB
syn keyword HLGrey31BgB               HLGrey31BgB
syn keyword HLGray32BgB               HLGray32BgB
syn keyword HLGrey32BgB               HLGrey32BgB
syn keyword HLGray33BgB               HLGray33BgB
syn keyword HLGrey33BgB               HLGrey33BgB
syn keyword HLGray34BgB               HLGray34BgB
syn keyword HLGrey34BgB               HLGrey34BgB
syn keyword HLGray35BgB               HLGray35BgB
syn keyword HLGrey35BgB               HLGrey35BgB
syn keyword HLGray36BgB               HLGray36BgB
syn keyword HLGrey36BgB               HLGrey36BgB
syn keyword HLGray37BgB               HLGray37BgB
syn keyword HLGrey37BgB               HLGrey37BgB
syn keyword HLGray38BgB               HLGray38BgB
syn keyword HLGrey38BgB               HLGrey38BgB
syn keyword HLGray39BgB               HLGray39BgB
syn keyword HLGrey39BgB               HLGrey39BgB
syn keyword HLGray40BgB               HLGray40BgB
syn keyword HLGrey40BgB               HLGrey40BgB
syn keyword HLGray41BgB               HLGray41BgB
syn keyword HLGrey41BgB               HLGrey41BgB
syn keyword HLGray42BgB               HLGray42BgB
syn keyword HLGrey42BgB               HLGrey42BgB
syn keyword HLGray43BgB               HLGray43BgB
syn keyword HLGrey43BgB               HLGrey43BgB
syn keyword HLGray44BgB               HLGray44BgB
syn keyword HLGrey44BgB               HLGrey44BgB
syn keyword HLGray45BgB               HLGray45BgB
syn keyword HLGrey45BgB               HLGrey45BgB
syn keyword HLGray46BgB               HLGray46BgB
syn keyword HLGrey46BgB               HLGrey46BgB
syn keyword HLGray47BgB               HLGray47BgB
syn keyword HLGrey47BgB               HLGrey47BgB
syn keyword HLGray48BgB               HLGray48BgB
syn keyword HLGrey48BgB               HLGrey48BgB
syn keyword HLGray49BgB               HLGray49BgB
syn keyword HLGrey49BgB               HLGrey49BgB
syn keyword HLGray50BgB               HLGray50BgB
syn keyword HLGrey50BgB               HLGrey50BgB
syn keyword HLGray51BgB               HLGray51BgB
syn keyword HLGrey51BgB               HLGrey51BgB
syn keyword HLGray52BgB               HLGray52BgB
syn keyword HLGrey52BgB               HLGrey52BgB
syn keyword HLGray53BgB               HLGray53BgB
syn keyword HLGrey53BgB               HLGrey53BgB
syn keyword HLGray54BgB               HLGray54BgB
syn keyword HLGrey54BgB               HLGrey54BgB
syn keyword HLGray55BgB               HLGray55BgB
syn keyword HLGrey55BgB               HLGrey55BgB
syn keyword HLGray56BgB               HLGray56BgB
syn keyword HLGrey56BgB               HLGrey56BgB
syn keyword HLGray57BgB               HLGray57BgB
syn keyword HLGrey57BgB               HLGrey57BgB
syn keyword HLGray58BgB               HLGray58BgB
syn keyword HLGrey58BgB               HLGrey58BgB
syn keyword HLGray59BgB               HLGray59BgB
syn keyword HLGrey59BgB               HLGrey59BgB
syn keyword HLGray60BgB               HLGray60BgB
syn keyword HLGrey60BgB               HLGrey60BgB
syn keyword HLGray61BgB               HLGray61BgB
syn keyword HLGrey61BgB               HLGrey61BgB
syn keyword HLGray62BgB               HLGray62BgB
syn keyword HLGrey62BgB               HLGrey62BgB
syn keyword HLGray63BgB               HLGray63BgB
syn keyword HLGrey63BgB               HLGrey63BgB
syn keyword HLGray64BgB               HLGray64BgB
syn keyword HLGrey64BgB               HLGrey64BgB
syn keyword HLGray65BgB               HLGray65BgB
syn keyword HLGrey65BgB               HLGrey65BgB
syn keyword HLGray66BgB               HLGray66BgB
syn keyword HLGrey66BgB               HLGrey66BgB
syn keyword HLGray67BgB               HLGray67BgB
syn keyword HLGrey67BgB               HLGrey67BgB
syn keyword HLGray68BgB               HLGray68BgB
syn keyword HLGrey68BgB               HLGrey68BgB
syn keyword HLGray69BgB               HLGray69BgB
syn keyword HLGrey69BgB               HLGrey69BgB
syn keyword HLGray70BgB               HLGray70BgB
syn keyword HLGrey70BgB               HLGrey70BgB
syn keyword HLGray71BgB               HLGray71BgB
syn keyword HLGrey71BgB               HLGrey71BgB
syn keyword HLGray72BgB               HLGray72BgB
syn keyword HLGrey72BgB               HLGrey72BgB
syn keyword HLGray73BgB               HLGray73BgB
syn keyword HLGrey73BgB               HLGrey73BgB
syn keyword HLGray74BgB               HLGray74BgB
syn keyword HLGrey74BgB               HLGrey74BgB
syn keyword HLGray75BgB               HLGray75BgB
syn keyword HLGrey75BgB               HLGrey75BgB
syn keyword HLGray76BgB               HLGray76BgB
syn keyword HLGrey76BgB               HLGrey76BgB
syn keyword HLGray77BgB               HLGray77BgB
syn keyword HLGrey77BgB               HLGrey77BgB
syn keyword HLGray78BgB               HLGray78BgB
syn keyword HLGrey78BgB               HLGrey78BgB
syn keyword HLGray79BgB               HLGray79BgB
syn keyword HLGrey79BgB               HLGrey79BgB
syn keyword HLGray80BgB               HLGray80BgB
syn keyword HLGrey80BgB               HLGrey80BgB
syn keyword HLGray81BgB               HLGray81BgB
syn keyword HLGrey81BgB               HLGrey81BgB
syn keyword HLGray82BgB               HLGray82BgB
syn keyword HLGrey82BgB               HLGrey82BgB
syn keyword HLGray83BgB               HLGray83BgB
syn keyword HLGrey83BgB               HLGrey83BgB
syn keyword HLGray84BgB               HLGray84BgB
syn keyword HLGrey84BgB               HLGrey84BgB
syn keyword HLGray85BgB               HLGray85BgB
syn keyword HLGrey85BgB               HLGrey85BgB
syn keyword HLGray86BgB               HLGray86BgB
syn keyword HLGrey86BgB               HLGrey86BgB
syn keyword HLGray87BgB               HLGray87BgB
syn keyword HLGrey87BgB               HLGrey87BgB
syn keyword HLGray88BgB               HLGray88BgB
syn keyword HLGrey88BgB               HLGrey88BgB
syn keyword HLGray89BgB               HLGray89BgB
syn keyword HLGrey89BgB               HLGrey89BgB
syn keyword HLGray90BgB               HLGray90BgB
syn keyword HLGrey90BgB               HLGrey90BgB
syn keyword HLGray91BgB               HLGray91BgB
syn keyword HLGrey91BgB               HLGrey91BgB
syn keyword HLGray92BgB               HLGray92BgB
syn keyword HLGrey92BgB               HLGrey92BgB
syn keyword HLGray93BgB               HLGray93BgB
syn keyword HLGrey93BgB               HLGrey93BgB
syn keyword HLGray94BgB               HLGray94BgB
syn keyword HLGrey94BgB               HLGrey94BgB
syn keyword HLGray95BgB               HLGray95BgB
syn keyword HLGrey95BgB               HLGrey95BgB
syn keyword HLGray96BgB               HLGray96BgB
syn keyword HLGrey96BgB               HLGrey96BgB
syn keyword HLGray97BgB               HLGray97BgB
syn keyword HLGrey97BgB               HLGrey97BgB
syn keyword HLGray98BgB               HLGray98BgB
syn keyword HLGrey98BgB               HLGrey98BgB
syn keyword HLGray99BgB               HLGray99BgB
syn keyword HLGrey99BgB               HLGrey99BgB
syn keyword HLGray100BgB              HLGray100BgB
syn keyword HLGrey100BgB              HLGrey100BgB
syn keyword HLDarkgreyBgB             HLDarkgreyBgB
syn keyword HLDarkgrayBgB             HLDarkgrayBgB
syn keyword HLDarkblueBgB             HLDarkblueBgB
syn keyword HLDarkcyanBgB             HLDarkcyanBgB
syn keyword HLDarkmagentaBgB          HLDarkmagentaBgB
syn keyword HLDarkredBgB              HLDarkredBgB
syn keyword HLLightgreenBgB           HLLightgreenBgB
syn keyword HLCrimsonBgB              HLCrimsonBgB
syn keyword HLIndigoBgB               HLIndigoBgB
syn keyword HLOliveBgB                HLOliveBgB
syn keyword HLRebeccapurpleBgB        HLRebeccapurpleBgB
syn keyword HLSilverBgB               HLSilverBgB
syn keyword HLTealBgB                 HLTealBgB
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Background colors on white foreground
syn keyword HLSnowBgW                 HLSnowBgW
syn keyword HLGhostwhiteBgW           HLGhostwhiteBgW
syn keyword HLWhitesmokeBgW           HLWhitesmokeBgW
syn keyword HLGainsboroBgW            HLGainsboroBgW
syn keyword HLFloralwhiteBgW          HLFloralwhiteBgW
syn keyword HLOldlaceBgW              HLOldlaceBgW
syn keyword HLLinenBgW                HLLinenBgW
syn keyword HLAntiquewhiteBgW         HLAntiquewhiteBgW
syn keyword HLPapayawhipBgW           HLPapayawhipBgW
syn keyword HLBlanchedalmondBgW       HLBlanchedalmondBgW
syn keyword HLBisqueBgW               HLBisqueBgW
syn keyword HLPeachpuffBgW            HLPeachpuffBgW
syn keyword HLNavajowhiteBgW          HLNavajowhiteBgW
syn keyword HLMoccasinBgW             HLMoccasinBgW
syn keyword HLCornsilkBgW             HLCornsilkBgW
syn keyword HLIvoryBgW                HLIvoryBgW
syn keyword HLLemonchiffonBgW         HLLemonchiffonBgW
syn keyword HLSeashellBgW             HLSeashellBgW
syn keyword HLHoneydewBgW             HLHoneydewBgW
syn keyword HLMintcreamBgW            HLMintcreamBgW
syn keyword HLAzureBgW                HLAzureBgW
syn keyword HLAliceblueBgW            HLAliceblueBgW
syn keyword HLLavenderBgW             HLLavenderBgW
syn keyword HLLavenderblushBgW        HLLavenderblushBgW
syn keyword HLMistyroseBgW            HLMistyroseBgW
syn keyword HLWhiteBgW                HLWhiteBgW
syn keyword HLBlackBgW                HLBlackBgW
syn keyword HLDarkslategrayBgW        HLDarkslategrayBgW
syn keyword HLDarkslategreyBgW        HLDarkslategreyBgW
syn keyword HLDimgrayBgW              HLDimgrayBgW
syn keyword HLDimgreyBgW              HLDimgreyBgW
syn keyword HLSlategrayBgW            HLSlategrayBgW
syn keyword HLSlategreyBgW            HLSlategreyBgW
syn keyword HLLightslategrayBgW       HLLightslategrayBgW
syn keyword HLLightslategreyBgW       HLLightslategreyBgW
syn keyword HLGrayBgW                 HLGrayBgW
syn keyword HLGreyBgW                 HLGreyBgW
syn keyword HLX11grayBgW              HLX11grayBgW
syn keyword HLX11greyBgW              HLX11greyBgW
syn keyword HLWebgrayBgW              HLWebgrayBgW
syn keyword HLWebgreyBgW              HLWebgreyBgW
syn keyword HLLightgreyBgW            HLLightgreyBgW
syn keyword HLLightgrayBgW            HLLightgrayBgW
syn keyword HLMidnightblueBgW         HLMidnightblueBgW
syn keyword HLNavyBgW                 HLNavyBgW
syn keyword HLNavyblueBgW             HLNavyblueBgW
syn keyword HLCornflowerblueBgW       HLCornflowerblueBgW
syn keyword HLDarkslateblueBgW        HLDarkslateblueBgW
syn keyword HLSlateblueBgW            HLSlateblueBgW
syn keyword HLMediumslateblueBgW      HLMediumslateblueBgW
syn keyword HLLightslateblueBgW       HLLightslateblueBgW
syn keyword HLMediumblueBgW           HLMediumblueBgW
syn keyword HLRoyalblueBgW            HLRoyalblueBgW
syn keyword HLBlueBgW                 HLBlueBgW
syn keyword HLDodgerblueBgW           HLDodgerblueBgW
syn keyword HLDeepskyblueBgW          HLDeepskyblueBgW
syn keyword HLSkyblueBgW              HLSkyblueBgW
syn keyword HLLightskyblueBgW         HLLightskyblueBgW
syn keyword HLSteelblueBgW            HLSteelblueBgW
syn keyword HLLightsteelblueBgW       HLLightsteelblueBgW
syn keyword HLLightblueBgW            HLLightblueBgW
syn keyword HLPowderblueBgW           HLPowderblueBgW
syn keyword HLPaleturquoiseBgW        HLPaleturquoiseBgW
syn keyword HLDarkturquoiseBgW        HLDarkturquoiseBgW
syn keyword HLMediumturquoiseBgW      HLMediumturquoiseBgW
syn keyword HLTurquoiseBgW            HLTurquoiseBgW
syn keyword HLCyanBgW                 HLCyanBgW
syn keyword HLAquaBgW                 HLAquaBgW
syn keyword HLLightcyanBgW            HLLightcyanBgW
syn keyword HLCadetblueBgW            HLCadetblueBgW
syn keyword HLMediumaquamarineBgW     HLMediumaquamarineBgW
syn keyword HLAquamarineBgW           HLAquamarineBgW
syn keyword HLDarkgreenBgW            HLDarkgreenBgW
syn keyword HLDarkolivegreenBgW       HLDarkolivegreenBgW
syn keyword HLDarkseagreenBgW         HLDarkseagreenBgW
syn keyword HLSeagreenBgW             HLSeagreenBgW
syn keyword HLMediumseagreenBgW       HLMediumseagreenBgW
syn keyword HLLightseagreenBgW        HLLightseagreenBgW
syn keyword HLPalegreenBgW            HLPalegreenBgW
syn keyword HLSpringgreenBgW          HLSpringgreenBgW
syn keyword HLLawngreenBgW            HLLawngreenBgW
syn keyword HLGreenBgW                HLGreenBgW
syn keyword HLLimeBgW                 HLLimeBgW
syn keyword HLX11greenBgW             HLX11greenBgW
syn keyword HLWebgreenBgW             HLWebgreenBgW
syn keyword HLChartreuseBgW           HLChartreuseBgW
syn keyword HLMediumspringgreenBgW    HLMediumspringgreenBgW
syn keyword HLGreenyellowBgW          HLGreenyellowBgW
syn keyword HLLimegreenBgW            HLLimegreenBgW
syn keyword HLYellowgreenBgW          HLYellowgreenBgW
syn keyword HLForestgreenBgW          HLForestgreenBgW
syn keyword HLOlivedrabBgW            HLOlivedrabBgW
syn keyword HLDarkkhakiBgW            HLDarkkhakiBgW
syn keyword HLKhakiBgW                HLKhakiBgW
syn keyword HLPalegoldenrodBgW        HLPalegoldenrodBgW
syn keyword HLLightgoldenrodyellowBgW HLLightgoldenrodyellowBgW
syn keyword HLLightyellowBgW          HLLightyellowBgW
syn keyword HLYellowBgW               HLYellowBgW
syn keyword HLGoldBgW                 HLGoldBgW
syn keyword HLLightgoldenrodBgW       HLLightgoldenrodBgW
syn keyword HLGoldenrodBgW            HLGoldenrodBgW
syn keyword HLDarkgoldenrodBgW        HLDarkgoldenrodBgW
syn keyword HLRosybrownBgW            HLRosybrownBgW
syn keyword HLIndianredBgW            HLIndianredBgW
syn keyword HLSaddlebrownBgW          HLSaddlebrownBgW
syn keyword HLSiennaBgW               HLSiennaBgW
syn keyword HLPeruBgW                 HLPeruBgW
syn keyword HLBurlywoodBgW            HLBurlywoodBgW
syn keyword HLBeigeBgW                HLBeigeBgW
syn keyword HLWheatBgW                HLWheatBgW
syn keyword HLSandybrownBgW           HLSandybrownBgW
syn keyword HLTanBgW                  HLTanBgW
syn keyword HLChocolateBgW            HLChocolateBgW
syn keyword HLFirebrickBgW            HLFirebrickBgW
syn keyword HLBrownBgW                HLBrownBgW
syn keyword HLDarksalmonBgW           HLDarksalmonBgW
syn keyword HLSalmonBgW               HLSalmonBgW
syn keyword HLLightsalmonBgW          HLLightsalmonBgW
syn keyword HLOrangeBgW               HLOrangeBgW
syn keyword HLDarkorangeBgW           HLDarkorangeBgW
syn keyword HLCoralBgW                HLCoralBgW
syn keyword HLLightcoralBgW           HLLightcoralBgW
syn keyword HLTomatoBgW               HLTomatoBgW
syn keyword HLOrangeredBgW            HLOrangeredBgW
syn keyword HLRedBgW                  HLRedBgW
syn keyword HLHotpinkBgW              HLHotpinkBgW
syn keyword HLDeeppinkBgW             HLDeeppinkBgW
syn keyword HLPinkBgW                 HLPinkBgW
syn keyword HLLightpinkBgW            HLLightpinkBgW
syn keyword HLPalevioletredBgW        HLPalevioletredBgW
syn keyword HLMaroonBgW               HLMaroonBgW
syn keyword HLX11maroonBgW            HLX11maroonBgW
syn keyword HLWebmaroonBgW            HLWebmaroonBgW
syn keyword HLMediumvioletredBgW      HLMediumvioletredBgW
syn keyword HLVioletredBgW            HLVioletredBgW
syn keyword HLMagentaBgW              HLMagentaBgW
syn keyword HLFuchsiaBgW              HLFuchsiaBgW
syn keyword HLVioletBgW               HLVioletBgW
syn keyword HLPlumBgW                 HLPlumBgW
syn keyword HLOrchidBgW               HLOrchidBgW
syn keyword HLMediumorchidBgW         HLMediumorchidBgW
syn keyword HLDarkorchidBgW           HLDarkorchidBgW
syn keyword HLDarkvioletBgW           HLDarkvioletBgW
syn keyword HLBluevioletBgW           HLBluevioletBgW
syn keyword HLPurpleBgW               HLPurpleBgW
syn keyword HLX11purpleBgW            HLX11purpleBgW
syn keyword HLWebpurpleBgW            HLWebpurpleBgW
syn keyword HLMediumpurpleBgW         HLMediumpurpleBgW
syn keyword HLThistleBgW              HLThistleBgW
syn keyword HLSnow1BgW                HLSnow1BgW
syn keyword HLSnow2BgW                HLSnow2BgW
syn keyword HLSnow3BgW                HLSnow3BgW
syn keyword HLSnow4BgW                HLSnow4BgW
syn keyword HLSeashell1BgW            HLSeashell1BgW
syn keyword HLSeashell2BgW            HLSeashell2BgW
syn keyword HLSeashell3BgW            HLSeashell3BgW
syn keyword HLSeashell4BgW            HLSeashell4BgW
syn keyword HLAntiquewhite1BgW        HLAntiquewhite1BgW
syn keyword HLAntiquewhite2BgW        HLAntiquewhite2BgW
syn keyword HLAntiquewhite3BgW        HLAntiquewhite3BgW
syn keyword HLAntiquewhite4BgW        HLAntiquewhite4BgW
syn keyword HLBisque1BgW              HLBisque1BgW
syn keyword HLBisque2BgW              HLBisque2BgW
syn keyword HLBisque3BgW              HLBisque3BgW
syn keyword HLBisque4BgW              HLBisque4BgW
syn keyword HLPeachpuff1BgW           HLPeachpuff1BgW
syn keyword HLPeachpuff2BgW           HLPeachpuff2BgW
syn keyword HLPeachpuff3BgW           HLPeachpuff3BgW
syn keyword HLPeachpuff4BgW           HLPeachpuff4BgW
syn keyword HLNavajowhite1BgW         HLNavajowhite1BgW
syn keyword HLNavajowhite2BgW         HLNavajowhite2BgW
syn keyword HLNavajowhite3BgW         HLNavajowhite3BgW
syn keyword HLNavajowhite4BgW         HLNavajowhite4BgW
syn keyword HLLemonchiffon1BgW        HLLemonchiffon1BgW
syn keyword HLLemonchiffon2BgW        HLLemonchiffon2BgW
syn keyword HLLemonchiffon3BgW        HLLemonchiffon3BgW
syn keyword HLLemonchiffon4BgW        HLLemonchiffon4BgW
syn keyword HLCornsilk1BgW            HLCornsilk1BgW
syn keyword HLCornsilk2BgW            HLCornsilk2BgW
syn keyword HLCornsilk3BgW            HLCornsilk3BgW
syn keyword HLCornsilk4BgW            HLCornsilk4BgW
syn keyword HLIvory1BgW               HLIvory1BgW
syn keyword HLIvory2BgW               HLIvory2BgW
syn keyword HLIvory3BgW               HLIvory3BgW
syn keyword HLIvory4BgW               HLIvory4BgW
syn keyword HLHoneydew1BgW            HLHoneydew1BgW
syn keyword HLHoneydew2BgW            HLHoneydew2BgW
syn keyword HLHoneydew3BgW            HLHoneydew3BgW
syn keyword HLHoneydew4BgW            HLHoneydew4BgW
syn keyword HLLavenderblush1BgW       HLLavenderblush1BgW
syn keyword HLLavenderblush2BgW       HLLavenderblush2BgW
syn keyword HLLavenderblush3BgW       HLLavenderblush3BgW
syn keyword HLLavenderblush4BgW       HLLavenderblush4BgW
syn keyword HLMistyrose1BgW           HLMistyrose1BgW
syn keyword HLMistyrose2BgW           HLMistyrose2BgW
syn keyword HLMistyrose3BgW           HLMistyrose3BgW
syn keyword HLMistyrose4BgW           HLMistyrose4BgW
syn keyword HLAzure1BgW               HLAzure1BgW
syn keyword HLAzure2BgW               HLAzure2BgW
syn keyword HLAzure3BgW               HLAzure3BgW
syn keyword HLAzure4BgW               HLAzure4BgW
syn keyword HLSlateblue1BgW           HLSlateblue1BgW
syn keyword HLSlateblue2BgW           HLSlateblue2BgW
syn keyword HLSlateblue3BgW           HLSlateblue3BgW
syn keyword HLSlateblue4BgW           HLSlateblue4BgW
syn keyword HLRoyalblue1BgW           HLRoyalblue1BgW
syn keyword HLRoyalblue2BgW           HLRoyalblue2BgW
syn keyword HLRoyalblue3BgW           HLRoyalblue3BgW
syn keyword HLRoyalblue4BgW           HLRoyalblue4BgW
syn keyword HLBlue1BgW                HLBlue1BgW
syn keyword HLBlue2BgW                HLBlue2BgW
syn keyword HLBlue3BgW                HLBlue3BgW
syn keyword HLBlue4BgW                HLBlue4BgW
syn keyword HLDodgerblue1BgW          HLDodgerblue1BgW
syn keyword HLDodgerblue2BgW          HLDodgerblue2BgW
syn keyword HLDodgerblue3BgW          HLDodgerblue3BgW
syn keyword HLDodgerblue4BgW          HLDodgerblue4BgW
syn keyword HLSteelblue1BgW           HLSteelblue1BgW
syn keyword HLSteelblue2BgW           HLSteelblue2BgW
syn keyword HLSteelblue3BgW           HLSteelblue3BgW
syn keyword HLSteelblue4BgW           HLSteelblue4BgW
syn keyword HLDeepskyblue1BgW         HLDeepskyblue1BgW
syn keyword HLDeepskyblue2BgW         HLDeepskyblue2BgW
syn keyword HLDeepskyblue3BgW         HLDeepskyblue3BgW
syn keyword HLDeepskyblue4BgW         HLDeepskyblue4BgW
syn keyword HLSkyblue1BgW             HLSkyblue1BgW
syn keyword HLSkyblue2BgW             HLSkyblue2BgW
syn keyword HLSkyblue3BgW             HLSkyblue3BgW
syn keyword HLSkyblue4BgW             HLSkyblue4BgW
syn keyword HLLightskyblue1BgW        HLLightskyblue1BgW
syn keyword HLLightskyblue2BgW        HLLightskyblue2BgW
syn keyword HLLightskyblue3BgW        HLLightskyblue3BgW
syn keyword HLLightskyblue4BgW        HLLightskyblue4BgW
syn keyword HLSlategray1BgW           HLSlategray1BgW
syn keyword HLSlategray2BgW           HLSlategray2BgW
syn keyword HLSlategray3BgW           HLSlategray3BgW
syn keyword HLSlategray4BgW           HLSlategray4BgW
syn keyword HLLightsteelblue1BgW      HLLightsteelblue1BgW
syn keyword HLLightsteelblue2BgW      HLLightsteelblue2BgW
syn keyword HLLightsteelblue3BgW      HLLightsteelblue3BgW
syn keyword HLLightsteelblue4BgW      HLLightsteelblue4BgW
syn keyword HLLightblue1BgW           HLLightblue1BgW
syn keyword HLLightblue2BgW           HLLightblue2BgW
syn keyword HLLightblue3BgW           HLLightblue3BgW
syn keyword HLLightblue4BgW           HLLightblue4BgW
syn keyword HLLightcyan1BgW           HLLightcyan1BgW
syn keyword HLLightcyan2BgW           HLLightcyan2BgW
syn keyword HLLightcyan3BgW           HLLightcyan3BgW
syn keyword HLLightcyan4BgW           HLLightcyan4BgW
syn keyword HLPaleturquoise1BgW       HLPaleturquoise1BgW
syn keyword HLPaleturquoise2BgW       HLPaleturquoise2BgW
syn keyword HLPaleturquoise3BgW       HLPaleturquoise3BgW
syn keyword HLPaleturquoise4BgW       HLPaleturquoise4BgW
syn keyword HLCadetblue1BgW           HLCadetblue1BgW
syn keyword HLCadetblue2BgW           HLCadetblue2BgW
syn keyword HLCadetblue3BgW           HLCadetblue3BgW
syn keyword HLCadetblue4BgW           HLCadetblue4BgW
syn keyword HLTurquoise1BgW           HLTurquoise1BgW
syn keyword HLTurquoise2BgW           HLTurquoise2BgW
syn keyword HLTurquoise3BgW           HLTurquoise3BgW
syn keyword HLTurquoise4BgW           HLTurquoise4BgW
syn keyword HLCyan1BgW                HLCyan1BgW
syn keyword HLCyan2BgW                HLCyan2BgW
syn keyword HLCyan3BgW                HLCyan3BgW
syn keyword HLCyan4BgW                HLCyan4BgW
syn keyword HLDarkslategray1BgW       HLDarkslategray1BgW
syn keyword HLDarkslategray2BgW       HLDarkslategray2BgW
syn keyword HLDarkslategray3BgW       HLDarkslategray3BgW
syn keyword HLDarkslategray4BgW       HLDarkslategray4BgW
syn keyword HLAquamarine1BgW          HLAquamarine1BgW
syn keyword HLAquamarine2BgW          HLAquamarine2BgW
syn keyword HLAquamarine3BgW          HLAquamarine3BgW
syn keyword HLAquamarine4BgW          HLAquamarine4BgW
syn keyword HLDarkseagreen1BgW        HLDarkseagreen1BgW
syn keyword HLDarkseagreen2BgW        HLDarkseagreen2BgW
syn keyword HLDarkseagreen3BgW        HLDarkseagreen3BgW
syn keyword HLDarkseagreen4BgW        HLDarkseagreen4BgW
syn keyword HLSeagreen1BgW            HLSeagreen1BgW
syn keyword HLSeagreen2BgW            HLSeagreen2BgW
syn keyword HLSeagreen3BgW            HLSeagreen3BgW
syn keyword HLSeagreen4BgW            HLSeagreen4BgW
syn keyword HLPalegreen1BgW           HLPalegreen1BgW
syn keyword HLPalegreen2BgW           HLPalegreen2BgW
syn keyword HLPalegreen3BgW           HLPalegreen3BgW
syn keyword HLPalegreen4BgW           HLPalegreen4BgW
syn keyword HLSpringgreen1BgW         HLSpringgreen1BgW
syn keyword HLSpringgreen2BgW         HLSpringgreen2BgW
syn keyword HLSpringgreen3BgW         HLSpringgreen3BgW
syn keyword HLSpringgreen4BgW         HLSpringgreen4BgW
syn keyword HLGreen1BgW               HLGreen1BgW
syn keyword HLGreen2BgW               HLGreen2BgW
syn keyword HLGreen3BgW               HLGreen3BgW
syn keyword HLGreen4BgW               HLGreen4BgW
syn keyword HLChartreuse1BgW          HLChartreuse1BgW
syn keyword HLChartreuse2BgW          HLChartreuse2BgW
syn keyword HLChartreuse3BgW          HLChartreuse3BgW
syn keyword HLChartreuse4BgW          HLChartreuse4BgW
syn keyword HLOlivedrab1BgW           HLOlivedrab1BgW
syn keyword HLOlivedrab2BgW           HLOlivedrab2BgW
syn keyword HLOlivedrab3BgW           HLOlivedrab3BgW
syn keyword HLOlivedrab4BgW           HLOlivedrab4BgW
syn keyword HLDarkolivegreen1BgW      HLDarkolivegreen1BgW
syn keyword HLDarkolivegreen2BgW      HLDarkolivegreen2BgW
syn keyword HLDarkolivegreen3BgW      HLDarkolivegreen3BgW
syn keyword HLDarkolivegreen4BgW      HLDarkolivegreen4BgW
syn keyword HLKhaki1BgW               HLKhaki1BgW
syn keyword HLKhaki2BgW               HLKhaki2BgW
syn keyword HLKhaki3BgW               HLKhaki3BgW
syn keyword HLKhaki4BgW               HLKhaki4BgW
syn keyword HLLightgoldenrod1BgW      HLLightgoldenrod1BgW
syn keyword HLLightgoldenrod2BgW      HLLightgoldenrod2BgW
syn keyword HLLightgoldenrod3BgW      HLLightgoldenrod3BgW
syn keyword HLLightgoldenrod4BgW      HLLightgoldenrod4BgW
syn keyword HLLightyellow1BgW         HLLightyellow1BgW
syn keyword HLLightyellow2BgW         HLLightyellow2BgW
syn keyword HLLightyellow3BgW         HLLightyellow3BgW
syn keyword HLLightyellow4BgW         HLLightyellow4BgW
syn keyword HLYellow1BgW              HLYellow1BgW
syn keyword HLYellow2BgW              HLYellow2BgW
syn keyword HLYellow3BgW              HLYellow3BgW
syn keyword HLYellow4BgW              HLYellow4BgW
syn keyword HLDarkyellowBgW           HLDarkyellowBgW
syn keyword HLGold1BgW                HLGold1BgW
syn keyword HLGold2BgW                HLGold2BgW
syn keyword HLGold3BgW                HLGold3BgW
syn keyword HLGold4BgW                HLGold4BgW
syn keyword HLGoldenrod1BgW           HLGoldenrod1BgW
syn keyword HLGoldenrod2BgW           HLGoldenrod2BgW
syn keyword HLGoldenrod3BgW           HLGoldenrod3BgW
syn keyword HLGoldenrod4BgW           HLGoldenrod4BgW
syn keyword HLDarkgoldenrod1BgW       HLDarkgoldenrod1BgW
syn keyword HLDarkgoldenrod2BgW       HLDarkgoldenrod2BgW
syn keyword HLDarkgoldenrod3BgW       HLDarkgoldenrod3BgW
syn keyword HLDarkgoldenrod4BgW       HLDarkgoldenrod4BgW
syn keyword HLRosybrown1BgW           HLRosybrown1BgW
syn keyword HLRosybrown2BgW           HLRosybrown2BgW
syn keyword HLRosybrown3BgW           HLRosybrown3BgW
syn keyword HLRosybrown4BgW           HLRosybrown4BgW
syn keyword HLIndianred1BgW           HLIndianred1BgW
syn keyword HLIndianred2BgW           HLIndianred2BgW
syn keyword HLIndianred3BgW           HLIndianred3BgW
syn keyword HLIndianred4BgW           HLIndianred4BgW
syn keyword HLSienna1BgW              HLSienna1BgW
syn keyword HLSienna2BgW              HLSienna2BgW
syn keyword HLSienna3BgW              HLSienna3BgW
syn keyword HLSienna4BgW              HLSienna4BgW
syn keyword HLBurlywood1BgW           HLBurlywood1BgW
syn keyword HLBurlywood2BgW           HLBurlywood2BgW
syn keyword HLBurlywood3BgW           HLBurlywood3BgW
syn keyword HLBurlywood4BgW           HLBurlywood4BgW
syn keyword HLWheat1BgW               HLWheat1BgW
syn keyword HLWheat2BgW               HLWheat2BgW
syn keyword HLWheat3BgW               HLWheat3BgW
syn keyword HLWheat4BgW               HLWheat4BgW
syn keyword HLTan1BgW                 HLTan1BgW
syn keyword HLTan2BgW                 HLTan2BgW
syn keyword HLTan3BgW                 HLTan3BgW
syn keyword HLTan4BgW                 HLTan4BgW
syn keyword HLChocolate1BgW           HLChocolate1BgW
syn keyword HLChocolate2BgW           HLChocolate2BgW
syn keyword HLChocolate3BgW           HLChocolate3BgW
syn keyword HLChocolate4BgW           HLChocolate4BgW
syn keyword HLFirebrick1BgW           HLFirebrick1BgW
syn keyword HLFirebrick2BgW           HLFirebrick2BgW
syn keyword HLFirebrick3BgW           HLFirebrick3BgW
syn keyword HLFirebrick4BgW           HLFirebrick4BgW
syn keyword HLBrown1BgW               HLBrown1BgW
syn keyword HLBrown2BgW               HLBrown2BgW
syn keyword HLBrown3BgW               HLBrown3BgW
syn keyword HLBrown4BgW               HLBrown4BgW
syn keyword HLSalmon1BgW              HLSalmon1BgW
syn keyword HLSalmon2BgW              HLSalmon2BgW
syn keyword HLSalmon3BgW              HLSalmon3BgW
syn keyword HLSalmon4BgW              HLSalmon4BgW
syn keyword HLLightsalmon1BgW         HLLightsalmon1BgW
syn keyword HLLightsalmon2BgW         HLLightsalmon2BgW
syn keyword HLLightsalmon3BgW         HLLightsalmon3BgW
syn keyword HLLightsalmon4BgW         HLLightsalmon4BgW
syn keyword HLOrange1BgW              HLOrange1BgW
syn keyword HLOrange2BgW              HLOrange2BgW
syn keyword HLOrange3BgW              HLOrange3BgW
syn keyword HLOrange4BgW              HLOrange4BgW
syn keyword HLDarkorange1BgW          HLDarkorange1BgW
syn keyword HLDarkorange2BgW          HLDarkorange2BgW
syn keyword HLDarkorange3BgW          HLDarkorange3BgW
syn keyword HLDarkorange4BgW          HLDarkorange4BgW
syn keyword HLCoral1BgW               HLCoral1BgW
syn keyword HLCoral2BgW               HLCoral2BgW
syn keyword HLCoral3BgW               HLCoral3BgW
syn keyword HLCoral4BgW               HLCoral4BgW
syn keyword HLTomato1BgW              HLTomato1BgW
syn keyword HLTomato2BgW              HLTomato2BgW
syn keyword HLTomato3BgW              HLTomato3BgW
syn keyword HLTomato4BgW              HLTomato4BgW
syn keyword HLOrangered1BgW           HLOrangered1BgW
syn keyword HLOrangered2BgW           HLOrangered2BgW
syn keyword HLOrangered3BgW           HLOrangered3BgW
syn keyword HLOrangered4BgW           HLOrangered4BgW
syn keyword HLLightredBgW             HLLightredBgW
syn keyword HLRed1BgW                 HLRed1BgW
syn keyword HLRed2BgW                 HLRed2BgW
syn keyword HLRed3BgW                 HLRed3BgW
syn keyword HLRed4BgW                 HLRed4BgW
syn keyword HLDeeppink1BgW            HLDeeppink1BgW
syn keyword HLDeeppink2BgW            HLDeeppink2BgW
syn keyword HLDeeppink3BgW            HLDeeppink3BgW
syn keyword HLDeeppink4BgW            HLDeeppink4BgW
syn keyword HLHotpink1BgW             HLHotpink1BgW
syn keyword HLHotpink2BgW             HLHotpink2BgW
syn keyword HLHotpink3BgW             HLHotpink3BgW
syn keyword HLHotpink4BgW             HLHotpink4BgW
syn keyword HLPink1BgW                HLPink1BgW
syn keyword HLPink2BgW                HLPink2BgW
syn keyword HLPink3BgW                HLPink3BgW
syn keyword HLPink4BgW                HLPink4BgW
syn keyword HLLightpink1BgW           HLLightpink1BgW
syn keyword HLLightpink2BgW           HLLightpink2BgW
syn keyword HLLightpink3BgW           HLLightpink3BgW
syn keyword HLLightpink4BgW           HLLightpink4BgW
syn keyword HLPalevioletred1BgW       HLPalevioletred1BgW
syn keyword HLPalevioletred2BgW       HLPalevioletred2BgW
syn keyword HLPalevioletred3BgW       HLPalevioletred3BgW
syn keyword HLPalevioletred4BgW       HLPalevioletred4BgW
syn keyword HLMaroon1BgW              HLMaroon1BgW
syn keyword HLMaroon2BgW              HLMaroon2BgW
syn keyword HLMaroon3BgW              HLMaroon3BgW
syn keyword HLMaroon4BgW              HLMaroon4BgW
syn keyword HLVioletred1BgW           HLVioletred1BgW
syn keyword HLVioletred2BgW           HLVioletred2BgW
syn keyword HLVioletred3BgW           HLVioletred3BgW
syn keyword HLVioletred4BgW           HLVioletred4BgW
syn keyword HLLightmagentaBgW         HLLightmagentaBgW
syn keyword HLMagenta1BgW             HLMagenta1BgW
syn keyword HLMagenta2BgW             HLMagenta2BgW
syn keyword HLMagenta3BgW             HLMagenta3BgW
syn keyword HLMagenta4BgW             HLMagenta4BgW
syn keyword HLOrchid1BgW              HLOrchid1BgW
syn keyword HLOrchid2BgW              HLOrchid2BgW
syn keyword HLOrchid3BgW              HLOrchid3BgW
syn keyword HLOrchid4BgW              HLOrchid4BgW
syn keyword HLPlum1BgW                HLPlum1BgW
syn keyword HLPlum2BgW                HLPlum2BgW
syn keyword HLPlum3BgW                HLPlum3BgW
syn keyword HLPlum4BgW                HLPlum4BgW
syn keyword HLMediumorchid1BgW        HLMediumorchid1BgW
syn keyword HLMediumorchid2BgW        HLMediumorchid2BgW
syn keyword HLMediumorchid3BgW        HLMediumorchid3BgW
syn keyword HLMediumorchid4BgW        HLMediumorchid4BgW
syn keyword HLDarkorchid1BgW          HLDarkorchid1BgW
syn keyword HLDarkorchid2BgW          HLDarkorchid2BgW
syn keyword HLDarkorchid3BgW          HLDarkorchid3BgW
syn keyword HLDarkorchid4BgW          HLDarkorchid4BgW
syn keyword HLPurple1BgW              HLPurple1BgW
syn keyword HLPurple2BgW              HLPurple2BgW
syn keyword HLPurple3BgW              HLPurple3BgW
syn keyword HLPurple4BgW              HLPurple4BgW
syn keyword HLMediumpurple1BgW        HLMediumpurple1BgW
syn keyword HLMediumpurple2BgW        HLMediumpurple2BgW
syn keyword HLMediumpurple3BgW        HLMediumpurple3BgW
syn keyword HLMediumpurple4BgW        HLMediumpurple4BgW
syn keyword HLThistle1BgW             HLThistle1BgW
syn keyword HLThistle2BgW             HLThistle2BgW
syn keyword HLThistle3BgW             HLThistle3BgW
syn keyword HLThistle4BgW             HLThistle4BgW
syn keyword HLGray0BgW                HLGray0BgW
syn keyword HLGrey0BgW                HLGrey0BgW
syn keyword HLGray1BgW                HLGray1BgW
syn keyword HLGrey1BgW                HLGrey1BgW
syn keyword HLGray2BgW                HLGray2BgW
syn keyword HLGrey2BgW                HLGrey2BgW
syn keyword HLGray3BgW                HLGray3BgW
syn keyword HLGrey3BgW                HLGrey3BgW
syn keyword HLGray4BgW                HLGray4BgW
syn keyword HLGrey4BgW                HLGrey4BgW
syn keyword HLGray5BgW                HLGray5BgW
syn keyword HLGrey5BgW                HLGrey5BgW
syn keyword HLGray6BgW                HLGray6BgW
syn keyword HLGrey6BgW                HLGrey6BgW
syn keyword HLGray7BgW                HLGray7BgW
syn keyword HLGrey7BgW                HLGrey7BgW
syn keyword HLGray8BgW                HLGray8BgW
syn keyword HLGrey8BgW                HLGrey8BgW
syn keyword HLGray9BgW                HLGray9BgW
syn keyword HLGrey9BgW                HLGrey9BgW
syn keyword HLGray10BgW               HLGray10BgW
syn keyword HLGrey10BgW               HLGrey10BgW
syn keyword HLGray11BgW               HLGray11BgW
syn keyword HLGrey11BgW               HLGrey11BgW
syn keyword HLGray12BgW               HLGray12BgW
syn keyword HLGrey12BgW               HLGrey12BgW
syn keyword HLGray13BgW               HLGray13BgW
syn keyword HLGrey13BgW               HLGrey13BgW
syn keyword HLGray14BgW               HLGray14BgW
syn keyword HLGrey14BgW               HLGrey14BgW
syn keyword HLGray15BgW               HLGray15BgW
syn keyword HLGrey15BgW               HLGrey15BgW
syn keyword HLGray16BgW               HLGray16BgW
syn keyword HLGrey16BgW               HLGrey16BgW
syn keyword HLGray17BgW               HLGray17BgW
syn keyword HLGrey17BgW               HLGrey17BgW
syn keyword HLGray18BgW               HLGray18BgW
syn keyword HLGrey18BgW               HLGrey18BgW
syn keyword HLGray19BgW               HLGray19BgW
syn keyword HLGrey19BgW               HLGrey19BgW
syn keyword HLGray20BgW               HLGray20BgW
syn keyword HLGrey20BgW               HLGrey20BgW
syn keyword HLGray21BgW               HLGray21BgW
syn keyword HLGrey21BgW               HLGrey21BgW
syn keyword HLGray22BgW               HLGray22BgW
syn keyword HLGrey22BgW               HLGrey22BgW
syn keyword HLGray23BgW               HLGray23BgW
syn keyword HLGrey23BgW               HLGrey23BgW
syn keyword HLGray24BgW               HLGray24BgW
syn keyword HLGrey24BgW               HLGrey24BgW
syn keyword HLGray25BgW               HLGray25BgW
syn keyword HLGrey25BgW               HLGrey25BgW
syn keyword HLGray26BgW               HLGray26BgW
syn keyword HLGrey26BgW               HLGrey26BgW
syn keyword HLGray27BgW               HLGray27BgW
syn keyword HLGrey27BgW               HLGrey27BgW
syn keyword HLGray28BgW               HLGray28BgW
syn keyword HLGrey28BgW               HLGrey28BgW
syn keyword HLGray29BgW               HLGray29BgW
syn keyword HLGrey29BgW               HLGrey29BgW
syn keyword HLGray30BgW               HLGray30BgW
syn keyword HLGrey30BgW               HLGrey30BgW
syn keyword HLGray31BgW               HLGray31BgW
syn keyword HLGrey31BgW               HLGrey31BgW
syn keyword HLGray32BgW               HLGray32BgW
syn keyword HLGrey32BgW               HLGrey32BgW
syn keyword HLGray33BgW               HLGray33BgW
syn keyword HLGrey33BgW               HLGrey33BgW
syn keyword HLGray34BgW               HLGray34BgW
syn keyword HLGrey34BgW               HLGrey34BgW
syn keyword HLGray35BgW               HLGray35BgW
syn keyword HLGrey35BgW               HLGrey35BgW
syn keyword HLGray36BgW               HLGray36BgW
syn keyword HLGrey36BgW               HLGrey36BgW
syn keyword HLGray37BgW               HLGray37BgW
syn keyword HLGrey37BgW               HLGrey37BgW
syn keyword HLGray38BgW               HLGray38BgW
syn keyword HLGrey38BgW               HLGrey38BgW
syn keyword HLGray39BgW               HLGray39BgW
syn keyword HLGrey39BgW               HLGrey39BgW
syn keyword HLGray40BgW               HLGray40BgW
syn keyword HLGrey40BgW               HLGrey40BgW
syn keyword HLGray41BgW               HLGray41BgW
syn keyword HLGrey41BgW               HLGrey41BgW
syn keyword HLGray42BgW               HLGray42BgW
syn keyword HLGrey42BgW               HLGrey42BgW
syn keyword HLGray43BgW               HLGray43BgW
syn keyword HLGrey43BgW               HLGrey43BgW
syn keyword HLGray44BgW               HLGray44BgW
syn keyword HLGrey44BgW               HLGrey44BgW
syn keyword HLGray45BgW               HLGray45BgW
syn keyword HLGrey45BgW               HLGrey45BgW
syn keyword HLGray46BgW               HLGray46BgW
syn keyword HLGrey46BgW               HLGrey46BgW
syn keyword HLGray47BgW               HLGray47BgW
syn keyword HLGrey47BgW               HLGrey47BgW
syn keyword HLGray48BgW               HLGray48BgW
syn keyword HLGrey48BgW               HLGrey48BgW
syn keyword HLGray49BgW               HLGray49BgW
syn keyword HLGrey49BgW               HLGrey49BgW
syn keyword HLGray50BgW               HLGray50BgW
syn keyword HLGrey50BgW               HLGrey50BgW
syn keyword HLGray51BgW               HLGray51BgW
syn keyword HLGrey51BgW               HLGrey51BgW
syn keyword HLGray52BgW               HLGray52BgW
syn keyword HLGrey52BgW               HLGrey52BgW
syn keyword HLGray53BgW               HLGray53BgW
syn keyword HLGrey53BgW               HLGrey53BgW
syn keyword HLGray54BgW               HLGray54BgW
syn keyword HLGrey54BgW               HLGrey54BgW
syn keyword HLGray55BgW               HLGray55BgW
syn keyword HLGrey55BgW               HLGrey55BgW
syn keyword HLGray56BgW               HLGray56BgW
syn keyword HLGrey56BgW               HLGrey56BgW
syn keyword HLGray57BgW               HLGray57BgW
syn keyword HLGrey57BgW               HLGrey57BgW
syn keyword HLGray58BgW               HLGray58BgW
syn keyword HLGrey58BgW               HLGrey58BgW
syn keyword HLGray59BgW               HLGray59BgW
syn keyword HLGrey59BgW               HLGrey59BgW
syn keyword HLGray60BgW               HLGray60BgW
syn keyword HLGrey60BgW               HLGrey60BgW
syn keyword HLGray61BgW               HLGray61BgW
syn keyword HLGrey61BgW               HLGrey61BgW
syn keyword HLGray62BgW               HLGray62BgW
syn keyword HLGrey62BgW               HLGrey62BgW
syn keyword HLGray63BgW               HLGray63BgW
syn keyword HLGrey63BgW               HLGrey63BgW
syn keyword HLGray64BgW               HLGray64BgW
syn keyword HLGrey64BgW               HLGrey64BgW
syn keyword HLGray65BgW               HLGray65BgW
syn keyword HLGrey65BgW               HLGrey65BgW
syn keyword HLGray66BgW               HLGray66BgW
syn keyword HLGrey66BgW               HLGrey66BgW
syn keyword HLGray67BgW               HLGray67BgW
syn keyword HLGrey67BgW               HLGrey67BgW
syn keyword HLGray68BgW               HLGray68BgW
syn keyword HLGrey68BgW               HLGrey68BgW
syn keyword HLGray69BgW               HLGray69BgW
syn keyword HLGrey69BgW               HLGrey69BgW
syn keyword HLGray70BgW               HLGray70BgW
syn keyword HLGrey70BgW               HLGrey70BgW
syn keyword HLGray71BgW               HLGray71BgW
syn keyword HLGrey71BgW               HLGrey71BgW
syn keyword HLGray72BgW               HLGray72BgW
syn keyword HLGrey72BgW               HLGrey72BgW
syn keyword HLGray73BgW               HLGray73BgW
syn keyword HLGrey73BgW               HLGrey73BgW
syn keyword HLGray74BgW               HLGray74BgW
syn keyword HLGrey74BgW               HLGrey74BgW
syn keyword HLGray75BgW               HLGray75BgW
syn keyword HLGrey75BgW               HLGrey75BgW
syn keyword HLGray76BgW               HLGray76BgW
syn keyword HLGrey76BgW               HLGrey76BgW
syn keyword HLGray77BgW               HLGray77BgW
syn keyword HLGrey77BgW               HLGrey77BgW
syn keyword HLGray78BgW               HLGray78BgW
syn keyword HLGrey78BgW               HLGrey78BgW
syn keyword HLGray79BgW               HLGray79BgW
syn keyword HLGrey79BgW               HLGrey79BgW
syn keyword HLGray80BgW               HLGray80BgW
syn keyword HLGrey80BgW               HLGrey80BgW
syn keyword HLGray81BgW               HLGray81BgW
syn keyword HLGrey81BgW               HLGrey81BgW
syn keyword HLGray82BgW               HLGray82BgW
syn keyword HLGrey82BgW               HLGrey82BgW
syn keyword HLGray83BgW               HLGray83BgW
syn keyword HLGrey83BgW               HLGrey83BgW
syn keyword HLGray84BgW               HLGray84BgW
syn keyword HLGrey84BgW               HLGrey84BgW
syn keyword HLGray85BgW               HLGray85BgW
syn keyword HLGrey85BgW               HLGrey85BgW
syn keyword HLGray86BgW               HLGray86BgW
syn keyword HLGrey86BgW               HLGrey86BgW
syn keyword HLGray87BgW               HLGray87BgW
syn keyword HLGrey87BgW               HLGrey87BgW
syn keyword HLGray88BgW               HLGray88BgW
syn keyword HLGrey88BgW               HLGrey88BgW
syn keyword HLGray89BgW               HLGray89BgW
syn keyword HLGrey89BgW               HLGrey89BgW
syn keyword HLGray90BgW               HLGray90BgW
syn keyword HLGrey90BgW               HLGrey90BgW
syn keyword HLGray91BgW               HLGray91BgW
syn keyword HLGrey91BgW               HLGrey91BgW
syn keyword HLGray92BgW               HLGray92BgW
syn keyword HLGrey92BgW               HLGrey92BgW
syn keyword HLGray93BgW               HLGray93BgW
syn keyword HLGrey93BgW               HLGrey93BgW
syn keyword HLGray94BgW               HLGray94BgW
syn keyword HLGrey94BgW               HLGrey94BgW
syn keyword HLGray95BgW               HLGray95BgW
syn keyword HLGrey95BgW               HLGrey95BgW
syn keyword HLGray96BgW               HLGray96BgW
syn keyword HLGrey96BgW               HLGrey96BgW
syn keyword HLGray97BgW               HLGray97BgW
syn keyword HLGrey97BgW               HLGrey97BgW
syn keyword HLGray98BgW               HLGray98BgW
syn keyword HLGrey98BgW               HLGrey98BgW
syn keyword HLGray99BgW               HLGray99BgW
syn keyword HLGrey99BgW               HLGrey99BgW
syn keyword HLGray100BgW              HLGray100BgW
syn keyword HLGrey100BgW              HLGrey100BgW
syn keyword HLDarkgreyBgW             HLDarkgreyBgW
syn keyword HLDarkgrayBgW             HLDarkgrayBgW
syn keyword HLDarkblueBgW             HLDarkblueBgW
syn keyword HLDarkcyanBgW             HLDarkcyanBgW
syn keyword HLDarkmagentaBgW          HLDarkmagentaBgW
syn keyword HLDarkredBgW              HLDarkredBgW
syn keyword HLLightgreenBgW           HLLightgreenBgW
syn keyword HLCrimsonBgW              HLCrimsonBgW
syn keyword HLIndigoBgW               HLIndigoBgW
syn keyword HLOliveBgW                HLOliveBgW
syn keyword HLRebeccapurpleBgW        HLRebeccapurpleBgW
syn keyword HLSilverBgW               HLSilverBgW
syn keyword HLTealBgW                 HLTealBgW
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
syn match   AllColorsMatch2   '\<\%(match\|keyword\|default\|link\|bold\|underline\|exists\)\>'

hi  link    AllColorsMatch3   Comment
syn match   AllColorsMatch3   "^ *\".*"

hi  link    AllColorsMatch4   Function
syn match   AllColorsMatch4   '\<gui\%(\|fg\|bg\)\>'
syn match   AllColorsMatch4   '\<cterm\%(\|fg\|bg\)\>'

hi  link    AllColorsMatch5   Conditional
syn match   AllColorsMatch5   '\<\%(if\|endif\)\>'

hi  link    AllColorsHLNote   Note
syn match   AllColorsHLNote   "\<NOTE\%(:\|\>\)\@=" contained containedin=AllColorsMatch3

