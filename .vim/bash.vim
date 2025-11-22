
syn keyword YellowColorb      setenv
syn keyword YellowColorb      module load
syn keyword GreenColorb       status log
syn keyword FluoGreenColorb   alias vsp
syn keyword OrangeColorb      topleft
syn keyword DarkGreen2Colorb  in done

" match .
syn match   RedColor     "\." containedin=FileNames,PathLinksColor

" unmatch quotes
syn match   RedColor          "'"
syn match   RedColor          '"'

" match word after alias
syn match   CyanColor         "\(^\s*alias\s\+\)\@<=[a-zA-Z0-9_-]\+" contains=@NoSpell containedin=CommentColor

" match variable before =
syn match   TealColor         "\(^\s*\)\@<=[a-z0-9_-]\+\(=\)\@="     contains=@NoSpell containedin=CommentColor

" match settings such as -r and --some-setting
syn match   OrangeColor       "\(^\|\s\+\)\@<=-[a-z0-9A-Z_-]\+"      contains=@NoSpell containedin=CommentColor


" match '\'' and ''\'
syn match   CyanColor         "'\\''"
syn match   CyanColor         "''\\'"

" # inside ${ } is not a comment
syn match   RedColor          "\(\${.*\)\@<=#\(.*}\)\@="
syn match   RedColor          "\(\[.*\)\@<=#\(.*\]\)\@="
