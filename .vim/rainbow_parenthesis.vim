"------------------------------------------------------------------------------
"  Description: Rainbow colors for parenthsis
"          $Id: rainbow_parenthsis.vim 50 2007-10-08 18:42:51Z krischik@users.sourceforge.net $
"    Copyright: Copyright (C) 2007 Martin Krischik
"   Maintainer: Martin Krischik (krischik@users.sourceforge.net)
"               John Gilmore
"               Luc Hermitte (hermitte@free.fr)
"      $Author: krischik@users.sourceforge.net $
"        $Date: 2007-10-08 20:42:51 +0200 (Mo, 08 Okt 2007) $
"      Version: 4.0
"    $Revision: 50 $
"     $HeadURL: https://vim-scripts.googlecode.com/svn/trunk/1561%20Rainbow%20Parenthsis%20Bundle/autoload/rainbow_parenthsis.vim $
"      History: 24.05.2006 MK Unified Headers
"               15.10.2006 MK Bram's suggestion for runtime integration
"               06.09.2007 LH Buffer friendly (can be used in different buffers),
"                             can be toggled
"               09.09.2007 MK Use on LH's suggestion but use autoload to
"                             impove memory consumtion and startup performance
"               09.10.2007 MK Now with round, square brackets, curly and angle
"                             brackets.
"        Usage: copy to autoload directory.
"------------------------------------------------------------------------------
" This is a simple script. It extends the syntax highlighting to
" highlight each matching set of parens in different colors, to make
" it visually obvious what matches which.
"
" Obviously, most useful when working with lisp or Ada. But it's also nice other
" times.
"------------------------------------------------------------------------------
"   Copyright (C) 2006  Martin Krischik
"
"   Vim is Charityware - see ":help license" or uganda.txt for licence details.
"------------------------------------------------------------------------------
" Source: https://www.vim.org/scripts/script.php?script_id=1561
" NOTE: Modified locally by Danny Sarraf, changed colors and re-formatted to
" match my personal preferences.
"------------------------------------------------------------------------------


" Exit if the file was already loaded
if exists("b:rainbow_paren_loaded")
  finish
endif
let g:rainbow_paren_loaded = 1


" a: Round parenthesis
" b: Square bracket
" c: Curly bracket
" d: Triangle bracket
hi link RainbowLevel1a  AllFilesNumColor
hi link RainbowLevel1b  AllFilesNumColor
hi link RainbowLevel1c  AllFilesNumColor
hi link RainbowLevel1d  AllFilesNumColor
hi link RainbowLevel2a  AllFilesPathsColor
hi link RainbowLevel2b  AllFilesPathsColor
hi link RainbowLevel2c  AllFilesPathsColor
hi link RainbowLevel2d  AllFilesPathsColor
hi link RainbowLevel3a  AllFilesArrowsColor
hi link RainbowLevel3b  AllFilesArrowsColor
hi link RainbowLevel3c  AllFilesArrowsColor
hi link RainbowLevel3d  AllFilesArrowsColor
hi link RainbowLevel4a  AllFilesQuotesColor2
hi link RainbowLevel4b  AllFilesQuotesColor2
hi link RainbowLevel4c  AllFilesQuotesColor2
hi link RainbowLevel4d  AllFilesQuotesColor2

hi link RainbowLevel5a  AllFilesEqualityColor
hi link RainbowLevel5b  AllFilesEqualityColor
hi link RainbowLevel5c  AllFilesEqualityColor
hi link RainbowLevel5d  AllFilesEqualityColor
hi link RainbowLevel6a  AllFilesSystemColor4
hi link RainbowLevel6b  AllFilesSystemColor4
hi link RainbowLevel6c  AllFilesSystemColor4
hi link RainbowLevel6d  AllFilesSystemColor4
hi link RainbowLevel7a  AllFilesOpColor
hi link RainbowLevel7b  AllFilesOpColor
hi link RainbowLevel7c  AllFilesOpColor
hi link RainbowLevel7d  AllFilesOpColor
hi link RainbowLevel8a  AllFilesMultOpColor
hi link RainbowLevel8b  AllFilesMultOpColor
hi link RainbowLevel8c  AllFilesMultOpColor
hi link RainbowLevel8d  AllFilesMultOpColor

