"==============================================================================
" File: vim.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all vim files.
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

if !exists("g:syntax_on")
   finish
endif

" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:vim_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "vim.vim syntax file loaded"
endif
let b:vim_loaded = 1

" NOTE: Guards against double loading if syntax filetype1 loads filetype2.
if exists("b:current_syntax") && b:current_syntax == "vim"
   source $vim_folder_path/more_colors.vim
   source $vim_folder_path/syntax_library.vim
   source $vim_folder_path/regex.vim
   source $vim_folder_path/abbrev.vim

   " NOTE: Moving these here to re-source on file/syntax reload.
   if expand('%:t') =~ '^math_mappings\.vim$'
      source $vim_folder_path/after/syntax/shared/math_mappings.vim
   endif
   if expand('%:t') =~# '\(math_mappings\|math\|unicode\)\.vim$'
      source $vim_folder_path/after/syntax/shared/unicode.vim
   endif
   if expand('%:t') =~ '^all_colors\.vim$'
      source $vim_folder_path/colors/all_colors.vim
      finish
   endif

   " I use my own TODO/NOTE matching
   if hlexists('vimTodo')
      syn clear vimTodo
   endif
   " I use my own Titles
   if hlexists('vimCommentTitle')
      syn clear vimCommentTitle
   endif


   call AllFilesDefaultSyntax()

   call AllDefineAt()
   call RegexMatches(1)
   call SpRegexSearches(1)
   call RegexMatchesVim(0)
   call AllPathsSingleSlashStart(1)
endif


" Update the Colors of some syntax groups
hi! link vimSynPatRange    Constant
hi! link vimSynRegPat      Normal
hi! link vimWildcardStar   Question
hi! link vimNotFunc        Conditional
hi! link vimElse           Conditional
hi! link vimEndif          Conditional
hi! link vimBracket        Normal
hi! link vimMapMod         Normal
hi! link vimMapLeader      Normal
hi! link vimVar            Identifier

hi  link    VimEquality  Operator
syn match   VimEquality  "==#\?"                  contained containedin=vimMapRhs

hi  link    VimQuestion  Question
syn match   VimQuestion  "\s[?!:]\(\s\|$\)\@=" contained containedin=vimMapRhs

hi  link    VimVariable  Identifier
syn match   VimVariable  "\<[bwglstav]:[a-zA-Z0-9_]\+" contained containedin=vimMapRhs

hi  link    VimEnvVar   PreProc
syn match   VimEnvVar   "\$\I\i\+"   contained containedin=vimMapRhs
syn match   VimEnvVar   "\${\I\i\+}" contained containedin=vimMapRhs

hi  link    VimStatement  Statement
syn match   VimStatement  ":[a-zA-Z][a-zA-Z0-9]\+\>" contained containedin=vimMapRhs

hi  link    VimEatChar  Type
syn match   VimEatChar  "\<Eatchar\>" contained containedin=vimMapRhs

hi  link    VimLtCSA  Constant
syn match   VimLtCSA  "\\<lt>[^>]*>"hs=s+2,he=e-1 contained containedin=vimMapRhs

