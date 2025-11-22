
" this is needed when loading multiple files, some .vim extension and others with spell enabled
setlocal nospell

" override default coloring of the syn/syntax/ia/augroup commands and any following text
"-----------------------------------------------------------------------------
syn keyword YellowColorb         syn synt synta syntax augroup au autocmd
syn keyword YellowColorb         ia iabbrev ab norea ca cnorea inorea abbrev noreabrev cabrev cnoreabrev inoreabrev
syn match   FluoGreenColor       "\(syn\(t\|ta\|tax\)\=\s\+\(keyword\|region\|match\)\s\+\)\@<=[a-zA-Z0-9_]\+\(\s\)\@="
syn match   FluoGreenColor       "\(hi\(light\)\=\s\+\(link\)\s\+\)\@<=[a-zA-Z0-9_]\+\(\s\)\@="
syn keyword FluoGreenColorb      BufNewFile BufRead FileType keyword region match ignore
syn match   BlueColorb           "\<contains="
syn match   BlueColorb           "\<contained\>"
syn match   BlueColorb           "\<containedin="
" [!-~] matches the main ascii characters
syn match   NoColor              "\(ia\(bbrev\)\=\s\+\)\@<=[!-~]\+\(\s\)\@="
"-----------------------------------------------------------------------------

" override default coloring of the map commands
"-----------------------------------------------------------------------------
syn keyword YellowColorb      map nmap vmap imap noremap nnoremap vnoremap inoremap cnoremap nore
syn keyword YellowColor       hi highlight
syn keyword FluoGreenColor    link bold underline
syn keyword OrangeColor       gui guifg guibg guisp guifont
"-----------------------------------------------------------------------------

" keywords
"-----------------------------------------------------------------------------
syn keyword CyanColor         normal exe execute search silent exclude dir copen call
syn keyword CyanColor         let unlet set setlocal unset
syn keyword CyanColor         source windo bufdo shellescape expand mode so source

" syn keyword YellowColor       true false
syn keyword OrangeColor       endfunction endfun matchgroup skip
" syn keyword OrangeColor       or and not xor xnor nor nand non
" syn keyword BlueColor         inputs outputs inouts input output inout ports
syn keyword DarkGreen2Colorb  start

" match function names
syn match FluoGreenColor    "\w\+\(\s*(.*)\)\@="

" match expr in between < >
syn match   FluoGreenColor   "\(<\)\@<=expr\(>\)\@="
"-----------------------------------------------------------------------------

" match global variables in vim
syn match   Orange2Color    '\(\(g\|b\):\)\@<=\w\+'

" don't match comments after map or echo or syn keywords (you can match after the contain keyword is found!!)
syn match   NoColor    '\(\(\<[a-z]\=\(re\|nore\)\=map\>\|\<echo\>\|\<syn\(t\|ta\|tax\)\=\>\).*\)\@<=\(\scontain.*\)\@<!"'

" don't match comments in parenthesis (" ... ")
syn match   NoColor    '\((.*\)\@<="\(.*)\)\@='
syn match   NoColor    '\(\'\)\@<="\(\'\)\@='

" don't match comments after =" "
syn match   NoColor    '\(=\s*\)\@<="'
syn match   NoColor    '\(=\s*".*\)\@<="'

let b:match_words='\<function\>:\<endfunction\>,
                 \ \<if\>:\<else\>:\<endif\>'

