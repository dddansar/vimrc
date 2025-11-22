
let g:supports_regex=0

" match common keywords in programming languages
"-------------------------------------------------------------------
" NOTE: using match instead of override as it is easier to override.
syn case ignore
syn match OrangeColorb      "\<function\>"
syn match OrangeColorb      "\<functions\>"
syn match OrangeColorb      "\<operator\>"
syn match OrangeColorb      "\<operators\>"
syn match LightOrangeColorb "\<or\>"
syn match LightOrangeColorb "\<and\>"
syn match LightOrangeColorb "\<not\>"
syn match LightOrangeColorb "\<xor\>"
syn match LightOrangeColorb "\<xnor\>"
syn match LightOrangeColorb "\<nor\>"
syn match LightOrangeColorb "\<nand\>"
syn match LightOrangeColorb "\<non\>"
syn match CyanColorb        "\<variable\>"
syn match CyanColorb        "\<variables\>"
syn match CyanColorb        "\<parameter\>"
syn match CyanColorb        "\<parameters\>"
syn match CyanColorb        "\<inputs\>"
syn match CyanColorb        "\<outputs\>"
syn match CyanColorb        "\<inouts\>"
syn match CyanColorb        "\<input\>"
syn match CyanColorb        "\<output\>"
syn match CyanColorb        "\<inout\>"
syn match CyanColorb        "\<ports\>"
syn match Peach3Colorb      "\<pointer\>"
syn match Peach3Colorb      "\<pointers\>"
syn match Peach3Colorb      "\<address\>"
syn match Peach3Colorb      "\<addresses\>"
syn match RedOrangeColorb   "\<definition\>" containedin=CommentColor
syn match RedOrangeColorb   "\<definitions\>" containedin=CommentColor
syn match RedOrangeColorb   "\<declaration\>" containedin=CommentColor
syn match RedOrangeColorb   "\<declarations\>" containedin=CommentColor
syn match RedOrangeColorb   "\<define\>"
syn match RedOrangeColorb   "\<declare\>"
syn match RedOrangeColorb   "\<defined\>"
syn match RedOrangeColorb   "\<declared\>"
syn match YellowColorb      "\<true\>"
syn match YellowColorb      "\<false\>"
syn match YellowColorb      "\<unknown\>"
syn match YellowColorb      "\<known\>"
syn match DarkGreen2Colorb  "\<begin\>"
syn match DarkGreen2Colorb  "\<end\>"
syn match DarkGreen2Colorb  "\<case\>"
syn match DarkGreen2Colorb  "\<default\>"
syn match DarkGreen2Colorb  "\<forever\>"
syn match DarkGreen2Colorb  "\<then\>" containedin=CommentColor
syn match DarkGreen2Colorb  "\<loop\>"
syn match DarkGreen2Colorb  "\<loops\>"
syn match DarkGreen2Colorb  "\<repeat\>"
syn match YellowColorb      "\<open\>"
syn match YellowColorb      "\<close\>"
syn match YellowColorb      "\<return\>"
syn match YellowColorb      "\<import\>"
syn match YellowColorb      "\<exit\>"
syn match YellowColorb      "\<system\>"
"-------------------------------------------------------------------
" https://vimdoc.sourceforge.net/htmldoc/syntax.html
" The :syntax commands that define syntax items take a number of arguments.
" Not all commands accept all arguments.  This table shows which arguments
" can not be used for all commands:
"                    contains    oneline  fold  display  extend   concealends  contained  containedin
" :syntax keyword    -           -        -     -        -        -            yes  !!!   yes  !!!
" :syntax match      yes         -        yes   yes      yes      -            yes        yes
" :syntax region     yes         yes      yes   yes      yes      yes          yes        yes
" NOTE: can't use "syntax keyword" with "contains=@NoSpell"
syn match DarkGreen2Colorb "\<do\>\( not\)\@!"  contains=@NoSpell
syn match DarkGreen2Colorb "\<iff\>"      contains=@NoSpell containedin=CommentColor
syn match DarkGreen2Colorb "\<\(if\|else\|for\|while\)\>" contains=@NoSpell " NOTE: I need to override with error in some cases like in c if brackets are not on the same line. so I need to make this a match not a keyword.
syn case match