hi link RainbowLevel9a  AllFilesPointerColor
hi link RainbowLevel9b  AllFilesPointerColor
hi link RainbowLevel9c  AllFilesPointerColor
hi link RainbowLevel9d  AllFilesPointerColor
hi link RainbowLevel10a AllFilesQuotesColor1
hi link RainbowLevel10b AllFilesQuotesColor1
hi link RainbowLevel10c AllFilesQuotesColor1
hi link RainbowLevel10d AllFilesQuotesColor1
hi link RainbowLevel11a AllFilesSystemColor
hi link RainbowLevel11b AllFilesSystemColor
hi link RainbowLevel11c AllFilesSystemColor
hi link RainbowLevel11d AllFilesSystemColor
hi link RainbowLevel12a AllFilesSpecialColor
hi link RainbowLevel12b AllFilesSpecialColor
hi link RainbowLevel12c AllFilesSpecialColor
hi link RainbowLevel12d AllFilesSpecialColor

hi link RainbowLevel13a AllFilesComment2Color
hi link RainbowLevel13b AllFilesComment2Color
hi link RainbowLevel13c AllFilesComment2Color
hi link RainbowLevel13d AllFilesComment2Color
hi link RainbowLevel14a AllFilesCommentColor
hi link RainbowLevel14b AllFilesCommentColor
hi link RainbowLevel14c AllFilesCommentColor
hi link RainbowLevel14d AllFilesCommentColor
hi link RainbowLevel15a AllFilesVarColor
hi link RainbowLevel15b AllFilesVarColor
hi link RainbowLevel15c AllFilesVarColor
hi link RainbowLevel15d AllFilesVarColor

" Round parenthesis
hi link RainbowLevel16a AllFilesFuncColor
" Square bracket
hi link RainbowLevel16b AllFilesSBrColor
" Curly bracket
hi link RainbowLevel16c AllFilesCBrColor
" Triangle bracket
hi link RainbowLevel16d AllFilesTBrColor