"------------------------------------------------------------------------------
" Vim default groups
syn cluster ClusterColorCI contains=vimCommentTitle,vimSynKeyRegion,vimHiKeyList,vimHiLink,AllComLabel
syn keyword Comment           Comment           contained containedin=@ClusterColorCI
syn keyword Constant          Constant          contained containedin=@ClusterColorCI
syn keyword String            String            contained containedin=@ClusterColorCI
syn keyword Character         Character         contained containedin=@ClusterColorCI
syn keyword Number            Number            contained containedin=@ClusterColorCI
syn keyword Boolean           Boolean           contained containedin=@ClusterColorCI
syn keyword Float             Float             contained containedin=@ClusterColorCI
syn keyword Identifier        Identifier        contained containedin=@ClusterColorCI
syn keyword Function          Function          contained containedin=@ClusterColorCI
syn keyword Statement         Statement         contained containedin=@ClusterColorCI
syn keyword Conditional       Conditional       contained containedin=@ClusterColorCI
syn keyword Repeat            Repeat            contained containedin=@ClusterColorCI
syn keyword Label             Label             contained containedin=@ClusterColorCI
syn keyword Operator          Operator          contained containedin=@ClusterColorCI
syn keyword Keyword           Keyword           contained containedin=@ClusterColorCI
syn keyword Exception         Exception         contained containedin=@ClusterColorCI
syn keyword PreProc           PreProc           contained containedin=@ClusterColorCI
syn keyword Include           Include           contained containedin=@ClusterColorCI
syn keyword Define            Define            contained containedin=@ClusterColorCI
syn keyword Macro             Macro             contained containedin=@ClusterColorCI
syn keyword PreCondit         PreCondit         contained containedin=@ClusterColorCI
syn keyword Type              Type              contained containedin=@ClusterColorCI
syn keyword StorageClass      StorageClass      contained containedin=@ClusterColorCI
syn keyword Structure         Structure         contained containedin=@ClusterColorCI
syn keyword Typedef           Typedef           contained containedin=@ClusterColorCI
syn keyword Special           Special           contained containedin=@ClusterColorCI
syn keyword SpecialChar       SpecialChar       contained containedin=@ClusterColorCI
syn keyword Tag               Tag               contained containedin=@ClusterColorCI
syn keyword Delimiter         Delimiter         contained containedin=@ClusterColorCI
syn keyword SpecialComment    SpecialComment    contained containedin=@ClusterColorCI
syn keyword Debug             Debug             contained containedin=@ClusterColorCI
syn keyword Underlined        Underlined        contained containedin=@ClusterColorCI
syn keyword Ignore            Ignore            contained containedin=@ClusterColorCI
syn keyword Error             Error             contained containedin=@ClusterColorCI
syn keyword Todo              Todo              contained containedin=@ClusterColorCI
syn keyword ColorColumn       ColorColumn       contained containedin=@ClusterColorCI
syn keyword Conceal           Conceal           contained containedin=@ClusterColorCI
syn keyword Cursor            Cursor            contained containedin=@ClusterColorCI
syn keyword lCursor           lCursor           contained containedin=@ClusterColorCI
syn match   lCursor          "lCursor\%(:\)\@=" contained containedin=vimLineComment
syn keyword CursorIM          CursorIM          contained containedin=@ClusterColorCI
syn keyword CursorColumn      CursorColumn      contained containedin=@ClusterColorCI
syn keyword CursorLine        CursorLine        contained containedin=@ClusterColorCI
syn keyword Directory         Directory         contained containedin=@ClusterColorCI
syn keyword DiffAdd           DiffAdd           contained containedin=@ClusterColorCI
syn keyword DiffChange        DiffChange        contained containedin=@ClusterColorCI
syn keyword DiffDelete        DiffDelete        contained containedin=@ClusterColorCI
syn keyword DiffText          DiffText          contained containedin=@ClusterColorCI
syn keyword EndOfBuffer       EndOfBuffer       contained containedin=@ClusterColorCI
syn keyword ErrorMsg          ErrorMsg          contained containedin=@ClusterColorCI
syn keyword VertSplit         VertSplit         contained containedin=@ClusterColorCI
syn keyword Folded            Folded            contained containedin=@ClusterColorCI
syn keyword FoldColumn        FoldColumn        contained containedin=@ClusterColorCI
syn keyword SignColumn        SignColumn        contained containedin=@ClusterColorCI
syn keyword IncSearch         IncSearch         contained containedin=@ClusterColorCI
syn keyword LineNr            LineNr            contained containedin=@ClusterColorCI
syn keyword LineNrAbove       LineNrAbove       contained containedin=@ClusterColorCI
syn keyword LineNrBelow       LineNrBelow       contained containedin=@ClusterColorCI
syn keyword CursorLineNr      CursorLineNr      contained containedin=@ClusterColorCI
syn keyword CursorLineFold    CursorLineFold    contained containedin=@ClusterColorCI
syn keyword CursorLineSign    CursorLineSign    contained containedin=@ClusterColorCI
syn keyword MatchParen        MatchParen        contained containedin=@ClusterColorCI
syn keyword MessageWindow     MessageWindow     contained containedin=@ClusterColorCI
syn keyword ModeMsg           ModeMsg           contained containedin=@ClusterColorCI
syn keyword MoreMsg           MoreMsg           contained containedin=@ClusterColorCI
syn keyword NonText           NonText           contained containedin=@ClusterColorCI
syn keyword Normal            Normal            contained containedin=@ClusterColorCI
syn keyword Pmenu             Pmenu             contained containedin=@ClusterColorCI
syn keyword PmenuSel          PmenuSel          contained containedin=@ClusterColorCI
syn keyword PmenuKind         PmenuKind         contained containedin=@ClusterColorCI
syn keyword PmenuKindSel      PmenuKindSel      contained containedin=@ClusterColorCI
syn keyword PmenuExtra        PmenuExtra        contained containedin=@ClusterColorCI
syn keyword PmenuExtraSel     PmenuExtraSel     contained containedin=@ClusterColorCI
syn keyword PmenuSbar         PmenuSbar         contained containedin=@ClusterColorCI
syn keyword PmenuThumb        PmenuThumb        contained containedin=@ClusterColorCI
syn keyword PopupNotification PopupNotification contained containedin=@ClusterColorCI
syn keyword Question          Question          contained containedin=@ClusterColorCI
syn keyword QuickFixLine      QuickFixLine      contained containedin=@ClusterColorCI
syn keyword Search            Search            contained containedin=@ClusterColorCI
syn keyword CurSearch         CurSearch         contained containedin=@ClusterColorCI
syn keyword SpecialKey        SpecialKey        contained containedin=@ClusterColorCI
syn keyword SpellBad          SpellBad          contained containedin=@ClusterColorCI
syn keyword SpellCap          SpellCap          contained containedin=@ClusterColorCI
syn keyword SpellLocal        SpellLocal        contained containedin=@ClusterColorCI
syn keyword SpellRare         SpellRare         contained containedin=@ClusterColorCI
syn keyword StatusLine        StatusLine        contained containedin=@ClusterColorCI
syn keyword StatusLineNC      StatusLineNC      contained containedin=@ClusterColorCI
syn keyword StatusLineTerm    StatusLineTerm    contained containedin=@ClusterColorCI
syn keyword StatusLineTermNC  StatusLineTermNC  contained containedin=@ClusterColorCI
syn keyword TabLine           TabLine           contained containedin=@ClusterColorCI
syn keyword TabLineFill       TabLineFill       contained containedin=@ClusterColorCI
syn keyword TabLineSel        TabLineSel        contained containedin=@ClusterColorCI
syn keyword Terminal          Terminal          contained containedin=@ClusterColorCI
syn keyword Title             Title             contained containedin=@ClusterColorCI
syn keyword Visual            Visual            contained containedin=@ClusterColorCI
syn keyword VisualNOS         VisualNOS         contained containedin=@ClusterColorCI
syn keyword WarningMsg        WarningMsg        contained containedin=@ClusterColorCI
syn keyword WildMenu          WildMenu          contained containedin=@ClusterColorCI
syn keyword TitleBar          TitleBar          contained containedin=@ClusterColorCI
syn keyword TitleBarNC        TitleBarNC        contained containedin=@ClusterColorCI
syn keyword ToolbarButton     ToolbarButton     contained containedin=@ClusterColorCI
syn keyword ToolbarLine       ToolbarLine       contained containedin=@ClusterColorCI
syn keyword PmenuMatch        PmenuMatch        contained containedin=@ClusterColorCI
syn keyword PmenuMatchSel     PmenuMatchSel     contained containedin=@ClusterColorCI
syn keyword TabPanel          TabPanel          contained containedin=@ClusterColorCI
syn keyword TabPanelFill      TabPanelFill      contained containedin=@ClusterColorCI