syn match DarkGreen2Colorb "\<endcase\>"  contains=@NoSpell
syn match DarkGreen2Colorb "\<esac\>"     contains=@NoSpell
syn match DarkGreen2Colorb "\<elseif\>"   contains=@NoSpell
syn match DarkGreen2Colorb "\<endif\>"    contains=@NoSpell
syn match DarkGreen2Colorb "\<elif\>"     contains=@NoSpell
syn match DarkGreen2Colorb "\<fi\>"       contains=@NoSpell
syn match DarkGreen2Colorb "\<endfor\>"   contains=@NoSpell
syn match DarkGreen2Colorb "\<endwhile\>" contains=@NoSpell
syn match DarkGreen2Colorb "\<foreach\>"  contains=@NoSpell
"-------------------------------------------------------------------



" default matches for special chars. most will be overriden later.
"-------------------------------------------------------------------
syn match   RedColor        "[\\]"     containedin=PathLinksColor
syn match   RedColor        "/"        containedin=PathLinksColor
syn match   OrangeColor     "\(\/\|\*\)\@<!\/\(\/\|\*\)\@!" contained containedin=CommentColor

syn match   GreenColor      "\(\w\|\s\)\@<=`\(\w\)\@!" contained containedin=CommentColor
syn match   GreenColor      "\(\w\)\@<!`\(\w\|\s\|$\)\@=" contained containedin=CommentColor
" syn match   FluoGreen2Color "\(\w\|\s\)\@<='\(\w\)\@!" contained containedin=CommentColor
" syn match   FluoGreen2Color "\(\w\)\@<!'\(\w\|\s\|$\)\@=" contained containedin=CommentColor
" syn match   FluoGreenColor  '\(\w\|\s\)\@<="\(\w\)\@!' contained containedin=CommentColor
" syn match   FluoGreenColor  '\(\w\)\@<!"\(\w\|\s\|$\)\@=' contained containedin=CommentColor
" endif
syn match   FluoGreenColor  '"'
syn match   FluoGreen2Color "'"

syn match   OrangeColor     "\(\/\)\@<!\*\(\/\)\@!" containedin=CommentColor
syn match   OrangeColor     "[*]"
syn match   OrangeColor     "[+%^]" containedin=CommentColor
syn match   OrangeColor     "[&|]" containedin=CommentColor
syn match   OrangeColor     "[=><]" containedin=CommentColor
syn match   YellowColor     "[:;]"
" syn match   RedColor        "[,]"
syn match   RedColor        "[@]" containedin=CommentColor
syn match   OrangeColor     "[~]" containedin=CommentColor
syn match   RedColor        "[#]"
syn match   RedColor        "[!?]"
syn match   RedColor        "[$]" containedin=CommentColor
syn match   BlueColor       "[\[\]]" containedin=CommentColor
syn match   TealColor       "[)(]" containedin=CommentColor
syn match   OrangeColor     "[}{]" containedin=CommentColor

syn match   OrangeColorb    "=>" containedin=CommentColor
syn match   OrangeColorb    ">=" containedin=CommentColor
syn match   OrangeColorb    "<=" containedin=CommentColor
syn match   OrangeColorb    "==" containedin=CommentColor
syn match   OrangeColorb    "===" containedin=CommentColor
syn match   OrangeColorb    "##" containedin=CommentColor
"-------------------------------------------------------------------



