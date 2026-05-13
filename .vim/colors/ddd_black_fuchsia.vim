"==============================================================================
" File: ddd_black_fuchsia.vim
"------------------------------------------------------------------------------
" Description: Creates a new colorscheme called ddd_black_fuchsia. This file
"              edits the colors of the built-in vim highlighting groups. Gets
"              loaded by vim if the colorscheme is set to ddd_black_fuchsia.
" NOTE: See also more_colors.vim.
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
if exists("b:highlightings_loaded")
  finish
endif
let g:highlightings_loaded = 1
let g:colors_name = 'ddd_black_fuchsia'

" NOTE: If you change the colors here, you change them in all files for all
"       relevant groups.

"------------------------------------------------------------------------------
" List of Vim highlighting groups and what they match.
"------------------------------------------------------------------------------
" Normal: Default text and background
" Ignore: Text that is hidden/concealed
" EndOfBuffer: Region after the last line in the file/buffer (~)
" LineNr: Line numbers on the side
" LineNrAbove: Line numbers above the cursor line (when relativenumber is set)
" LineNrBelow: Line numbers below the cursor line (when relativenumber is set)
"
" Tag: HTML/XML tags
" Statement: General programming statements (if, for, return, etc.)
" Keyword: Language keywords
" Type: Type names (int, char, etc.)
" Identifier: Variable and function identifiers. This covers variable names:
"             myVariable, counter, userName, g:abc
"
" Label: Case/switch labels, title: labels, "option": labels
" Conditional: Conditional statements (if, else, switch)
" Repeat: Loop constructs (for, while, do)
" String: String literals: "hello world", 'some text', `more text`
" Character: Single character literals ('a', '\n')
"
" Constant: General constants
" Float: Floating point literals (1.0, 3.14)
" Number: Integer numeric literals
" Boolean: Boolean literals (true, false)
" Debug: Things like assert(), debugger, and print statements used for debug.
"
" Special: Special symbols and characters that need to stand out but don't fit
"          elsewhere.
" SpecialChar: Special characters within strings (\n, \t, %d) \%( \)
" Delimiter: Delimiters like brackets, braces, parentheses, commas, colons, <>
"
" Exception: Exception keywords (try, catch, throw)
" NonText: Characters that don't exist in the text (e.g. wrapped line markers)
" Question: Prompt for user input (e.g. hit-enter prompt)
" Comment: Comments
" SpecialComment: Special comments (e.g. doxygen /** */ comments)
"
" StorageClass: Storage class keywords (static, register, volatile, extern)
" Function: A sub-group of Identifier specifically for function/method names.
" Operator: Operators (+, -, *, /, etc.)
"
" Macro: A sub-group of PreProc for macro definitions and macro names. Example:
"        #define MY_MACRO 123
" Define: #define directives
" PreCondit: Preprocessor conditionals (#ifdef, #endif, etc.)
" PreProc: General preprocessor directives Examples:
"          #include <stdio.h>   #ifdef DEBUG   #pragma once
" Include: #include directives
"
" Typedef: typedef declarations
" Structure: struct/union/class/enum declarations
" Underlined: Text that should be underlined (e.g. URLs)
"
" Cursor: The flashing cursor where text is typed
" lCursor: Cursor when using an input method (language-map)
" CursorColumn: Column of the cursor (when cursorcolumn is set)
" CursorLine: Line of the cursor (when cursorline is set)
" CursorLineNr: Line number of the cursor line (when cursorline is set)
" ColorColumn: Column highlighted by set cc or colorcolumn option
"
" StatusLine: Active status line of the current window (where info such as the
"             filename, line/column number and percentage are displayed)
" StatusLineNC: Status lines of non-current windows
" VertSplit: Column dividing vertically split windows
" Terminal: Text inside a :terminal buffer (a terminal emulator inside Vim).
" StatusLineTerm: Status line for a terminal buffer (active)
" StatusLineTermNC: Status line for a terminal buffer (inactive)
"
" Search: Previous search pattern highlight
" CurSearch: Current search match (the one the cursor is on)
" IncSearch: Incremental search match while typing
"
" Pmenu: Popup menu (autocomplete, etc.)
" PmenuSel: Selected item in the popup menu
" PmenuSbar: Scrollbar of the popup menu
" PmenuThumb: Scrollbar thumb in the popup menu
" PmenuMatch: Matching characters in popup menu items
" PmenuMatchSel: Matching characters in the selected popup menu item
"
" MatchParen: Matching bracket/paren/brace highlight
" Note: Note annotations (e.g. in diagnostics)
" Todo: TODO/FIXME/HACK/XXX comment keywords
" Error: Syntax and other errors
"
" TabLine: Tabline at the top of the screen when using tabs.
" TabLineSel: The currently active/selected tab in the tabline
" TabLineFill: Fill area of the tabline (after the last tab label)
" TabPanel: Tab panel sidebar
" TabPanelFill: Fill area of the tab panel
"
" DiffAdd: Added lines in diff mode
" DiffChange: Changed lines in diff mode
" DiffDelete: Deleted lines in diff mode
" DiffText: Changed text within a changed line in diff mode
"
" Conceal: Concealed text (hidden by the conceallevel option)
" Folded: Closed fold lines
" FoldColumn: Fold indicator column (foldcolumn option)
" SignColumn: Column used for signs (e.g. LSP diagnostics, git changes)
" CursorLineFold: Fold indicator on the cursor line
" CursorLineSign: Sign column on the cursor line
"
" Directory: Directory names in listings
" SpecialKey: Unprintable characters shown as special symbols (e.g. ^I)
" Title: Titles in output (e.g. :set all, help headings)
" MoreMsg: More-prompt (-- More --)
"
" Visual: Visual mode selection
" VisualNOS: Visual mode selection when vim is not the focused application
"
" WarningMsg: Warning messages
" SpellBad: Spell check: word not recognized
" SpellCap: Spell check: word should be capitalized
" SpellLocal: Spell check: word recognized in another region
" SpellRare: Spell check: word rarely used
"
" CursorIM: The cursor highlight when an Input Method Editor (IME) is active.
"           Relevant for typing Chinese, Japanese, Korean (CJK) characters
" TitleBar: Title bar of the GUI window (active)
" TitleBarNC: Title bar of the GUI window (inactive)
" ToolbarButton: The clickable buttons in the toolbar (bold, save, open etc.)
" ToolbarLine: The background line/bar that the toolbar buttons sit on.
" ModeMsg: The text Vim shows at the bottom left when you enter a mode.
"          Example  -- INSERT --   -- VISUAL --   -- REPLACE --
"
" MessageWindow: A floating window used to display messages, hover
"                documentation (LSP hover), or other informational popups.
"
" PopupNotification: Floating popup notifications
" WildMenu: Wildmenu completion matches (command-line tab completion)
"           When you type :command and press Tab, a completion menu appears.
" ErrorMsg: Error messages in the command area
" QuickFixLine: Current line in the quickfix/location list window
"------------------------------------------------------------------------------