" NeoVim only
syn keyword NormalNC          NormalNC          contained containedin=@ClusterColorCI
syn keyword WinSeparator      WinSeparator      contained containedin=@ClusterColorCI
syn keyword WinBar            WinBar            contained containedin=@ClusterColorCI
syn keyword WinBarNC          WinBarNC          contained containedin=@ClusterColorCI
syn keyword Substitute        Substitute        contained containedin=@ClusterColorCI
syn keyword FloatBorder       FloatBorder       contained containedin=@ClusterColorCI
syn keyword FloatTitle        FloatTitle        contained containedin=@ClusterColorCI
syn keyword FloatFooter       FloatFooter       contained containedin=@ClusterColorCI

"------------------------------------------------------------------------------
" This will color the highlighting group names with the color they are mapped
" to and throughout the .vim files.
"------------------------------------------------------------------------------
" Custom syntax groups
syn cluster ClusterColorCSG contains=vimSynKeyRegion,vimHiGroup,vimHiLink,vimHiKeyList,vimLineComment
syn keyword HLSiennaB             HLSiennaB                contained containedin=@ClusterColorCSG
syn keyword HLBrownB              HLBrownB                 contained containedin=@ClusterColorCSG
syn keyword HLRed2B               HLRed2B                  contained containedin=@ClusterColorCSG
syn keyword HLOrangeredB          HLOrangeredB             contained containedin=@ClusterColorCSG
syn keyword HLDarkorange3B        HLDarkorange3B           contained containedin=@ClusterColorCSG
syn keyword HLDarkorangeB         HLDarkorangeB            contained containedin=@ClusterColorCSG
syn keyword HLOrangeB             HLOrangeB                contained containedin=@ClusterColorCSG
syn keyword HLTomato1B            HLTomato1B               contained containedin=@ClusterColorCSG
syn keyword HLHotpinkB            HLHotpinkB               contained containedin=@ClusterColorCSG
syn keyword HLDeeppinkB           HLDeeppinkB              contained containedin=@ClusterColorCSG
syn keyword HLDeeppink4B          HLDeeppink4B             contained containedin=@ClusterColorCSG
syn keyword HLMagenta4B           HLMagenta4B              contained containedin=@ClusterColorCSG
syn keyword HLFuchsiaB            HLFuchsiaB               contained containedin=@ClusterColorCSG
syn keyword HLPurpleB             HLPurpleB                contained containedin=@ClusterColorCSG
syn keyword HLPurple4B            HLPurple4B               contained containedin=@ClusterColorCSG
syn keyword HLNavyB               HLNavyB                  contained containedin=@ClusterColorCSG
syn keyword HLBlue                HLBlue                   contained containedin=@ClusterColorCSG
syn keyword HLBlueB               HLBlueB                  contained containedin=@ClusterColorCSG
syn keyword HLMediumslateblueB    HLMediumslateblueB       contained containedin=@ClusterColorCSG
syn keyword HLDeepskyblue4B       HLDeepskyblue4B          contained containedin=@ClusterColorCSG
syn keyword HLDodgerblueB         HLDodgerblueB            contained containedin=@ClusterColorCSG
syn keyword HLDeepskyblueB        HLDeepskyblueB           contained containedin=@ClusterColorCSG
syn keyword HLCyanB               HLCyanB                  contained containedin=@ClusterColorCSG
syn keyword HLYellowB             HLYellowB                contained containedin=@ClusterColorCSG
syn keyword HLYellowgreenB        HLYellowgreenB           contained containedin=@ClusterColorCSG
syn keyword HLGreen               HLGreen                  contained containedin=@ClusterColorCSG
syn keyword HLGreenB              HLGreenB                 contained containedin=@ClusterColorCSG
syn keyword HLGreen3              HLGreen3                 contained containedin=@ClusterColorCSG
syn keyword HLGreen3B             HLGreen3B                contained containedin=@ClusterColorCSG
syn keyword HLOlive               HLOlive                  contained containedin=@ClusterColorCSG
syn keyword HLOliveB              HLOliveB                 contained containedin=@ClusterColorCSG
syn keyword HLKhaki4              HLKhaki4                 contained containedin=@ClusterColorCSG
syn keyword HLKhaki4B             HLKhaki4B                contained containedin=@ClusterColorCSG