function! Highlight_rainbow_round_parenthesis()
   syntax region RRainbowLevel1  matchgroup=RainbowLevel1a  start=/(/  end=/)/  contains=TOP,RRainbowLevel1,RRainbowLevel2,RRainbowLevel3,RRainbowLevel4,RRainbowLevel5,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel2  matchgroup=RainbowLevel2a  start=/(/  end=/)/  contains=TOP,RRainbowLevel2,RRainbowLevel3,RRainbowLevel4,RRainbowLevel5,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel3  matchgroup=RainbowLevel3a  start=/(/  end=/)/  contains=TOP,RRainbowLevel3,RRainbowLevel4,RRainbowLevel5,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel4  matchgroup=RainbowLevel4a  start=/(/  end=/)/  contains=TOP,RRainbowLevel4,RRainbowLevel5,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel5  matchgroup=RainbowLevel5a  start=/(/  end=/)/  contains=TOP,RRainbowLevel5,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel6  matchgroup=RainbowLevel6a  start=/(/  end=/)/  contains=TOP,RRainbowLevel6,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel7  matchgroup=RainbowLevel7a  start=/(/  end=/)/  contains=TOP,RRainbowLevel7,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel8  matchgroup=RainbowLevel8a  start=/(/  end=/)/  contains=TOP,RRainbowLevel8,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel9  matchgroup=RainbowLevel9a  start=/(/  end=/)/  contains=TOP,RRainbowLevel9,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel10 matchgroup=RainbowLevel10a start=/(/  end=/)/  contains=TOP,RRainbowLevel10,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel11 matchgroup=RainbowLevel11a start=/(/  end=/)/  contains=TOP,RRainbowLevel11,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel12 matchgroup=RainbowLevel12a start=/(/  end=/)/  contains=TOP,RRainbowLevel12,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel13 matchgroup=RainbowLevel13a start=/(/  end=/)/  contains=TOP,RRainbowLevel13,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel14 matchgroup=RainbowLevel14a start=/(/  end=/)/  contains=TOP,RRainbowLevel14,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel15 matchgroup=RainbowLevel15a start=/(/  end=/)/  contains=TOP,RRainbowLevel15,RRainbowLevel16,NoInParens
   syntax region RRainbowLevel16 matchgroup=RainbowLevel16a start=/(/  end=/)/  contains=TOP,RRainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_square_parenthesis()
   syntax region SRainbowLevel1  matchgroup=RainbowLevel1b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel1,SRainbowLevel2,SRainbowLevel3,SRainbowLevel4,SRainbowLevel5,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel2  matchgroup=RainbowLevel2b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel2,SRainbowLevel3,SRainbowLevel4,SRainbowLevel5,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel3  matchgroup=RainbowLevel3b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel3,SRainbowLevel4,SRainbowLevel5,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel4  matchgroup=RainbowLevel4b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel4,SRainbowLevel5,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel5  matchgroup=RainbowLevel5b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel5,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel6  matchgroup=RainbowLevel6b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel6,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel7  matchgroup=RainbowLevel7b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel7,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel8  matchgroup=RainbowLevel8b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel8,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel9  matchgroup=RainbowLevel9b  start=/\[/ end=/\]/ contains=TOP,SRainbowLevel9,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel10 matchgroup=RainbowLevel10b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel10,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel11 matchgroup=RainbowLevel11b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel11,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel12 matchgroup=RainbowLevel12b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel12,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel13 matchgroup=RainbowLevel13b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel13,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel14 matchgroup=RainbowLevel14b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel14,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel15 matchgroup=RainbowLevel15b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel15,SRainbowLevel16,NoInParens
   syntax region SRainbowLevel16 matchgroup=RainbowLevel16b start=/\[/ end=/\]/ contains=TOP,SRainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_bracket_parenthesis()
   syntax region BRainbowLevel1  matchgroup=RainbowLevel1c  start=/{/  end=/}/  contains=TOP,BRainbowLevel1,BRainbowLevel2,BRainbowLevel3,BRainbowLevel4,BRainbowLevel5,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel2  matchgroup=RainbowLevel2c  start=/{/  end=/}/  contains=TOP,BRainbowLevel2,BRainbowLevel3,BRainbowLevel4,BRainbowLevel5,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel3  matchgroup=RainbowLevel3c  start=/{/  end=/}/  contains=TOP,BRainbowLevel3,BRainbowLevel4,BRainbowLevel5,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel4  matchgroup=RainbowLevel4c  start=/{/  end=/}/  contains=TOP,BRainbowLevel4,BRainbowLevel5,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel5  matchgroup=RainbowLevel5c  start=/{/  end=/}/  contains=TOP,BRainbowLevel5,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel6  matchgroup=RainbowLevel6c  start=/{/  end=/}/  contains=TOP,BRainbowLevel6,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel7  matchgroup=RainbowLevel7c  start=/{/  end=/}/  contains=TOP,BRainbowLevel7,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel8  matchgroup=RainbowLevel8c  start=/{/  end=/}/  contains=TOP,BRainbowLevel8,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel9  matchgroup=RainbowLevel9c  start=/{/  end=/}/  contains=TOP,BRainbowLevel9,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel10 matchgroup=RainbowLevel10c start=/{/  end=/}/  contains=TOP,BRainbowLevel10,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel11 matchgroup=RainbowLevel11c start=/{/  end=/}/  contains=TOP,BRainbowLevel11,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel12 matchgroup=RainbowLevel12c start=/{/  end=/}/  contains=TOP,BRainbowLevel12,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel13 matchgroup=RainbowLevel13c start=/{/  end=/}/  contains=TOP,BRainbowLevel13,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel14 matchgroup=RainbowLevel14c start=/{/  end=/}/  contains=TOP,BRainbowLevel14,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel15 matchgroup=RainbowLevel15c start=/{/  end=/}/  contains=TOP,BRainbowLevel15,BRainbowLevel16,NoInParens
   syntax region BRainbowLevel16 matchgroup=RainbowLevel16c start=/{/  end=/}/  contains=TOP,BRainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_triangle_parenthesis()
   syntax region TRainbowLevel1  matchgroup=RainbowLevel1d  start=/</  end=/>/  contains=TOP,TRainbowLevel1,TRainbowLevel2,TRainbowLevel3,TRainbowLevel4,TRainbowLevel5,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel2  matchgroup=RainbowLevel2d  start=/</  end=/>/  contains=TOP,TRainbowLevel2,TRainbowLevel3,TRainbowLevel4,TRainbowLevel5,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel3  matchgroup=RainbowLevel3d  start=/</  end=/>/  contains=TOP,TRainbowLevel3,TRainbowLevel4,TRainbowLevel5,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel4  matchgroup=RainbowLevel4d  start=/</  end=/>/  contains=TOP,TRainbowLevel4,TRainbowLevel5,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel5  matchgroup=RainbowLevel5d  start=/</  end=/>/  contains=TOP,TRainbowLevel5,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel6  matchgroup=RainbowLevel6d  start=/</  end=/>/  contains=TOP,TRainbowLevel6,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel7  matchgroup=RainbowLevel7d  start=/</  end=/>/  contains=TOP,TRainbowLevel7,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel8  matchgroup=RainbowLevel8d  start=/</  end=/>/  contains=TOP,TRainbowLevel8,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel9  matchgroup=RainbowLevel9d  start=/</  end=/>/  contains=TOP,TRainbowLevel9,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel10 matchgroup=RainbowLevel10d start=/</  end=/>/  contains=TOP,TRainbowLevel10,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel11 matchgroup=RainbowLevel11d start=/</  end=/>/  contains=TOP,TRainbowLevel11,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel12 matchgroup=RainbowLevel12d start=/</  end=/>/  contains=TOP,TRainbowLevel12,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel13 matchgroup=RainbowLevel13d start=/</  end=/>/  contains=TOP,TRainbowLevel13,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel14 matchgroup=RainbowLevel14d start=/</  end=/>/  contains=TOP,TRainbowLevel14,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel15 matchgroup=RainbowLevel15d start=/</  end=/>/  contains=TOP,TRainbowLevel15,TRainbowLevel16,NoInParens
   syntax region TRainbowLevel16 matchgroup=RainbowLevel16d start=/</  end=/>/  contains=TOP,TRainbowLevel16,NoInParens