" May be needed just in case something goes wrong
set background=dark

" NOTE: You can find a list of vim's colorschemes in $VIMRUNTIME/colors/
" Vim default groups
"------------------------------------------------------------------------------
" NOTE: See ":help highlight-groups" for all the default highlighting groups.
" NOTE: You can see the current settings with the ":highlight" command.

" Set default text and background color.
hi Normal            cterm=NONE gui=NONE ctermfg=252  guifg=grey80      ctermbg=232  guibg=grey1      guisp=NONE
hi Ignore            cterm=NONE gui=NONE ctermfg=252  guifg=grey80      ctermbg=232  guibg=grey1      guisp=NONE
hi TitleBar          cterm=bold gui=bold ctermfg=252  guifg=grey80      ctermbg=232  guibg=grey1      guisp=NONE
hi EndOfBuffer       cterm=NONE gui=NONE ctermfg=201  guifg=fuchsia     ctermbg=233  guibg=grey5      guisp=NONE
hi LineNr            cterm=NONE gui=NONE ctermfg=201  guifg=fuchsia     ctermbg=NONE guibg=NONE       guisp=NONE

hi Statement         cterm=bold gui=bold ctermfg=184  guifg=yellow      ctermbg=NONE guibg=NONE       guisp=NONE
hi Keyword           cterm=bold gui=bold ctermfg=184  guifg=yellow      ctermbg=NONE guibg=NONE       guisp=NONE
hi Type              cterm=bold gui=bold ctermfg=46   guifg=green       ctermbg=NONE guibg=NONE       guisp=NONE
hi Identifier        cterm=NONE gui=NONE ctermfg=46   guifg=green       ctermbg=NONE guibg=NONE       guisp=NONE
hi Character         cterm=NONE gui=NONE ctermfg=34   guifg=green3      ctermbg=NONE guibg=NONE       guisp=NONE
hi String            cterm=NONE gui=NONE ctermfg=34   guifg=green4      ctermbg=NONE guibg=NONE       guisp=NONE
hi Label             cterm=bold gui=bold ctermfg=46   guifg=green       ctermbg=NONE guibg=NONE       guisp=NONE
hi Conditional       cterm=bold gui=bold ctermfg=22   guifg=darkgreen   ctermbg=NONE guibg=NONE       guisp=NONE
hi Repeat            cterm=bold gui=bold ctermfg=22   guifg=darkgreen   ctermbg=NONE guibg=NONE       guisp=NONE

