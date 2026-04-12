"==============================================================================
" File: vim.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all vim files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
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
if exists("b:vim_loaded")
  finish
endif
let g:vim_loaded = 1


" This is needed when loading multiple files at the same time, with some .vim
" extension files and others with spell enabled.
setlocal nospell

" Match global variables in vim.
hi  link    VimVariables   Operator
syn match   VimVariables   '\%(\<[gbwtsl]:\)\@<=\w\+'  contains=@NoSpell

" My custom syntax without any default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5

   " Override default coloring of the syn/ia/au commands and any following text.
   "------------------------------------------------------------------------------
   hi  link    VimMatch1   Statement
   syn match   VimMatch1   '\<\%(syn\%(t\%(ax\?\)\?\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(au\%(group\|tocmd\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(colorscheme\|filetype\|\%(do\|no\)autocmd\|command\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%([ci]\%(nore\)\?\)a\%(bbrev\)\?\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(ab\|abbreviate\)\>'  contains=@NoSpell

   hi  link    VimMatch2   Type
   syn match   VimMatch2   '\<\%(BufNewFile\|BufRead\|FileType\|keyword\|region\|match\|ignore\|clear\|exists\|hlexists\|has\)\>'  contains=@NoSpell

   hi  link    VimMatch3   SpecialChar
   syn match   VimMatch3   "\<contains="
   syn match   VimMatch3   "\<contained\>"
   syn match   VimMatch3   "\<containedin="  contains=@NoSpell

   hi  link    VimDirections  SpecialChar
   syn match   VimDirections  "\%(<\)\@<=\%([cas]-\)\?\%(left\|right\|up\|down\)\%(>\)\@="  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Override default coloring of the map commands.
   "------------------------------------------------------------------------------
   hi  link    VimMatch4   Statement
   syn match   VimMatch4   '\<\%([nvixotcsl]\?\%(nore\)\?map\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%([nvi]\?unmap\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%(nore\|finish\)\>'  contains=@NoSpell

   syn match   VimMatch4   '\<\%(hi\|highlight\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%(fun\|endfun\)\>'  contains=@NoSpell

   hi  link    VimMatch5   Type
   syn match   VimMatch5   '\<\%(link\|bold\|underline\|undercurl\|mapleader\|maplocalleader\)\>'  contains=@NoSpell
   syn match   VimMatch5   '\<\%(plug\%(in\|ged\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch5   '\<\%(echo\%(m\|n\|hl\)\?\|redraw\|sign\)\>'  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Other Keywords
   "------------------------------------------------------------------------------
   hi  link    VimMatch6   Constant
   syn match   VimMatch6   '\<\%(normal\|exe\|execute\|search\|silent\|exclude\|dir\|copen\|call\)\>'  contains=@NoSpell
   syn match   VimMatch6   '\<\%(let\|unlet\|set\|setlocal\|setglobal\|unset\|indent\)\>'  contains=@NoSpell
   syn match   VimMatch6   '\<[gbwtsl]:'  contains=@NoSpell
   syn match   VimMatch6   '\<\%(source\|windo\|bufdo\|shellescape\|expand\|mode\|so\|source\|runtime\|packadd\)\>'  contains=@NoSpell

   hi  link    VimMatch7   Function
   syn match   VimMatch7   '\<\%(gui\|guifg\|guibg\|guisp\|guifont\|cterm\|ctermfg\|ctermbg\|matchgroup\|skip\|on\|enable\|off\|nospell\|spell\)\>'  contains=@NoSpell

   hi  link    VimMatch8   Conditional
   syn match   VimMatch8   '\<\%(start\|try\|catch\|finally\|endtry\|throw\)\>'  contains=@NoSpell

   " Match expr in between < >.
   hi  link    VimExpr        Type
   syn match   VimExpr        "\%(<\)\@<=expr\%(>\)\@="  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Match hex numbers in vim.
   hi  link    VimHexNum   Constant
   syn match   VimHexNum   '\%(#\)\@<=[0-9a-fA-F]\+\>'  contains=@NoSpell

   " Don't match comments after a non space.
   syn match   VimNoColor1 '\%(\S\)\@<="'  contains=@NoSpell

   " Don't match comments after map or echo or syn keywords.
   syn match   VimNoColor2 '\%(\%(map\>\|\<echo\|\<exe\|\<syn\|\<au\|\<inorea\).*\)\@<="'  contains=@NoSpell

   " Don't match comments in parenthesis (" ... ").
   syn match   VimNoColor3 '\%((.*\)\@<="\%(.*)\)\@='  contains=@NoSpell
   syn match   VimNoColor3 '\%(\'\)\@<="\%(\'\)\@='  contains=@NoSpell

   " Don't match comments after =" ".
   syn match   VimNoColor4 '\%([=\\]\s*\)\@<="'  contains=@NoSpell
   syn match   VimNoColor4 '\%(=\s*".*\)\@<="'  contains=@NoSpell

   " Special combinations ctrl/shift/alt.
   syn case ignore
      hi  link    VimComb  SpecialChar
      syn match   VimComb  "\%(<\)\@<=\%([csa]\-\)\?\%(bs\|esc\|cr\|tab\|space\|leader\|middlemouse\|leftmouse\|rightmouse\|pageup\|pagedown\|backspace\|bar\)\%(>\)\@=" contains=@NoSpell
      syn match   VimComb  "\%(<\)\@<=[csa]\-[!-~]\%(>\)\@=" contains=@NoSpell
   syn case match

   " Match first \ in new line.
   hi  link    VimFirstSlash   Keyword
   syn match   VimFirstSlash   '\%(^\s*\)\@<=\\\%(%(\|(\)\@!'  contains=@NoSpell

   " Must start with $path
   hi  link     VimDollarPaths Underlined
   syn match    VimDollarPaths "\
      \%(^\|\s\)\@<=\$\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\/\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\
      \%([!-~]\)\@!" contains=@NoSpell containedin=AllPreDollar,RegexSpChars1,AllPreSpChars1,AllPreSpChars11

