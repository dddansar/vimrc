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


hi link RainbowLevel1c  HLCyanB
hi link RainbowLevel2c  HLOliveB
hi link RainbowLevel3c  HLHotpink2B
hi link RainbowLevel4c  HLGreenB

hi link RainbowLevel5c  HLRed2B
hi link RainbowLevel6c  HLTealB
hi link RainbowLevel7c  HLOrangeB
hi link RainbowLevel8c  HLPurple2B

hi link RainbowLevel9c  HLIndianredB
hi link RainbowLevel10c HLDarkgreenB
hi link RainbowLevel11c HLYellowB
hi link RainbowLevel12c HLRedB

hi link RainbowLevel13c HLVioletB
hi link RainbowLevel14c HLFuchsiaB
hi link RainbowLevel15c HLDodgerblueB

" Round parenthesis
hi link RainbowLevel16a AllFilesFuncColor
" Square bracket
hi link RainbowLevel16b AllFilesSBrColor
" Curly bracket
hi link RainbowLevel16c AllFilesCBrColor
" Triangle bracket
hi link RainbowLevel16d AllFilesTBrColor


function! Highlight_rainbow_round_parenthesis()
   syntax region RainbowLevel1  matchgroup=RainbowLevel1c  start=/(/  end=/)/  contains=TOP,RainbowLevel1,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel2  matchgroup=RainbowLevel2c  start=/(/  end=/)/  contains=TOP,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel3  matchgroup=RainbowLevel3c  start=/(/  end=/)/  contains=TOP,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel4  matchgroup=RainbowLevel4c  start=/(/  end=/)/  contains=TOP,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel5  matchgroup=RainbowLevel5c  start=/(/  end=/)/  contains=TOP,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel6  matchgroup=RainbowLevel6c  start=/(/  end=/)/  contains=TOP,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel7  matchgroup=RainbowLevel7c  start=/(/  end=/)/  contains=TOP,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel8  matchgroup=RainbowLevel8c  start=/(/  end=/)/  contains=TOP,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel9  matchgroup=RainbowLevel9c  start=/(/  end=/)/  contains=TOP,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel10 matchgroup=RainbowLevel10c start=/(/  end=/)/  contains=TOP,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel11 matchgroup=RainbowLevel11c start=/(/  end=/)/  contains=TOP,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel12 matchgroup=RainbowLevel12c start=/(/  end=/)/  contains=TOP,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel13 matchgroup=RainbowLevel13c start=/(/  end=/)/  contains=TOP,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel14 matchgroup=RainbowLevel14c start=/(/  end=/)/  contains=TOP,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel15 matchgroup=RainbowLevel15c start=/(/  end=/)/  contains=TOP,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel16 matchgroup=RainbowLevel16a start=/(/  end=/)/  contains=TOP,RainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_square_parenthesis()
   syntax region RainbowLevel1  matchgroup=RainbowLevel1c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel1,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel2  matchgroup=RainbowLevel2c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel3  matchgroup=RainbowLevel3c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel4  matchgroup=RainbowLevel4c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel5  matchgroup=RainbowLevel5c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel6  matchgroup=RainbowLevel6c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel7  matchgroup=RainbowLevel7c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel8  matchgroup=RainbowLevel8c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel9  matchgroup=RainbowLevel9c  start=/\[/ end=/\]/ contains=TOP,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel10 matchgroup=RainbowLevel10c start=/\[/ end=/\]/ contains=TOP,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel11 matchgroup=RainbowLevel11c start=/\[/ end=/\]/ contains=TOP,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel12 matchgroup=RainbowLevel12c start=/\[/ end=/\]/ contains=TOP,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel13 matchgroup=RainbowLevel13c start=/\[/ end=/\]/ contains=TOP,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel14 matchgroup=RainbowLevel14c start=/\[/ end=/\]/ contains=TOP,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel15 matchgroup=RainbowLevel15c start=/\[/ end=/\]/ contains=TOP,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel16 matchgroup=RainbowLevel16b start=/\[/ end=/\]/ contains=TOP,RainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_bracket_parenthesis()
   syntax region RainbowLevel1  matchgroup=RainbowLevel1c  start=/{/  end=/}/  contains=TOP,RainbowLevel1,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel2  matchgroup=RainbowLevel2c  start=/{/  end=/}/  contains=TOP,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel3  matchgroup=RainbowLevel3c  start=/{/  end=/}/  contains=TOP,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel4  matchgroup=RainbowLevel4c  start=/{/  end=/}/  contains=TOP,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel5  matchgroup=RainbowLevel5c  start=/{/  end=/}/  contains=TOP,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel6  matchgroup=RainbowLevel6c  start=/{/  end=/}/  contains=TOP,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel7  matchgroup=RainbowLevel7c  start=/{/  end=/}/  contains=TOP,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel8  matchgroup=RainbowLevel8c  start=/{/  end=/}/  contains=TOP,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel9  matchgroup=RainbowLevel9c  start=/{/  end=/}/  contains=TOP,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel10 matchgroup=RainbowLevel10c start=/{/  end=/}/  contains=TOP,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel11 matchgroup=RainbowLevel11c start=/{/  end=/}/  contains=TOP,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel12 matchgroup=RainbowLevel12c start=/{/  end=/}/  contains=TOP,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel13 matchgroup=RainbowLevel13c start=/{/  end=/}/  contains=TOP,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel14 matchgroup=RainbowLevel14c start=/{/  end=/}/  contains=TOP,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel15 matchgroup=RainbowLevel15c start=/{/  end=/}/  contains=TOP,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel16 matchgroup=RainbowLevel16c start=/{/  end=/}/  contains=TOP,RainbowLevel16,NoInParens