hi Constant          cterm=NONE gui=NONE ctermfg=33   guifg=dodgerblue  ctermbg=NONE guibg=NONE       guisp=NONE
hi Float             cterm=NONE gui=NONE ctermfg=14   guifg=cyan        ctermbg=NONE guibg=NONE       guisp=NONE
hi Number            cterm=NONE gui=NONE ctermfg=14   guifg=cyan        ctermbg=NONE guibg=NONE       guisp=NONE
hi Boolean           cterm=NONE gui=NONE ctermfg=14   guifg=cyan        ctermbg=NONE guibg=NONE       guisp=NONE
hi Debug             cterm=bold gui=bold ctermfg=30   guifg=teal        ctermbg=NONE guibg=NONE       guisp=NONE

hi Special           cterm=bold gui=bold ctermfg=33   guifg=dodgerblue  ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialChar       cterm=NONE gui=NONE ctermfg=184  guifg=yellow      ctermbg=NONE guibg=NONE       guisp=NONE
hi Delimiter         cterm=bold gui=bold ctermfg=208  guifg=darkorange  ctermbg=NONE guibg=NONE       guisp=NONE

hi Exception         cterm=NONE gui=NONE ctermfg=196  guifg=red2        ctermbg=NONE guibg=NONE       guisp=NONE
hi NonText           cterm=bold gui=bold ctermfg=196  guifg=red2        ctermbg=NONE guibg=NONE       guisp=NONE
hi Question          cterm=bold gui=bold ctermfg=205  guifg=hotpink     ctermbg=NONE guibg=NONE       guisp=NONE
hi Comment           cterm=NONE gui=NONE ctermfg=201  guifg=fuchsia     ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialComment    cterm=NONE gui=NONE ctermfg=129  guifg=purple      ctermbg=NONE guibg=NONE       guisp=NONE

hi StorageClass      cterm=bold gui=bold ctermfg=178  guifg=orange      ctermbg=NONE guibg=NONE       guisp=NONE
hi Function          cterm=bold gui=bold ctermfg=208  guifg=darkorange  ctermbg=NONE guibg=NONE       guisp=NONE
hi Operator          cterm=bold gui=bold ctermfg=202  guifg=orangered   ctermbg=NONE guibg=NONE       guisp=NONE
hi Macro             cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Define            cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi PreCondit         cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi PreProc           cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Include           cterm=bold gui=bold ctermfg=166  guifg=darkorange3 ctermbg=NONE guibg=NONE       guisp=NONE
hi Typedef           cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi Structure         cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi Underlined        cterm=NONE gui=NONE ctermfg=100  guifg=olive       ctermbg=NONE guibg=NONE       guisp=NONE
hi Tag               cterm=bold gui=bold ctermfg=101  guifg=khaki4      ctermbg=NONE guibg=NONE       guisp=NONE

hi Cursor            cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=15   guibg=white      guisp=NONE
hi CursorColumn      cterm=NONE gui=NONE ctermfg=NONE guifg=NONE        ctermbg=235  guibg=grey20     guisp=NONE
hi CursorLine        cterm=NONE gui=NONE ctermfg=NONE guifg=NONE        ctermbg=235  guibg=grey20     guisp=NONE
hi CursorLineNr      cterm=bold gui=bold ctermfg=130  guifg=sienna      ctermbg=NONE guibg=NONE       guisp=NONE
hi ColorColumn       cterm=NONE gui=NONE ctermfg=236  guifg=grey30      ctermbg=234  guibg=grey10     guisp=NONE

hi StatusLine        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=201  guibg=fuchsia    guisp=NONE
hi StatusLineNC      cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=129  guibg=purple     guisp=NONE
hi VertSplit         cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=129  guibg=purple     guisp=NONE

hi Search            cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=201  guibg=fuchsia    guisp=NONE
hi CurSearch         cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=129  guibg=purple     guisp=NONE
hi IncSearch         cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=129  guibg=purple     guisp=NONE