" Mix of my custom syntax and default vim settings.
elseif g:select_custom_syntax == 2

   " Match :commands in vim
   hi  link    VimCommands   Operator
   syn match   VimCommands   '\%(\W\|_\)\@<=:\w\+'  contains=@NoSpell contained containedin=vimMapRhs

   " Abbreviation name like in inorea
   hi  link     VimAbName  Type
   syn match    VimAbName  "\%(\s\)\@<=\<_\S\+" contained containedin=vimMapLhs
   syn match    VimAbName  "\%(\s\)\@<=\w\?\w\?\w\?_\S\+" contained containedin=vimMapLhs
endif

" NOTE: At work this works...
let b:match_words='\<function\>:\<endfunction\>,
                 \ \<if\>:\<else\>:\<endif\>'


"------------------------------------------------------------------------------
" This will color the highlighting group names with the color they are mapped
" to and throughout the .vim files.
"------------------------------------------------------------------------------
" Custom syntax groups
" syn match AllFilesFuncColor     "\<AllFilesFuncColor\>"     contains=@NoSpell
" syn match AllFilesDefaultColor  "\<AllFilesDefaultColor\>"  contains=@NoSpell
" syn match AllFilesDefinesColor  "\<AllFilesDefinesColor\>"  contains=@NoSpell
" syn match AllFilesOpColor       "\<AllFilesOpColor\>"       contains=@NoSpell
" syn match AllFilesSBrColor      "\<AllFilesSBrColor\>"      contains=@NoSpell
" syn match AllFilesCBrColor      "\<AllFilesCBrColor\>"      contains=@NoSpell
" syn match AllFilesTBrColor      "\<AllFilesTBrColor\>"      contains=@NoSpell
" syn match AllFilesEqualityColor "\<AllFilesEqualityColor\>" contains=@NoSpell
" syn match AllFilesPointerColor  "\<AllFilesPointerColor\>"  contains=@NoSpell
" syn match AllFilesArrowsColor   "\<AllFilesArrowsColor\>"   contains=@NoSpell
" syn match AllFilesArrayColor    "\<AllFilesArrayColor\>"    contains=@NoSpell
" syn match AllFilesWarningColor  "\<AllFilesWarningColor\>"  contains=@NoSpell
" syn match AllFilesSpecialColor1 "\<AllFilesSpecialColor1\>" contains=@NoSpell
" syn match AllFilesSpecialColorB "\<AllFilesSpecialColorB\>" contains=@NoSpell
" syn match AllFilesSpecialColor2 "\<AllFilesSpecialColor2\>" contains=@NoSpell
" syn match AllFilesSystemColor1  "\<AllFilesSystemColor1\>"  contains=@NoSpell
" syn match AllFilesSystemColor2  "\<AllFilesSystemColor2\>"  contains=@NoSpell
" syn match AllFilesSystemColor3  "\<AllFilesSystemColor3\>"  contains=@NoSpell
" syn match AllFilesSystemColor4  "\<AllFilesSystemColor4\>"  contains=@NoSpell
" syn match AllFilesSystemColor5  "\<AllFilesSystemColor5\>"  contains=@NoSpell
" syn match AllFilesNumColor      "\<AllFilesNumColor\>"      contains=@NoSpell
" syn match AllFilesCapsColor     "\<AllFilesCapsColor\>"     contains=@NoSpell
" syn match AllFilesVarColor      "\<AllFilesVarColor\>"      contains=@NoSpell
" syn match AllFilesMultVarColor  "\<AllFilesMultVarColor\>"  contains=@NoSpell
" syn match AllFilesMultOpColor   "\<AllFilesMultOpColor\>"   contains=@NoSpell
" syn match AllFilesCommentColor  "\<AllFilesCommentColor\>"  contains=@NoSpell
" syn match AllFilesComment2Color "\<AllFilesComment2Color\>" contains=@NoSpell
" syn match AllFilesTimeColor     "\<AllFilesTimeColor\>"     contains=@NoSpell
" syn match AllFilesQuotesColor1  "\<AllFilesQuotesColor1\>"  contains=@NoSpell
" syn match AllFilesQuotesColor2  "\<AllFilesQuotesColor2\>"  contains=@NoSpell
" syn match AllFilesQuotesColor3  "\<AllFilesQuotesColor3\>"  contains=@NoSpell
" syn match AllFilesLoopCondColor "\<AllFilesLoopCondColor\>" contains=@NoSpell
" syn match AllFilesPathsColor1   "\<AllFilesPathsColor1\>"   contains=@NoSpell
" syn match AllFilesPathsColor2   "\<AllFilesPathsColor2\>"   contains=@NoSpell
" syn match AllFilesStructColor   "\<AllFilesStructColor\>"   contains=@NoSpell
" syn match AllFilesMidGrey       "\<AllFilesMidGrey\>"       contains=@NoSpell
syn match AllFilesBarelyVisible "\<AllFilesBarelyVisible\>" contains=@NoSpell