syn keyword HLGrey30              HLGrey30                 contained containedin=@ClusterColorCSG
syn keyword HLGrey30B             HLGrey30B                contained containedin=@ClusterColorCSG
syn keyword HLGrey40B             HLGrey40B                contained containedin=@ClusterColorCSG
syn keyword HLGrey50B             HLGrey50B                contained containedin=@ClusterColorCSG
syn keyword HLWhiteB              HLWhiteB                 contained containedin=@ClusterColorCSG

syn keyword HLGrey60B             HLGrey60B                contained containedin=@ClusterColorCSG
syn keyword HLLightmagentaB       HLLightmagentaB          contained containedin=@ClusterColorCSG
syn keyword HLSkyblueB            HLSkyblueB               contained containedin=@ClusterColorCSG
syn keyword HLMediumaquamarineB   HLMediumaquamarineB      contained containedin=@ClusterColorCSG
syn keyword HLSpringgreenB        HLSpringgreenB           contained containedin=@ClusterColorCSG
syn keyword HLKhakiB              HLKhakiB                 contained containedin=@ClusterColorCSG
syn keyword HLTan1B               HLTan1B
syn keyword HLSalmonB             HLSalmonB                contained containedin=@ClusterColorCSG

syn keyword HLRedBU               HLRedBU                  contained containedin=@ClusterColorCSG
syn keyword HLOrangeredBU         HLOrangeredBU            contained containedin=@ClusterColorCSG
syn keyword HLYellowBU            HLYellowBU               contained containedin=@ClusterColorCSG
syn keyword HLGreenBU             HLGreenBU                contained containedin=@ClusterColorCSG
syn keyword HLDodgerblueBU        HLDodgerblueBU           contained containedin=@ClusterColorCSG
syn keyword HLHotpinkBU           HLHotpinkBU              contained containedin=@ClusterColorCSG