endfunction


function! Highlight_rainbow_triangle_parenthesis()
   syntax region RainbowLevel1  matchgroup=RainbowLevel1c  start=/</  end=/>/  contains=TOP,RainbowLevel1,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel2  matchgroup=RainbowLevel2c  start=/</  end=/>/  contains=TOP,RainbowLevel2,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel3  matchgroup=RainbowLevel3c  start=/</  end=/>/  contains=TOP,RainbowLevel3,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel4  matchgroup=RainbowLevel4c  start=/</  end=/>/  contains=TOP,RainbowLevel4,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel5  matchgroup=RainbowLevel5c  start=/</  end=/>/  contains=TOP,RainbowLevel5,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel6  matchgroup=RainbowLevel6c  start=/</  end=/>/  contains=TOP,RainbowLevel6,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel7  matchgroup=RainbowLevel7c  start=/</  end=/>/  contains=TOP,RainbowLevel7,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel8  matchgroup=RainbowLevel8c  start=/</  end=/>/  contains=TOP,RainbowLevel8,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel9  matchgroup=RainbowLevel9c  start=/</  end=/>/  contains=TOP,RainbowLevel9,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel10 matchgroup=RainbowLevel10c start=/</  end=/>/  contains=TOP,RainbowLevel10,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel11 matchgroup=RainbowLevel11c start=/</  end=/>/  contains=TOP,RainbowLevel11,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel12 matchgroup=RainbowLevel12c start=/</  end=/>/  contains=TOP,RainbowLevel12,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel13 matchgroup=RainbowLevel13c start=/</  end=/>/  contains=TOP,RainbowLevel13,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel14 matchgroup=RainbowLevel14c start=/</  end=/>/  contains=TOP,RainbowLevel14,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel15 matchgroup=RainbowLevel15c start=/</  end=/>/  contains=TOP,RainbowLevel15, RainbowLevel16,NoInParens
   syntax region RainbowLevel16 matchgroup=RainbowLevel16d start=/</  end=/>/  contains=TOP,RainbowLevel16,NoInParens
endfunction