syn match HLSiennaB             "\<HLSiennaB\>"             contains=@NoSpell
syn match HLBrownB              "\<HLBrownB\>"              contains=@NoSpell
syn match HLRed2B               "\<HLRed2B\>"               contains=@NoSpell
syn match HLOrangeredB          "\<HLOrangeredB\>"          contains=@NoSpell
syn match HLDarkorange3B        "\<HLDarkorange3B\>"        contains=@NoSpell
syn match HLDarkorangeB         "\<HLDarkorangeB\>"         contains=@NoSpell
syn match HLOrangeB             "\<HLOrangeB\>"             contains=@NoSpell
syn match HLTomato1B            "\<HLTomato1B\>"            contains=@NoSpell
syn match HLHotpinkB            "\<HLHotpinkB\>"            contains=@NoSpell
syn match HLDeeppinkB           "\<HLDeeppinkB\>"           contains=@NoSpell
syn match HLDeeppink4B          "\<HLDeeppink4B\>"          contains=@NoSpell
syn match HLMagenta4B           "\<HLMagenta4B\>"           contains=@NoSpell
syn match HLFuchsiaB            "\<HLFuchsiaB\>"            contains=@NoSpell
syn match HLPurpleB             "\<HLPurpleB\>"             contains=@NoSpell
syn match HLPurple4B            "\<HLPurple4B\>"            contains=@NoSpell
syn match HLNavyB               "\<HLNavyB\>"               contains=@NoSpell
syn match HLBlue                "\<HLBlue\>"                contains=@NoSpell
syn match HLBlueB               "\<HLBlueB\>"               contains=@NoSpell
syn match HLMediumslateblueB    "\<HLMediumslateblueB\>"    contains=@NoSpell
syn match HLDeepskyblue4B       "\<HLDeepskyblue4B\>"       contains=@NoSpell
syn match HLDodgerblueB         "\<HLDodgerblueB\>"         contains=@NoSpell
syn match HLDeepskyblueB        "\<HLDeepskyblueB\>"        contains=@NoSpell
syn match HLCyanB               "\<HLCyanB\>"               contains=@NoSpell
syn match HLYellowB             "\<HLYellowB\>"             contains=@NoSpell
syn match HLYellowgreenB        "\<HLYellowgreenB\>"        contains=@NoSpell
syn match HLGreen               "\<HLGreen\>"               contains=@NoSpell
syn match HLGreenB              "\<HLGreenB\>"              contains=@NoSpell
syn match HLGreen3              "\<HLGreen3\>"              contains=@NoSpell
syn match HLGreen3B             "\<HLGreen3B\>"             contains=@NoSpell
syn match HLOlive               "\<HLOlive\>"               contains=@NoSpell
syn match HLOliveB              "\<HLOliveB\>"              contains=@NoSpell
syn match HLKhaki4              "\<HLKhaki4\>"              contains=@NoSpell
syn match HLKhaki4B             "\<HLKhaki4B\>"             contains=@NoSpell