syn keyword HLGrey80BgB           HLGrey80BgB              contained containedin=@ClusterColorCSG
syn keyword HLGrey10BgB           HLGrey10BgB              contained containedin=@ClusterColorCSG
syn keyword HLGrey15BgB           HLGrey15BgB              contained containedin=@ClusterColorCSG
syn keyword HLOrangered1BgB       HLOrangered1BgB          contained containedin=@ClusterColorCSG
syn keyword HLOrangeBgB           HLOrangeBgB              contained containedin=@ClusterColorCSG
syn keyword HLYellow3BgB          HLYellow3BgB             contained containedin=@ClusterColorCSG
syn keyword HLGreen3BgB           HLGreen3BgB              contained containedin=@ClusterColorCSG
syn keyword HLGreen1BgB           HLGreen1BgB              contained containedin=@ClusterColorCSG
syn keyword HLRedBgB              HLRedBgB                 contained containedin=@ClusterColorCSG
"------------------------------------------------------------------------------
" Strikethrough
syn keyword HLGreyOut              HLGreyOut               contained containedin=@ClusterColorCSG
syn keyword HLStrikeThroughDefault HLStrikeThroughDefault  contained containedin=@ClusterColorCSG
syn keyword HLStrikeThroughGrey    HLStrikeThroughGrey     contained containedin=@ClusterColorCSG
syn keyword HLBarelyVisible        HLBarelyVisible         contained containedin=@ClusterColorCSG
"------------------------------------------------------------------------------
" List of all possible gui options (many may not work...).
syn keyword HLSpecial1             HLSpecial1              contained containedin=@ClusterColorCSG
syn keyword HLSpecial2             HLSpecial2              contained containedin=@ClusterColorCSG
syn keyword HLSpecial3             HLSpecial3              contained containedin=@ClusterColorCSG
syn keyword HLSpecial4             HLSpecial4              contained containedin=@ClusterColorCSG
syn keyword HLSpecial5             HLSpecial5              contained containedin=@ClusterColorCSG
syn keyword HLSpecial6             HLSpecial6              contained containedin=@ClusterColorCSG
syn keyword HLSpecial7             HLSpecial7              contained containedin=@ClusterColorCSG
syn keyword HLSpecial8             HLSpecial8              contained containedin=@ClusterColorCSG
syn keyword HLSpecial9             HLSpecial9              contained containedin=@ClusterColorCSG
syn keyword HLSpecial10            HLSpecial10             contained containedin=@ClusterColorCSG
syn keyword HLSpecial11            HLSpecial11             contained containedin=@ClusterColorCSG
"------------------------------------------------------------------------------


