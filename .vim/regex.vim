
let g:supports_regex=1

" NOTE: Inside a character class like [ ], the dot . and $ loses its special meaning and matches a literal dot . and $

" clear/set colors of special characters in regular expression for visibility
syn match   NoColor        "[!?]"
syn match   NoColor        "[+%]"
syn match   NoColor        "[&|><]"
syn match   NoColor        "`"

"syn match   RedColor       "\~" "removes path highlighting
syn match   RedColor       "$"
syn match   RedColor       "-"
syn match   NoColor        "[{}()]"
syn match   BlueColor      "[][]"
syn match   Pink2Colorb    "*"

syn match   NoColor        "`"
syn match   NoColor        "'"
if exists("b:comment_leader")
   if b:comment_leader != '"'
      syn match   NoColor        '"'
   endif
   if b:comment_leader != '#'
      syn match   NoColor        "#"
   else
      syn match   NoColor        "\(\S.*\)\@<=#"
   endif
   "overrites linux paths, plus already set red in all_pre
   "if b:comment_leader == '//'
   "   "syn match   RedColor       "\(\/\)\@<!\/\(\/\)\@!"
   "else
   "   "syn match   RedColor       "/" " removes path highlighting
   "endif
else
      " syn match   RedColor       "/"
      syn match   NoColor        '"'
endif

" ranges
syn match   BlueColor      "\(\[.*\)\@<=\([a-z]-[a-z]\|[A-Z]-[A-Z]\|[0-9]-[0-9]\)\(.*\]\)\@=" contains=@NoSpell
"syn match   BlueColor      "\(\[.*\)\@<=[A-Z]-[A-Z]\(\].*\)\@="
"syn match   CyanColor      "\(\[.*\)\@<=[0-9]-[0-9]\(\].*\)\@="
"syn match   BlueColor      "\[[a-z]-[a-z]\]"
"syn match   BlueColor      "\[[A-Z]-[A-Z]\]"
"syn match   CyanColor      "\[[0-9]-[0-9]\]"

" special combinations ctrl/shift/alt
syn case ignore
   " syn match   BlueColor      "\(<\)\@<=\(lt>\)\?[csa]\-\([csa]\-\)\?.\(>\)\@=" contains=@NoSpell
   " syn match   BlueColor      "\(<\)\@<=\(lt>\)\?bar\(>\)\@=" contains=@NoSpell
   syn match   BlueColor      "\(<\)\@<=\([csa]\-\)\=\(bs\|esc\|cr\|tab\|space\|leader\|middlemouse\|leftmouse\|rightmouse\|pageup\|pagedown\|backspace\|bar\)\(>\)\@=" contains=@NoSpell
syn case match

"escaped colors
syn match   RedColor       "\\"
syn match   NoColor        "\\[\.\[\]\$\\\-'\"~]"
syn match   NoColor        "\\\/"
syn match   CyanColorb     "\\<"
syn match   CyanColor      "\\<lt>" contains=@NoSpell
syn match   CyanColorb     "\\>"
syn match   RedColor       "\^"
syn match   OrangeColorb   "\\|"
syn match   YellowColorb   "\\%("
syn match   YellowColorb   "\\("
syn match   YellowColorb   "\\)"
syn match   GreenColorb    "\\@<="
syn match   GreenColorb    "\\@="
syn match   GreenColorb    "\\zs" contains=@NoSpell
syn match   GreenColorb    "\\ze" contains=@NoSpell
syn match   PinkColorb     "\\@<!"
syn match   PinkColorb     "\\@!"
syn match   Pink2Colorb    "\\+"
syn match   Pink2Colorb    "\\?"
syn match   Pink2Colorb    "\\="

syn match   BlueColor      "\\s" contains=@NoSpell
syn match   BlueColor      "\\S" contains=@NoSpell
syn match   BlueColor      "\\d" contains=@NoSpell
syn match   BlueColor      "\\D" contains=@NoSpell
syn match   BlueColor      "\\x" contains=@NoSpell
syn match   BlueColor      "\\X" contains=@NoSpell
syn match   BlueColor      "\\o" contains=@NoSpell
syn match   BlueColor      "\\O" contains=@NoSpell
syn match   BlueColor      "\\h" contains=@NoSpell
syn match   BlueColor      "\\H" contains=@NoSpell
syn match   BlueColor      "\\p" contains=@NoSpell
syn match   BlueColor      "\\P" contains=@NoSpell
syn match   BlueColor      "\\w" contains=@NoSpell
syn match   BlueColor      "\\W" contains=@NoSpell
syn match   BlueColor      "\\a" contains=@NoSpell
syn match   BlueColor      "\\A" contains=@NoSpell
syn match   BlueColor      "\\l" contains=@NoSpell
syn match   BlueColor      "\\L" contains=@NoSpell
syn match   BlueColor      "\\u" contains=@NoSpell
syn match   BlueColor      "\\U" contains=@NoSpell

syn match   CyanColor      "\\t" contains=@NoSpell
syn match   CyanColor      "\\r" contains=@NoSpell
syn match   CyanColor      "\\n" contains=@NoSpell
syn match   CyanColor      "\\f" contains=@NoSpell
" Matches a control character using caret notation
syn match   CyanColor      "\\c[A-Z]" contains=@NoSpell

" match s///
syn match   Orange2Colorb "\([a-zA-Z]\)\@<!%\?s\/\(.\+\/.*\/\)\@="
syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s\/.\+\)\@<=\/\(.*\/\)\@="
syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s\/.\+\/.*\)\@<=\/\w*"

" match s///g s///e
"syn match   Orange2Colorb "\([a-zA-Z]\)\@<!%\?s\/\(.\+\/\(g\|e\)\)\@="
"syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s\/.\+\)\@<=\/.\?\(g\|e\)"
"
"" match s###g s###e
"syn match   Orange2Colorb "\([a-zA-Z]\)\@<!%\?s#\(.\+#\(g\|e\)\)\@="
"syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s#.\+\)\@<=#.\?\(g\|e\)"
syn match   Orange2Colorb "\([a-zA-Z]\)\@<!%\?s#\(.\+#.*#\)\@="
syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s#.\+\)\@<=#\(.*#\)\@="
syn match   Orange2Colorb "\(\([a-zA-Z]\)\@<!%\?s#.\+#.*\)\@<=#\w*"

"re-match defines or special variables
"syn match   OrangeColorb "[#`$][a-zA-Z0-9_]\+\>"
"syn match   CyanColorb   "[@&][a-zA-Z0-9_]\+\>"
"syn match   OrangeColorb "\${[a-zA-Z0-9_]\+}"