syn match HLGrey30              "\<HLGrey30\>"              contains=@NoSpell
syn match HLGrey30B             "\<HLGrey30B\>"             contains=@NoSpell
syn match HLGrey40B             "\<HLGrey40B\>"             contains=@NoSpell
syn match HLGrey50B             "\<HLGrey50B\>"             contains=@NoSpell
syn match HLWhiteB              "\<HLWhiteB\>"              contains=@NoSpell

syn match HLGrey60B             "\<HLGrey60B\>"             contains=@NoSpell
syn match HLLightmagentaB       "\<HLLightmagentaB\>"       contains=@NoSpell
syn match HLSkyblueB            "\<HLSkyblueB\>"            contains=@NoSpell
syn match HLMediumaquamarineB   "\<HLMediumaquamarineB\>"   contains=@NoSpell
syn match HLSpringgreenB        "\<HLSpringgreenB\>"        contains=@NoSpell
syn match HLKhakiB              "\<HLKhakiB\>"              contains=@NoSpell
syn match HLTan1B               "\<HLTan1B\>"               contains=@NoSpell
syn match HLSalmonB             "\<HLSalmonB\>"             contains=@NoSpell

syn match HLRedBU               "\<HLRedBU\>"               contains=@NoSpell
syn match HLOrangeredBU         "\<HLOrangeredBU\>"         contains=@NoSpell
syn match HLYellowBU            "\<HLYellowBU\>"            contains=@NoSpell
syn match HLGreenBU             "\<HLGreenBU\>"             contains=@NoSpell
syn match HLDodgerblueBU        "\<HLDodgerblueBU\>"        contains=@NoSpell
syn match HLHotpinkBU           "\<HLHotpinkBU\>"           contains=@NoSpell