" Ignore spell checking for the following matches
"------------------------------------------------------------------
if !exists("g:minimal_matching")
   " 1 capital letter not at first char
   syn match    CommentColor       "\<[a-z]\+[A-Z][a-z]*\>" contains=@NoSpell contained containedin=CommentColor
   syn match    CapitalizedNoSpell "\<[a-z]\+[A-Z][a-z]*\>" contains=@NoSpell

   " 2 or more capital letters
   syn match    CommentColor       "\<[a-zA-Z]*[A-Z][a-zA-Z]*[A-Z][a-zA-Z]*\>"   contains=@NoSpell contained containedin=CommentColor
   syn match    CapitalizedNoSpell "\<[a-zA-Z]*[A-Z][a-zA-Z]*[A-Z][a-zA-Z]*\>"   contains=@NoSpell

   " 1 Capital letter at first char but not at start of line or sentence (negative lookbehind) @<! ?<!, not followed by ' (ex I've)
   syn match    CommentColor       "\(^\|[\.!?]\s\+\|\-\-\s*\|\/\/\s*\)\@<!\<[A-Z][a-z]*\>\('\w\)\@!"   contains=@NoSpell contained containedin=CommentColor
   syn match    CapitalizedNoSpell "\(^\|[\.!?]\s\+\|\-\-\s*\|\/\/\s*\)\@<!\<[A-Z][a-z]*\>\('\w\)\@!"   contains=@NoSpell

   " contains number
   syn match    CommentColor       "\<[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*\>"   contains=@NoSpell contained containedin=CommentColor
   syn match    xLightOliveColor   "\<[a-zA-Z0-9]*[0-9][a-zA-Z0-9]*\>"   contains=@NoSpell

   " contains underscore
   syn match    CommentColor       "\<[a-zA-Z0-9_]*_[a-zA-Z0-9_]*\>"  contains=@NoSpell contained containedin=CommentColor
   syn match    UnderscoreNames    "\<[a-zA-Z0-9_]*_[a-zA-Z0-9_]*\>"  contains=@NoSpell

   " contains dots
   syn match    CommentColor       "\<[a-zA-Z0-9\-_]*\.[a-zA-Z0-9\.\-_]\+\>"  contains=@NoSpell contained containedin=CommentColor
   syn match    FileNames          "\<[a-zA-Z0-9\-_]*\.[a-zA-Z0-9\.\-_]\+\>"  contains=@NoSpell
endif
" default matches for dot char, may be overriden later.
" syn match   RedColor     "\." containedin=FileNames,PathLinksColor
syn match   OrangeColor  "-"
" for comments don't color line seperators like "----------... but color single - or double -- but not --- or more
syn match   OrangeColor  "\(-\)\@<!--\(-\)\@!" containedin=CommentColor
syn match   OrangeColor  "\(-\)\@<!-\(-\)\@!" containedin=CommentColor
syn match   OrangeColorb "->"
"-------------------------------------------------------------------


" matches decimal/hex/oct/bin numbers
"-------------------------------------------------------------------
"NOTE The characters "\<" and "\>" "anchor" the expression between to only match if it is on a word boundary end.
" Numbers
hi  link     NumberColor CyanColor
syn match    NumberColor "\<[0-9]\+\>"             contains=@NoSpell
syn match    NumberColor "\<[0-9]\+-[0-9]\+\>"     contains=@NoSpell
syn match    NumberColor "\<0[x][0-9A-Fa-f]\+\>"   contains=@NoSpell
syn match    NumberColor "\<[x][0-9A-F]\+\>"       contains=@NoSpell

"\( and \) lets you create a grouping.
"\< means beginning of word
"\> means end of word
"\d means decimal
"\+ means one or more match
"\s means white space or tab
"|\ means or but it followed by nothing so match with previous or without anything
"%( means make group non capturing
"\= means match 0 or 1 times
"\? means match 0 or 1 times
" NOTE: Inside a character class like [ ], the dot and $ loses its special meaning and matches a literal dot and $

" matches 19'd1238  19'h1238af 32'b01010111 8'o3241
" matches   'd1238    'h1238af   'b01010111  'o3241
syn match   NumberColor "\%(\<\d\+\|\)'[bB][0-1_?]\+\>" contains=@NoSpell
syn match   NumberColor "\%(\<\d\+\|\)'[oO][0-7_?]\+\>" contains=@NoSpell
syn match   NumberColor "\%(\<\d\+\|\)'[dD][0-9_?]\+\>" contains=@NoSpell
syn match   NumberColor "\%(\<\d\+\|\)'[hH][0-9a-fA-F_?]\+\>" contains=@NoSpell
"-------------------------------------------------------------------


" match scientific/exponent/floating point notation/number (±423.234 x 10±³ ±4243.234E±8)
"-------------------------------------------------------------------
syn case ignore
" matches floating point number, without dot, with exponent
" matches 329E+32 32E-32 32E32
" syn match  NumberColor      "\<\d\+e[-+]\=\d\+\>" contains=@NoSpell containedin=CommentColor