endfunction


function! Clear_rainbow_parenthesis()
   silent! syntax clear RRainbowLevel1
   silent! syntax clear RRainbowLevel2
   silent! syntax clear RRainbowLevel3
   silent! syntax clear RRainbowLevel4
   silent! syntax clear RRainbowLevel5
   silent! syntax clear RRainbowLevel6
   silent! syntax clear RRainbowLevel7
   silent! syntax clear RRainbowLevel8
   silent! syntax clear RRainbowLevel9
   silent! syntax clear RRainbowLevel10
   silent! syntax clear RRainbowLevel11
   silent! syntax clear RRainbowLevel12
   silent! syntax clear RRainbowLevel13
   silent! syntax clear RRainbowLevel14
   silent! syntax clear RRainbowLevel15
   silent! syntax clear RRainbowLevel16


   silent! syntax clear SRainbowLevel1
   silent! syntax clear SRainbowLevel2
   silent! syntax clear SRainbowLevel3
   silent! syntax clear SRainbowLevel4
   silent! syntax clear SRainbowLevel5
   silent! syntax clear SRainbowLevel6
   silent! syntax clear SRainbowLevel7
   silent! syntax clear SRainbowLevel8
   silent! syntax clear SRainbowLevel9
   silent! syntax clear SRainbowLevel10
   silent! syntax clear SRainbowLevel11
   silent! syntax clear SRainbowLevel12
   silent! syntax clear SRainbowLevel13
   silent! syntax clear SRainbowLevel14
   silent! syntax clear SRainbowLevel15
   silent! syntax clear SRainbowLevel16


   silent! syntax clear BRainbowLevel1
   silent! syntax clear BRainbowLevel2
   silent! syntax clear BRainbowLevel3
   silent! syntax clear BRainbowLevel4
   silent! syntax clear BRainbowLevel5
   silent! syntax clear BRainbowLevel6
   silent! syntax clear BRainbowLevel7
   silent! syntax clear BRainbowLevel8
   silent! syntax clear BRainbowLevel9
   silent! syntax clear BRainbowLevel10
   silent! syntax clear BRainbowLevel11
   silent! syntax clear BRainbowLevel12
   silent! syntax clear BRainbowLevel13
   silent! syntax clear BRainbowLevel14
   silent! syntax clear BRainbowLevel15
   silent! syntax clear BRainbowLevel16

   silent! syntax clear TRainbowLevel1
   silent! syntax clear TRainbowLevel2
   silent! syntax clear TRainbowLevel3
   silent! syntax clear TRainbowLevel4
   silent! syntax clear TRainbowLevel5
   silent! syntax clear TRainbowLevel6
   silent! syntax clear TRainbowLevel7
   silent! syntax clear TRainbowLevel8
   silent! syntax clear TRainbowLevel9
   silent! syntax clear TRainbowLevel10
   silent! syntax clear TRainbowLevel11
   silent! syntax clear TRainbowLevel12
   silent! syntax clear TRainbowLevel13
   silent! syntax clear TRainbowLevel14
   silent! syntax clear TRainbowLevel15
   silent! syntax clear TRainbowLevel16
endfunction