syn match HLGrey15BgB           "\<HLGrey15BgB\>"           contains=@NoSpell
syn match HLOrangered1BgB       "\<HLOrangered1BgB\>"       contains=@NoSpell
syn match HLOrangeBgB           "\<HLOrangeBgB\>"           contains=@NoSpell
syn match HLYellow3BgB          "\<HLYellow3BgB\>"          contains=@NoSpell
syn match HLGreen3BgB           "\<HLGreen3BgB\>"           contains=@NoSpell
syn match HLGreen1BgB           "\<HLGreen1BgB\>"           contains=@NoSpell
syn match HLRedBgB              "\<HLRedBgB\>"              contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Vim default groups
syn match Note              "\<Note\>"              contains=@NoSpell
syn match Comment           "\<Comment\>"           contains=@NoSpell
syn match Constant          "\<Constant\>"          contains=@NoSpell
syn match String            "\<String\>"            contains=@NoSpell
syn match Character         "\<Character\>"         contains=@NoSpell
syn match Number            "\<Number\>"            contains=@NoSpell
syn match Boolean           "\<Boolean\>"           contains=@NoSpell
syn match Float             "\<Float\>"             contains=@NoSpell
syn match Identifier        "\<Identifier\>"        contains=@NoSpell
syn match Function          "\<Function\>"          contains=@NoSpell
syn match Statement         "\<Statement\>"         contains=@NoSpell
syn match Conditional       "\<Conditional\>"       contains=@NoSpell
syn match Repeat            "\<Repeat\>"            contains=@NoSpell
syn match Label             "\<Label\>"             contains=@NoSpell
syn match Operator          "\<Operator\>"          contains=@NoSpell
syn match Keyword           "\<Keyword\>"           contains=@NoSpell
syn match Exception         "\<Exception\>"         contains=@NoSpell
syn match PreProc           "\<PreProc\>"           contains=@NoSpell
syn match Include           "\<Include\>"           contains=@NoSpell
syn match Define            "\<Define\>"            contains=@NoSpell
syn match Macro             "\<Macro\>"             contains=@NoSpell
syn match PreCondit         "\<PreCondit\>"         contains=@NoSpell
syn match Type              "\<Type\>"              contains=@NoSpell
syn match StorageClass      "\<StorageClass\>"      contains=@NoSpell
syn match Structure         "\<Structure\>"         contains=@NoSpell
syn match Typedef           "\<Typedef\>"           contains=@NoSpell
syn match Special           "\<Special\>"           contains=@NoSpell
syn match SpecialChar       "\<SpecialChar\>"       contains=@NoSpell
syn match Tag               "\<Tag\>"               contains=@NoSpell
syn match Delimiter         "\<Delimiter\>"         contains=@NoSpell
syn match SpecialComment    "\<SpecialComment\>"    contains=@NoSpell
syn match Debug             "\<Debug\>"             contains=@NoSpell
syn match Underlined        "\<Underlined\>"        contains=@NoSpell
syn match Ignore            "\<Ignore\>"            contains=@NoSpell
syn match Error             "\<Error\>"             contains=@NoSpell
syn match Todo              "\<Todo\>"              contains=@NoSpell
syn match Added             "\<Added\>"             contains=@NoSpell
syn match Changed           "\<Changed\>"           contains=@NoSpell
syn match Removed           "\<Removed\>"           contains=@NoSpell
syn match ColorColumn       "\<ColorColumn\>"       contains=@NoSpell
syn match Conceal           "\<Conceal\>"           contains=@NoSpell
syn match Cursor            "\<Cursor\>"            contains=@NoSpell
syn match lCursor           "\<lCursor\>"           contains=@NoSpell
syn match CursorIM          "\<CursorIM\>"          contains=@NoSpell
syn match CursorColumn      "\<CursorColumn\>"      contains=@NoSpell
syn match CursorLine        "\<CursorLine\>"        contains=@NoSpell
syn match Directory         "\<Directory\>"         contains=@NoSpell
syn match DiffAdd           "\<DiffAdd\>"           contains=@NoSpell
syn match DiffChange        "\<DiffChange\>"        contains=@NoSpell
syn match DiffDelete        "\<DiffDelete\>"        contains=@NoSpell
syn match DiffText          "\<DiffText\>"          contains=@NoSpell
syn match EndOfBuffer       "\<EndOfBuffer\>"       contains=@NoSpell
syn match ErrorMsg          "\<ErrorMsg\>"          contains=@NoSpell
syn match VertSplit         "\<VertSplit\>"         contains=@NoSpell
syn match Folded            "\<Folded\>"            contains=@NoSpell
syn match FoldColumn        "\<FoldColumn\>"        contains=@NoSpell
syn match SignColumn        "\<SignColumn\>"        contains=@NoSpell
syn match IncSearch         "\<IncSearch\>"         contains=@NoSpell
syn match LineNr            "\<LineNr\>"            contains=@NoSpell
syn match LineNrAbove       "\<LineNrAbove\>"       contains=@NoSpell
syn match LineNrBelow       "\<LineNrBelow\>"       contains=@NoSpell
syn match CursorLineNr      "\<CursorLineNr\>"      contains=@NoSpell
syn match CursorLineFold    "\<CursorLineFold\>"    contains=@NoSpell
syn match CursorLineSign    "\<CursorLineSign\>"    contains=@NoSpell
syn match MatchParen        "\<MatchParen\>"        contains=@NoSpell
syn match MessageWindow     "\<MessageWindow\>"     contains=@NoSpell
syn match ModeMsg           "\<ModeMsg\>"           contains=@NoSpell
syn match MoreMsg           "\<MoreMsg\>"           contains=@NoSpell
syn match NonText           "\<NonText\>"           contains=@NoSpell
syn match Normal            "\<Normal\>"            contains=@NoSpell
syn match Pmenu             "\<Pmenu\>"             contains=@NoSpell
syn match PmenuSel          "\<PmenuSel\>"          contains=@NoSpell
syn match PmenuKind         "\<PmenuKind\>"         contains=@NoSpell
syn match PmenuKindSel      "\<PmenuKindSel\>"      contains=@NoSpell
syn match PmenuExtra        "\<PmenuExtra\>"        contains=@NoSpell
syn match PmenuExtraSel     "\<PmenuExtraSel\>"     contains=@NoSpell
syn match PmenuSbar         "\<PmenuSbar\>"         contains=@NoSpell
syn match PmenuThumb        "\<PmenuThumb\>"        contains=@NoSpell
syn match PopupNotification "\<PopupNotification\>" contains=@NoSpell
syn match Question          "\<Question\>"          contains=@NoSpell
syn match QuickFixLine      "\<QuickFixLine\>"      contains=@NoSpell
syn match Search            "\<Search\>"            contains=@NoSpell
syn match CurSearch         "\<CurSearch\>"         contains=@NoSpell
syn match SpecialKey        "\<SpecialKey\>"        contains=@NoSpell
syn match SpellBad          "\<SpellBad\>"          contains=@NoSpell
syn match SpellCap          "\<SpellCap\>"          contains=@NoSpell
syn match SpellLocal        "\<SpellLocal\>"        contains=@NoSpell
syn match SpellRare         "\<SpellRare\>"         contains=@NoSpell
syn match StatusLine        "\<StatusLine\>"        contains=@NoSpell
syn match StatusLineNC      "\<StatusLineNC\>"      contains=@NoSpell
syn match StatusLineTerm    "\<StatusLineTerm\>"    contains=@NoSpell
syn match StatusLineTermNC  "\<StatusLineTermNC\>"  contains=@NoSpell
syn match TabLine           "\<TabLine\>"           contains=@NoSpell
syn match TabLineFill       "\<TabLineFill\>"       contains=@NoSpell
syn match TabLineSel        "\<TabLineSel\>"        contains=@NoSpell
syn match Terminal          "\<Terminal\>"          contains=@NoSpell
syn match Title             "\<Title\>"             contains=@NoSpell
syn match Visual            "\<Visual\>"            contains=@NoSpell
syn match VisualNOS         "\<VisualNOS\>"         contains=@NoSpell
syn match WarningMsg        "\<WarningMsg\>"        contains=@NoSpell
syn match WildMenu          "\<WildMenu\>"          contains=@NoSpell
syn match TitleBar          "\<TitleBar\>"          contains=@NoSpell
syn match TitleBarNC        "\<TitleBarNC\>"        contains=@NoSpell
syn match ToolbarButton     "\<ToolbarButton\>"     contains=@NoSpell
syn match ToolbarLine       "\<ToolbarLine\>"       contains=@NoSpell
syn match PmenuMatch        "\<PmenuMatch\>"        contains=@NoSpell
syn match PmenuMatchSel     "\<PmenuMatchSel\>"     contains=@NoSpell
syn match TabPanel          "\<TabPanel\>"          contains=@NoSpell
syn match TabPanelFill      "\<TabPanelFill\>"      contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Undercurl like in spell errors!
" syn match HLRedUC      "\<HLRedUC\>"      contains=@NoSpell
" syn match HLDarkBlueUC "\<HLDarkBlueUC\>" contains=@NoSpell
" syn match HLFuchsiaUC  "\<HLFuchsiaUC\>"  contains=@NoSpell
" syn match HLCyanUC     "\<HLCyanUC\>"     contains=@NoSpell