" matches floating point number, starting with a dot, optional exponent
" matches .329E+32 .32E-32 .32 .32E32
" syn match  NumberColor      "\.\d\+\(e[-+]\=\d\+\)\=\>" contains=@NoSpell containedin=CommentColor

" matches floating point number, with dot but not starting with it, optional exponent
" matches 234.23 2332.329e-32 2323.32e+32 2332.32e32 2332.32E32
" matches        2332.329E+32 2323.32E-32
" syn match  NumberColor      "\<\d\+\.\d\+\(e[-+]\=\d\+\)\=\>" contains=@NoSpell containedin=CommentColor

" this does all 3 above...
" syn match  NumberColor      "\(\<\d*\)\?\.\?\d\+\(e[-+±∓]\?\)\?\d\+\>" contains=@NoSpell containedin=CommentColor

" NOTE: the 3 below basically replaces e with x10^
" matches floating point number, without dot, with exponent
" matches 329x10^32 32x10^-32 32x10^32
" syn match  NumberColor      "\<\d\+x10\^[-+]\=\d\+\>" contains=@NoSpell containedin=CommentColor

" matches floating point number, starting with a dot, optional exponent
" matches .329x10^+32 .32x10^-32 .32x10^32
" syn match  NumberColor      "\.\d\+x10\^[-+]\=\d\+\>" contains=@NoSpell containedin=CommentColor

" matches floating point number, with dot but not starting with it, optional exponent
" matches 2332.329x10^-32 2323.32x10^+32 2332.32x10^32 2332.32x10^32
" matches 2332.329x10^+32 2323.32x10^-32
" syn match  NumberColor      "\<\d\+\.\d\+x10\^[-+]\=\d\+\>" contains=@NoSpell containedin=CommentColor

" this does all 3 above...
" syn match  NumberColor      "\(\<\d*\)\?\.\?\d\+x10\^[-+±∓]\=\d\+\>" contains=@NoSpell containedin=CommentColor

" this does all 6 above!!!
" and also matches 2^14 2.32^43 but not 2.32e10^43 nor 2.32x3^43
syn match  NumberColor      "\(\<\d*\)\?\.\?\<\d\+\(\(e\|x10\^\|\^\)[-+±∓]\?\)\?\d\+\>" contains=@NoSpell
syn case match
"-------------------------------------------------------------------


"" time
"-------------------------------------------------------------------
" matches 34ns 34ps 34fs 34us 34ms 34s
" matches 34sec 34min 34hr
syn match GreenColor "\<\d\+\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
syn match GreenColor "\<\%(\%([fpnum]s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"

" matches 34.23ns 34.23ps 34.23fs 34.23us 34.23ms 34.23s
" matches 34.23sec 34.23min 34.23hr
syn match GreenColor "\<\d\+\.\d\+\%(\%([fpnum]s\|s\)\|\%(sec\)\|\%(min\)\|\%(hr\)\)\>"
"-------------------------------------------------------------------


" Color CAPITAL words
"-------------------------------------------------------------------
hi  link     CapitalColor BlueColor
syn match    CapitalColor "\(^\|\W\)\@<=[A-Z][A-Z0-9_]\+\(\W\|$\)\@=" contains=@NoSpell containedin=CommentColor
" match words like DON'T that have ' in them
syn match    CapitalColor "\(^\|\W\)\@<=[A-Z]\+'[A-Z]\+\(\W\|$\)\@=" contains=@NoSpell containedin=CommentColor
" override contains dots
"syn match    CapitalColor "\(\.\)\@<=[A-Z][A-Z0-9_]\+\(\W\)\@=" contains=@NoSpell

"match 's' at end of abbreviations.
syn match   CapitalColor  "\<[A-Z][A-Z]\+s\>" contains=@NoSpell containedin=CommentColor
"-------------------------------------------------------------------