hi Pmenu             cterm=NONE gui=NONE ctermfg=15   guifg=white       ctermbg=234  guibg=grey10     guisp=NONE
hi PmenuSel          cterm=NONE gui=NONE ctermfg=15   guifg=white       ctermbg=235  guibg=grey20     guisp=NONE
hi PmenuSbar         cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=15   guibg=white      guisp=NONE
hi PmenuThumb        cterm=NONE gui=NONE ctermfg=16   guifg=black       ctermbg=46   guibg=green      guisp=NONE

hi MatchParen        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=30   guibg=teal       guisp=NONE
hi Note              cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=46   guibg=green      guisp=NONE
hi Todo              cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=214  guibg=orange     guisp=NONE
hi Error             cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=red  guibg=red2       guisp=NONE
hi ErrorMsg          cterm=bold gui=bold ctermfg=15   guifg=white       ctermbg=red  guibg=red2       guisp=NONE

hi DiffAdd           cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=48   guibg=lightgreen guisp=NONE
hi DiffChange        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=81   guibg=skyblue    guisp=NONE
hi DiffDelete        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=240  guibg=grey40     guisp=NONE
hi DiffText          cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=33   guibg=dodgerblue guisp=NONE

hi TabLine           cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=240  guibg=grey40     guisp=NONE

hi Conceal           cterm=NONE gui=NONE ctermfg=7    guifg=LightGrey   ctermbg=242  guibg=DarkGrey   guisp=NONE
hi Folded            cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=15   guibg=white      guisp=NONE
hi FoldColumn        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=248  guibg=grey70     guisp=NONE
hi SignColumn        cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=248  guibg=grey70     guisp=NONE

hi Directory         cterm=NONE gui=NONE ctermfg=100  guifg=olive       ctermbg=NONE guibg=NONE       guisp=NONE
hi SpecialKey        cterm=NONE gui=NONE ctermfg=20   guifg=blue        ctermbg=NONE guibg=NONE       guisp=NONE
hi Title             cterm=bold gui=bold ctermfg=198  guifg=deeppink    ctermbg=NONE guibg=NONE       guisp=NONE
hi MoreMsg           cterm=bold gui=bold ctermfg=203  guifg=tomato1     ctermbg=NONE guibg=NONE       guisp=NONE

hi Visual            cterm=bold gui=bold ctermfg=16   guifg=black       ctermbg=201  guibg=fuchsia    guisp=NONE
hi VisualNOS cterm=bold,underline gui=bold,underline ctermfg=252 guifg=grey80 ctermbg=232 guibg=grey1 guisp=NONE

hi WarningMsg        cterm=underline gui=underline ctermfg=196 guifg=red2 ctermbg=NONE guibg=NONE guisp=NONE
hi SpellBad          cterm=underline gui=undercurl ctermfg=196 guifg=NONE ctermbg=NONE guibg=NONE guisp=red
hi SpellCap          cterm=underline gui=undercurl ctermfg=20  guifg=NONE ctermbg=NONE guibg=NONE guisp=blue
hi SpellLocal        cterm=underline gui=undercurl ctermfg=30  guifg=NONE ctermbg=NONE guibg=NONE guisp=darkcyan
hi SpellRare         cterm=underline gui=undercurl ctermfg=201 guifg=NONE ctermbg=NONE guibg=NONE guisp=magenta
"------------------------------------------------------------------------------
hi! link TitleBarNC        Normal

hi! link ToolbarButton     Normal
hi! link ToolbarLine       Normal

hi! link PmenuMatch        Normal
hi! link PmenuMatchSel     Normal

hi! link ModeMsg           Normal
hi! link Terminal          Normal
hi! link StatusLineTerm    StatusLine
hi! link StatusLineTermNC  StatusLineNC

hi! link MessageWindow     Normal

hi! link TabPanel          Normal
hi! link TabPanelFill      EndOfBuffer
hi! link TabLineSel        StatusLineNC
hi! link TabLineFill       CursorLine

hi! link LineNrAbove       LineNr
hi! link LineNrBelow       LineNr

hi! link PopupNotification Exception

hi! link CursorLineFold    CursorLine
hi! link CursorLineSign    CursorLine

hi! link CursorIM          Normal
hi! link lCursor           Cursor

hi! link WildMenu          Todo
hi! link QuickFixLine      Search
"------------------------------------------------------------------------------