" Strikethrough
syn match HLGreyOut              "\<HLGreyOut\>"              contains=@NoSpell
syn match HLStrikeThroughDefault "\<HLStrikeThroughDefault\>" contains=@NoSpell
syn match HLStrikeThroughGrey    "\<HLStrikeThroughGrey\>"    contains=@NoSpell

" Background and foreground mixes
" syn match CyanOnGrey      "\<CyanOnGrey\>"      contains=@NoSpell
" syn match CyanOnGrey3     "\<CyanOnGrey3\>"     contains=@NoSpell
" syn match CyanOnGrey2     "\<CyanOnGrey2\>"     contains=@NoSpell
" syn match CyanOnLightGrey "\<CyanOnLightGrey\>" contains=@NoSpell
" syn match DarkBlueOnTeal  "\<DarkBlueOnTeal\>"  contains=@NoSpell
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" List of all possible gui options (many may not work...).
syn match HLSpecial1       "\<HLSpecial1\>"       contains=@NoSpell
syn match HLSpecial2       "\<HLSpecial2\>"       contains=@NoSpell
syn match HLSpecial3       "\<HLSpecial3\>"       contains=@NoSpell
syn match HLSpecial4       "\<HLSpecial4\>"       contains=@NoSpell
syn match HLSpecial5       "\<HLSpecial5\>"       contains=@NoSpell
syn match HLSpecial6       "\<HLSpecial6\>"       contains=@NoSpell
syn match HLSpecial7       "\<HLSpecial7\>"       contains=@NoSpell
syn match HLSpecial8       "\<HLSpecial8\>"       contains=@NoSpell
syn match HLSpecial9       "\<HLSpecial9\>"       contains=@NoSpell
syn match HLSpecial10      "\<HLSpecial10\>"      contains=@NoSpell
syn match HLSpecial11      "\<HLSpecial11\>"      contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
"                               Vim abbreviations
"------------------------------------------------------------------------------
inorea _vimfunc   " Some description<cr>
            \function! funcname(some_input)<cr>
            \    <bs><cr>
\endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimfunc0  " Some description<cr>
            \function! funcname()<cr>
            \    <bs><cr>
            \endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimif     if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifel   if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifelif if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifelifel if a == b<cr>
            \ <bs><cr>
            \<bs><bs><bs>elseif c == d<cr>
            \ <bs><cr>
            \<bs><bs><bs>else<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimifexists  if exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimifnexists if !exists("g:v")<cr>
            \ <bs><cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimia     inorea replace_word   replace_with<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimahead   \%(\)\@=<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimbehind  \%(\)\@<=<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimso    so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimauso  au  BufNewFile,BufRead * so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea _vimaulet au  BufNewFile,BufRead * let b:v = 'val'<left><right><c-r>=Eatchar('\s')<cr>

inorea _vimaug " Description<cr>
            \augroup group_name<cr>
            \    <bs><cr>
            \   " If you want to clear a group, use "au!" inside the group<cr>
            \au!<cr>
            \ <bs><cr>
            \autocmd BufNewFile,BufRead * command_here<cr>
            \ <bs><cr>
            \<bs><bs><bs>augroup END<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------


" VINOTE: Adding modelines like below in a file adds specific vim commands for
"         that file! The following line adds the colorcolumn line at column 80!
" vim: cc+=80