" matches linux paths
" WARNING: can slow down/reduce performance
"-------------------------------------------------------------------
if g:performance_mode <= 0
   hi  link     PathLinksColor xLightOliveColor
   " All path matches also match path\ with\ spaces/
   " matches path/path/ or .path/path/
   syn match    PathLinksColor "\(^\|=\|\s\|\'\|\"\|(\|\[\|{\)\@<=\.\?\<\([a-zA-Z0-9_.\-]\|\\ \)\+\(\/\([a-zA-Z0-9_.\-$]\|\\ \)\+\)*\/\(\s\|\'\|\"\|)\|]\|}\|$\)\@=" contains=@NoSpell containedin=CommentColor

   " matches path/path.ext1.extn or .path/path.ext1.extn
   " matches path/path.ext or .path/path.ext
   " matches path/.ext or .path/.ext
   syn match    PathLinksColor "\(^\|=\|\s\|\'\|\"\|(\|\[\|{\)\@<=\.\?\<\([a-zA-Z0-9_.\-]\|\\ \)\+\(\/\([a-zA-Z0-9_.\-$]\|\\ \)\+\)*\/[a-zA-Z0-9_.\-$]*\.[a-zA-Z0-9_-]\+\(\s\|\'\|\"\|)\|]\|}\|$\)\@=" contains=@NoSpell containedin=CommentColor

   " matches path/path/. or  .path/path/.
   syn match    PathLinksColor "\(^\|=\|\s\|\'\|\"\|(\|\[\|{\)\@<=\.\?\<\([a-zA-Z0-9_.\-]\|\\ \)\+\(\/\([a-zA-Z0-9_.\-$]\|\\ \)\+\)*\/\.\(\s\|\'\|\"\|)\|]\|}\|$\)\@=" contains=@NoSpell containedin=CommentColor

   " matches /path or ~/path or ./path or ../path
   " also matches inside brackets or parenthesis
   syn match    PathLinksColor "\(^\|\.\|=\|\s\|\'\|\"\)\@<=\~\?\(\/[a-zA-Z0-9_.$]\([a-zA-Z0-9_.\-$]\|\\ \)\+\)\+\/\?" contains=@NoSpell containedin=CommentColor

   " matches $var/path
   " also matches inside brackets or parenthesis
   syn match    PathLinksColor "\(\$[A-Z0-9a-z_]\+\)\@<=\~\?\(\/\([a-zA-Z0-9_.\-$]\|\\ \)\+\)\+\/\?" contains=@NoSpell containedin=CommentColor
endif
"-------------------------------------------------------------------

" matches windows paths
" WARNING: can slow down/reduce performance
"-------------------------------------------------------------------
if g:performance_mode <= 0 && g:using_windows
   " matches \path or ~\path or :\path or .\path or ..\path
   syn match    PathLinksColor "\(^\|=\|\s\|\'\|\"\|(\|\[\|{\|:\|\.\)\@<=\~\?\(\\[a-zA-Z0-9 _.\-$]\+\|\\ \)\+\([a-zA-Z0-9_]\)\(\\\|\\\.\|\\\.\.\)\?\(\s\|\'\|\"\|)\|]\|}\)\@=" contains=@NoSpell containedin=CommentColor

   " matches $var\path
   syn match    PathLinksColor "\(\$[A-Z0-9a-z_]\+\)\@<=\~\?\(\\[a-zA-Z0-9 _.\-$]\+\|\\ \)\+\([a-zA-Z0-9_]\)\(\\\|\\\.\|\\\.\.\)\?\(\s\|'\|\"\)\@=" contains=@NoSpell containedin=CommentColor

   " match .exe files
   syn match    FluoGreenColor "[a-zA-Z0-9_.-][a-zA-Z0-9 _.\-$]\+\.exe"
endif
"-------------------------------------------------------------------


" match websites
"-------------------------------------------------------------------
if g:performance_mode <= 0
   hi  link     WebLinksColor LightOliveColor
   syn match    WebLinksColor "www\.[a-zA-Z0-9.?!\-_=\/~@]\+"  contains=@NoSpell containedin=CommentColor
   " no parenthesis or spaces
   syn match    WebLinksColor '\w\+:\/\/[^[:space:]()]\+'      contains=@NoSpell containedin=CommentColor
endif
"-------------------------------------------------------------------


" Match Quotes "" '' ``
"-------------------------------------------------------------------

if g:performance_mode <= 1

   " Don't spell check quotes inside of comments
      " NOTE: the quotes need to be split otherwise they will match different quotes together!
      if exists("b:comment_leader") && b:comment_leader != '"'
         " NOTE: vim uses " for both comments and quotes, so need a special case to check what the leader
         "       is to avoid comments getting colors as quotes.
         syn region  CommentColor oneline matchgroup=FluoGreen2Color start=+\(^\|\s\|[([{]\)\@<="\(\s\)\@!+ matchgroup=FluoGreen2Color end=+\(\\\)\@<!"\(\s\|$\|[)\]}.!?,;:\-]\)\@=+ contains=@NoSpell contained containedin=CommentColor
      endif

      syn region  CommentColor    oneline matchgroup=FluoGreen2Color start=+\(^\|\s\|[([{]\)\@<='\(\s\)\@!+ matchgroup=FluoGreen2Color end=+\(\\\)\@<!'\(\s\|$\|[)\]}.!?,;:\-]\)\@=+ contains=@NoSpell contained containedin=CommentColor


   " NOTE: In vim, \v stands for "very magic" in a regular expression
   " VINOTE: WARNING: Quotes in text files work differently than quotes in programming languages!!! Below is for programming languages, not for text/tutorial files!!
   hi link QuotesDouble FluoGreenColor
   syn region QuotesDouble oneline  start=+"+ skip=+\v(\\[\\"]){-1}+ end=+"+ contains=@NoSpell
   hi link QuotesSingle FluoGreen2Color
   syn region QuotesSingle oneline  start=+'+ end=+'\(s\>\|t\>\|ve\>\)\@!+ contains=@NoSpell

endif
"-------------------------------------------------------------------


" match defines or special variables
"-------------------------------------------------------------------
if exists("b:comment_leader") && b:comment_leader != '#'
   "matches words like #define
   " syn match   CommentColor   "\(s#.*\|#\)\@<!#[a-zA-Z0-9_]\+\>" contained contains=@NoSpell containedin=CommentColor
   syn match   OrangeColorb   "\(s#.*\|#\)\@<!#[a-zA-Z0-9_]\+\>" contains=@NoSpell containedin=CommentColor
   " matches hex #329AF
   " syn match   CommentColor   "\(s#.*\|#\)\@<!#[a-fA-F0-9_]\+\>" contained contains=@NoSpell containedin=CommentColor
   syn match   CyanColor      "\(s#.*\|#\)\@<!#[a-fA-F0-9_]\+\>" contains=@NoSpell containedin=CommentColor
endif
" NOTE: Inside a character class like [ ], the dot and $ loses its special meaning and matches a literal dot and $
syn match   OrangeColorb      "[$][a-zA-Z0-9_]\+\>"         contains=@NoSpell containedin=PathLinksColor,CommentColor
syn match   OrangeColorb      "\${[a-zA-Z0-9_]\+}"          contains=@NoSpell containedin=PathLinksColor,CommentColor
syn match   OrangeColorb      "`[a-zA-Z0-9_]\+\>\(`\)\@!"   contains=@NoSpell containedin=CommentColor
syn match   CyanColorb        "@[a-zA-Z0-9_]\+\>"           contains=@NoSpell containedin=CommentColor

"-------------------------------------------------------------------


" comments leader and second
"-------------------------------------------------------------------
hi  link    CommentColor         FuchsiaColor
if exists("b:comment_leader")
   if b:comment_leader == '//'
      " WARNING: DO NOT add CommentColor in the contains, otherwise if -- is found it will not match the end!!
      " set region between /* ... */ also as a comment if comment_leader == //
      syn region  CommentColor start="\(\/\|\/\/.*\)\@<!\/\*" end="*\/"
   endif

   " NOTE: better to use containedin= at source instead of contains= to not include all matches of that color.
   execute 'syn match   CommentColor     +' . b:comment_leader . '.*+    contains=CommentColor'
endif
"-------------------------------------------------------------------


" match each layer of matching parenthesis with different colors ((())) [[[]]] {{{}}}
"-------------------------------------------------------------------
" if exists("g:supports_regex") && g:supports_regex == 0 && g:performance_mode <= 0
"    call Highlight_rainbow_round_parenthesis ()
"    call Highlight_rainbow_square_parenthesis ()
"    call Highlight_rainbow_bracket_parenthesis ()
" endif
"-------------------------------------------------------------------

