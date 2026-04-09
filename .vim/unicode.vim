"==============================================================================
" File: unicode.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all files that use unicode symbols.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
" NOTE: See also: math_mappings.vim
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
if exists("b:unicode_loaded")
  finish
endif
let g:unicode_loaded = 1


if !has('nvim')
   if exists("g:spell_check_en") && filereadable(expand($vim_spell_path . "/math.utf-8.spl"))
      setlocal spelllang+=math
   endif
else
   if exists("g:spell_check_en") && filereadable(expand($nvim_spell_path . "/math.utf-8.spl"))
      setlocal spelllang+=math
   endif
endif

" Change the width/size/length/cursor of a range of characters!
" setcellwidths()
" The format for an inner list is:
" [start_char_code, end_char_code, width]
" width: The desired display width for characters within this range (typically
"        1 or 2). Does not work with 3!
call setcellwidths([
                  \ [0x1100, 0x115f, 1],
                  \ [0x2102, 0x211d, 2],
                  \ [0x2123, 0x2134, 2],
                  \ [0x2160, 0x218f, 2],
                  \ [0x2205, 0x2205, 2],
                  \ [0x22a2, 0x22af, 2],
                  \ [0x22bf, 0x22c1, 2],
                  \ [0x2460, 0x24ff, 2],
                  \ [0x2776, 0x2793, 2],
                  \ [0x27c0, 0x27c4, 2],
                  \ [0x27c8, 0x27de, 2],
                  \ [0x27f0, 0x27ff, 2],
                  \ [0x29b0, 0x29f4, 2],
                  \ [0x2a01, 0x2a04, 2],
                  \ [0x2a07, 0x2a0c, 2],
                  \ [0x2b1f, 0x2b2d, 2],
                  \ [0x2d30, 0x2d32, 2],
                  \ [0x2d37, 0x2d67, 2],
                  \ [0x3008, 0x300b, 2],
                  \ [0xa4e5, 0xa4e6, 2],
                  \ [0xd7b0, 0xe090, 2],
                  \ [0xe200, 0xec0f, 2],
                  \ [0xfe50, 0xfe6b, 1],
                  \ [0x10300, 0x1037f, 2],
                  \ [0x1d109, 0x1d10a, 2],
                  \ [0x1d360, 0x1d7ff, 2],
                  \ [0x1f110, 0x1f16f, 2],
                  \ [0x1f568, 0x1f5ff, 2],
                  \ [0x1f700, 0x1f7d7, 2],
                  \ [0x1f850, 0x1f850, 2],
                  \ [0x1f852, 0x1f852, 2],
                  \ [0x1f858, 0x1f858, 2],
                  \])
" See also :help ambiwidth
" The ambiwidth option in Vim controls how ambiguous-width characters are
" displayed. (such as Euro, Registered Sign, Copyright Sign, Greek letters,
" Cyrillic letters).
" ambiwidth=single (default):
" Displays ambiguous-width characters as single-width.
" ambiwidth=double:
" Displays ambiguous-width characters as double-width.


" VINOTE: By using hi link (along with statusline in vimrc), vim will display
"         the name of the link and what it links to in the statusline. This is
"         very useful to debug which syntax group is causing any issues. And
"         for the "hi link", I add the file name "AllPre" first, to know which
"         file the syntax group is located in. The "syn keyword" will then
"         Color the "hi link" name with the color it is mapped to.
hi  link    UnicodeSetsColor     HLHotpinkB
hi  link    UnicodeBCColor       HLHotpinkB
hi  link    UnicodeBColor        HLWhiteB
hi  link    UnicodeCColor        HLBlueB
hi  link    UnicodeDBColor       HLYellowB
hi  link    UnicodeMColor        HLOrangeB
hi  link    UnicodeVarColor      AllFilesVarColor
hi  link    UnicodeBsColor       HLOrangeredB

" My custom syntax without any default vim settings.
syn keyword UnicodeSetsColor     UnicodeSetsColor
syn keyword UnicodeBCColor       UnicodeBCColor
syn keyword UnicodeBColor        UnicodeBColor
syn keyword UnicodeCColor        UnicodeCColor
syn keyword UnicodeDBColor       UnicodeDBColor
syn keyword UnicodeMColor        UnicodeMColor
syn keyword UnicodeVarColor      UnicodeVarColor
syn keyword UnicodeBsColor       UnicodeBsColor


" Do not spell check any of the special characters in the whole unicode range!!
" -----------------------------------------------------------------------------
if g:performance_mode <= 0
   " Don't spell check any word followed by unicode:
   " hi  link     UnicodeCommentColor   AllPreComments
   " syn match    UnicodeCommentColor  "[a-z]\+\%([^ -~]\)\@="   contains=@NoSpell contained containedin=.*Comment.*
   " syn match    UnicodeNoColor1      "[a-z]\+\%([^ -~]\)\@="   contains=@NoSpell

   " Set default color for all unicode chars outside of the main ASCII range:
   " hi  link     UnicodeDefault   AllFilesDefaultColor
   " syn match    UnicodeCommentColor  "[^ -~]"  contains=@NoSpell contained containedin=.*Comment.*
   " syn match    UnicodeDefault   "[^ -~]"  contains=@NoSpell containedin=.*Comment.*

   " Highlight chars that you don't want used such as tabs:
   " hi  link     UnicodeError   HLRedBgB
   hi  link     UnicodeDontUse AllFilesSpecialColorB
   syn match    UnicodeDontUse "[‘-‟−—–∣]" contains=@NoSpell containedin=RegExRanges
   " syn match    UnicodeError     '\t'       contains=@NoSpell containedin=.*Comment.*
   " syn match    HLRedBgB          "	"  " same as \t  ASCII hex 0x9
endif
" -----------------------------------------------------------------------------


" NOTE: To add more ASCII/unicode symbols use (i)c-v  :help i_CTRL-V_digit
" then use u for UTF-16 or U for UTF-32 followed by 4 or 8 digits.
" (i)c-v u03c0 gives: π 
" (i)c-s-u03c0 also works in linux
" NOTE: Use ga to get the Unicode code

"---------------------------
" Random symbols
"---------------------------

" NOTE: Using   <c-r>=Eatchar('\s')<cr>   to consume the space typed after an
"       abbreviation.

inorea _tick      ✓<left><right><c-r>=Eatchar('\s')<cr>
inorea _check     ✓<left><right><c-r>=Eatchar('\s')<cr>
inorea _xtick     ✗<left><right><c-r>=Eatchar('\s')<cr>
inorea _xcheck    ✗<left><right><c-r>=Eatchar('\s')<cr>
inorea _tm        <left><right><c-r>=Eatchar('\s')<cr>
inorea _tm2       ™<left><right><c-r>=Eatchar('\s')<cr>
inorea _copy      ©<left><right><c-r>=Eatchar('\s')<cr>
inorea _tmr       ®<left><right><c-r>=Eatchar('\s')<cr>
inorea _reg       ®<left><right><c-r>=Eatchar('\s')<cr>

inorea _currency  ¤<left><right><c-r>=Eatchar('\s')<cr>
inorea _dollar    $<left><right><c-r>=Eatchar('\s')<cr>
inorea _euro      €<left><right><c-r>=Eatchar('\s')<cr>
inorea _pound     £<left><right><c-r>=Eatchar('\s')<cr>
inorea _lira      ₤<left><right><c-r>=Eatchar('\s')<cr>
inorea _yen       ¥<left><right><c-r>=Eatchar('\s')<cr>
inorea _peso      ₱<left><right><c-r>=Eatchar('\s')<cr>
inorea _rupee     ₹<left><right><c-r>=Eatchar('\s')<cr>
inorea _ruble     ₽<left><right><c-r>=Eatchar('\s')<cr>
inorea _bitcoin   ₿<left><right><c-r>=Eatchar('\s')<cr>

inorea _sign     𝄉<left><right><c-r>=Eatchar('\s')<cr>

inorea _male      ♂<left><right><c-r>=Eatchar('\s')<cr>
inorea _fmale     ♀<left><right><c-r>=Eatchar('\s')<cr>
inorea _sun       ☼<left><right><c-r>=Eatchar('\s')<cr>

" Section sign
inorea _section   §<left><right><c-r>=Eatchar('\s')<cr>
inorea _paragraph §<left><right><c-r>=Eatchar('\s')<cr>
inorea _silcrow   §<left><right><c-r>=Eatchar('\s')<cr>
inorea _pilcrow   ¶<left><right><c-r>=Eatchar('\s')<cr>
inorea _paragraph ¶<left><right><c-r>=Eatchar('\s')<cr>
inorea _inv?      ¿<left><right><c-r>=Eatchar('\s')<cr>

" Per mile
inorea _pmi       ‰<left><right><c-r>=Eatchar('\s')<cr>
inorea _per       ⅌<left><right><c-r>=Eatchar('\s')<cr>

inorea _??        ⁇<left><right><c-r>=Eatchar('\s')<cr>
inorea _?!        ⁈<left><right><c-r>=Eatchar('\s')<cr>
inorea _!n?       ‽<left><right><c-r>=Eatchar('\s')<cr>
inorea _?n!       ‽<left><right><c-r>=Eatchar('\s')<cr>
inorea _!!        ‼<left><right><c-r>=Eatchar('\s')<cr>
inorea _!?        ⁉<left><right><c-r>=Eatchar('\s')<cr>
inorea _3dot      ⋯<left><right><c-r>=Eatchar('\s')<cr>
inorea z_3dot     …<left><right><c-r>=Eatchar('\s')<cr>

inorea _no        ø<left><right><c-r>=Eatchar('\s')<cr>
inorea _nO        Ø<left><right><c-r>=Eatchar('\s')<cr>
inorea _inv&      ⅋<left><right><c-r>=Eatchar('\s')<cr>
inorea __:        ∶<left><right><c-r>=Eatchar('\s')<cr>
inorea _inv!      ¡<left><right><c-r>=Eatchar('\s')<cr>

inorea _ddag      ‡<left><right><c-r>=Eatchar('\s')<cr>
inorea _dag       †<left><right><c-r>=Eatchar('\s')<cr>
inorea _3ddot     ⋱<left><right><c-r>=Eatchar('\s')<cr>

" Intercalate
inorea _ntcal     ⊺<left><right><c-r>=Eatchar('\s')<cr>

" Music
inorea _#         ♯<left><right><c-r>=Eatchar('\s')<cr>
inorea _note      ♩<left><right><c-r>=Eatchar('\s')<cr>
inorea _natural   ♮<left><right><c-r>=Eatchar('\s')<cr>
inorea _numero   №<left><right><c-r>=Eatchar('\s')<cr>

"
inorea _overscore ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea _overline  ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea _over      ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea _ovr       ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea a__        ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea z__        _<left><right><c-r>=Eatchar('\s')<cr>
inorea _end       –<left><right><c-r>=Eatchar('\s')<cr>

"
inorea _heart     ♥<left><right><c-r>=Eatchar('\s')<cr>
inorea _heart2    ❤<left><right><c-r>=Eatchar('\s')<cr>
inorea _heart3    ♡<left><right><c-r>=Eatchar('\s')<cr>
inorea _yinyang   ☯<left><right><c-r>=Eatchar('\s')<cr>

"
inorea _recycle   ♲<left><right><c-r>=Eatchar('\s')<cr>
inorea _nuclear   ⚛<left><right><c-r>=Eatchar('\s')<cr>
inorea _atom      ⚛<left><right><c-r>=Eatchar('\s')<cr>
inorea _bioh      ☣<left><right><c-r>=Eatchar('\s')<cr>
inorea _radio     ☢<left><right><c-r>=Eatchar('\s')<cr>
inorea _scales    ⚖<left><right><c-r>=Eatchar('\s')<cr>
inorea _swords    ⚔<left><right><c-r>=Eatchar('\s')<cr>
inorea _peace     ☮<left><right><c-r>=Eatchar('\s')<cr>
inorea _sun       ☀<left><right><c-r>=Eatchar('\s')<cr>
inorea _warn      ⚠<left><right><c-r>=Eatchar('\s')<cr>
inorea _uncert    ⯑<left><right><c-r>=Eatchar('\s')<cr>
inorea _caution   ☡<left><right><c-r>=Eatchar('\s')<cr>

inorea _pitchfork ⋔<left><right><c-r>=Eatchar('\s')<cr>
inorea _scissors  ✂<left><right><c-r>=Eatchar('\s')<cr>

inorea _smiley    ☺<left><right><c-r>=Eatchar('\s')<cr>
inorea _fsmiley   ☻<left><right><c-r>=Eatchar('\s')<cr>
inorea _frowny    ☹<left><right><c-r>=Eatchar('\s')<cr>

inorea _tbullet   ‣<left><right><c-r>=Eatchar('\s')<cr>
inorea _bullet    •<left><right><c-r>=Eatchar('\s')<cr>

" Emoji
" 🇨🈴🌈🌀🌋🌊🌍🌎🌏🌐🌕🌒🌩🏛🏹🐬🔔🔬🔭🔹🕹😌🚀🛠🟡🟤🟥🥗🧭🐆
" ❌❕❓
inorea e_earth   🌍🌎🌏<left><right><c-r>=Eatchar('\s')<cr>
inorea e_dna         🧬<left><right><c-r>=Eatchar('\s')<cr>
inorea e_star        ⭐<left><right><c-r>=Eatchar('\s')<cr>
inorea e_lightning   🗲<left><right><c-r>=Eatchar('\s')<cr>
inorea e_light       🗲<left><right><c-r>=Eatchar('\s')<cr>


" hi  link    UnicodeRandom AllFilesDefaultColor
" syn match   UnicodeRandom "[✓✓✗✗™©®®¤€£₤¥₱₹₽₿♂♀☼§§§¶¶¿‰⅌⁇⁈‽‽‼⁉𝄉№⋯…øØ⅋∶¡‡†⋱⊺♯♩♮‾♥❤♡☯♲⚖⚔☮☀⋔✂☺☻☹‣•]" contains=@NoSpell  containedin=RegExRanges
syn match   UnicodeRandom "[𝄉]" contains=@NoSpell  containedin=RegExRanges
" hi  link    UnicodeLightning HLYellowB
" syn match   UnicodeLightning "[🗲]" contains=@NoSpell  containedin=RegExRanges

" hi  link    UnicodeImportant AllFilesSpecialColorB
" syn match   UnicodeImportant "[≝≟⚠☣☢⚛⯑☡]" contains=@NoSpell  containedin=RegExRanges



"---------------------------
" Geometry
"---------------------------

" Angle, measured, spherical, right
inorea _angle     ∠<left><right><c-r>=Eatchar('\s')<cr>
inorea _mangle    ∡<left><right><c-r>=Eatchar('\s')<cr>
inorea _sangle    ∢<left><right><c-r>=Eatchar('\s')<cr>
inorea _rangle    ∟<left><right><c-r>=Eatchar('\s')<cr>
inorea _90        ∟<left><right><c-r>=Eatchar('\s')<cr>
inorea _btw       ≬<left><right><c-r>=Eatchar('\s')<cr>

inorea _//        ᜶<left><right><c-r>=Eatchar('\s')<cr>
inorea _pll       <left><right><c-r>=Eatchar('\s')<cr>
inorea _parallel  <left><right><c-r>=Eatchar('\s')<cr>
inorea _\|\|      <left><right><c-r>=Eatchar('\s')<cr>
inorea _pll2      ∥<left><right><c-r>=Eatchar('\s')<cr>
inorea _parallel2 ∥<left><right><c-r>=Eatchar('\s')<cr>
inorea _npll      ∦<left><right><c-r>=Eatchar('\s')<cr>
inorea _w\|\|     ‖<left><right><c-r>=Eatchar('\s')<cr>
inorea _wpll      ‖<left><right><c-r>=Eatchar('\s')<cr>
inorea _s\|\|     ॥<left><right><c-r>=Eatchar('\s')<cr>
inorea _spll      ॥<left><right><c-r>=Eatchar('\s')<cr>
inorea _sspll     ᱿<left><right><c-r>=Eatchar('\s')<cr>
inorea a_pll      ᐦ<left><right><c-r>=Eatchar('\s')<cr>

inorea _nmid      ∤<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsl       ∤<left><right><c-r>=Eatchar('\s')<cr>

" Broken Bar
inorea _bbar      ¦<left><right><c-r>=Eatchar('\s')<cr>

" Slashes
inorea _ssl       ᱾<left><right><c-r>=Eatchar('\s')<cr>
inorea _fsl       <left><right><c-r>=Eatchar('\s')<cr>
inorea _bsl       <left><right><c-r>=Eatchar('\s')<cr>
inorea _lfsl      ⧸<left><right><c-r>=Eatchar('\s')<cr>
inorea _lbsl      ⧹<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLines UnicodeDBColor
syn match   UnicodeLines "[∠∡∢∟∥᜶°∤∦‖॥᱾᱿ᐦ⧸⧹¦≬]" contains=@NoSpell  containedin=RegExRanges

inorea _tri       △<left><right><c-r>=Eatchar('\s')<cr>
inorea b_tri      ∆<left><right><c-r>=Eatchar('\s')<cr>
inorea _square    □<left><right><c-r>=Eatchar('\s')<cr>
inorea _rect      ▭<left><right><c-r>=Eatchar('\s')<cr>
inorea _loz       ◊<left><right><c-r>=Eatchar('\s')<cr>
inorea _pent     ⬠<left><right><c-r>=Eatchar('\s')<cr>
inorea _hexa     ⬡<left><right><c-r>=Eatchar('\s')<cr>
inorea _circle    ○<left><right><c-r>=Eatchar('\s')<cr>
inorea _lcircle  〇<left><right><c-r>=Eatchar('\s')<cr>
inorea _ellipse   ⬯<left><right><c-r>=Eatchar('\s')<cr>
inorea _star      ☆<left><right><c-r>=Eatchar('\s')<cr>
inorea _5star     ☆<left><right><c-r>=Eatchar('\s')<cr>
inorea _nstar     ✯<left><right><c-r>=Eatchar('\s')<cr>
inorea _fstar     ★<left><right><c-r>=Eatchar('\s')<cr>
inorea _f5star    ★<left><right><c-r>=Eatchar('\s')<cr>
inorea _fsstar    ⭑<left><right><c-r>=Eatchar('\s')<cr>
inorea _s*        ⋆<left><right><c-r>=Eatchar('\s')<cr>
inorea _sstar     ⋆<left><right><c-r>=Eatchar('\s')<cr>

inorea _fdiam     ◆<left><right><c-r>=Eatchar('\s')<cr>
inorea _2diam     ◈<left><right><c-r>=Eatchar('\s')<cr>
inorea _diam      ◇<left><right><c-r>=Eatchar('\s')<cr>
inorea _dia       ⋄<left><right><c-r>=Eatchar('\s')<cr>

inorea _fsuare    ■<left><right><c-r>=Eatchar('\s')<cr>
inorea _2square   ▣<left><right><c-r>=Eatchar('\s')<cr>
inorea _rsquare   ▢<left><right><c-r>=Eatchar('\s')<cr>
" Square with bisecting line
inorea _sqbl      ◫<left><right><c-r>=Eatchar('\s')<cr>

inorea _4star     ✧<left><right><c-r>=Eatchar('\s')<cr>
inorea _f4star    ✦<left><right><c-r>=Eatchar('\s')<cr>
inorea _f6star    ✶<left><right><c-r>=Eatchar('\s')<cr>
inorea _f8star    ✴<left><right><c-r>=Eatchar('\s')<cr>
inorea _f12star   ✹<left><right><c-r>=Eatchar('\s')<cr>
inorea _pllg      ▱<left><right><c-r>=Eatchar('\s')<cr>
inorea _fpllg     ▰<left><right><c-r>=Eatchar('\s')<cr>

" Small u/d/r/l tri
inorea _srtri     ▹<left><right><c-r>=Eatchar('\s')<cr>
inorea _sdtri     ▿<left><right><c-r>=Eatchar('\s')<cr>
inorea _sutri     ▵<left><right><c-r>=Eatchar('\s')<cr>
inorea _sltri     ◃<left><right><c-r>=Eatchar('\s')<cr>
inorea _sfrtri    ▸<left><right><c-r>=Eatchar('\s')<cr>
inorea _sfdtri    ▾<left><right><c-r>=Eatchar('\s')<cr>
inorea _sfutri    ◂<left><right><c-r>=Eatchar('\s')<cr>
inorea _sfltri    ▴<left><right><c-r>=Eatchar('\s')<cr>

" Large u/d/r/l tri
inorea _ltri      ◁<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtri      ▷<left><right><c-r>=Eatchar('\s')<cr>
inorea _dtri      ▽<left><right><c-r>=Eatchar('\s')<cr>
inorea _utri      △<left><right><c-r>=Eatchar('\s')<cr>
inorea _fltri     ◀<left><right><c-r>=Eatchar('\s')<cr>
inorea _frtri     ▶<left><right><c-r>=Eatchar('\s')<cr>
inorea _fdtri     ▼<left><right><c-r>=Eatchar('\s')<cr>
inorea _futri     ▲<left><right><c-r>=Eatchar('\s')<cr>

inorea _fcirc     ●<left><right><c-r>=Eatchar('\s')<cr>
inorea _dcirc     ◌<left><right><c-r>=Eatchar('\s')<cr>
inorea _lcirc     ◯<left><right><c-r>=Eatchar('\s')<cr>
inorea _fsquare   ▪<left><right><c-r>=Eatchar('\s')<cr>
inorea _fsq       ▪<left><right><c-r>=Eatchar('\s')<cr>
inorea _frect     ▬<left><right><c-r>=Eatchar('\s')<cr>
inorea _vrect     ▯<left><right><c-r>=Eatchar('\s')<cr>
inorea _fvrect    ▮<left><right><c-r>=Eatchar('\s')<cr>

inorea _fvlrect   ∎<left><right><c-r>=Eatchar('\s')<cr>
inorea _qed       ∎<left><right><c-r>=Eatchar('\s')<cr>

inorea _2tri     ⟁<left><right><c-r>=Eatchar('\s')<cr>
" Joint squares
inorea _2jsq     ⧉<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeShapes  AllFilesOpColor
syn match   UnicodeShapes  "[△∆□□▭◊⬠⬡○⬯★✯☆⭑⋆◆◈◇■▣▢◫✧✦✶✴✹▱▰◁▷▽△◀▶▼▲▹▿▵◃▸▾◂▴●◌◯▪▪▬▯▮∎⟁⧉]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Operators
"---------------------------

inorea _+-        ±<left><right><c-r>=Eatchar('\s')<cr>
inorea _pm        ±<left><right><c-r>=Eatchar('\s')<cr>
inorea _-+        ∓<left><right><c-r>=Eatchar('\s')<cr>
inorea _mp        ∓<left><right><c-r>=Eatchar('\s')<cr>
inorea _divop     ÷<left><right><c-r>=Eatchar('\s')<cr>

inorea _~~        ∼<left><right><c-r>=Eatchar('\s')<cr>

inorea __\|       ∣<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOperators1 AllFilesOpColor
syn match   UnicodeOperators1 "[±∓÷∗∼]" contains=@NoSpell  containedin=RegExRanges

"
inorea _neg       −<left><right><c-r>=Eatchar('\s')<cr>
inorea _mdsh      —<left><right><c-r>=Eatchar('\s')<cr>
inorea _deg       °<left><right><c-r>=Eatchar('\s')<cr>
inorea _degree    °<left><right><c-r>=Eatchar('\s')<cr>
inorea _degrees   °<left><right><c-r>=Eatchar('\s')<cr>
inorea _ring      ∘<left><right><c-r>=Eatchar('\s')<cr>
inorea _dot       ⬝<left><right><c-r>=Eatchar('\s')<cr>
inorea _sdot      ⋅<left><right><c-r>=Eatchar('\s')<cr>
inorea _ast       ∗<left><right><c-r>=Eatchar('\s')<cr>
inorea _**        ∗<left><right><c-r>=Eatchar('\s')<cr>
inorea _times     ×<left><right><c-r>=Eatchar('\s')<cr>
inorea _xx        ×<left><right><c-r>=Eatchar('\s')<cr>
inorea _x2        ⨯<left><right><c-r>=Eatchar('\s')<cr>
inorea b_xx       ✖<left><right><c-r>=Eatchar('\s')<cr>
inorea _lx        ☓<left><right><c-r>=Eatchar('\s')<cr>
inorea b_lx      𐌗<left><right><c-r>=Eatchar('\s')<cr>
" Hermitian conjugate matrix
inorea _hcm       ⊹<left><right><c-r>=Eatchar('\s')<cr>
inorea _crosshair ⊹<left><right><c-r>=Eatchar('\s')<cr>
inorea _dotplus   ∔<left><right><c-r>=Eatchar('\s')<cr>
inorea _dotpl     ∔<left><right><c-r>=Eatchar('\s')<cr>

" ⵁ⦰⦵⦶⦷🟕🟖🟗🞔🞚ⵔＯ〇🞅⭘
" ⦸⦹⦼⦾⦿𐌏𐍈ⵙⵀ🜕
" ⧀⧁⧄⧅⧆⧇🜔ⴱ𐌈ⴲ
inorea _ox        ⊗<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ox       ⨂<left><right><c-r>=Eatchar('\s')<cr>
inorea _Odv      ⦼<left><right><c-r>=Eatchar('\s')<cr>
inorea _opl       𛲜<left><right><c-r>=Eatchar('\s')<cr>
inorea _lopl     𐌈<left><right><c-r>=Eatchar('\s')<cr>
inorea _Opl      ⨁<left><right><c-r>=Eatchar('\s')<cr>
inorea _omn       ⊝<left><right><c-r>=Eatchar('\s')<cr>
inorea _owmn      ⊖<left><right><c-r>=Eatchar('\s')<cr>
inorea _Omn      🜔<left><right><c-r>=Eatchar('\s')<cr>
inorea _odot      ☉<left><right><c-r>=Eatchar('\s')<cr>
inorea _Odot     𐌏<left><right><c-r>=Eatchar('\s')<cr>
inorea _Odot2     ⨀<left><right><c-r>=Eatchar('\s')<cr>
inorea _oo        ⊚<left><right><c-r>=Eatchar('\s')<cr>
inorea _oo2       ◎<left><right><c-r>=Eatchar('\s')<cr>
inorea _Oo       ⦾<left><right><c-r>=Eatchar('\s')<cr>
inorea _oe        ○<left><right><c-r>=Eatchar('\s')<cr>
inorea _Oe       〇<left><right><c-r>=Eatchar('\s')<cr>
inorea _oeq       ⊜<left><right><c-r>=Eatchar('\s')<cr>
inorea _oast      ⊛<left><right><c-r>=Eatchar('\s')<cr>
inorea _otri      ⎊<left><right><c-r>=Eatchar('\s')<cr>
inorea _ostar     ⍟<left><right><c-r>=Eatchar('\s')<cr>
inorea _Opll     ⦷<left><right><c-r>=Eatchar('\s')<cr>
inorea _Opause   ⦷<left><right><c-r>=Eatchar('\s')<cr>
inorea _Osqare   🟗<left><right><c-r>=Eatchar('\s')<cr>
inorea _Otri     🟕<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ogt      ⧁<left><right><c-r>=Eatchar('\s')<cr>
inorea _Olt      ⧀<left><right><c-r>=Eatchar('\s')<cr>

" ⴳ ⴴ ⴵ
inorea _ltm       ⋉<left><right><c-r>=Eatchar('\s')<cr>
inorea _ltimes    ⋉<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtm       ⋊<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtimes    ⋊<left><right><c-r>=Eatchar('\s')<cr>
inorea _lrtm      ⋈<left><right><c-r>=Eatchar('\s')<cr>
inorea _lrtimes   ⋈<left><right><c-r>=Eatchar('\s')<cr>
inorea _utm       ⴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea _dtm       ⴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea _udtm      ⴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea _hour      ⴵ<left><right><c-r>=Eatchar('\s')<cr>

inorea _spl       ⊞<left><right><c-r>=Eatchar('\s')<cr>
inorea _smn       ⊟<left><right><c-r>=Eatchar('\s')<cr>
inorea _sx        ⊠<left><right><c-r>=Eatchar('\s')<cr>
inorea _ssq       ⊡<left><right><c-r>=Eatchar('\s')<cr>
inorea _sdot      ⚀<left><right><c-r>=Eatchar('\s')<cr>

inorea _ofsl      ⊘<left><right><c-r>=Eatchar('\s')<cr>
inorea _owfsl     ⌀<left><right><c-r>=Eatchar('\s')<cr>
inorea _diameter  ⌀<left><right><c-r>=Eatchar('\s')<cr>
inorea _Owfsl    ⵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea _obsl     ⦸<left><right><c-r>=Eatchar('\s')<cr>
inorea _Owbsl    ⦰<left><right><c-r>=Eatchar('\s')<cr>
inorea _Osl      ⦶<left><right><c-r>=Eatchar('\s')<cr>

inorea _divx      ⋇<left><right><c-r>=Eatchar('\s')<cr>
inorea _xdiv      ⋇<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOperators2 AllFilesOpColor
syn match   UnicodeOperators2 "[∘∗×⨯⋅✖☓𐌗⨉⋇⋄⬝⋉⋊⋈⊹∔]" contains=@NoSpell  containedin=RegExRanges

" syn match   UnicodeOperators2 "/" contains=@NoSpell
hi  link    UnicodeOShapes AllFilesDefaultColor
syn match   UnicodeOShapes "[ⴳⴴⴵ⨂⊗⦼⌀𐌈⨁〇𛲜⊝⊖🜔☉⊚◎⊜⨀𐌏⦾⦷🟗🟕⧁⧀⍟⊞⊟⊠⊡⚀⊘⦸⦶⦰ⵁ⊛⎊]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Sets
"---------------------------

" For all
inorea _fa        ∀<left><right><c-r>=Eatchar('\s')<cr>
inorea _faxs      ∀x∈𝕊<left><right><c-r>=Eatchar('\s')<cr>

" There exists
inorea _te        ∃<left><right><c-r>=Eatchar('\s')<cr>
inorea _tne       ∄<left><right><c-r>=Eatchar('\s')<cr>

" Therefore
inorea _therefore ∴<left><right><c-r>=Eatchar('\s')<cr>
inorea _tf        ∴<left><right><c-r>=Eatchar('\s')<cr>
" Because
inorea _because   ∵<left><right><c-r>=Eatchar('\s')<cr>
inorea _bc        ∵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets0 UnicodeSetsColor
syn match   UnicodeSets0 "[∀∃∄∴∵]" contains=@NoSpell  containedin=RegExRanges

" Empty set, null set
inorea _null     ∅<left><right><c-r>=Eatchar('\s')<cr>
inorea _empty    ∅<left><right><c-r>=Eatchar('\s')<cr>

" Set difference
inorea _setd      ∖<left><right><c-r>=Eatchar('\s')<cr>
" Multimap
inorea _mmap      ⊸<left><right><c-r>=Eatchar('\s')<cr>

" Complement
inorea _comp      ∁<left><right><c-r>=Eatchar('\s')<cr>
" Right s-shaped bag delimiter
inorea _rbag      ⟆<left><right><c-r>=Eatchar('\s')<cr>
" Semidirect
inorea _rsemid    ⋌<left><right><c-r>=Eatchar('\s')<cr>
inorea _lsemid    ⋋<left><right><c-r>=Eatchar('\s')<cr>
inorea _wreath    ≀<left><right><c-r>=Eatchar('\s')<cr>

" INTERSECTION
inorea _inter     ∩<left><right><c-r>=Eatchar('\s')<cr>
inorea _in        ∩<left><right><c-r>=Eatchar('\s')<cr>
inorea _Inter     ⋂<left><right><c-r>=Eatchar('\s')<cr>
inorea _In        ⋂<left><right><c-r>=Eatchar('\s')<cr>
inorea d_in       ⋒<left><right><c-r>=Eatchar('\s')<cr>

" UNION
inorea _union     ∪<left><right><c-r>=Eatchar('\s')<cr>
inorea _un        ∪<left><right><c-r>=Eatchar('\s')<cr>
inorea _Union     ⋃<left><right><c-r>=Eatchar('\s')<cr>
inorea _Un        ⋃<left><right><c-r>=Eatchar('\s')<cr>
inorea d_un       ⋓<left><right><c-r>=Eatchar('\s')<cr>

inorea _unpl      ⊎<left><right><c-r>=Eatchar('\s')<cr>
inorea _undot     ⊍<left><right><c-r>=Eatchar('\s')<cr>
inorea _Unpl     ⨄<left><right><c-r>=Eatchar('\s')<cr>
inorea _Undot    ⨃<left><right><c-r>=Eatchar('\s')<cr>

" ELEMENT OF
inorea _member    ∈<left><right><c-r>=Eatchar('\s')<cr>
inorea _mem       ∈<left><right><c-r>=Eatchar('\s')<cr>
inorea _nmember   ∉<left><right><c-r>=Eatchar('\s')<cr>
inorea _nmem      ∉<left><right><c-r>=Eatchar('\s')<cr>

" CONTAINS AS MEMBER
inorea _contains  ∋<left><right><c-r>=Eatchar('\s')<cr>
inorea _cnt       ∋<left><right><c-r>=Eatchar('\s')<cr>
inorea _scnt      ∍<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncontains ∌<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncnt      ∌<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets1 UnicodeSetsColor
syn match   UnicodeSets1 "[∩∪⋃⋂⋒⋓⊎⊍⨄⨃∈∉∋∌∍]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeSetsO UnicodeSetsColor
syn match   UnicodeSetsO "[∁⟆⋌⋋≀]" contains=@NoSpell  containedin=RegExRanges

" Subsets/superset
inorea _sub       ⊂<left><right><c-r>=Eatchar('\s')<cr>
inorea _sup       ⊃<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsub      ⊄<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsup      ⊅<left><right><c-r>=Eatchar('\s')<cr>
inorea _sube      ⊆<left><right><c-r>=Eatchar('\s')<cr>
inorea _supe      ⊇<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsube     ⊈<left><right><c-r>=Eatchar('\s')<cr>
inorea _subne     ⊊<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsupe     ⊉<left><right><c-r>=Eatchar('\s')<cr>
inorea _supne     ⊋<left><right><c-r>=Eatchar('\s')<cr>

inorea d_sub      ⋐<left><right><c-r>=Eatchar('\s')<cr>
inorea d_sup      ⋑<left><right><c-r>=Eatchar('\s')<cr>

" Normal subgroups
inorea _nmsub     ⊲<left><right><c-r>=Eatchar('\s')<cr>
inorea _nmsube    ⊴<left><right><c-r>=Eatchar('\s')<cr>
inorea _nnmsub    ⋪<left><right><c-r>=Eatchar('\s')<cr>
inorea _nnmsube   ⋬<left><right><c-r>=Eatchar('\s')<cr>
" Contains as normal subgroups
inorea _cnmsub    ⊳<left><right><c-r>=Eatchar('\s')<cr>
inorea _cnmsube   ⊵<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncnmsub   ⋫<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncnmsube  ⋭<left><right><c-r>=Eatchar('\s')<cr>

inorea _lcoset   ⧏<left><right><c-r>=Eatchar('\s')<cr>
inorea _rcoset   ⧐<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets2 UnicodeSetsColor
syn match   UnicodeSets2 "[⊂⊃⊄⊅⊆⊇⊈⊉⊊⊋⊊⊋⋐⋑⊲⊴⋪⋬⊳⊵⋫⋭⧏⧐∖⊸]" contains=@NoSpell  containedin=RegExRanges

" Squared include/union/subset/superset
inorea _sin       ⊓<left><right><c-r>=Eatchar('\s')<cr>
inorea _sIn       ⨅<left><right><c-r>=Eatchar('\s')<cr>
inorea _sun       ⊔<left><right><c-r>=Eatchar('\s')<cr>
inorea _sUn       ⨆<left><right><c-r>=Eatchar('\s')<cr>

inorea _ssub      ⊏<left><right><c-r>=Eatchar('\s')<cr>
inorea _ssup      ⊐<left><right><c-r>=Eatchar('\s')<cr>
inorea _ssube     ⊑<left><right><c-r>=Eatchar('\s')<cr>
inorea _ssupe     ⊒<left><right><c-r>=Eatchar('\s')<cr>
inorea _snsube    ⋢<left><right><c-r>=Eatchar('\s')<cr>
inorea _snsupe    ⋣<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets3 UnicodeSetsColor
syn match   UnicodeSets3 "[⊓⨅⊔⊑⊏⊒⊐⨆⋢⋣]" contains=@NoSpell  containedin=RegExRanges


"---------------------------
" Logic, equality
"---------------------------
inorea _not       ¬<left><right><c-r>=Eatchar('\s')<cr>
inorea _and       ∧<left><right><c-r>=Eatchar('\s')<cr>
inorea _nand      ⊼<left><right><c-r>=Eatchar('\s')<cr>
inorea _or        ∨<left><right><c-r>=Eatchar('\s')<cr>
inorea _nor       ⊽<left><right><c-r>=Eatchar('\s')<cr>
inorea _xor       ⊕<left><right><c-r>=Eatchar('\s')<cr>
inorea _xor2      ⊻<left><right><c-r>=Eatchar('\s')<cr>
inorea _xnor      ⊙<left><right><c-r>=Eatchar('\s')<cr>

inorea _cor       ⋎<left><right><c-r>=Eatchar('\s')<cr>
inorea _cand      ⋏<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLogic  AllFilesOpColor
syn match   UnicodeLogic "[∧∨¬⊻⊕⊙⊼⊽!⋎⋏]" contains=@NoSpell  containedin=RegExRanges

"
inorea _!=        ≠<left><right><c-r>=Eatchar('\s')<cr>
inorea _ne        ≠<left><right><c-r>=Eatchar('\s')<cr>
inorea _3=        ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea _3e        ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea _3eq       ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea _!3=       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea _n3e       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea _3ne       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea _3neq      ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea _~=        ≈<left><right><c-r>=Eatchar('\s')<cr>
inorea _ae        ≈<left><right><c-r>=Eatchar('\s')<cr>
inorea _n~=       ≉<left><right><c-r>=Eatchar('\s')<cr>
inorea _nae       ≉<left><right><c-r>=Eatchar('\s')<cr>
inorea _nane      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea _na2e      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea _nae2      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea _edef      ≝<left><right><c-r>=Eatchar('\s')<cr>
inorea _e?        ≟<left><right><c-r>=Eatchar('\s')<cr>
inorea _n~~       ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea _ntilde    ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea _ntil      ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea _a1e       ≃<left><right><c-r>=Eatchar('\s')<cr>
inorea _ra1e      ⋍<left><right><c-r>=Eatchar('\s')<cr>
inorea _e1a       ≂<left><right><c-r>=Eatchar('\s')<cr>
inorea _na1e      ≄<left><right><c-r>=Eatchar('\s')<cr>
inorea _a2e       ≅<left><right><c-r>=Eatchar('\s')<cr>
inorea _ae2       ≅<left><right><c-r>=Eatchar('\s')<cr>
inorea _ra2e      ≌<left><right><c-r>=Eatchar('\s')<cr>
inorea _rae2      ≌<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtilde    ∽<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtil      ∽<left><right><c-r>=Eatchar('\s')<cr>
inorea _3a        ≋<left><right><c-r>=Eatchar('\s')<cr>
inorea _3ae       ≋<left><right><c-r>=Eatchar('\s')<cr>
inorea _2ae       ≊<left><right><c-r>=Eatchar('\s')<cr>
inorea _4e        ≣<left><right><c-r>=Eatchar('\s')<cr>
inorea _4eq       ≣<left><right><c-r>=Eatchar('\s')<cr>
inorea _ecol      ≕<left><right><c-r>=Eatchar('\s')<cr>
inorea _=:        ≕<left><right><c-r>=Eatchar('\s')<cr>
" Ring equal
inorea _re        ≗<left><right><c-r>=Eatchar('\s')<cr>

"
inorea _:~        ∻<left><right><c-r>=Eatchar('\s')<cr>
inorea _coltil    ∻<left><right><c-r>=Eatchar('\s')<cr>
inorea _:=        ≔<left><right><c-r>=Eatchar('\s')<cr>
inorea _cole      ≔<left><right><c-r>=Eatchar('\s')<cr>
inorea _:-:       ∺<left><right><c-r>=Eatchar('\s')<cr>
inorea _colmncol  ∺<left><right><c-r>=Eatchar('\s')<cr>
inorea _::        ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea _colcol    ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea _2col      ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea _-:        ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea _mncol     ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea _dshcol    ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea _escol     ≑<left><right><c-r>=Eatchar('\s')<cr>
inorea _dote      ≐<left><right><c-r>=Eatchar('\s')<cr>
inorea _dotdsh    ∸<left><right><c-r>=Eatchar('\s')<cr>
inorea _rddote    ≓<left><right><c-r>=Eatchar('\s')<cr>
inorea _lddote    ≒<left><right><c-r>=Eatchar('\s')<cr>
inorea _(=        ≘<left><right><c-r>=Eatchar('\s')<cr>
inorea _ceq       ≘<left><right><c-r>=Eatchar('\s')<cr>
inorea _^=        ≙<left><right><c-r>=Eatchar('\s')<cr>
inorea _ive       ≙<left><right><c-r>=Eatchar('\s')<cr>
inorea _v=        ≚<left><right><c-r>=Eatchar('\s')<cr>
inorea _veq       ≚<left><right><c-r>=Eatchar('\s')<cr>
inorea _eqv       ≍<left><right><c-r>=Eatchar('\s')<cr>
inorea _stareq    ≛<left><right><c-r>=Eatchar('\s')<cr>
inorea _deq       ≜<left><right><c-r>=Eatchar('\s')<cr>
inorea _teq       ≜<left><right><c-r>=Eatchar('\s')<cr>
inorea _ringe     ≖<left><right><c-r>=Eatchar('\s')<cr>
inorea _diffbtw   ≏<left><right><c-r>=Eatchar('\s')<cr>
inorea _bumpeq    ≏<left><right><c-r>=Eatchar('\s')<cr>
" Geometrically equivalent to
inorea _geomeq    ≎<left><right><c-r>=Eatchar('\s')<cr>
inorea _2bump     ≎<left><right><c-r>=Eatchar('\s')<cr>
inorea _Bumped    ≎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeEquality   AllFilesEqualityColor
syn match   UnicodeEquality   "[≁≠≡≃≄≅≋≊⋍≌∽≣≕≗∻≔∺∷≓≒≂∹≑≐∸≘≙≚≍≛≜≜≖≏≎]" contains=@NoSpell  containedin=RegExRanges

inorea _le        ≤<left><right><c-r>=Eatchar('\s')<cr>
inorea _el        ⋜<left><right><c-r>=Eatchar('\s')<cr>
inorea _ge        ≥<left><right><c-r>=Eatchar('\s')<cr>
inorea _eg        ⋝<left><right><c-r>=Eatchar('\s')<cr>
inorea _nle       ≰<left><right><c-r>=Eatchar('\s')<cr>
inorea _nge       ≱<left><right><c-r>=Eatchar('\s')<cr>

inorea _!<        ≮<left><right><c-r>=Eatchar('\s')<cr>
inorea _nl        ≮<left><right><c-r>=Eatchar('\s')<cr>
inorea _!>        ≯<left><right><c-r>=Eatchar('\s')<cr>
inorea _ng        ≯<left><right><c-r>=Eatchar('\s')<cr>

inorea _l2e       ≦<left><right><c-r>=Eatchar('\s')<cr>
inorea _lae       ≲<left><right><c-r>=Eatchar('\s')<cr>
inorea _leg       ⋚<left><right><c-r>=Eatchar('\s')<cr>
inorea _lg        ≶<left><right><c-r>=Eatchar('\s')<cr>
inorea _lnae      ⋦<left><right><c-r>=Eatchar('\s')<cr>
inorea _ln2e      ≨<left><right><c-r>=Eatchar('\s')<cr>
inorea _g2e       ≧<left><right><c-r>=Eatchar('\s')<cr>
inorea _gnae      ⋧<left><right><c-r>=Eatchar('\s')<cr>
inorea _gn2e      ≩<left><right><c-r>=Eatchar('\s')<cr>
inorea _gae       ≳<left><right><c-r>=Eatchar('\s')<cr>
inorea _gel       ⋛<left><right><c-r>=Eatchar('\s')<cr>
inorea _gl        ≷<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlae      ≴<left><right><c-r>=Eatchar('\s')<cr>
inorea _ngae      ≵<left><right><c-r>=Eatchar('\s')<cr>

inorea _ldot      ⋖<left><right><c-r>=Eatchar('\s')<cr>
inorea _gdot      ⋗<left><right><c-r>=Eatchar('\s')<cr>
inorea _ledot     ⩿<left><right><c-r>=Eatchar('\s')<cr>
inorea _gedot     ⪀<left><right><c-r>=Eatchar('\s')<cr>

" Much less/greater
inorea _2l        ≪<left><right><c-r>=Eatchar('\s')<cr>
inorea _ml        ≪<left><right><c-r>=Eatchar('\s')<cr>
inorea _2g        ≫<left><right><c-r>=Eatchar('\s')<cr>
inorea _mg        ≫<left><right><c-r>=Eatchar('\s')<cr>
inorea _3g        ⋙<left><right><c-r>=Eatchar('\s')<cr>
inorea _3l        ⋘<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeInEquality AllFilesEqualityColor
syn match   UnicodeInEquality "[≤⋜≥⋝≰≱≈≉≮≯≢≇≦≲⋚≶⋦≨≧⋧≩≳⋛≷≴≵⋖⋗⩿⪀≪≪≫≫⋙⋘]" contains=@NoSpell  containedin=RegExRanges

" Preceding
inorea _pc        ≺<left><right><c-r>=Eatchar('\s')<cr>
inorea _pce       ≼<left><right><c-r>=Eatchar('\s')<cr>
inorea _epc       ⋞<left><right><c-r>=Eatchar('\s')<cr>
inorea _npce      ⋠<left><right><c-r>=Eatchar('\s')<cr>
inorea _npc       ⊀<left><right><c-r>=Eatchar('\s')<cr>
inorea _pcae      ≾<left><right><c-r>=Eatchar('\s')<cr>
inorea _pcnae     ⋨<left><right><c-r>=Eatchar('\s')<cr>

" Succeeding
inorea _sc        ≻<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsc       ⊁<left><right><c-r>=Eatchar('\s')<cr>
inorea _esc       ⋟<left><right><c-r>=Eatchar('\s')<cr>
inorea _sce       ≽<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsce      ⋡<left><right><c-r>=Eatchar('\s')<cr>
inorea _scae      ≿<left><right><c-r>=Eatchar('\s')<cr>
inorea _scnae     ⋩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeCeding AllFilesEqualityColor
syn match   UnicodeCeding "[≿≽⋩≻≾≼⋨≺⋞⋠⊀⋡⊁⋟]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Arrows
"---------------------------

inorea _imp1      →<left><right><c-r>=Eatchar('\s')<cr>
inorea _imp       ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea _iff1      ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea _iff       ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea _-->       →<left><right><c-r>=Eatchar('\s')<cr>
inorea _==>       ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea _<==       ⇐<left><right><c-r>=Eatchar('\s')<cr>

inorea _<->       ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea _<-/->     ⇹<left><right><c-r>=Eatchar('\s')<cr>
inorea _<=>       ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea _<=/=>     ⇎<left><right><c-r>=Eatchar('\s')<cr>

inorea _<-->      ⇆<left><right><c-r>=Eatchar('\s')<cr>
inorea _-><-      ⇄<left><right><c-r>=Eatchar('\s')<cr>
inorea _<-<-      ⇇<left><right><c-r>=Eatchar('\s')<cr>
inorea _->->      ⇉<left><right><c-r>=Eatchar('\s')<cr>

inorea _->'       ⇀<left><right><c-r>=Eatchar('\s')<cr>
inorea _->,       ⇁<left><right><c-r>=Eatchar('\s')<cr>

inorea _rta       →<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfa       ←<left><right><c-r>=Eatchar('\s')<cr>
inorea _upa       ↑<left><right><c-r>=Eatchar('\s')<cr>
inorea _dna       ↓<left><right><c-r>=Eatchar('\s')<cr>
inorea _ula       ↖<left><right><c-r>=Eatchar('\s')<cr>
inorea _ura       ↗<left><right><c-r>=Eatchar('\s')<cr>
inorea _dra       ↘<left><right><c-r>=Eatchar('\s')<cr>
inorea _dla       ↙<left><right><c-r>=Eatchar('\s')<cr>
inorea _uldra     ⤡<left><right><c-r>=Eatchar('\s')<cr>
inorea _urdla     ⤢<left><right><c-r>=Eatchar('\s')<cr>
inorea _lra       ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea _uda       ↕<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlfa      ↚<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlra      ↮<left><right><c-r>=Eatchar('\s')<cr>
inorea _nrta      ↛<left><right><c-r>=Eatchar('\s')<cr>
inorea _vlra      ⇹<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows1 AllFilesArrowsColor
syn match   UnicodeArrows1 "[→←↑↓↖↗↘↙⤡⤢↔↕↚↮↛⇹]" contains=@NoSpell  containedin=RegExRanges

" Double/long arrow
inorea _drta     ⟶<left><right><c-r>=Eatchar('\s')<cr>
inorea _dlfa     ⟵<left><right><c-r>=Eatchar('\s')<cr>
inorea _dlra     ⟷<left><right><c-r>=Eatchar('\s')<cr>

" Sans-serif long
inorea _lrta      🡒<left><right><c-r>=Eatchar('\s')<cr>
inorea _llfa      🡐<left><right><c-r>=Eatchar('\s')<cr>
inorea _lupa      🡑<left><right><c-r>=Eatchar('\s')<cr>
inorea _ldna      🡓<left><right><c-r>=Eatchar('\s')<cr>
inorea _lula      🡔<left><right><c-r>=Eatchar('\s')<cr>
inorea _lura      🡕<left><right><c-r>=Eatchar('\s')<cr>
inorea _ldra      🡖<left><right><c-r>=Eatchar('\s')<cr>
inorea _ldla      🡗<left><right><c-r>=Eatchar('\s')<cr>
inorea _llra      🡘<left><right><c-r>=Eatchar('\s')<cr>
inorea _luda      🡙<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows2 AllFilesArrowsColor
syn match   UnicodeArrows2 "[⟶⟵⟷🡒🡐🡑🡓🡔🡕🡖🡗🡘🡙]" contains=@NoSpell  containedin=RegExRanges

inorea _rta2      ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfa2      ⇐<left><right><c-r>=Eatchar('\s')<cr>
inorea _upa2      ⇑<left><right><c-r>=Eatchar('\s')<cr>
inorea _dna2      ⇓<left><right><c-r>=Eatchar('\s')<cr>
inorea _uda2      ⇕<left><right><c-r>=Eatchar('\s')<cr>
inorea _ura2      ⇗<left><right><c-r>=Eatchar('\s')<cr>
inorea _ula2      ⇖<left><right><c-r>=Eatchar('\s')<cr>
inorea _dra2      ⇘<left><right><c-r>=Eatchar('\s')<cr>
inorea _dla2      ⇙<left><right><c-r>=Eatchar('\s')<cr>
inorea _lra2      ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea _nrta2     ⇏<left><right><c-r>=Eatchar('\s')<cr>
inorea _vlfa2     ⇍<left><right><c-r>=Eatchar('\s')<cr>
inorea _vlra2     ⇎<left><right><c-r>=Eatchar('\s')<cr>

inorea _lfa3      ⇚<left><right><c-r>=Eatchar('\s')<cr>
inorea _rta3      ⇛<left><right><c-r>=Eatchar('\s')<cr>

inorea _dna4     ⟱<left><right><c-r>=Eatchar('\s')<cr>
inorea _upa4     ⟰<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows3 AllFilesArrowsColor
syn match   UnicodeArrows3 "[⇒⇐⇑⇓⇕⇗⇖⇘⇙⇔⇏⇍⇎⇚⇛⟱⟰]" contains=@NoSpell  containedin=RegExRanges

inorea _2lra      ⇆<left><right><c-r>=Eatchar('\s')<cr>
inorea _2rla      ⇄<left><right><c-r>=Eatchar('\s')<cr>
inorea _2lfa      ⇇<left><right><c-r>=Eatchar('\s')<cr>
inorea _2rta      ⇉<left><right><c-r>=Eatchar('\s')<cr>
inorea _2upa      ⇈<left><right><c-r>=Eatchar('\s')<cr>
inorea _2dna      ⇊<left><right><c-r>=Eatchar('\s')<cr>
inorea _2uda      ⇅<left><right><c-r>=Eatchar('\s')<cr>
inorea _2dua      ⇵<left><right><c-r>=Eatchar('\s')<cr>

inorea _3lfa      ⬱<left><right><c-r>=Eatchar('\s')<cr>
inorea _3rta      ⇶<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows4 AllFilesArrowsColor
syn match   UnicodeArrows4 "[⇆⇄⇇⇉⇈⇊⇅⇵⬱⇶]" contains=@NoSpell  containedin=RegExRanges

" Top/bot/right/left harpoon arrow
inorea _rtha      ⇀<left><right><c-r>=Eatchar('\s')<cr>
inorea _rbha      ⇁<left><right><c-r>=Eatchar('\s')<cr>
inorea _ltha      ↼<left><right><c-r>=Eatchar('\s')<cr>
inorea _lbha      ↽<left><right><c-r>=Eatchar('\s')<cr>
inorea _ulha      ↿<left><right><c-r>=Eatchar('\s')<cr>
inorea _urha      ↾<left><right><c-r>=Eatchar('\s')<cr>
inorea _dlha      ⇃<left><right><c-r>=Eatchar('\s')<cr>
inorea _drha      ⇂<left><right><c-r>=Eatchar('\s')<cr>

inorea _ltrbha    ⇋<left><right><c-r>=Eatchar('\s')<cr>
inorea _rbltha    ⇌<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows5 AllFilesArrowsColor
syn match   UnicodeArrows5 "[⇀⇁↼↽↿↾⇃⇂⇋⇌]" contains=@NoSpell  containedin=RegExRanges

" Hollow
inorea _hlfa      ⇦<left><right><c-r>=Eatchar('\s')<cr>
inorea _hrta      ⇨<left><right><c-r>=Eatchar('\s')<cr>
inorea _hupa      ⇧<left><right><c-r>=Eatchar('\s')<cr>
inorea _hdna      ⇩<left><right><c-r>=Eatchar('\s')<cr>
inorea _hlua      ⬁<left><right><c-r>=Eatchar('\s')<cr>
inorea _hrua      ⬀<left><right><c-r>=Eatchar('\s')<cr>
inorea _hrda      ⬂<left><right><c-r>=Eatchar('\s')<cr>
inorea _hlda      ⬃<left><right><c-r>=Eatchar('\s')<cr>
inorea _hlra      ⬄<left><right><c-r>=Eatchar('\s')<cr>
inorea _huda      ⇳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows6 AllFilesArrowsColor
syn match   UnicodeArrows6 "[⇦⇨⇧⇩⬁⬀⬂⬃⬄⇳]" contains=@NoSpell  containedin=RegExRanges

" Full
inorea _flfa      ⬅<left><right><c-r>=Eatchar('\s')<cr>
inorea _frta      ➡<left><right><c-r>=Eatchar('\s')<cr>
inorea _fupa      ⬆<left><right><c-r>=Eatchar('\s')<cr>
inorea _fdna      ⬇<left><right><c-r>=Eatchar('\s')<cr>
inorea _flua      ⬉<left><right><c-r>=Eatchar('\s')<cr>
inorea _frua      ⬈<left><right><c-r>=Eatchar('\s')<cr>
inorea _frda      ⬊<left><right><c-r>=Eatchar('\s')<cr>
inorea _flda      ⬋<left><right><c-r>=Eatchar('\s')<cr>
inorea _flra      ⬌<left><right><c-r>=Eatchar('\s')<cr>
inorea _fuda      ⬍<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows7 AllFilesArrowsColor
syn match   UnicodeArrows7 "[⬅➡⬆⬇⬉⬈⬊⬋⬌⬍]" contains=@NoSpell  containedin=RegExRanges

" 2 headed
inorea _2hda      ↡<left><right><c-r>=Eatchar('\s')<cr>
inorea _2hua      ↟<left><right><c-r>=Eatchar('\s')<cr>
inorea _2hla      ↞<left><right><c-r>=Eatchar('\s')<cr>
inorea _2hra      ↠<left><right><c-r>=Eatchar('\s')<cr>

" Arrow with bar
inorea _dnba      ↧<left><right><c-r>=Eatchar('\s')<cr>
inorea _upba      ↥<left><right><c-r>=Eatchar('\s')<cr>
inorea _udba      ↨<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfba      ↤<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtba      ↦<left><right><c-r>=Eatchar('\s')<cr>

" Very long arrows
inorea _vlrta2    ⟹<left><right><c-r>=Eatchar('\s')<cr>
inorea _vllfa2    ⟸<left><right><c-r>=Eatchar('\s')<cr>
inorea _vllra2    ⟺<left><right><c-r>=Eatchar('\s')<cr>

" Superscript/subscript
inorea z_lfa      ˿<left><right><c-r>=Eatchar('\s')<cr>
inorea a_upa      ꜛ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dna      ꜜ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows8 AllFilesArrowsColor
syn match   UnicodeArrows8 "[↡↟↞↠˿ꜛꜜ↧↥↨↤↦]" contains=@NoSpell  containedin=RegExRanges
syn match   UnicodeArrows8 "[⟹⟸⟺]" contains=@NoSpell  containedin=RegExRanges

" Squiggle
inorea _leadsto   ⇝<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtsqa     ⇝<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfsqa     ⇜<left><right><c-r>=Eatchar('\s')<cr>

" Loop arrow
inorea _lfla      ↫<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtla      ↬<left><right><c-r>=Eatchar('\s')<cr>

" Tail arrow
inorea _lfta      ↢<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtta      ↣<left><right><c-r>=Eatchar('\s')<cr>

" Wave arrow
inorea _lrwa      ↭<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtwa      ↝<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfwa      ↜<left><right><c-r>=Eatchar('\s')<cr>
inorea _lrtwa     ⤳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows9 AllFilesArrowsColor
syn match   UnicodeArrows9 "[⇝⇜↫↬↢↜↣↝↭⤳]" contains=@NoSpell  containedin=RegExRanges


" L arrow
inorea _laul      ↰<left><right><c-r>=Eatchar('\s')<cr>
inorea _laur      ↱<left><right><c-r>=Eatchar('\s')<cr>
inorea _ladl      ↲<left><right><c-r>=Eatchar('\s')<cr>
inorea _ladr      ↳<left><right><c-r>=Eatchar('\s')<cr>
inorea _lald      ⬐<left><right><c-r>=Eatchar('\s')<cr>
inorea _lard      ⬎<left><right><c-r>=Eatchar('\s')<cr>
inorea _lalu      ⬑<left><right><c-r>=Eatchar('\s')<cr>
inorea _laru      ⬏<left><right><c-r>=Eatchar('\s')<cr>

" Hook
inorea _hklfa     ↩<left><right><c-r>=Eatchar('\s')<cr>
inorea _hkrta     ↪<left><right><c-r>=Eatchar('\s')<cr>

" Curve over/under
inorea _colfa     ↶<left><right><c-r>=Eatchar('\s')<cr>
inorea _corta     ↷<left><right><c-r>=Eatchar('\s')<cr>
inorea _culfa     ↻<left><right><c-r>=Eatchar('\s')<cr>
inorea _curta     ↺<left><right><c-r>=Eatchar('\s')<cr>
inorea _crta      ⥀<left><right><c-r>=Eatchar('\s')<cr>
inorea _clfa      ⥁<left><right><c-r>=Eatchar('\s')<cr>
inorea _crta2    ⟲<left><right><c-r>=Eatchar('\s')<cr>
inorea _clfa2    ⟳<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeArrows10 AllFilesArrowsColor
" syn match   UnicodeArrows10 "[↰↱↲↳⬐⬎⬑⬏↩↪↶↷↻↺⥀⥁⟲⟳]" contains=@NoSpell  containedin=RegExRanges

" Bot/top corners
inorea _blc       ⌞<left><right><c-r>=Eatchar('\s')<cr>
inorea _brc       ⌟<left><right><c-r>=Eatchar('\s')<cr>
inorea _tlc       ⌜<left><right><c-r>=Eatchar('\s')<cr>
inorea _trc       ⌝<left><right><c-r>=Eatchar('\s')<cr>

inorea _sblc      ˻<left><right><c-r>=Eatchar('\s')<cr>
inorea _sbrc      ˼<left><right><c-r>=Eatchar('\s')<cr>
inorea _stlc      ˹<left><right><c-r>=Eatchar('\s')<cr>
inorea _strc      ˺<left><right><c-r>=Eatchar('\s')<cr>

inorea _tie       ⁀<left><right><c-r>=Eatchar('\s')<cr>
inorea _utie      ‿<left><right><c-r>=Eatchar('\s')<cr>
inorea _2tie      ⁐<left><right><c-r>=Eatchar('\s')<cr>

" Quotes
inorea _ldq        “<left><right><c-r>=Eatchar('\s')<cr>
inorea _rdq        ”<left><right><c-r>=Eatchar('\s')<cr>
inorea _lq         ‘<left><right><c-r>=Eatchar('\s')<cr>
inorea _rq         ’<left><right><c-r>=Eatchar('\s')<cr>
inorea _dlq        „<left><right><c-r>=Eatchar('\s')<cr>
inorea _slq        ‚<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeEdges AllFilesFuncColor
" syn match   UnicodeEdges "[⌞⌟⌜⌝˻˼˹˺⁀‿⁐]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Fractions
"---------------------------
inorea _f12       ½<left><right><c-r>=Eatchar('\s')<cr>
inorea _f13       ⅓<left><right><c-r>=Eatchar('\s')<cr>
inorea _f14       ¼<left><right><c-r>=Eatchar('\s')<cr>
inorea _f15       ⅕<left><right><c-r>=Eatchar('\s')<cr>
inorea _f16       ⅙<left><right><c-r>=Eatchar('\s')<cr>
inorea _f18       ⅛<left><right><c-r>=Eatchar('\s')<cr>
inorea _f23       ⅔<left><right><c-r>=Eatchar('\s')<cr>
inorea _f25       ⅖<left><right><c-r>=Eatchar('\s')<cr>
inorea _f34       ¾<left><right><c-r>=Eatchar('\s')<cr>
inorea _f35       ⅗<left><right><c-r>=Eatchar('\s')<cr>
inorea _f38       ⅜<left><right><c-r>=Eatchar('\s')<cr>
inorea _f45       ⅘<left><right><c-r>=Eatchar('\s')<cr>
inorea _f56       ⅚<left><right><c-r>=Eatchar('\s')<cr>
inorea _f58       ⅝<left><right><c-r>=Eatchar('\s')<cr>
inorea _f78       ⅞<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeFractions  AllFilesNumColor
" syn match   UnicodeFractions  "[½⅓¼⅕⅙⅛⅔⅖¾⅗⅜⅘⅚⅝⅞]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Brackets/parenthesis
"---------------------------

" Angle bracket
inorea _lab       ⟨<left><right><c-r>=Eatchar('\s')<cr>
inorea _a<        ⟨<left><right><c-r>=Eatchar('\s')<cr>
inorea _mlab      ❬<left><right><c-r>=Eatchar('\s')<cr>
inorea _hlab      ❮<left><right><c-r>=Eatchar('\s')<cr>
inorea _vhlab     ❰<left><right><c-r>=Eatchar('\s')<cr>
inorea _rab       ⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea _a>        ⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea _mrab      ❭<left><right><c-r>=Eatchar('\s')<cr>
inorea _hrab      ❯<left><right><c-r>=Eatchar('\s')<cr>
inorea _vhrab     ❱<left><right><c-r>=Eatchar('\s')<cr>
inorea _ab2      ⟨⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea _2lab      ⟪<left><right><c-r>=Eatchar('\s')<cr>
inorea _2rab      ⟫<left><right><c-r>=Eatchar('\s')<cr>
inorea _2rab2    ⟪⟫<left><right><c-r>=Eatchar('\s')<cr>

inorea d_lab     《<left><right><c-r>=Eatchar('\s')<cr>
inorea d_rab     》<left><right><c-r>=Eatchar('\s')<cr>

" Flattened parenthesis
inorea _lfp       ⟮<left><right><c-r>=Eatchar('\s')<cr>
inorea _rfp       ⟯<left><right><c-r>=Eatchar('\s')<cr>

" Ceil/floor
inorea _lceil     ⌈<left><right><c-r>=Eatchar('\s')<cr>
inorea _lfloor    ⌊<left><right><c-r>=Eatchar('\s')<cr>
inorea _rceil     ⌉<left><right><c-r>=Eatchar('\s')<cr>
inorea _rfloor    ⌋<left><right><c-r>=Eatchar('\s')<cr>

" Angle quotes
inorea _2laq      «<left><right><c-r>=Eatchar('\s')<cr>
inorea _2raq      »<left><right><c-r>=Eatchar('\s')<cr>

hi  link  UnicodeTBrk  AllFilesEqualityColor
syn match UnicodeTBrk  "[⟨⟩⟪⟫«»❬❮❰❭❯❱《》]" contains=@NoSpell  containedin=RegExRanges

inorea d_lpa      ⟦<left><right><c-r>=Eatchar('\s')<cr>
inorea d_rpa      ⟧<left><right><c-r>=Eatchar('\s')<cr>
inorea d_lcb      ⦃<left><right><c-r>=Eatchar('\s')<cr>
inorea d_rcb      ⦄<left><right><c-r>=Eatchar('\s')<cr>

hi  link  UnicodeDbParen   UnicodeDBColor
syn match UnicodeDbParen   "[⟦⟧⦃⦄]" contains=@NoSpell  containedin=RegExRanges

inorea _topp     ︵<left><right><c-r>=Eatchar('\s')<cr>
inorea _botp     ︶<left><right><c-r>=Eatchar('\s')<cr>

" Curves and function builder shapes
" ◜◝◟◞︵︶()⎛⎞⎝⎠⎧ ⎫⎩ ⎭⎰╰ ╯╮╭‾᭴⦦⦧⦢⦣⦟⼈㇏𝈺𝈻 ⼃⵰৴ノ𝀎Ꜥᜆ⎎
" ⁀‿◠◡ ◠ ◡ ∿ ~∼/\⊃⊂／＼⨜∫⳽
" hi  link    UnicodeCurves  AllFilesOpColor
" syn match   UnicodeCurves  "[◜◝◟◞╰╯╭╮⨜᭴⦦⦧⦢⦣⦟⳽⵰⼈⼃৴ノ𝀎Ꜥᜆ⎎㇏𝈺𝈻◠◡／＼]" contains=@NoSpell  containedin=RegExRanges

" Box drawings: u2500->u257F
" ┌───┬───┐ ┏━━━┳━━━┓ ╔═══╦═══╗
" │   │   │ ┃   ┃   ┃ ║   ║   ║
" ├───┼───┤ ┣━━━╋━━━┫ ╠═══╬═══╣
" │   │   │ ┃   ┃   ┃ ║   ║   ║
" └───┴───┘ ┗━━━┻━━━┛ ╚═══╩═══╝
"                           ┌──┐
" x[n]🡒+o──w[n]──────┬───🡒│b₀├─🡒+o─🡒y[n]
"        +            │     └──┘    +
"        🡑            🡓             🡑
"        │          ┌───┐           │
"        │          │z⁻¹│           │
"        │          └─┬─┘           │
"        │   ┌──┐     │     ┌──┐    │
"        o-🡐│a₁│🡐───┼───🡒│b₁├─🡒+o
"        -   └──┘     │     └──┘    +
"        🡑            🡓             🡑
"        │          ┌───┐           │
"        │          │z⁻¹│           │
"        │          └─┬─┘           │
"        │            │             │
"        │   ┌──┐     │     ┌──┐    │
"        └───┤a₂│🡐───┴───🡒│b₂├────┘
"            └──┘           └──┘
inorea _btl     ┌<left><right><c-r>=Eatchar('\s')<cr>
inorea _bbl     └<left><right><c-r>=Eatchar('\s')<cr>
inorea _btr     ┐<left><right><c-r>=Eatchar('\s')<cr>
inorea _bbr     ┘<left><right><c-r>=Eatchar('\s')<cr>
inorea _bv      │<left><right><c-r>=Eatchar('\s')<cr>
inorea _bh      ─<left><right><c-r>=Eatchar('\s')<cr>
inorea _bdn     ┬<left><right><c-r>=Eatchar('\s')<cr>
inorea _bpl     ┼<left><right><c-r>=Eatchar('\s')<cr>
inorea _bup     ┴<left><right><c-r>=Eatchar('\s')<cr>
inorea _brt     ├<left><right><c-r>=Eatchar('\s')<cr>
inorea _blf     ┤<left><right><c-r>=Eatchar('\s')<cr>
inorea _box     ┌───┬───┐<cr>│   │   │<cr>├───┼───┤<cr>│   │   │<cr>└───┴───┘<left><right><c-r>=Eatchar('\s')<cr>
inorea _boxs    ┌───┐<cr>│   │<cr>└───┘<left><right><c-r>=Eatchar('\s')<cr>
inorea _boxr    ┌──────┐<cr>│      │<cr>└──────┘<left><right><c-r>=Eatchar('\s')<cr>
inorea _boxl    ┌──────┐<cr>│      │<cr>└──────┘<left><right><c-r>=Eatchar('\s')<cr>

inorea b_btl     ┏<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bbl     ┗<left><right><c-r>=Eatchar('\s')<cr>
inorea b_btr     ┓<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bbr     ┛<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bv      ┃<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bh      ━<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bdn     ┳<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bpl     ╋<left><right><c-r>=Eatchar('\s')<cr>
inorea b_bup     ┻<left><right><c-r>=Eatchar('\s')<cr>
inorea b_brt     ┣<left><right><c-r>=Eatchar('\s')<cr>
inorea b_blf     ┫<left><right><c-r>=Eatchar('\s')<cr>
inorea b_box    ┏━━━┳━━━┓<cr>┃   ┃   ┃<cr>┣━━━╋━━━┫<cr>┃   ┃   ┃<cr>┗━━━┻━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea b_boxs   ┏━━━┓<cr>┃   ┃<cr>┗━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea b_boxr   ┏━━━━━━┓<cr>┃      ┃<cr>┗━━━━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea b_boxl   ┏━━━━━━┓<cr>┃      ┃<cr>┗━━━━━━┛<left><right><c-r>=Eatchar('\s')<cr>

inorea d_btl     ╔<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bbl     ╚<left><right><c-r>=Eatchar('\s')<cr>
inorea d_btr     ╗<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bbr     ╝<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bv      ║<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bh      ═<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bdn     ╦<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bpl     ╬<left><right><c-r>=Eatchar('\s')<cr>
inorea d_bup     ╩<left><right><c-r>=Eatchar('\s')<cr>
inorea d_brt     ╠<left><right><c-r>=Eatchar('\s')<cr>
inorea d_blf     ╣<left><right><c-r>=Eatchar('\s')<cr>
inorea d_box    ╔═══╦═══╗<cr>║   ║   ║<cr>╠═══╬═══╣<cr>║   ║   ║<cr>╚═══╩═══╝<left><right><c-r>=Eatchar('\s')<cr>
inorea d_boxs   ╔═══╗<cr>║   ║<cr>╚═══╝<left><right><c-r>=Eatchar('\s')<cr>
inorea d_boxr   ╔══════╗<cr>║      ║<cr>╚══════╝<left><right><c-r>=Eatchar('\s')<cr>
inorea d_boxl   ╔══════╗<cr>║      ║<cr>╚══════╝<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeBoxDrawings  AllFilesDefaultColor
syn match   UnicodeBoxDrawings  "[┌└┐┘│─┬┼┴├┤┏┗┓┛┃━┳╋┻┣┫╔╚╗╝║═╦╬╩╠╣]" contains=@NoSpell  containedin=RegExRanges


" Multi-line parenthesis, square/curly brackets
inorea _npa          ⎛⎞<cr>⎜⎟<cr>⎝⎠<left><right><c-r>=Eatchar('\s')<cr>
inorea _nparen       ⎛⎞<cr>⎜⎟<cr>⎝⎠<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsb          ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsbrack      ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsbracket    ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncb          ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncbrack      ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _ncbracket    ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cb          ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cbrack      ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cbracket    ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cb2         ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cbrack2     ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>
inorea _2cbracket2   ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeMultiParen AllFilesFuncColor
syn match   UnicodeMultiParen "[︵︶⎛⎞⎜⎟⎝⎠⟮⟯]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeMultiSBrk AllFilesFuncColor
syn match   UnicodeMultiSBrk "[⎡⎤⎢⎥⎣⎦⌈⌊⌉⌋]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeMultiCBrk AllFilesCBrColor
syn match   UnicodeMultiCBrk "[⎧⎫⎪⎨⎬⎩⎭⎰⎱]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Tees
"---------------------------

" Tack, turnstile, tee, yields, proves, satisfies, entails, assert
" inorea _\|-      ⊢<left><right><c-r>=Eatchar('\s')<cr>
" inorea _!\|-     ⊬<left><right><c-r>=Eatchar('\s')<cr>
inorea _assert   ⊦<left><right><c-r>=Eatchar('\s')<cr>
inorea _tee      ⊢<left><right><c-r>=Eatchar('\s')<cr>
inorea _ntee     ⊬<left><right><c-r>=Eatchar('\s')<cr>
inorea _rtee     ⊣<left><right><c-r>=Eatchar('\s')<cr>
inorea _-\|      ⊣<left><right><c-r>=Eatchar('\s')<cr>
inorea _top      ⊤<left><right><c-r>=Eatchar('\s')<cr>
inorea _bot      ⊥<left><right><c-r>=Eatchar('\s')<cr>
inorea _perp     ⟂<left><right><c-r>=Eatchar('\s')<cr>
inorea _ltop     ⟙<left><right><c-r>=Eatchar('\s')<cr>
inorea _ltop2    丅<left><right><c-r>=Eatchar('\s')<cr>
inorea _lbot     ⟘<left><right><c-r>=Eatchar('\s')<cr>
inorea _lbot2    丄<left><right><c-r>=Eatchar('\s')<cr>
inorea __bot      ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __perp     ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_bot      ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_perp     ᗮ<left><right><c-r>=Eatchar('\s')<cr>

" Double turnstile, entails, models, true ⊨ models ⊧
inorea _tee2     ⊨<left><right><c-r>=Eatchar('\s')<cr>
inorea _stee2    ⊧<left><right><c-r>=Eatchar('\s')<cr>
inorea _ntee2    ⊭<left><right><c-r>=Eatchar('\s')<cr>
inorea _n2tee2   ⊯<left><right><c-r>=Eatchar('\s')<cr>

" Forces, does not force, satisfies
inorea _sat      ⊩<left><right><c-r>=Eatchar('\s')<cr>
inorea _2tee     ⊩<left><right><c-r>=Eatchar('\s')<cr>
inorea _nsat     ⊮<left><right><c-r>=Eatchar('\s')<cr>
inorea _n2tee    ⊮<left><right><c-r>=Eatchar('\s')<cr>

inorea _2tee2    ⊫<left><right><c-r>=Eatchar('\s')<cr>
inorea _3tee     ⊪<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeTees UnicodeSetsColor
syn match   UnicodeTees "[⊦⊢⊬⊣⊤⊥⟂⟙丅⟘丄ᗮ⊨⊧⊭⊩⊮⊫⊯⊪]" contains=@NoSpell  containedin=RegExRanges


"---------------------------
" Algebra
"---------------------------

" Partial differential
inorea _partial   ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea _pdiff     ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea _del       ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea _ldel     𝜕<left><right><c-r>=Eatchar('\s')<cr>
inorea _gradop    ∇<left><right><c-r>=Eatchar('\s')<cr>
inorea _prime     ′<left><right><c-r>=Eatchar('\s')<cr>
inorea _'         ′<left><right><c-r>=Eatchar('\s')<cr>
inorea _rprime    ‵<left><right><c-r>=Eatchar('\s')<cr>
inorea _`         ‵<left><right><c-r>=Eatchar('\s')<cr>

" N-ARY PRODUCT
inorea _mult      ∏<left><right><c-r>=Eatchar('\s')<cr>
inorea _prod      ∏<left><right><c-r>=Eatchar('\s')<cr>
inorea _cprod     ∐<left><right><c-r>=Eatchar('\s')<cr>

" N-ARY SUMMATION
" inorea _sum       Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea _sum       ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea d_sum      ⅀<left><right><c-r>=Eatchar('\s')<cr>

" N-ary logical or logical and
inorea _And       ⋀<left><right><c-r>=Eatchar('\s')<cr>
inorea _Or        ⋁<left><right><c-r>=Eatchar('\s')<cr>

inorea _int       ∫<left><right><c-r>=Eatchar('\s')<cr>
inorea _2int      ∬<left><right><c-r>=Eatchar('\s')<cr>
inorea _3int      ∭<left><right><c-r>=Eatchar('\s')<cr>
inorea _into      ∮<left><right><c-r>=Eatchar('\s')<cr>
inorea _int0      ∮<left><right><c-r>=Eatchar('\s')<cr>
inorea _2int0     ∯<left><right><c-r>=Eatchar('\s')<cr>
inorea _2into     ∯<left><right><c-r>=Eatchar('\s')<cr>
inorea _3int0     ∰<left><right><c-r>=Eatchar('\s')<cr>
inorea _3into     ∰<left><right><c-r>=Eatchar('\s')<cr>
inorea _intc      ∲<left><right><c-r>=Eatchar('\s')<cr>
inorea _inta      ∳<left><right><c-r>=Eatchar('\s')<cr>

hi  link   UnicodeAlgebra     AllFilesOpColor
syn match  UnicodeAlgebra     "[∂𝜕∫∮∯∯∰∰∲∳∬∭′‵]" contains=@NoSpell  containedin=RegExRanges

hi  link   UnicodeAlgebraNary AllFilesMultOpColor
syn match  UnicodeAlgebraNary "[∏∐∑⋀⋁]" contains=@NoSpell  containedin=RegExRanges


"---------------------------
" Math terms: Other
"---------------------------

inorea _hbar      ħ<left><right><c-r>=Eatchar('\s')<cr>
inorea _planck    ħ<left><right><c-r>=Eatchar('\s')<cr>
inorea _eul       ⅇ<left><right><c-r>=Eatchar('\s')<cr>

inorea _sqrt      √<left><right><c-r>=Eatchar('\s')<cr>
inorea _sq        √<left><right><c-r>=Eatchar('\s')<cr>
inorea _sq3       ∛<left><right><c-r>=Eatchar('\s')<cr>
inorea _sq4       ∜<left><right><c-r>=Eatchar('\s')<cr>
inorea _inf       ∞<left><right><c-r>=Eatchar('\s')<cr>

" Proportional to
inorea _prop      ∝<left><right><c-r>=Eatchar('\s')<cr>

inorea _sine      ∿<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOther   AllFilesOpColor
syn match   UnicodeOther   "[∿∝ħⅇ]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeOperators3 AllFilesOpColor
syn match   UnicodeOperators3 "[√∛∜]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeInfinity   AllFilesNumColor
syn match   UnicodeInfinity   "[∞]" contains=@NoSpell  containedin=RegExRanges

" syn match   UnicodeInfinityPlus   "[∞]\+[A-Z0-9]\+" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Circled digits/alphabet
"---------------------------

inorea o_1       ①<left><right><c-r>=Eatchar('\s')<cr>
inorea o_2       ②<left><right><c-r>=Eatchar('\s')<cr>
inorea o_3       ③<left><right><c-r>=Eatchar('\s')<cr>
inorea o_4       ④<left><right><c-r>=Eatchar('\s')<cr>
inorea o_5       ⑤<left><right><c-r>=Eatchar('\s')<cr>
inorea o_6       ⑥<left><right><c-r>=Eatchar('\s')<cr>
inorea o_7       ⑦<left><right><c-r>=Eatchar('\s')<cr>
inorea o_8       ⑧<left><right><c-r>=Eatchar('\s')<cr>
inorea o_9       ⑨<left><right><c-r>=Eatchar('\s')<cr>
inorea o_10      ⑩<left><right><c-r>=Eatchar('\s')<cr>
inorea o_11      ⑪<left><right><c-r>=Eatchar('\s')<cr>
inorea o_12      ⑫<left><right><c-r>=Eatchar('\s')<cr>
inorea o_13      ⑬<left><right><c-r>=Eatchar('\s')<cr>
inorea o_14      ⑭<left><right><c-r>=Eatchar('\s')<cr>
inorea o_15      ⑮<left><right><c-r>=Eatchar('\s')<cr>
inorea o_16      ⑯<left><right><c-r>=Eatchar('\s')<cr>
inorea o_17      ⑰<left><right><c-r>=Eatchar('\s')<cr>
inorea o_18      ⑱<left><right><c-r>=Eatchar('\s')<cr>
inorea o_19      ⑲<left><right><c-r>=Eatchar('\s')<cr>
inorea o_20      ⑳<left><right><c-r>=Eatchar('\s')<cr>

inorea _(1)      ⑴<left><right><c-r>=Eatchar('\s')<cr>
inorea _(2)      ⑵<left><right><c-r>=Eatchar('\s')<cr>
inorea _(3)      ⑶<left><right><c-r>=Eatchar('\s')<cr>
inorea _(4)      ⑷<left><right><c-r>=Eatchar('\s')<cr>
inorea _(5)      ⑸<left><right><c-r>=Eatchar('\s')<cr>
inorea _(6)      ⑹<left><right><c-r>=Eatchar('\s')<cr>
inorea _(7)      ⑺<left><right><c-r>=Eatchar('\s')<cr>
inorea _(8)      ⑻<left><right><c-r>=Eatchar('\s')<cr>
inorea _(9)      ⑼<left><right><c-r>=Eatchar('\s')<cr>
inorea _(10)     ⑽<left><right><c-r>=Eatchar('\s')<cr>
inorea _(11)     ⑾<left><right><c-r>=Eatchar('\s')<cr>
inorea _(12)     ⑿<left><right><c-r>=Eatchar('\s')<cr>
inorea _(13)     ⒀<left><right><c-r>=Eatchar('\s')<cr>
inorea _(14)     ⒁<left><right><c-r>=Eatchar('\s')<cr>
inorea _(15)     ⒂<left><right><c-r>=Eatchar('\s')<cr>
inorea _(16)     ⒃<left><right><c-r>=Eatchar('\s')<cr>
inorea _(17)     ⒄<left><right><c-r>=Eatchar('\s')<cr>
inorea _(18)     ⒅<left><right><c-r>=Eatchar('\s')<cr>
inorea _(19)     ⒆<left><right><c-r>=Eatchar('\s')<cr>
inorea _(20)     ⒇<left><right><c-r>=Eatchar('\s')<cr>

inorea _1dot     ⒈<left><right><c-r>=Eatchar('\s')<cr>
inorea _2dot     ⒉<left><right><c-r>=Eatchar('\s')<cr>
inorea _3dot     ⒊<left><right><c-r>=Eatchar('\s')<cr>
inorea _4dot     ⒋<left><right><c-r>=Eatchar('\s')<cr>
inorea _5dot     ⒌<left><right><c-r>=Eatchar('\s')<cr>
inorea _6dot     ⒍<left><right><c-r>=Eatchar('\s')<cr>
inorea _7dot     ⒎<left><right><c-r>=Eatchar('\s')<cr>
inorea _8dot     ⒏<left><right><c-r>=Eatchar('\s')<cr>
inorea _9dot     ⒐<left><right><c-r>=Eatchar('\s')<cr>
inorea _10dot    ⒑<left><right><c-r>=Eatchar('\s')<cr>
inorea _11dot    ⒒<left><right><c-r>=Eatchar('\s')<cr>
inorea _12dot    ⒓<left><right><c-r>=Eatchar('\s')<cr>
inorea _13dot    ⒔<left><right><c-r>=Eatchar('\s')<cr>
inorea _14dot    ⒕<left><right><c-r>=Eatchar('\s')<cr>
inorea _15dot    ⒖<left><right><c-r>=Eatchar('\s')<cr>
inorea _16dot    ⒗<left><right><c-r>=Eatchar('\s')<cr>
inorea _17dot    ⒘<left><right><c-r>=Eatchar('\s')<cr>
inorea _18dot    ⒙<left><right><c-r>=Eatchar('\s')<cr>
inorea _19dot    ⒚<left><right><c-r>=Eatchar('\s')<cr>
inorea _20dot    ⒛<left><right><c-r>=Eatchar('\s')<cr>

inorea _(A)      🄐<left><right><c-r>=Eatchar('\s')<cr>
inorea _(B)      🄑<left><right><c-r>=Eatchar('\s')<cr>
inorea _(C)      🄒<left><right><c-r>=Eatchar('\s')<cr>
inorea _(D)      🄓<left><right><c-r>=Eatchar('\s')<cr>
inorea _(E)      🄔<left><right><c-r>=Eatchar('\s')<cr>
inorea _(F)      🄕<left><right><c-r>=Eatchar('\s')<cr>
inorea _(G)      🄖<left><right><c-r>=Eatchar('\s')<cr>
inorea _(H)      🄗<left><right><c-r>=Eatchar('\s')<cr>
inorea _(I)      🄘<left><right><c-r>=Eatchar('\s')<cr>
inorea _(J)      🄙<left><right><c-r>=Eatchar('\s')<cr>
inorea _(K)      🄚<left><right><c-r>=Eatchar('\s')<cr>
inorea _(L)      🄛<left><right><c-r>=Eatchar('\s')<cr>
inorea _(M)      🄜<left><right><c-r>=Eatchar('\s')<cr>
inorea _(N)      🄝<left><right><c-r>=Eatchar('\s')<cr>
inorea _(O)      🄞<left><right><c-r>=Eatchar('\s')<cr>
inorea _(P)      🄟<left><right><c-r>=Eatchar('\s')<cr>
inorea _(Q)      🄠<left><right><c-r>=Eatchar('\s')<cr>
inorea _(R)      🄡<left><right><c-r>=Eatchar('\s')<cr>
inorea _(S)      🄢<left><right><c-r>=Eatchar('\s')<cr>
inorea _(T)      🄣<left><right><c-r>=Eatchar('\s')<cr>
inorea _(U)      🄤<left><right><c-r>=Eatchar('\s')<cr>
inorea _(V)      🄥<left><right><c-r>=Eatchar('\s')<cr>
inorea _(W)      🄦<left><right><c-r>=Eatchar('\s')<cr>
inorea _(X)      🄧<left><right><c-r>=Eatchar('\s')<cr>
inorea _(Y)      🄨<left><right><c-r>=Eatchar('\s')<cr>
inorea _(Z)      🄩<left><right><c-r>=Eatchar('\s')<cr>

inorea _(a)      ⒜<left><right><c-r>=Eatchar('\s')<cr>
inorea _(b)      ⒝<left><right><c-r>=Eatchar('\s')<cr>
inorea _(c)      ⒞<left><right><c-r>=Eatchar('\s')<cr>
inorea _(d)      ⒟<left><right><c-r>=Eatchar('\s')<cr>
inorea _(e)      ⒠<left><right><c-r>=Eatchar('\s')<cr>
inorea _(f)      ⒡<left><right><c-r>=Eatchar('\s')<cr>
inorea _(g)      ⒢<left><right><c-r>=Eatchar('\s')<cr>
inorea _(h)      ⒣<left><right><c-r>=Eatchar('\s')<cr>
inorea _(i)      ⒤<left><right><c-r>=Eatchar('\s')<cr>
inorea _(j)      ⒥<left><right><c-r>=Eatchar('\s')<cr>
inorea _(k)      ⒦<left><right><c-r>=Eatchar('\s')<cr>
inorea _(l)      ⒧<left><right><c-r>=Eatchar('\s')<cr>
inorea _(m)      ⒨<left><right><c-r>=Eatchar('\s')<cr>
inorea _(n)      ⒩<left><right><c-r>=Eatchar('\s')<cr>
inorea _(o)      ⒪<left><right><c-r>=Eatchar('\s')<cr>
inorea _(p)      ⒫<left><right><c-r>=Eatchar('\s')<cr>
inorea _(q)      ⒬<left><right><c-r>=Eatchar('\s')<cr>
inorea _(r)      ⒭<left><right><c-r>=Eatchar('\s')<cr>
inorea _(s)      ⒮<left><right><c-r>=Eatchar('\s')<cr>
inorea _(t)      ⒯<left><right><c-r>=Eatchar('\s')<cr>
inorea _(u)      ⒰<left><right><c-r>=Eatchar('\s')<cr>
inorea _(v)      ⒱<left><right><c-r>=Eatchar('\s')<cr>
inorea _(w)      ⒲<left><right><c-r>=Eatchar('\s')<cr>
inorea _(x)      ⒳<left><right><c-r>=Eatchar('\s')<cr>
inorea _(y)      ⒴<left><right><c-r>=Eatchar('\s')<cr>
inorea _(z)      ⒵<left><right><c-r>=Eatchar('\s')<cr>

inorea o_A       Ⓐ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_B       Ⓑ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_C       Ⓒ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_D       Ⓓ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_E       Ⓔ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_F       Ⓕ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_G       Ⓖ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_H       Ⓗ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_I       Ⓘ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_J       Ⓙ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_K       Ⓚ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_L       Ⓛ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_M       Ⓜ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_N       Ⓝ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_O       Ⓞ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_P       Ⓟ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_Q       Ⓠ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_R       Ⓡ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_S       Ⓢ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_T       Ⓣ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_U       Ⓤ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_V       Ⓥ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_W       Ⓦ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_X       Ⓧ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_Y       Ⓨ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_Z       Ⓩ<left><right><c-r>=Eatchar('\s')<cr>

inorea o_a       ⓐ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_b       ⓑ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_c       ⓒ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_d       ⓓ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_e       ⓔ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_f       ⓕ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_g       ⓖ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_h       ⓗ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_i       ⓘ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_j       ⓙ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_k       ⓚ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_l       ⓛ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_m       ⓜ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_n       ⓝ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_o       ⓞ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_p       ⓟ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_q       ⓠ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_r       ⓡ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_s       ⓢ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_t       ⓣ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_u       ⓤ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_v       ⓥ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_w       ⓦ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_x       ⓧ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_y       ⓨ<left><right><c-r>=Eatchar('\s')<cr>
inorea o_z       ⓩ<left><right><c-r>=Eatchar('\s')<cr>


" hi  link    UnicodeEnumNumbers   AllFilesArrowsColor
" syn match   UnicodeEnumNumbers "[①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛]" contains=@NoSpell  containedin=RegExRanges

" hi  link    UnicodeEnumLetters   AllFilesOpColor
" syn match   UnicodeEnumLetters "[🄐🄑🄒🄓🄔🄕🄖🄗🄘🄙🄚🄛🄜🄝🄞🄟🄠🄡🄢🄣🄤🄥🄦🄧🄨🄩⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ]" contains=@NoSpell  containedin=RegExRanges


"---------------------------
" Greek letters
" Used in science and math
"---------------------------

" Greek
inorea _Alpha     Α<left><right><c-r>=Eatchar('\s')<cr>
inorea _Al        Α<left><right><c-r>=Eatchar('\s')<cr>
inorea _Beta      Β<left><right><c-r>=Eatchar('\s')<cr>
inorea _Be        Β<left><right><c-r>=Eatchar('\s')<cr>
inorea _Gamma     Γ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ga        Γ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Delta     Δ<left><right><c-r>=Eatchar('\s')<cr>
inorea _De        Δ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Epsilon   Ε<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ep        Ε<left><right><c-r>=Eatchar('\s')<cr>
inorea _Zeta      Ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ze        Ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Eta       Η<left><right><c-r>=Eatchar('\s')<cr>
inorea _Et        Η<left><right><c-r>=Eatchar('\s')<cr>
inorea _Theta     Θ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Th        Θ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Iota      Ι<left><right><c-r>=Eatchar('\s')<cr>
inorea _Io        Ι<left><right><c-r>=Eatchar('\s')<cr>
inorea _Kappa     Κ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ka        Κ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Lambda    Λ<left><right><c-r>=Eatchar('\s')<cr>
inorea _La        Λ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Mu        Μ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Nu        Ν<left><right><c-r>=Eatchar('\s')<cr>
inorea _Xi        Ξ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Omicron   Ο<left><right><c-r>=Eatchar('\s')<cr>
inorea _On        Ο<left><right><c-r>=Eatchar('\s')<cr>
inorea _Pi        Π<left><right><c-r>=Eatchar('\s')<cr>
inorea _sPi       ᴨ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Rho       Ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Rh        Ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Sigma     Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Si        Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Sigma2    ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea _Si2       ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea _Tau       Τ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ta        Τ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Upsilon   Υ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Up        Υ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Phi       Φ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ph        Φ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Phi2      Ф<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ph2       Ф<left><right><c-r>=Eatchar('\s')<cr>
inorea _Chi       Χ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ch        Χ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Psi       Ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ps        Ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Psi2      ᴪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Ps2       ᴪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _Omega     Ω<left><right><c-r>=Eatchar('\s')<cr>
inorea _Om        Ω<left><right><c-r>=Eatchar('\s')<cr>
inorea _Om2      Ω<left><right><c-r>=Eatchar('\s')<cr>

inorea _Nabla     𝞩<left><right><c-r>=Eatchar('\s')<cr>
inorea _Na        𝞩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUNorm UnicodeVarColor
syn match   UnicodeGreekUNorm "[ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩᴨФᴪ𝞩Ω]" contains=@NoSpell  containedin=RegExRanges

" Cursive
inorea c_Alpha    𝛢<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Al       𝛢<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Beta     𝛣<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Be       𝛣<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Gamma    𝛤<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ga       𝛤<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Delta    𝛥<left><right><c-r>=Eatchar('\s')<cr>
inorea c_De       𝛥<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Epsilon  𝛦<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ep       𝛦<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Zeta     𝛧<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ze       𝛧<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Eta      𝛨<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Et       𝛨<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Theta    𝛩<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Th       𝛩<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Theta2   𝛳<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Th2      𝛳<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Iota     𝛪<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Io       𝛪<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Kappa    𝛫<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ka       𝛫<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Lambda   𝛬<left><right><c-r>=Eatchar('\s')<cr>
inorea c_La       𝛬<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Mu       𝛭<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Nu       𝛮<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Xi       𝛯<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Omicron  𝛰<left><right><c-r>=Eatchar('\s')<cr>
inorea c_On       𝛰<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Pi       𝛱<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Rho      𝛲<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Sigma    𝛴<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Si       𝛴<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Tau      𝛵<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ta       𝛵<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Upsilon  𝛶<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Up       𝛶<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Phi      𝛷<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ph       𝛷<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Chi      𝛸<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ch       𝛸<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Psi      𝛹<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Ps       𝛹<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Omega    𝛺<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Om       𝛺<left><right><c-r>=Eatchar('\s')<cr>

inorea c_Nabla    𝛻<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Na       𝛻<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUC UnicodeCColor
syn match   UnicodeGreekUC "[𝛢𝛣𝛤𝛥𝛦𝛧𝛨𝛩𝛪𝛫𝛬𝛭𝛮𝛯𝛰𝛱𝛲𝛳𝛴𝛵𝛶𝛷𝛸𝛹𝛺𝛻]" contains=@NoSpell  containedin=RegExRanges

" Greek
inorea _alpha     α<left><right><c-r>=Eatchar('\s')<cr>
inorea _al        α<left><right><c-r>=Eatchar('\s')<cr>
inorea _beta      β<left><right><c-r>=Eatchar('\s')<cr>
inorea _be        β<left><right><c-r>=Eatchar('\s')<cr>
inorea _gamma     γ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ga        γ<left><right><c-r>=Eatchar('\s')<cr>
inorea _gamma2    ɣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ga2       ɣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _delta     δ<left><right><c-r>=Eatchar('\s')<cr>
inorea _de        δ<left><right><c-r>=Eatchar('\s')<cr>
inorea _epsilon   ε<left><right><c-r>=Eatchar('\s')<cr>
inorea _ep        ε<left><right><c-r>=Eatchar('\s')<cr>
inorea _zeta      ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ze        ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea _eta       η<left><right><c-r>=Eatchar('\s')<cr>
inorea _et        η<left><right><c-r>=Eatchar('\s')<cr>
inorea _theta     θ<left><right><c-r>=Eatchar('\s')<cr>
inorea _th        θ<left><right><c-r>=Eatchar('\s')<cr>
inorea _iota      ι<left><right><c-r>=Eatchar('\s')<cr>
inorea _io        ι<left><right><c-r>=Eatchar('\s')<cr>
inorea _kappa     κ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ka        κ<left><right><c-r>=Eatchar('\s')<cr>
inorea _lambda    λ<left><right><c-r>=Eatchar('\s')<cr>
inorea _la        λ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mu        μ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mu2       µ<left><right><c-r>=Eatchar('\s')<cr>
inorea _nu        ν<left><right><c-r>=Eatchar('\s')<cr>
inorea _xi        ξ<left><right><c-r>=Eatchar('\s')<cr>
inorea _omicron   ο<left><right><c-r>=Eatchar('\s')<cr>
inorea _on        ο<left><right><c-r>=Eatchar('\s')<cr>
inorea _pi        π<left><right><c-r>=Eatchar('\s')<cr>
inorea _rho       ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea _rh        ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea _sigma     σ<left><right><c-r>=Eatchar('\s')<cr>
inorea _si        σ<left><right><c-r>=Eatchar('\s')<cr>
inorea _sigma2    ς<left><right><c-r>=Eatchar('\s')<cr>
inorea _si2       ς<left><right><c-r>=Eatchar('\s')<cr>
inorea _tau       τ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ta        τ<left><right><c-r>=Eatchar('\s')<cr>
inorea _upsilon   υ<left><right><c-r>=Eatchar('\s')<cr>
inorea _up        υ<left><right><c-r>=Eatchar('\s')<cr>
inorea _phi       φ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ph        φ<left><right><c-r>=Eatchar('\s')<cr>
inorea _phi2      ф<left><right><c-r>=Eatchar('\s')<cr>
inorea _ph2       ф<left><right><c-r>=Eatchar('\s')<cr>
inorea _chi       χ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ch        χ<left><right><c-r>=Eatchar('\s')<cr>
inorea _psi       ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ps        ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea _omega     ω<left><right><c-r>=Eatchar('\s')<cr>
inorea _om        ω<left><right><c-r>=Eatchar('\s')<cr>

inorea _nabla     ∇<left><right><c-r>=Eatchar('\s')<cr>
inorea _na        ∇<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLNorm UnicodeVarColor
syn match   UnicodeGreekLNorm "[αβγɣδεζηθικλμνξοπρςστυφχψω∇µф]" contains=@NoSpell  containedin=RegExRanges

" Cursive
inorea c_alpha    𝛼<left><right><c-r>=Eatchar('\s')<cr>
inorea c_al       𝛼<left><right><c-r>=Eatchar('\s')<cr>
inorea c_beta     𝛽<left><right><c-r>=Eatchar('\s')<cr>
inorea c_be       𝛽<left><right><c-r>=Eatchar('\s')<cr>
inorea c_gamma    𝛾<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ga       𝛾<left><right><c-r>=Eatchar('\s')<cr>
inorea c_delta    𝛿<left><right><c-r>=Eatchar('\s')<cr>
inorea c_de       𝛿<left><right><c-r>=Eatchar('\s')<cr>
inorea c_epsilon  𝜀<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ep       𝜀<left><right><c-r>=Eatchar('\s')<cr>
inorea c_zeta     𝜁<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ze       𝜁<left><right><c-r>=Eatchar('\s')<cr>
inorea c_eta      𝜂<left><right><c-r>=Eatchar('\s')<cr>
inorea c_et       𝜂<left><right><c-r>=Eatchar('\s')<cr>
inorea c_theta    𝜃<left><right><c-r>=Eatchar('\s')<cr>
inorea c_th       𝜃<left><right><c-r>=Eatchar('\s')<cr>
inorea c_iota     𝜄<left><right><c-r>=Eatchar('\s')<cr>
inorea c_io       𝜄<left><right><c-r>=Eatchar('\s')<cr>
inorea c_kappa    𝜅<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ka       𝜅<left><right><c-r>=Eatchar('\s')<cr>
inorea c_lambda   𝜆<left><right><c-r>=Eatchar('\s')<cr>
inorea c_la       𝜆<left><right><c-r>=Eatchar('\s')<cr>
inorea c_mu       𝜇<left><right><c-r>=Eatchar('\s')<cr>
inorea c_nu       𝜈<left><right><c-r>=Eatchar('\s')<cr>
inorea c_xi       𝜉<left><right><c-r>=Eatchar('\s')<cr>
inorea c_omicron  𝜊<left><right><c-r>=Eatchar('\s')<cr>
inorea c_on       𝜊<left><right><c-r>=Eatchar('\s')<cr>
inorea c_pi       𝜋<left><right><c-r>=Eatchar('\s')<cr>
inorea c_rho      𝜌<left><right><c-r>=Eatchar('\s')<cr>
inorea c_rh       𝜌<left><right><c-r>=Eatchar('\s')<cr>
inorea c_sigma    𝜎<left><right><c-r>=Eatchar('\s')<cr>
inorea c_si       𝜎<left><right><c-r>=Eatchar('\s')<cr>
inorea c_sigma2   𝜍<left><right><c-r>=Eatchar('\s')<cr>
inorea c_si2      𝜍<left><right><c-r>=Eatchar('\s')<cr>
inorea c_tau      𝜏<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ta       𝜏<left><right><c-r>=Eatchar('\s')<cr>
inorea c_upsilon  𝜐<left><right><c-r>=Eatchar('\s')<cr>
inorea c_up       𝜐<left><right><c-r>=Eatchar('\s')<cr>
inorea c_phi      𝜑<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ph       𝜑<left><right><c-r>=Eatchar('\s')<cr>
inorea c_phi2     𝜙<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ph2      𝜙<left><right><c-r>=Eatchar('\s')<cr>
inorea c_chi      𝜒<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ch       𝜒<left><right><c-r>=Eatchar('\s')<cr>
inorea c_psi      𝜓<left><right><c-r>=Eatchar('\s')<cr>
inorea c_ps       𝜓<left><right><c-r>=Eatchar('\s')<cr>
inorea c_omega    𝜔<left><right><c-r>=Eatchar('\s')<cr>
inorea c_om       𝜔<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLC UnicodeCColor
syn match   UnicodeGreekLC "[𝛼𝛽𝛾𝛿𝜀𝜁𝜂𝜃𝜄𝜅𝜆𝜇𝜈𝜉𝜊𝜋𝜌𝜍𝜎𝜏𝜐𝜑𝜙𝜒𝜓𝜔]" contains=@NoSpell  containedin=RegExRanges

" Bold cursive
inorea bc_Alpha   𝜜<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Al      𝜜<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Beta    𝜝<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Be      𝜝<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Gamma   𝜞<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ga      𝜞<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Delta   𝜟<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_De      𝜟<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Delta2  𝞓<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_De2     𝞓<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Epsilon 𝜠<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ep      𝜠<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Zeta    𝜡<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ze      𝜡<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Eta     𝜢<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Et      𝜢<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Theta   𝜣<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Th      𝜣<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Theta2  𝜭<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Th2     𝜭<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Iota    𝜤<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Io      𝜤<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Kappa   𝜥<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ka      𝜥<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Lambda  𝜦<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_La      𝜦<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Mu      𝜧<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Nu      𝜨<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Xi      𝜩<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Omicron 𝜪<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_On      𝜪<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Pi      𝜫<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Rho     𝜬<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Rh      𝜬<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Sigma   𝜮<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Si      𝜮<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Tau     𝜯<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ta      𝜯<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Upsilon 𝜰<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Up      𝜰<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Phi     𝜱<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ph      𝜱<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Chi     𝜲<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ch      𝜲<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Psi     𝜳<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Ps      𝜳<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Omega   𝜴<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Om      𝜴<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Nabla   𝜵<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Na      𝜵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUBC UnicodeBCColor
syn match   UnicodeGreekUBC "[𝜜𝜝𝜞𝜟𝞓𝜠𝜡𝜢𝜣𝜤𝜥𝜦𝜧𝜨𝜩𝜪𝜫𝜬𝜭𝜮𝜯𝜰𝜱𝜲𝜳𝜴𝜵]" contains=@NoSpell  containedin=RegExRanges

" Bold cursive
inorea bc_alpha   𝜶<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_al      𝜶<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_beta    𝜷<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_be      𝜷<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_gamma   𝜸<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ga      𝜸<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_delta   𝜹<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_de      𝜹<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_epsilon 𝜺<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ep      𝜺<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_zeta    𝜻<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ze      𝜻<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_eta     𝜼<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_et      𝜼<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_theta   𝜽<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_th      𝜽<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_iota    𝜾<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_io      𝜾<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_kappa   𝜿<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ka      𝜿<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_lambda  𝝀<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_la      𝝀<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_mu      𝝁<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_nu      𝝂<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_xi      𝝃<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_omicron 𝝄<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_on      𝝄<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_pi      𝝅<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_rho     𝝆<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_rh      𝝆<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_sigma   𝝈<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_si      𝝈<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_sigma2  𝝇<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_si2     𝝇<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_tau     𝝉<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ta      𝝉<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_upsilon 𝝊<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_up      𝝊<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_phi     𝝋<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ph      𝝋<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_phi2    𝝓<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ph2     𝝓<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_chi     𝝌<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ch      𝝌<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_psi     𝝍<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_ps      𝝍<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_omega   𝝎<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_om      𝝎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLBC UnicodeBCColor
syn match   UnicodeGreekLBC "[𝜶𝜷𝜸𝜹𝜺𝜻𝜼𝜽𝜾𝜿𝝀𝝁𝝂𝝃𝝄𝝅𝝆𝝇𝝈𝝉𝝊𝝋𝝌𝝍𝝎𝝓]" contains=@NoSpell  containedin=RegExRanges

" Bold
inorea b_Alpha    𝚨<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Al       𝚨<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Beta     𝚩<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Be       𝚩<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Gamma    𝚪<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ga       𝚪<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Delta    𝚫<left><right><c-r>=Eatchar('\s')<cr>
inorea b_De       𝚫<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Delta2   𝝙<left><right><c-r>=Eatchar('\s')<cr>
inorea b_De2      𝝙<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Epsilon  𝚬<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ep       𝚬<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Zeta     𝚭<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ze       𝚭<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Eta      𝚮<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Et       𝚮<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Theta    𝚯<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Th       𝚯<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Iota     𝚰<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Io       𝚰<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Kappa    𝚱<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ka       𝚱<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Lambda   𝚲<left><right><c-r>=Eatchar('\s')<cr>
inorea b_La       𝚲<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Mu       𝚳<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Nu       𝚴<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Xi       𝚵<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Omicron  𝚶<left><right><c-r>=Eatchar('\s')<cr>
inorea b_On       𝚶<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Pi       𝚷<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Rho      𝚸<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Rh       𝚸<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Sigma    𝚺<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Si       𝚺<left><right><c-r>=Eatchar('\s')<cr>
inorea b_sigma2   𝚹<left><right><c-r>=Eatchar('\s')<cr>
inorea b_si2      𝚹<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Tau      𝚻<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ta       𝚻<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Upsilon  𝚼<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Up       𝚼<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Phi      𝚽<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ph       𝚽<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Phi2     𝛟<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ph2      𝛟<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Chi      𝚾<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ch       𝚾<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Psi      𝚿<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Ps       𝚿<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Omega    𝛀<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Om       𝛀<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Nabla    𝛁<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Na       𝛁<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUB UnicodeBColor
syn match   UnicodeGreekUB "[𝚨𝚩𝚪𝚫𝝙𝚬𝚭𝚮𝚯𝚰𝚱𝚲𝚳𝚴𝚵𝚶𝚷𝚸𝚹𝚺𝚻𝚼𝚽𝚾𝚿𝛀𝛁𝛟]" contains=@NoSpell  containedin=RegExRanges

" Bold
inorea b_alpha    𝛂<left><right><c-r>=Eatchar('\s')<cr>
inorea b_al       𝛂<left><right><c-r>=Eatchar('\s')<cr>
inorea b_beta     𝛃<left><right><c-r>=Eatchar('\s')<cr>
inorea b_be       𝛃<left><right><c-r>=Eatchar('\s')<cr>
inorea b_gamma    𝛄<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ga       𝛄<left><right><c-r>=Eatchar('\s')<cr>
inorea b_delta    𝛅<left><right><c-r>=Eatchar('\s')<cr>
inorea b_de       𝛅<left><right><c-r>=Eatchar('\s')<cr>
inorea b_epsilon  𝛆<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ep       𝛆<left><right><c-r>=Eatchar('\s')<cr>
inorea b_zeta     𝛇<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ze       𝛇<left><right><c-r>=Eatchar('\s')<cr>
inorea b_eta      𝛈<left><right><c-r>=Eatchar('\s')<cr>
inorea b_et       𝛈<left><right><c-r>=Eatchar('\s')<cr>
inorea b_theta    𝛉<left><right><c-r>=Eatchar('\s')<cr>
inorea b_th       𝛉<left><right><c-r>=Eatchar('\s')<cr>
inorea b_iota     𝛊<left><right><c-r>=Eatchar('\s')<cr>
inorea b_io       𝛊<left><right><c-r>=Eatchar('\s')<cr>
inorea b_kappa    𝛋<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ka       𝛋<left><right><c-r>=Eatchar('\s')<cr>
inorea b_lambda   𝛌<left><right><c-r>=Eatchar('\s')<cr>
inorea b_la       𝛌<left><right><c-r>=Eatchar('\s')<cr>
inorea b_mu       𝛍<left><right><c-r>=Eatchar('\s')<cr>
inorea b_nu       𝛎<left><right><c-r>=Eatchar('\s')<cr>
inorea b_xi       𝛏<left><right><c-r>=Eatchar('\s')<cr>
inorea b_omicron  𝛐<left><right><c-r>=Eatchar('\s')<cr>
inorea b_on       𝛐<left><right><c-r>=Eatchar('\s')<cr>
inorea b_pi       𝛑<left><right><c-r>=Eatchar('\s')<cr>
inorea b_rho      𝛒<left><right><c-r>=Eatchar('\s')<cr>
inorea b_rh       𝛒<left><right><c-r>=Eatchar('\s')<cr>
inorea b_sigma    𝛔<left><right><c-r>=Eatchar('\s')<cr>
inorea b_si       𝛔<left><right><c-r>=Eatchar('\s')<cr>
inorea b_sigma2   𝛓<left><right><c-r>=Eatchar('\s')<cr>
inorea b_si2      𝛓<left><right><c-r>=Eatchar('\s')<cr>
inorea b_tau      𝛕<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ta       𝛕<left><right><c-r>=Eatchar('\s')<cr>
inorea b_upsilon  𝛖<left><right><c-r>=Eatchar('\s')<cr>
inorea b_up       𝛖<left><right><c-r>=Eatchar('\s')<cr>
inorea b_phi      𝛗<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ph       𝛗<left><right><c-r>=Eatchar('\s')<cr>
inorea b_chi      𝛘<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ch       𝛘<left><right><c-r>=Eatchar('\s')<cr>
inorea b_psi      𝛙<left><right><c-r>=Eatchar('\s')<cr>
inorea b_ps       𝛙<left><right><c-r>=Eatchar('\s')<cr>
inorea b_omega    𝛚<left><right><c-r>=Eatchar('\s')<cr>
inorea b_om       𝛚<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLB UnicodeBColor
syn match   UnicodeGreekLB "[𝛂𝛃𝛄𝛅𝛆𝛇𝛈𝛉𝛊𝛋𝛌𝛍𝛎𝛏𝛐𝛑𝛒𝛓𝛔𝛕𝛖𝛗𝛘𝛙𝛚]" contains=@NoSpell  containedin=RegExRanges

"---------------------------
" Combined
"---------------------------
inorea _coe        œ<left><right><c-r>=Eatchar('\s')<cr>
inorea _cae        æ<left><right><c-r>=Eatchar('\s')<cr>


"---------------------------
" Cursive, bold, script, double
"---------------------------

" Cursive
inorea c_a        𝑎<left><right><c-r>=Eatchar('\s')<cr>
inorea c_b        𝑏<left><right><c-r>=Eatchar('\s')<cr>
inorea c_c        𝑐<left><right><c-r>=Eatchar('\s')<cr>
inorea c_d        𝑑<left><right><c-r>=Eatchar('\s')<cr>
inorea c_e        𝑒<left><right><c-r>=Eatchar('\s')<cr>
inorea c_f        𝑓<left><right><c-r>=Eatchar('\s')<cr>
inorea c_g        𝑔<left><right><c-r>=Eatchar('\s')<cr>
inorea c_h        𝘩<left><right><c-r>=Eatchar('\s')<cr>
inorea c_i        𝑖<left><right><c-r>=Eatchar('\s')<cr>
inorea c_j        𝑗<left><right><c-r>=Eatchar('\s')<cr>
inorea c_k        𝑘<left><right><c-r>=Eatchar('\s')<cr>
inorea c_l        𝑙<left><right><c-r>=Eatchar('\s')<cr>
inorea c_m        𝑚<left><right><c-r>=Eatchar('\s')<cr>
inorea c_n        𝑛<left><right><c-r>=Eatchar('\s')<cr>
inorea c_o        𝑜<left><right><c-r>=Eatchar('\s')<cr>
inorea c_p        𝑝<left><right><c-r>=Eatchar('\s')<cr>
inorea c_q        𝑞<left><right><c-r>=Eatchar('\s')<cr>
inorea c_r        𝑟<left><right><c-r>=Eatchar('\s')<cr>
inorea c_s        𝑠<left><right><c-r>=Eatchar('\s')<cr>
inorea c_t        𝑡<left><right><c-r>=Eatchar('\s')<cr>
inorea c_u        𝑢<left><right><c-r>=Eatchar('\s')<cr>
inorea c_v        𝑣<left><right><c-r>=Eatchar('\s')<cr>
inorea c_w        𝑤<left><right><c-r>=Eatchar('\s')<cr>
inorea c_x        𝑥<left><right><c-r>=Eatchar('\s')<cr>
inorea c_y        𝑦<left><right><c-r>=Eatchar('\s')<cr>
inorea c_z        𝑧<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLC UnicodeCColor
syn match   UnicodeLatinLC "[𝑎𝑏𝑐𝑑𝑒𝑓𝑔𝘩𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧]" contains=@NoSpell  containedin=RegExRanges


" Bold
inorea b_a        𝐚<left><right><c-r>=Eatchar('\s')<cr>
inorea b_b        𝐛<left><right><c-r>=Eatchar('\s')<cr>
inorea b_c        𝐜<left><right><c-r>=Eatchar('\s')<cr>
inorea b_d        𝐝<left><right><c-r>=Eatchar('\s')<cr>
inorea b_e        𝐞<left><right><c-r>=Eatchar('\s')<cr>
inorea b_f        𝐟<left><right><c-r>=Eatchar('\s')<cr>
inorea b_g        𝐠<left><right><c-r>=Eatchar('\s')<cr>
inorea b_h        𝐡<left><right><c-r>=Eatchar('\s')<cr>
inorea b_i        𝐢<left><right><c-r>=Eatchar('\s')<cr>
inorea b_j        𝐣<left><right><c-r>=Eatchar('\s')<cr>
inorea b_k        𝐤<left><right><c-r>=Eatchar('\s')<cr>
inorea b_l        𝐥<left><right><c-r>=Eatchar('\s')<cr>
inorea b_m        𝐦<left><right><c-r>=Eatchar('\s')<cr>
inorea b_n        𝐧<left><right><c-r>=Eatchar('\s')<cr>
inorea b_o        𝐨<left><right><c-r>=Eatchar('\s')<cr>
inorea b_p        𝐩<left><right><c-r>=Eatchar('\s')<cr>
inorea b_q        𝐪<left><right><c-r>=Eatchar('\s')<cr>
inorea b_r        𝐫<left><right><c-r>=Eatchar('\s')<cr>
inorea b_s        𝐬<left><right><c-r>=Eatchar('\s')<cr>
inorea b_t        𝐭<left><right><c-r>=Eatchar('\s')<cr>
inorea b_u        𝐮<left><right><c-r>=Eatchar('\s')<cr>
inorea b_v        𝐯<left><right><c-r>=Eatchar('\s')<cr>
inorea b_w        𝐰<left><right><c-r>=Eatchar('\s')<cr>
inorea b_x        𝐱<left><right><c-r>=Eatchar('\s')<cr>
inorea b_y        𝐲<left><right><c-r>=Eatchar('\s')<cr>
inorea b_z        𝐳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLB UnicodeBColor
syn match   UnicodeLatinLB "[𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳]" contains=@NoSpell  containedin=RegExRanges


" Bold, cursive
inorea bc_a       𝒂<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_b       𝒃<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_c       𝒄<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_d       𝒅<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_e       𝒆<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_f       𝒇<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_g       𝒈<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_h       𝒉<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_i       𝒊<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_j       𝒋<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_k       𝒌<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_l       𝒍<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_m       𝒎<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_n       𝒏<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_o       𝒐<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_p       𝒑<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_q       𝒒<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_r       𝒓<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_s       𝒔<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_t       𝒕<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_u       𝒖<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_v       𝒗<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_w       𝒘<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_x       𝒙<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_y       𝒚<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_z       𝒛<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLBC UnicodeBCColor
syn match   UnicodeLatinLBC "[𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛]" contains=@NoSpell  containedin=RegExRanges

" Cursive
inorea c_A        𝐴<left><right><c-r>=Eatchar('\s')<cr>
inorea c_B        𝐵<left><right><c-r>=Eatchar('\s')<cr>
inorea c_C        𝐶<left><right><c-r>=Eatchar('\s')<cr>
inorea c_D        𝐷<left><right><c-r>=Eatchar('\s')<cr>
inorea c_E        𝐸<left><right><c-r>=Eatchar('\s')<cr>
inorea c_F        𝐹<left><right><c-r>=Eatchar('\s')<cr>
inorea c_G        𝐺<left><right><c-r>=Eatchar('\s')<cr>
inorea c_H        𝐻<left><right><c-r>=Eatchar('\s')<cr>
inorea c_I        𝐼<left><right><c-r>=Eatchar('\s')<cr>
inorea c_J        𝐽<left><right><c-r>=Eatchar('\s')<cr>
inorea c_K        𝐾<left><right><c-r>=Eatchar('\s')<cr>
inorea c_L        𝐿<left><right><c-r>=Eatchar('\s')<cr>
inorea c_M        𝑀<left><right><c-r>=Eatchar('\s')<cr>
inorea c_N        𝑁<left><right><c-r>=Eatchar('\s')<cr>
inorea c_O        𝑂<left><right><c-r>=Eatchar('\s')<cr>
inorea c_P        𝑃<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Q        𝑄<left><right><c-r>=Eatchar('\s')<cr>
inorea c_R        𝑅<left><right><c-r>=Eatchar('\s')<cr>
inorea c_S        𝑆<left><right><c-r>=Eatchar('\s')<cr>
inorea c_T        𝑇<left><right><c-r>=Eatchar('\s')<cr>
inorea c_U        𝑈<left><right><c-r>=Eatchar('\s')<cr>
inorea c_V        𝑉<left><right><c-r>=Eatchar('\s')<cr>
inorea c_W        𝑊<left><right><c-r>=Eatchar('\s')<cr>
inorea c_X        𝑋<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Y        𝑌<left><right><c-r>=Eatchar('\s')<cr>
inorea c_Z        𝑍<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUC UnicodeCColor
syn match   UnicodeLatinUC "[𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍]" contains=@NoSpell  containedin=RegExRanges

" Bold
inorea b_A        𝐀<left><right><c-r>=Eatchar('\s')<cr>
inorea b_B        𝐁<left><right><c-r>=Eatchar('\s')<cr>
inorea b_C        𝐂<left><right><c-r>=Eatchar('\s')<cr>
inorea b_D        𝐃<left><right><c-r>=Eatchar('\s')<cr>
inorea b_E        𝐄<left><right><c-r>=Eatchar('\s')<cr>
inorea b_F        𝐅<left><right><c-r>=Eatchar('\s')<cr>
inorea b_G        𝐆<left><right><c-r>=Eatchar('\s')<cr>
inorea b_H        𝐇<left><right><c-r>=Eatchar('\s')<cr>
inorea b_I        𝐈<left><right><c-r>=Eatchar('\s')<cr>
inorea b_J        𝐉<left><right><c-r>=Eatchar('\s')<cr>
inorea b_K        𝐊<left><right><c-r>=Eatchar('\s')<cr>
inorea b_L        𝐋<left><right><c-r>=Eatchar('\s')<cr>
inorea b_M        𝐌<left><right><c-r>=Eatchar('\s')<cr>
inorea b_N        𝐍<left><right><c-r>=Eatchar('\s')<cr>
inorea b_O        𝐎<left><right><c-r>=Eatchar('\s')<cr>
inorea b_P        𝐏<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Q        𝐐<left><right><c-r>=Eatchar('\s')<cr>
inorea b_R        𝐑<left><right><c-r>=Eatchar('\s')<cr>
inorea b_S        𝐒<left><right><c-r>=Eatchar('\s')<cr>
inorea b_T        𝐓<left><right><c-r>=Eatchar('\s')<cr>
inorea b_U        𝐔<left><right><c-r>=Eatchar('\s')<cr>
inorea b_V        𝐕<left><right><c-r>=Eatchar('\s')<cr>
inorea b_W        𝐖<left><right><c-r>=Eatchar('\s')<cr>
inorea b_X        𝐗<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Y        𝐘<left><right><c-r>=Eatchar('\s')<cr>
inorea b_Z        𝐙<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUB UnicodeBColor
syn match   UnicodeLatinUB "[𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙]" contains=@NoSpell  containedin=RegExRanges


" Bold cursive
inorea bc_A       𝑨<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_B       𝑩<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_C       𝑪<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_D       𝑫<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_E       𝑬<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_F       𝑭<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_G       𝑮<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_H       𝑯<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_I       𝑰<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_J       𝑱<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_K       𝑲<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_L       𝑳<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_M       𝑴<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_N       𝑵<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_O       𝑶<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_P       𝑷<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Q       𝑸<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_R       𝑹<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_S       𝑺<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_T       𝑻<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_U       𝑼<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_V       𝑽<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_W       𝑾<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_X       𝑿<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Y       𝒀<left><right><c-r>=Eatchar('\s')<cr>
inorea bc_Z       𝒁<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUBC UnicodeBCColor
syn match   UnicodeLatinUBC "[𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁]" contains=@NoSpell  containedin=RegExRanges

" Mathematical bold script
inorea bs_a       𝓪<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_b       𝓫<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_c       𝓬<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_d       𝓭<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_e       𝓮<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_f       𝓯<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_g       𝓰<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_h       𝓱<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_i       𝓲<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_j       𝓳<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_k       𝓴<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_l       𝓵<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_m       𝓶<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_n       𝓷<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_o       𝓸<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_p       𝓹<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_q       𝓺<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_r       𝓻<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_s       𝓼<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_t       𝓽<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_u       𝓾<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_v       𝓿<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_w       𝔀<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_x       𝔁<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_y       𝔂<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_z       𝔃<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLBS UnicodeBsColor
syn match   UnicodeLatinLBS "[𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃]" contains=@NoSpell  containedin=RegExRanges


" Mathematical bold script
inorea bs_A       𝓐<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_B       𝓑<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_C       𝓒<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_D       𝓓<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_E       𝓔<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_F       𝓕<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_G       𝓖<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_H       𝓗<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_I       𝓘<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_J       𝓙<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_K       𝓚<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_L       𝓛<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_M       𝓜<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_N       𝓝<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_O       𝓞<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_P       𝓟<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_Q       𝓠<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_R       𝓡<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_S       𝓢<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_T       𝓣<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_U       𝓤<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_V       𝓥<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_W       𝓦<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_X       𝓧<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_Y       𝓨<left><right><c-r>=Eatchar('\s')<cr>
inorea bs_Z       𝓩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUBS UnicodeBsColor
syn match   UnicodeLatinUBS "[𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩]" contains=@NoSpell  containedin=RegExRanges

" Mathematical Fraktur
inorea f_A        𝔄<left><right><c-r>=Eatchar('\s')<cr>
inorea f_B        𝔅<left><right><c-r>=Eatchar('\s')<cr>
inorea f_C        ℭ<left><right><c-r>=Eatchar('\s')<cr>
inorea f_D        𝔇<left><right><c-r>=Eatchar('\s')<cr>
inorea f_E        𝔈<left><right><c-r>=Eatchar('\s')<cr>
inorea f_F        𝔉<left><right><c-r>=Eatchar('\s')<cr>
inorea f_G        𝔊<left><right><c-r>=Eatchar('\s')<cr>
inorea f_H        ℌ<left><right><c-r>=Eatchar('\s')<cr>
inorea f_I        ℑ<left><right><c-r>=Eatchar('\s')<cr>
inorea f_J        𝔍<left><right><c-r>=Eatchar('\s')<cr>
inorea f_K        𝔎<left><right><c-r>=Eatchar('\s')<cr>
inorea f_L        𝔏<left><right><c-r>=Eatchar('\s')<cr>
inorea f_M        𝔐<left><right><c-r>=Eatchar('\s')<cr>
inorea f_N        𝔑<left><right><c-r>=Eatchar('\s')<cr>
inorea f_O        𝔒<left><right><c-r>=Eatchar('\s')<cr>
inorea f_P        𝔓<left><right><c-r>=Eatchar('\s')<cr>
inorea f_Q        𝔔<left><right><c-r>=Eatchar('\s')<cr>
inorea f_R        ℜ<left><right><c-r>=Eatchar('\s')<cr>
inorea f_S        𝔖<left><right><c-r>=Eatchar('\s')<cr>
inorea f_T        𝔗<left><right><c-r>=Eatchar('\s')<cr>
inorea f_U        𝔘<left><right><c-r>=Eatchar('\s')<cr>
inorea f_V        𝔙<left><right><c-r>=Eatchar('\s')<cr>
inorea f_W        𝔚<left><right><c-r>=Eatchar('\s')<cr>
inorea f_X        𝔛<left><right><c-r>=Eatchar('\s')<cr>
inorea f_Y        𝔜<left><right><c-r>=Eatchar('\s')<cr>
inorea f_Z        ℨ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUF UnicodeMColor
syn match   UnicodeLatinUF "[𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ]" contains=@NoSpell  containedin=RegExRanges

inorea f_a        𝔞<left><right><c-r>=Eatchar('\s')<cr>
inorea f_b        𝔟<left><right><c-r>=Eatchar('\s')<cr>
inorea f_c        𝔠<left><right><c-r>=Eatchar('\s')<cr>
inorea f_d        𝔡<left><right><c-r>=Eatchar('\s')<cr>
inorea f_e        𝔢<left><right><c-r>=Eatchar('\s')<cr>
inorea f_f        𝔣<left><right><c-r>=Eatchar('\s')<cr>
inorea f_g        𝔤<left><right><c-r>=Eatchar('\s')<cr>
inorea f_h        𝔥<left><right><c-r>=Eatchar('\s')<cr>
inorea f_i        𝔦<left><right><c-r>=Eatchar('\s')<cr>
inorea f_j        𝔧<left><right><c-r>=Eatchar('\s')<cr>
inorea f_k        𝔨<left><right><c-r>=Eatchar('\s')<cr>
inorea f_l        𝔩<left><right><c-r>=Eatchar('\s')<cr>
inorea f_m        𝔪<left><right><c-r>=Eatchar('\s')<cr>
inorea f_n        𝔫<left><right><c-r>=Eatchar('\s')<cr>
inorea f_o        𝔬<left><right><c-r>=Eatchar('\s')<cr>
inorea f_p        𝔭<left><right><c-r>=Eatchar('\s')<cr>
inorea f_q        𝔮<left><right><c-r>=Eatchar('\s')<cr>
inorea f_r        𝔯<left><right><c-r>=Eatchar('\s')<cr>
inorea f_s        𝔰<left><right><c-r>=Eatchar('\s')<cr>
inorea f_t        𝔱<left><right><c-r>=Eatchar('\s')<cr>
inorea f_u        𝔲<left><right><c-r>=Eatchar('\s')<cr>
inorea f_v        𝔳<left><right><c-r>=Eatchar('\s')<cr>
inorea f_w        𝔴<left><right><c-r>=Eatchar('\s')<cr>
inorea f_x        𝔵<left><right><c-r>=Eatchar('\s')<cr>
inorea f_y        𝔶<left><right><c-r>=Eatchar('\s')<cr>
inorea f_z        𝔷<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLF UnicodeMColor
syn match   UnicodeLatinLF "[𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷]" contains=@NoSpell  containedin=RegExRanges

" Mathematical Script
inorea s_A        𝒜<left><right><c-r>=Eatchar('\s')<cr>
inorea s_B        ℬ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_C        𝒞<left><right><c-r>=Eatchar('\s')<cr>
inorea s_D        𝒟<left><right><c-r>=Eatchar('\s')<cr>
inorea s_E        ℰ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_F        ℱ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_G        𝒢<left><right><c-r>=Eatchar('\s')<cr>
inorea s_H        ℋ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_I        ℐ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_J        𝒥<left><right><c-r>=Eatchar('\s')<cr>
inorea s_K        𝒦<left><right><c-r>=Eatchar('\s')<cr>
inorea s_L        ℒ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_M        ℳ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_N        𝒩<left><right><c-r>=Eatchar('\s')<cr>
inorea s_O        𝒪<left><right><c-r>=Eatchar('\s')<cr>
inorea s_P        𝒫<left><right><c-r>=Eatchar('\s')<cr>
inorea s_Q        𝒬<left><right><c-r>=Eatchar('\s')<cr>
inorea s_R        ℛ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_S        𝒮<left><right><c-r>=Eatchar('\s')<cr>
inorea s_T        𝒯<left><right><c-r>=Eatchar('\s')<cr>
inorea s_U        𝒰<left><right><c-r>=Eatchar('\s')<cr>
inorea s_V        𝒱<left><right><c-r>=Eatchar('\s')<cr>
inorea s_W        𝒲<left><right><c-r>=Eatchar('\s')<cr>
inorea s_X        𝒳<left><right><c-r>=Eatchar('\s')<cr>
inorea s_Y        𝒴<left><right><c-r>=Eatchar('\s')<cr>
inorea s_Z        𝒵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUS UnicodeMColor
syn match   UnicodeLatinUS "[𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵]" contains=@NoSpell  containedin=RegExRanges

inorea s_a        𝒶<left><right><c-r>=Eatchar('\s')<cr>
inorea s_b        𝒷<left><right><c-r>=Eatchar('\s')<cr>
inorea s_c        𝒸<left><right><c-r>=Eatchar('\s')<cr>
inorea s_d        𝒹<left><right><c-r>=Eatchar('\s')<cr>
inorea s_e        ℯ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_f        𝒻<left><right><c-r>=Eatchar('\s')<cr>
inorea s_g        ℊ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_h        𝒽<left><right><c-r>=Eatchar('\s')<cr>
inorea s_i        𝒾<left><right><c-r>=Eatchar('\s')<cr>
inorea s_j        𝒿<left><right><c-r>=Eatchar('\s')<cr>
inorea s_k        𝓀<left><right><c-r>=Eatchar('\s')<cr>
inorea s_l        ℓ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_l2       𝓁<left><right><c-r>=Eatchar('\s')<cr>
inorea s_m        𝓂<left><right><c-r>=Eatchar('\s')<cr>
inorea s_n        𝓃<left><right><c-r>=Eatchar('\s')<cr>
inorea s_o        ℴ<left><right><c-r>=Eatchar('\s')<cr>
inorea s_p        𝓅<left><right><c-r>=Eatchar('\s')<cr>
inorea s_q        𝓆<left><right><c-r>=Eatchar('\s')<cr>
inorea s_r        𝓇<left><right><c-r>=Eatchar('\s')<cr>
inorea s_s        𝓈<left><right><c-r>=Eatchar('\s')<cr>
inorea s_t        𝓉<left><right><c-r>=Eatchar('\s')<cr>
inorea s_u        𝓊<left><right><c-r>=Eatchar('\s')<cr>
inorea s_v        𝓋<left><right><c-r>=Eatchar('\s')<cr>
inorea s_w        𝓌<left><right><c-r>=Eatchar('\s')<cr>
inorea s_x        𝓍<left><right><c-r>=Eatchar('\s')<cr>
inorea s_y        𝓎<left><right><c-r>=Eatchar('\s')<cr>
inorea s_z        𝓏<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLS UnicodeMColor
syn match   UnicodeLatinLS "[𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀ℓ𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏]" contains=@NoSpell  containedin=RegExRanges

" Double
inorea d_nP       ℙ̶<left><right><c-r>=Eatchar('\s')<cr>
inorea d_A        𝔸<left><right><c-r>=Eatchar('\s')<cr>
inorea d_B        𝔹<left><right><c-r>=Eatchar('\s')<cr>
inorea d_C        ℂ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_D        𝔻<left><right><c-r>=Eatchar('\s')<cr>
inorea d_E        𝔼<left><right><c-r>=Eatchar('\s')<cr>
inorea d_F        𝔽<left><right><c-r>=Eatchar('\s')<cr>
inorea d_G        𝔾<left><right><c-r>=Eatchar('\s')<cr>
inorea d_H        ℍ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_I        𝕀<left><right><c-r>=Eatchar('\s')<cr>
inorea d_J        𝕁<left><right><c-r>=Eatchar('\s')<cr>
inorea d_K        𝕂<left><right><c-r>=Eatchar('\s')<cr>
inorea d_L        𝕃<left><right><c-r>=Eatchar('\s')<cr>
inorea d_M        𝕄<left><right><c-r>=Eatchar('\s')<cr>
inorea d_N        ℕ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_O        𝕆<left><right><c-r>=Eatchar('\s')<cr>
inorea d_P        ℙ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_Q        ℚ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_R        ℝ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_S        𝕊<left><right><c-r>=Eatchar('\s')<cr>
inorea d_T        𝕋<left><right><c-r>=Eatchar('\s')<cr>
inorea d_U        𝕌<left><right><c-r>=Eatchar('\s')<cr>
inorea d_V        𝕍<left><right><c-r>=Eatchar('\s')<cr>
inorea d_W        𝕎<left><right><c-r>=Eatchar('\s')<cr>
inorea d_X        𝕏<left><right><c-r>=Eatchar('\s')<cr>
inorea d_Y        𝕐<left><right><c-r>=Eatchar('\s')<cr>
inorea d_Z        ℤ<left><right><c-r>=Eatchar('\s')<cr>

inorea d_np       𝕡̶<left><right><c-r>=Eatchar('\s')<cr>
inorea d_a        𝕒<left><right><c-r>=Eatchar('\s')<cr>
inorea d_b        𝕓<left><right><c-r>=Eatchar('\s')<cr>
inorea d_c        𝕔<left><right><c-r>=Eatchar('\s')<cr>
inorea d_d        𝕕<left><right><c-r>=Eatchar('\s')<cr>
inorea d_e        𝕖<left><right><c-r>=Eatchar('\s')<cr>
inorea d_f        𝕗<left><right><c-r>=Eatchar('\s')<cr>
inorea d_g        𝕘<left><right><c-r>=Eatchar('\s')<cr>
inorea d_h        𝕙<left><right><c-r>=Eatchar('\s')<cr>
inorea d_i        𝕚<left><right><c-r>=Eatchar('\s')<cr>
inorea d_j        𝕛<left><right><c-r>=Eatchar('\s')<cr>
inorea d_k        𝕜<left><right><c-r>=Eatchar('\s')<cr>
inorea d_l        𝕝<left><right><c-r>=Eatchar('\s')<cr>
inorea d_m        𝕞<left><right><c-r>=Eatchar('\s')<cr>
inorea d_n        𝕟<left><right><c-r>=Eatchar('\s')<cr>
inorea d_o        𝕠<left><right><c-r>=Eatchar('\s')<cr>
inorea d_p        𝕡<left><right><c-r>=Eatchar('\s')<cr>
inorea d_q        𝕢<left><right><c-r>=Eatchar('\s')<cr>
inorea d_r        𝕣<left><right><c-r>=Eatchar('\s')<cr>
inorea d_s        𝕤<left><right><c-r>=Eatchar('\s')<cr>
inorea d_t        𝕥<left><right><c-r>=Eatchar('\s')<cr>
inorea d_u        𝕦<left><right><c-r>=Eatchar('\s')<cr>
inorea d_v        𝕧<left><right><c-r>=Eatchar('\s')<cr>
inorea d_w        𝕨<left><right><c-r>=Eatchar('\s')<cr>
inorea d_x        𝕩<left><right><c-r>=Eatchar('\s')<cr>
inorea d_y        𝕪<left><right><c-r>=Eatchar('\s')<cr>
inorea d_z        𝕫<left><right><c-r>=Eatchar('\s')<cr>

inorea d_pi        ℼ<left><right><c-r>=Eatchar('\s')<cr>
inorea d_Pi        ℿ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinD UnicodeDBColor
syn match   UnicodeLatinD "[∅Ᵽ𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤℿ]" contains=@NoSpell  containedin=RegExRanges
syn match   UnicodeLatinD "[ᵽ𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫ℼ⅀]" contains=@NoSpell  containedin=RegExRanges


"---------------------------
" Superscript/subscript
"---------------------------

" Superscript
inorea a_0        ⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea a_1        ¹<left><right><c-r>=Eatchar('\s')<cr>
inorea a_2        ²<left><right><c-r>=Eatchar('\s')<cr>
inorea a_3        ³<left><right><c-r>=Eatchar('\s')<cr>
inorea a_4        ⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea a_5        ⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea a_6        ⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea a_7        ⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea a_8        ⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea a_9        ⁹<left><right><c-r>=Eatchar('\s')<cr>
inorea a_inf      𝆗<left><right><c-r>=Eatchar('\s')<cr>
inorea a_+        ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea a_pl       ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea a_-        ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea a_mn       ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea a_smn      ᐨ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dsh      ᐨ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_=        ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea a_eq       ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea a_(        ⁽<left><right><c-r>=Eatchar('\s')<cr>
inorea a_)        ⁾<left><right><c-r>=Eatchar('\s')<cr>
inorea aa_*       ˟<left><right><c-r>=Eatchar('\s')<cr>
inorea aa_tm      ˟<left><right><c-r>=Eatchar('\s')<cr>
inorea a_*        ﹡<left><right><c-r>=Eatchar('\s')<cr>
inorea a_tm       ᕁ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_/        ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dv       ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_fsl      ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_\        ᐠ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_bsl      ᐠ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dot      ·<left><right><c-r>=Eatchar('\s')<cr>
inorea aa_dot     ᐝ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_3dot     <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_oop     ᐤ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_oop      ॰<left><right><c-r>=Eatchar('\s')<cr>
inorea a_~        ˜<left><right><c-r>=Eatchar('\s')<cr>
inorea a_^        <left><right><c-r>=Eatchar('\s')<cr>
inorea a_\|       ᣳ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_$        ᙚ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dollar   ᙚ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_gamma2   ˠ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_int      ᶴ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_!        ꜝ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_inv!     ꜞ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_,        ⸴<left><right><c-r>=Eatchar('\s')<cr>

inorea a_lt       ˂<left><right><c-r>=Eatchar('\s')<cr>
inorea a_gt       ˃<left><right><c-r>=Eatchar('\s')<cr>
inorea a_lfah     ˂<left><right><c-r>=Eatchar('\s')<cr>
inorea a_rtah     ˃<left><right><c-r>=Eatchar('\s')<cr>
inorea a_dnah     ˅<left><right><c-r>=Eatchar('\s')<cr>
inorea a_upah     ˄<left><right><c-r>=Eatchar('\s')<cr>

inorea a_sub      ꜂<left><right><c-r>=Eatchar('\s')<cr>
inorea a_sube     ꜃<left><right><c-r>=Eatchar('\s')<cr>
inorea a_sup      ꜄<left><right><c-r>=Eatchar('\s')<cr>
inorea a_supe     ꜅<left><right><c-r>=Eatchar('\s')<cr>
inorea a_un       ᐡ<left><right><c-r>=Eatchar('\s')<cr>
inorea a_in       ᐢ<left><right><c-r>=Eatchar('\s')<cr>

" Smaller/higher superscript ⁰
inorea aa_0       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_1       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_2       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_3       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_4       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_5       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_6       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_7       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_8       <left><right><c-r>=Eatchar('\s')<cr>
inorea aa_9       <left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea __0        ⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea __1        ¹<left><right><c-r>=Eatchar('\s')<cr>
inorea __2        ²<left><right><c-r>=Eatchar('\s')<cr>
inorea __3        ³<left><right><c-r>=Eatchar('\s')<cr>
inorea __4        ⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea __5        ⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea __6        ⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea __7        ⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea __8        ⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea __9        ⁹<left><right><c-r>=Eatchar('\s')<cr>
inorea __inf      𝆗<left><right><c-r>=Eatchar('\s')<cr>
inorea __+        ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea __pl       ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea __-        ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea __mn       ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea __=        ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea __eq       ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea __/        ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __dv       ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __dot      ·<left><right><c-r>=Eatchar('\s')<cr>
inorea __(       ⁽⁾<left><right><c-r>=Eatchar('\s')<cr>
inorea __)        ⁾<left><right><c-r>=Eatchar('\s')<cr>

" inorea a_p0      ⁺⁰<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p1      ⁺¹<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p2      ⁺²<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p3      ⁺³<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p4      ⁺⁴<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p5      ⁺⁵<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p6      ⁺⁶<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p7      ⁺⁷<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p8      ⁺⁸<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p9      ⁺⁹<left><right><c-r>=Eatchar('\s')<cr>
"
" inorea a_m0      ⁻⁰<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m1      ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m2      ⁻²<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m3      ⁻³<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m4      ⁻⁴<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m5      ⁻⁵<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m6      ⁻⁶<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m7      ⁻⁷<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m8      ⁻⁸<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m9      ⁻⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea __p0      ⁺⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea __p1      ⁺¹<left><right><c-r>=Eatchar('\s')<cr>
inorea __p2      ⁺²<left><right><c-r>=Eatchar('\s')<cr>
inorea __p3      ⁺³<left><right><c-r>=Eatchar('\s')<cr>
inorea __p4      ⁺⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea __p5      ⁺⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea __p6      ⁺⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea __p7      ⁺⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea __p8      ⁺⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea __p9      ⁺⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea __m0      ⁻⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea __m1      ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inorea __m2      ⁻²<left><right><c-r>=Eatchar('\s')<cr>
inorea __m3      ⁻³<left><right><c-r>=Eatchar('\s')<cr>
inorea __m4      ⁻⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea __m5      ⁻⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea __m6      ⁻⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea __m7      ⁻⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea __m8      ⁻⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea __m9      ⁻⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea __1dn    ¹ᐟⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1db    ¹ᐟᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1dx    ¹ᐟˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1d2    ¹ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea __d2      ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea __1on    ¹ᐟⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1ob    ¹ᐟᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1ox    ¹ᐟˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea __1o2    ¹ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea __o2      ᐟ²<left><right><c-r>=Eatchar('\s')<cr>

" No q in sp
" inorea a_a        ᵃ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_b        ᵇ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_c        ᶜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_d        ᵈ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_e        ᵉ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_f        ᶠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_g        ᵍ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_h        ʰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_i        ⁱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_j        ʲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_k        ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_l        ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_m        ᵐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_n        ⁿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_o        ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_p        ᵖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_q        ᕐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_r        ʳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_s        ˢ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_t        ᵗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_u        ᵘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_v        ᵛ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_w        ᵚ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_x        ˣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_y        ʸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_z        ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea __pla     ⁺ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plb     ⁺ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plc     ⁺ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pld     ⁺ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ple     ⁺ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plf     ⁺ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plg     ⁺ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plh     ⁺ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pli     ⁺ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plj     ⁺ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plk     ⁺ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pll     ⁺ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plm     ⁺ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pln     ⁺ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plo     ⁺ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plp     ⁺ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plq     ⁺ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plr     ⁺ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pls     ⁺ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plt     ⁺ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plu     ⁺ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plv     ⁺ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plw     ⁺ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plx     ⁺ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ply     ⁺ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plz     ⁺ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea __mna     ⁻ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnb     ⁻ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnc     ⁻ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnd     ⁻ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mne     ⁻ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnf     ⁻ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mng     ⁻ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnh     ⁻ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mni     ⁻ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnj     ⁻ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnk     ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnl     ⁻ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnm     ⁻ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnn     ⁻ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mno     ⁻ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnp     ⁻ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnq     ⁻ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnr     ⁻ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mns     ⁻ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnt     ⁻ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnu     ⁻ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnv     ⁻ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnw     ⁻ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnx     ⁻ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mny     ⁻ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnz     ⁻ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea __a        ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea __b        ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea __c        ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __d        ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea __e        ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea __f        ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __g        ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea __h        ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __i        ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __j        ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __k        ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __l        ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __m        ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __n        ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __o        ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __p        ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __q        ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __r        ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __s        ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea __t        ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea __u        ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __v        ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea __w        ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea __x        ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea __y        ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __z        ᶻ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPNum AllFilesNumColor
syn match   UnicodeSPNum "[⁰¹²³⁴⁵⁶⁷⁸⁹ᣛᴺᵀ]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeSPOps AllFilesOpColor
syn match   UnicodeSPOps "[⁺⁻⁼˟ᐟ˜·ᐨ﹡ᕁᐠᐝᐤ॰ᣳᙚˠᶴꜝꜞ˂˃˅˄꜂꜃꜄꜅ᐡᐢ⸴]" contains=@NoSpell  containedin=RegExRanges


hi  link    UnicodeSPParen AllFilesFuncColor
syn match   UnicodeSPParen "[⁽⁾]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeSPLatinL AllFilesNumColor
syn match   UnicodeSPLatinL "[ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖᕐʳˢᵗᵘᵛᵚˣʸᶻ]" contains=@NoSpell  containedin=RegExRanges
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ᵗʰ" contains=@NoSpell  containedin=RegExRanges
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ˢᵗ" contains=@NoSpell  containedin=RegExRanges
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ⁿᵈ" contains=@NoSpell  containedin=RegExRanges
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ʳᵈ" contains=@NoSpell  containedin=RegExRanges

" NOTE no C F Q S
" ʷʿ꜂ 𞥅ᒼ𓎭ᶜ⸇⸄⸁ᶠᣵ𝆍ᶳᔆᕁᕽ𝁂꭛ʸᶣ𐨗ᔾ⸃⸂ᶽᶻ𝆎ᙆᙇ ً𝆎⌕𑱔
" ᴻ꒙ᶰᔿꭩᶬᶫᶩ𝆛ᶨ𞄷ᶝᶢⱀ𝆏𝆑𝆐
" inorea a_A        ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_B        ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_C        ᒼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_D        ᴰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_E        ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_F        ⸁<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_G        ᴳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_H        ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_I        ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_J        ᴶ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_K        ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_L        ᴸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_M        ᴹ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_N        ᴺ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_O        ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_P        ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Q        ⌕<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_R        ᴿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_S        ᔆ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_T        ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_U        ᵁ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_V        ⱽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_W        ᵂ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_X        ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Y        𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Z        ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea __plA      ⁺ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plB      ⁺ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plC      ⁺ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plD      ⁺ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plE      ⁺ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plF      ⁺⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea __plG      ⁺ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plH      ⁺ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plI      ⁺ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plJ      ⁺ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plK      ⁺ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plL      ⁺ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plM      ⁺ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plN      ⁺ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plO      ⁺ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plP      ⁺ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plQ      ⁺⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea __plR      ⁺ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plS      ⁺ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plT      ⁺ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plU      ⁺ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plV      ⁺ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plW      ⁺ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plX      ⁺ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plY      ⁺𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __plZ      ⁺ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea __mnA      ⁻ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnB      ⁻ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnC      ⁻ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnD      ⁻ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnE      ⁻ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnF      ⁻⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnG      ⁻ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnH      ⁻ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnI      ⁻ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnJ      ⁻ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnK      ⁻ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnL      ⁻ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnM      ⁻ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnN      ⁻ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnO      ⁻ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnP      ⁻ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnQ      ⁻⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnR      ⁻ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnS      ⁻ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnT      ⁻ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnU      ⁻ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnV      ⁻ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnW      ⁻ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnX      ⁻ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnY      ⁻𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnZ      ⁻ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea __A        ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __B        ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __C        ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __D        ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea __E        ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __F        ⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea __G        ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __H        ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __I        ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __J        ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea __K        ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __L        ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __M        ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __N        ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __O        ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __P        ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Q        ⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea __R        ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __S        ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea __T        ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __U        ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __V        ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __W        ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea __X        ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Y        𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __Z        ᙆ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPLatinU AllFilesNumColor
syn match   UnicodeSPLatinU "[ᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴼᴾᴿᵁⱽᵂᒼ⸁⌕ᔆᕽ𐨗ᙆ]" contains=@NoSpell  containedin=RegExRanges

" Subscript
inorea z_0        ₀<left><right><c-r>=Eatchar('\s')<cr>
inorea z_1        ₁<left><right><c-r>=Eatchar('\s')<cr>
inorea z_2        ₂<left><right><c-r>=Eatchar('\s')<cr>
inorea z_3        ₃<left><right><c-r>=Eatchar('\s')<cr>
inorea z_4        ₄<left><right><c-r>=Eatchar('\s')<cr>
inorea z_5        ₅<left><right><c-r>=Eatchar('\s')<cr>
inorea z_6        ₆<left><right><c-r>=Eatchar('\s')<cr>
inorea z_7        ₇<left><right><c-r>=Eatchar('\s')<cr>
inorea z_8        ₈<left><right><c-r>=Eatchar('\s')<cr>
inorea z_9        ₉<left><right><c-r>=Eatchar('\s')<cr>
inorea z_+        ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea z_pl       ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea z_-        ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea z_mn       ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea z_=        ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea z_eq       ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea z_dot      .<left><right><c-r>=Eatchar('\s')<cr>
inorea z_dot2     ․<left><right><c-r>=Eatchar('\s')<cr>
inorea z_oop      ｡<left><right><c-r>=Eatchar('\s')<cr>
inorea z_(        ₍<left><right><c-r>=Eatchar('\s')<cr>
inorea z_)        ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea z_*        ⁎<left><right><c-r>=Eatchar('\s')<cr>
inorea z_tm       𝅃<left><right><c-r>=Eatchar('\s')<cr>
inorea z_/        ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea z_dv       ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea z_fsl      ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea z_\        ៶<left><right><c-r>=Eatchar('\s')<cr>
inorea z_bsl      ៶<left><right><c-r>=Eatchar('\s')<cr>
inorea z_inf      ∞<left><right><c-r>=Eatchar('\s')<cr>
inorea z_<        ‹<left><right><c-r>=Eatchar('\s')<cr>
inorea z_>        ›<left><right><c-r>=Eatchar('\s')<cr>
inorea z_\|       ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea z_~        ˷<left><right><c-r>=Eatchar('\s')<cr>
inorea z_gamma2   ៵<left><right><c-r>=Eatchar('\s')<cr>
inorea z_inv!     ꜟ<left><right><c-r>=Eatchar('\s')<cr>
inorea z_^        ᶺ<left><right><c-r>=Eatchar('\s')<cr>
inorea z_,        ,<left><right><c-r>=Eatchar('\s')<cr>

inorea z_lt       ˱<left><right><c-r>=Eatchar('\s')<cr>
inorea z_gt       ˲<left><right><c-r>=Eatchar('\s')<cr>
inorea z_lfah     ˱<left><right><c-r>=Eatchar('\s')<cr>
inorea z_rtah     ˲<left><right><c-r>=Eatchar('\s')<cr>
inorea z_dnah     ˯<left><right><c-r>=Eatchar('\s')<cr>
inorea z_upah     ˰<left><right><c-r>=Eatchar('\s')<cr>

inorea z_sub      ꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea z_sube     ꜁<left><right><c-r>=Eatchar('\s')<cr>
inorea z_sup      ꜆<left><right><c-r>=Eatchar('\s')<cr>
inorea z_supe     ꜇<left><right><c-r>=Eatchar('\s')<cr>
inorea z_un       ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea z_in       ₙ<left><right><c-r>=Eatchar('\s')<cr>

" Smaller/lower subscripts ₀
inorea zz_0       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_1       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_2       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_3       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_4       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_5       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_6       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_7       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_8       <left><right><c-r>=Eatchar('\s')<cr>
inorea zz_9       <left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea _0         ₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _1         ₁<left><right><c-r>=Eatchar('\s')<cr>
inorea _2         ₂<left><right><c-r>=Eatchar('\s')<cr>
inorea _3         ₃<left><right><c-r>=Eatchar('\s')<cr>
inorea _4         ₄<left><right><c-r>=Eatchar('\s')<cr>
inorea _5         ₅<left><right><c-r>=Eatchar('\s')<cr>
inorea _6         ₆<left><right><c-r>=Eatchar('\s')<cr>
inorea _7         ₇<left><right><c-r>=Eatchar('\s')<cr>
inorea _8         ₈<left><right><c-r>=Eatchar('\s')<cr>
inorea _9         ₉<left><right><c-r>=Eatchar('\s')<cr>
inorea ___+       ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea ___-       ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea ___=       ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea ___/       ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea _pl        ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _mn        ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea _eq        ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea _dv        ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea ___(      ₍₎<left><right><c-r>=Eatchar('\s')<cr>
inorea ___)       ₎<left><right><c-r>=Eatchar('\s')<cr>

" inorea z_p0      ₊₀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p1      ₊₁<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p2      ₊₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p3      ₊₃<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p4      ₊₄<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p5      ₊₅<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p6      ₊₆<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p7      ₊₇<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p8      ₊₈<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p9      ₊₉<left><right><c-r>=Eatchar('\s')<cr>
"
" inorea z_m0      ₋₀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m1      ₋₁<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m2      ₋₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m3      ₋₃<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m4      ₋₄<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m5      ₋₅<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m6      ₋₆<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m7      ₋₇<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m8      ₋₈<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m9      ₋₉<left><right><c-r>=Eatchar('\s')<cr>

inorea _p0       ₊₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _p1       ₊₁<left><right><c-r>=Eatchar('\s')<cr>
inorea _p2       ₊₂<left><right><c-r>=Eatchar('\s')<cr>
inorea _p3       ₊₃<left><right><c-r>=Eatchar('\s')<cr>
inorea _p4       ₊₄<left><right><c-r>=Eatchar('\s')<cr>
inorea _p5       ₊₅<left><right><c-r>=Eatchar('\s')<cr>
inorea _p6       ₊₆<left><right><c-r>=Eatchar('\s')<cr>
inorea _p7       ₊₇<left><right><c-r>=Eatchar('\s')<cr>
inorea _p8       ₊₈<left><right><c-r>=Eatchar('\s')<cr>
inorea _p9       ₊₉<left><right><c-r>=Eatchar('\s')<cr>

inorea _m0       ₋₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _m1       ₋₁<left><right><c-r>=Eatchar('\s')<cr>
inorea _m2       ₋₂<left><right><c-r>=Eatchar('\s')<cr>
inorea _m3       ₋₃<left><right><c-r>=Eatchar('\s')<cr>
inorea _m4       ₋₄<left><right><c-r>=Eatchar('\s')<cr>
inorea _m5       ₋₅<left><right><c-r>=Eatchar('\s')<cr>
inorea _m6       ₋₆<left><right><c-r>=Eatchar('\s')<cr>
inorea _m7       ₋₇<left><right><c-r>=Eatchar('\s')<cr>
inorea _m8       ₋₈<left><right><c-r>=Eatchar('\s')<cr>
inorea _m9       ₋₉<left><right><c-r>=Eatchar('\s')<cr>

inorea _minf     ₋∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _mninf    ₋∞<left><right><c-r>=Eatchar('\s')<cr>

inorea _1dn     ₁៸ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1db     ₁៸ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1dx     ₁៸ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1d2     ₁៸₂<left><right><c-r>=Eatchar('\s')<cr>
inorea _d2       ៸₂<left><right><c-r>=Eatchar('\s')<cr>
inorea _1on     ₁៸ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1ob     ₁៸ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1ox     ₁៸ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea _1o2     ₁៸₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea _o2      ៸₂<left><right><c-r>=Eatchar('\s')<cr>


" NOTE no b,c,d,f,g,q,r,w,y,z
" ៵𝇒ⱃꮷ𐹠𑚤𑣡𝇥𝇧𖾜ₔꜰғₕ₉ﻣ𖾟 ࣲ ٍ 𑖵⳾𛲟𖾝𖾞𝄾𝇣𝇤٩۹༝𝅃𝅄𝩾ᇮᅇ ᪲ ᳹ᕀ␣ퟠ༛ ⸋ 𑁀𑈫𖾛𛲗𝆘 𑁀𑈫𖾛𛲗𝆘∞
" , If it's not so formal use V_f
" inorea z_a        ₐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_b        ⱃ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_c        ꜀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_d        𑚤<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_e        ₑ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_f        ғ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_g        <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_h        ₕ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_i        ᵢ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_j        ⱼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_k        ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_l        ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_m        ₘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_n        ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_o        ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_p        ₚ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_q        ﻣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_r        ᵣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_s        ₛ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_t        ₜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_u        ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_v        ᵥ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_w        𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_x        ₓ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_y        ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_z        ⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea _a         ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea _b         ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea _c         ꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea _d         𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea _e         ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea _f         ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea _g         <left><right><c-r>=Eatchar('\s')<cr>
inorea _h         ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea _i         ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea _j         ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea _k         ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea _l         ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _m         ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea _n         ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _o         ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea _p         ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea _q         ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _r         ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _s         ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea _t         ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea _u         ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _v         ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea _w         𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea _x         ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea _y         ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea _z         ⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea _pla      ₊ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plb      ₊ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plc      ₊꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea _pld      ₊𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea _ple      ₊ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plf      ₊ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plg      ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _plh      ₊ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea _pli      ₊ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plj      ₊ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plk      ₊ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea _pll      ₊ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plm      ₊ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea _pln      ₊ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plo      ₊ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plp      ₊ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plq      ₊ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plr      ₊ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _pls      ₊ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plt      ₊ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plu      ₊ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plv      ₊ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plw      ₊𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea _plx      ₊ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea _ply      ₊ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plz      ₊⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea _mna      ₋ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnb      ₋ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnc      ₋꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnd      ₋𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea _mne      ₋ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnf      ₋ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mng      ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnh      ₋ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mni      ₋ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnj      ₋ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnk      ₋ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnl      ₋ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnm      ₋ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnn      ₋ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mno      ₋ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnp      ₋ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnq      ₋ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnr      ₋ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mns      ₋ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnt      ₋ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnu      ₋ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnv      ₋ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnw      ₋𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnx      ₋ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mny      ₋ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnz      ₋⳾<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBLatinL AllFilesNumColor
syn match   UnicodeSBLatinL "[ₐₑₕᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓ᙮ⱃ꜀𑚤ғﻣ𖾟⳾ꮷ]" contains=@NoSpell  containedin=RegExRanges

" NOTE no uppercase subscripts!!
" ៰ꜟ៲៴៱៷｡𐫶𔗐𛱈𐼦ࡘ𐼈៳𖾕𖾛𐼜ₚ𐼦ﻣﻪ ཱર𖾗𑇁៴⌄˯ ̬𖾓𖾙𐺜꛵ₓ᙮𝄪𝅃⸼𐺔𝀘
" ғꜰֈɟ៷៵𖾘𛱖ҕңҥԋ⧺հዛꃅꮋ𐡲𐫤𖨏ᵤ ̮ܚบᴗⳙꭒ𐓶𐮀𐮪
" 𐼼𐽀ㆴ𐼂𐼋⁁𖡔ࡃᴋ𐔘ҡӄห𐳞ɋԛզᨣ᭷ℴ⧜𐮎ﻪ𓏗𝓆ɯ ྻพᴡ𐐶𖾟𝨸
" inorea z_A        ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_B        ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_C        𐫶<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_D        𐼦<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_E        ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_F        ꜰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_G        𛱖<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_H        ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_I        ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_J        𐼈<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_K        <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_L        𖾘<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_M        ៳<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_N        ៷<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_O        ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_P        𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Q        ﻪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_R       _ ཱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_S        𑇁<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_T        ꛵<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_U        𐮀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_V        ៴<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_W         ྻ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_X        𐺔<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Y        𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Z        𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea _A         ៱<left><right><c-r>=Eatchar('\s')<cr>
inorea _B         ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _C         𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea _D         𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea _E         ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea _F         ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea _G         𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea _H         ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea _I         ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea _J         𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea _K         <left><right><c-r>=Eatchar('\s')<cr>
inorea _L         𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea _M         ៳<left><right><c-r>=Eatchar('\s')<cr>
inorea _N         ៷<left><right><c-r>=Eatchar('\s')<cr>
inorea _O         ៰<left><right><c-r>=Eatchar('\s')<cr>
inorea _P         𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea _Q         ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _R        _ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea _S         𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea _T         ꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea _U         𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea _V         ៴<left><right><c-r>=Eatchar('\s')<cr>
inorea _W          ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea _X         𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea _Y         𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea _Z         𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea _plA      ₊៱<left><right><c-r>=Eatchar('\s')<cr>
inorea _plB      ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plC      ₊𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea _plD      ₊𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea _plE      ₊ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plF      ₊ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plG      ₊𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea _plH      ₊ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plI      ₊៲<left><right><c-r>=Eatchar('\s')<cr>
inorea _plJ      ₊𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea _plK      ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _plL      ₊𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea _plM      ₊៳<left><right><c-r>=Eatchar('\s')<cr>
inorea _plN      ₊៷<left><right><c-r>=Eatchar('\s')<cr>
inorea _plO      ₊៰<left><right><c-r>=Eatchar('\s')<cr>
inorea _plP      ₊𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea _plQ      ₊ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plR      ₊ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plS      ₊𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea _plT      ₊꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea _plU      ₊𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea _plV      ₊៴<left><right><c-r>=Eatchar('\s')<cr>
inorea _plW      ₊ ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plX      ₊𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea _plY      ₊𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea _plZ      ₊𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea _mnA      ₋៱<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnB      ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnC      ₋𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnD      ₋𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnE      ₋ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnF      ₋ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnG      ₋𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnH      ₋ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnI      ₋៲<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnJ      ₋𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnK      ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnL      ₋𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnM      ₋៳<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnN      ₋៷<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnO      ₋៰<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnP      ₋𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnQ      ₋ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnR      ₋ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnS      ₋𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnT      ₋꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnU      ₋𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnV      ₋៴<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnW      ₋ ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnX      ₋𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnY      ₋𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnZ      ₋𛲟<left><right><c-r>=Eatchar('\s')<cr>


hi  link    UnicodeSBLatinU AllFilesNumColor
syn match   UnicodeSBLatinU "[ₓ៷៱𐫶𐼦ᇀꜰ𛱖ԋ៲𐼈𖾘៳៰𐼜ﻪ𑇁𐮀꛵៴𐺔𐽀𛲟]" contains=@NoSpell  containedin=RegExRanges
syn match   UnicodeSBLatinU " ཱ" contains=@NoSpell  containedin=RegExRanges
syn match   UnicodeSBLatinU " ྻ" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodaSBOps AllFilesOpColor
syn match   UnicodaSBOps "[₊₋₌៸‹›𝅃ᶺ․｡⁎៶˷ꜟ˱˲˯˰꜁꜆꜇]" contains=@NoSpell  containedin=RegExRanges


hi  link    UnicodaSBParen AllFilesFuncColor
syn match   UnicodaSBParen "[₍₎]" contains=@NoSpell  containedin=RegExRanges

hi  link    UnicodeSBNum AllFilesNumColor
syn match   UnicodeSBNum "[₀₁₂₃₄₅₆₇₈₉𝆗]" contains=@NoSpell  containedin=RegExRanges

" Greek superscript
" Many were missing!
" ᶮᐢꟸᣕ𓎆 ᩦᐡᓑ𐡏ᶸꭟᶣᵘᶺᑋ꒷ᶷᶹ˅ˇ ٚᘁ꣺ ۢᣖᵄᶛ𑁮ᶡᶩᶥ𑆳ᢦ𝅎𐺉🢗▿꒳ᐜᶭ𞲬ﱣﹼʷ
" ᴼᵒᐤ॰ᛜ૰ᣳᶦꜞ𞄷ᵜᵊᶝᶞ ꫭ𓄽 𞥇⸹ᕻᶟᵌᶳᶾᶵᖦᶪ𑪝ꭜᵑᶬᶮᶯᶶ𞄺 ົჼᓐᓒᔊᣙ𐐸𐩥𝇉𐳲𑀙𛲜𛱟꒵
" inorea a_alpha    ᵅ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_al       ᵅ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_beta     ᵝ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_be       ᵝ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_gamma    ᵞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ga       ᵞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_delta    ᵟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_de       ᵟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_epsilon  ᵋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ep       ᵋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_zeta     ᶼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ze       ᶼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_eta      ᶯ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_et       ᶯ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_theta    ᶱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_th       ᶱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_phi      ᵠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ph       ᵠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_phi2     𝇉<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ph2      𝇉<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_chi      ᵡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ch       ᵡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_upsilon  ᶷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_up       ᶷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_iota     ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_io       ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_kappa    ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ka       ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_lambda   ᣔ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_la       ᣔ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_mu       ꭟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_nu       ᘁ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_xi       ᶳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_omicron  ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_on       ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_pi       ꟸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_pi2      ᶮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_rho      ᣖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_rh       ᣖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_sigma    ᣙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_si       ᣙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_tau      𑁮<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ta       𑁮<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_psi      ᶭ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_ps       ᶭ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_omega    ᐜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_om       ᐜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_nabla    ▿<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_na       ▿<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea __al       ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea __be       ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ga       ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __de       ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ep       ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ze       ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __et       ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea __th       ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ph       ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ch       ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __up       ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __io       ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ka       ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __la       ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mu       ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __nu       ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __xi       ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __on       ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pi       ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __pi2      ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __rh       ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __si       ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea __ta       𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea __ps       ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea __om       ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __na       ▿<left><right><c-r>=Eatchar('\s')<cr>

inorea __plal     ⁺ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plbe     ⁺ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plga     ⁺ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plde     ⁺ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plep     ⁺ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plze     ⁺ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plet     ⁺ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plth     ⁺ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plph     ⁺ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plch     ⁺ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plup     ⁺ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plio     ⁺ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plka     ⁺ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plla     ⁺ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plmu     ⁺ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plnu     ⁺ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plxi     ⁺ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plon     ⁺ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plpi     ⁺ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plpi2    ⁺ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plrh     ⁺ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plsi     ⁺ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plta     ⁺𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea __plps     ⁺ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plom     ⁺ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plna     ⁺▿<left><right><c-r>=Eatchar('\s')<cr>

inorea __mnal     ⁻ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnbe     ⁻ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnga     ⁻ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnde     ⁻ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnep     ⁻ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnze     ⁻ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnet     ⁻ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnth     ⁻ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnph     ⁻ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnch     ⁻ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnup     ⁻ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnio     ⁻ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnka     ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnla     ⁻ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnmu     ⁻ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnnu     ⁻ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnxi     ⁻ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnon     ⁻ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnpi     ⁻ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnpi2    ⁻ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnrh     ⁻ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnsi     ⁻ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnta     ⁻𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnps     ⁻ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnom     ⁻ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnna     ⁻▿<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPGreekL AllFilesNumColor
syn match   UnicodeSPGreekL "[ᵅᵝᵞᵟᵋᶼᶯᶱᵠᵡᶷᶿᶲꭟᣔᘁᶳꟸᶮᣖᣙ𑁮ᶭᐜ𝇉▿]" contains=@NoSpell  containedin=RegExRanges

" ˹ᣘᣴ𝆌⌜⸀ᅀᐞ꒫ᣔᶺ⌃𞄺˄ˆᐪ⸆𐩥𝇉ꚜᴯꚝ⏷
" ³ะཇaᄐᕑaᶧ𐣾𒑋 ̐ˠ ّ ࣘ౻ ඁ ྂ⫝꒴꒶ꣲ ꤪ𐦽𐹪𘡩𝄌 𞥉𞲬
" ▿▿▽𐺉🢓
" inorea a_Alpha    ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Al       ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Beta     ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Be       ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Gamma    ᣘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ga       ᣘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Delta    ᐞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_De       ᐞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Epsilon  ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ep       ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Zeta     ᶽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ze       ᶽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Eta      ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Et       ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Theta    ᶿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Th       ᶿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Iota     ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Io       ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Kappa    ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ka       ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Lambda   ⌃<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_La       ⌃<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Mu       ᴹ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Nu       ᴺ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Xi       ᶧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Omicron  ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_On       ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Pi       ᣕ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Rho      ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Rh       ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Sigma    ᄐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Si       ᄐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Tau      ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ta       ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Upsilon  𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Up       𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Phi      ᶲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ph       ᶲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Chi      ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ch       ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Psi      ꣲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Ps       ꣲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Omega    ᵜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Om       ᵜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Nabla    🢓<left><right><c-r>=Eatchar('\s')<cr>
" inorea a_Na       🢓<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea __Al       ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Be       ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ga       ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __De       ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ep       ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ze       ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Et       ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Th       ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Io       ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ka       ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __La       ⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea __Mu       ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Nu       ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Xi       ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea __On       ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Pi       ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Rh       ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Si       ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ta       ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Up       𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ph       ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ch       ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Ps       ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Om       ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __Na       🢓<left><right><c-r>=Eatchar('\s')<cr>

inorea __plAl     ⁺ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plBe     ⁺ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plGa     ⁺ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plDe     ⁺ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plEp     ⁺ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plZe     ⁺ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plEt     ⁺ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plTh     ⁺ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plIo     ⁺ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plKa     ⁺ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plLa     ⁺⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea __plMu     ⁺ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plNu     ⁺ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plXi     ⁺ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plOn     ⁺ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plPi     ⁺ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plRh     ⁺ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plSi     ⁺ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plTa     ⁺ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plUp     ⁺𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __plPh     ⁺ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plCh     ⁺ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plPs     ⁺ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plOm     ⁺ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __plNa     ⁺🢓<left><right><c-r>=Eatchar('\s')<cr>

inorea __mnAl     ⁻ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnBe     ⁻ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnGa     ⁻ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnDe     ⁻ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnEp     ⁻ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnZe     ⁻ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnEt     ⁻ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnTh     ⁻ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnIo     ⁻ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnKa     ⁻ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnLa     ⁻⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnMu     ⁻ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnNu     ⁻ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnXi     ⁻ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnOn     ⁻ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnPi     ⁻ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnRh     ⁻ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnSi     ⁻ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnTa     ⁻ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnUp     ⁻𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnPh     ⁻ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnCh     ⁻ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnPs     ⁻ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnOm     ⁻ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea __mnNa     ⁻🢓<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPGreekU AllFilesNumColor
syn match   UnicodeSPGreekU "[ᣕᣘᐞ⌃ᶧᵜᄐꣲ🢓ᶽ]" contains=@NoSpell  containedin=RegExRanges

" Greek subscript
" ᵤ៵ﻌﻪ 𖾜ₑₔ𖽞៹ࡘㆴ₏ₙ⁁𐽑𐬓 𐴟 𐮀𐮪 𐴟 ៴⌄˯ ̬⌵ࡘ𐺝 ࣣ𖽚𖾙 ̫𖾟𛱠𛱝𛱜𐼚𐼦 ۭꮄ༝
" ഄ⇻⇹𝂷𝂸
" inorea z_alpha    ៵<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_al       ៵<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_beta     ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_be       ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_gamma    ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ga       ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_delta    𖾜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_de       𖾜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_epsilon  𖽞<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ep       𖽞<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_zeta     ៹<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ze       ៹<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_eta      ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_et       ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_theta    𛱝<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_th       𛱝<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_iota     ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_io       ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_kappa    ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ka       ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_lambda   𐽑<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_la       𐽑<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_mu       𐮪<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_nu       ៴<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_xi       ࡘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_omicron  ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_on       ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_pi       ₏<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_rho      ᵨ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_rh       ᵨ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_sigma    𖽚<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_si       𖽚<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_tau      𖾙<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ta       𖾙<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_upsilon  ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_up       ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_phi      ᵩ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ph       ᵩ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_chi      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ch       ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_psi      ഄ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_ps       ഄ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_omega    𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_om       𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_nabla    𝅎<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_na       𝅎<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea ___al      ៵<left><right><c-r>=Eatchar('\s')<cr>
inorea ___be      ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ga      ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___de      𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ep      𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ze      ៹<left><right><c-r>=Eatchar('\s')<cr>
inorea ___et      ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___th      𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea ___io      ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ka      ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___la      𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea ___mu      𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea ___nu      ៴<left><right><c-r>=Eatchar('\s')<cr>
inorea ___xi      ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___on      ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___pi      ₏<left><right><c-r>=Eatchar('\s')<cr>
inorea ___rh      ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___si      𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ta      𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea ___up      ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ph      ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ch      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___ps      ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___om      𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea ___na      𝅎<left><right><c-r>=Eatchar('\s')<cr>

inorea _plal     ₊៵<left><right><c-r>=Eatchar('\s')<cr>
inorea _plbe     ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plga     ₊ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plde     ₊𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea _plep     ₊𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea _plze     ₊៹<left><right><c-r>=Eatchar('\s')<cr>
inorea _plet     ₊ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plth     ₊𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea _plio     ₊ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plka     ₊ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plla     ₊𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea _plmu     ₊𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea _plnu     ₊៴<left><right><c-r>=Eatchar('\s')<cr>
inorea _plxi     ₊ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plon     ₊ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plpi     ₊₏<left><right><c-r>=Eatchar('\s')<cr>
inorea _plrh     ₊ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plsi     ₊𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea _plta     ₊𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea _plup     ₊ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plph     ₊ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plch     ₊ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plps     ₊ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plom     ₊𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea _plna     ₊𝅎<left><right><c-r>=Eatchar('\s')<cr>

inorea _mnal     ₋៵<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnbe     ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnga     ₋ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnde     ₋𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnep     ₋𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnze     ₋៹<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnet     ₋ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnth     ₋𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnio     ₋ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnka     ₋ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnla     ₋𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnmu     ₋𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnnu     ₋៴<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnxi     ₋ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnon     ₋ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnpi     ₋₏<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnrh     ₋ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnsi     ₋𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnta     ₋𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnup     ₋ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnph     ₋ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnch     ₋ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnps     ₋ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnom     ₋𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnna     ₋𝅎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBGreekL AllFilesNumColor
syn match   UnicodeSBGreekL "[ᵦᵧᵨᵩᵪ៵𖾜𖽞៹𛱝𐽑𐮪៴ࡘ₏𖽚𖾙ഄ𝅎]" contains=@NoSpell  containedin=RegExRanges

" ៱‸ꞈ𐽑𝅈𐺆𓐆𝍢𛱜᭦𐫭₏𖾕𐺝𑀙𐳲ₐ᭦ﻌᢦ𐺉𝅎▿𖾖𝅏
" inorea z_Alpha    ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Al       ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Beta     ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Be       ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Gamma    𖾖<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ga       𖾖<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Delta    𐺆<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_De       𐺆<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Epsilon  ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ep       ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Zeta     𛲟<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ze       𛲟<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Eta      ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Et       ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Theta    𛱜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Th       𛱜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Iota     ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Io       ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Kappa    <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ka       <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Lambda   ‸<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_La       ‸<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Mu       ៳<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Nu       ៷<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Xi       𓐆<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Omicron  ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_On       ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Pi       𖾕<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Rho      𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Rh       𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Sigma    𐺝<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Si       𐺝<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Tau      𖾓<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ta       𖾓<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Upsilon  𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Up       𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Phi      𐳲<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ph       𐳲<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Chi      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ch       ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Psi      <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Ps       <left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Omega    ﻌ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Om       ﻌ<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Nabla    𐺉<left><right><c-r>=Eatchar('\s')<cr>
" inorea z_Na       𐺉<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea ___Al      ៱<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Be      ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ga      𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea ___De      𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea ___De2     △<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ep      ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ze      𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Et      ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Th      𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Io      ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ka      <left><right><c-r>=Eatchar('\s')<cr>
inorea ___La      ‸<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Mu      ៳<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Nu      ៷<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Xi      𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea ___On      ៰<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Pi      𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Rh      𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Si      𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ta      𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Up      𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ph      𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ch      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Ps      <left><right><c-r>=Eatchar('\s')<cr>
inorea ___Om      ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea ___Na      𐺉<left><right><c-r>=Eatchar('\s')<cr>

inorea _plAl     ₊៱<left><right><c-r>=Eatchar('\s')<cr>
inorea _plBe     ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plGa     ₊𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea _plDe     ₊𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea _plEp     ₊ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plZe     ₊𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea _plEt     ₊ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plTh     ₊𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea _plIo     ₊៲<left><right><c-r>=Eatchar('\s')<cr>
inorea _plKa     ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _plLa     ₊‸<left><right><c-r>=Eatchar('\s')<cr>
inorea _plMu     ₊៳<left><right><c-r>=Eatchar('\s')<cr>
inorea _plNu     ₊៷<left><right><c-r>=Eatchar('\s')<cr>
inorea _plXi     ₊𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea _plOn     ₊៰<left><right><c-r>=Eatchar('\s')<cr>
inorea _plPi     ₊𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea _plRh     ₊𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea _plSi     ₊𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea _plTa     ₊𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea _plUp     ₊𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea _plPh     ₊𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea _plCh     ₊ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plPs     ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _plOm     ₊ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea _plNa     ₊𐺉<left><right><c-r>=Eatchar('\s')<cr>

inorea _mnAl     ₋៱<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnBe     ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnGa     ₋𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnDe     ₋𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnEp     ₋ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnZe     ₋𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnEt     ₋ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnTh     ₋𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnIo     ₋៲<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnKa     ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnLa     ₋‸<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnMu     ₋៳<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnNu     ₋៷<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnXi     ₋𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnOn     ₋៰<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnPi     ₋𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnRh     ₋𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnSi     ₋𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnTa     ₋𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnUp     ₋𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnPh     ₋𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnCh     ₋ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnPs     ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnOm     ₋ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea _mnNa     ₋𐺉<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBGreekU AllFilesNumColor
syn match   UnicodeSBGreekU "[៱𖾖𐺆ᇀ𛲟𛱜៲‸៳𓐆៰𖾕𐼜𐺝𖾓𐽀𐳲ᵪﻌ𐺉]" contains=@NoSpell  containedin=RegExRanges


inorea ith        iᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea Ith        Iᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea nth        nᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea Nth        Nᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 0th        0ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 1st        1ˢᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea 2nd        2ⁿᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea 3rd        3ʳᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea 4th        4ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 5th        5ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 6th        6ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 7th        7ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 8th        8ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 9th        9ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 10th       10ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 11th       11ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 12th       12ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 13th       13ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 14th       14ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 15th       15ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 16th       16ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 17th       17ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 18th       18ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 19th       19ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 20th       20ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 21th       21ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 22th       22ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 23th       23ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 24th       24ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 25th       25ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 26th       26ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 27th       27ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 28th       28ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 29th       29ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 30th       30ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 31th       31ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 32th       32ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 33th       33ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 34th       34ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 35th       35ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 36th       36ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 37th       37ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 38th       38ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 39th       39ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 40th       40ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 41th       41ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 42th       42ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 43th       43ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 44th       44ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 45th       45ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 46th       46ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 47th       47ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 48th       48ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 49th       49ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 50th       50ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 51th       51ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 52th       52ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 53th       53ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 54th       54ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 55th       55ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 56th       56ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 57th       57ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 58th       58ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 59th       59ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 60th       60ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 61th       61ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 62th       62ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 63th       63ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 64th       64ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 65th       65ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 66th       66ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 67th       67ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 68th       68ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 69th       69ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 70th       70ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 71th       71ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 72th       72ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 73th       73ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 74th       74ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 75th       75ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 76th       76ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 77th       77ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 78th       78ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 79th       79ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 80th       80ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 81th       81ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 82th       82ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 83th       83ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 84th       84ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 85th       85ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 86th       86ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 87th       87ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 88th       88ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 89th       89ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 90th       90ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 91th       91ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 92th       92ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 93th       93ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 94th       94ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 95th       95ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 96th       96ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 97th       97ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 98th       98ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 99th       99ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 100th      100ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 1000th     1000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 10000th    10000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 100000th   100000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea 1000000th  1000000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>

" VINOTE: To get vectors in unicode like ᵥ⃗ or v⃗, type the char, then hold
"         ctrl-shift, and type u20d7 and release! You can then repeat the
"         vector motion on other characters with the "." command!
inorea v_a     a⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_b     b⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_c     c⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_d     d⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_e     e⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_f     f⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_g     g⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_h     h⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_i     i⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_j     j⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_k     k⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_l     l⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_m     m⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_n     n⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_o     o⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_p     p⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_q     q⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_r     r⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_s     s⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_t     t⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_u     u⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_v     v⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_w     w⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_x     x⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_y     y⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_z     z⃗<left><right><c-r>=Eatchar('\s')<cr>

" Use small capitals ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘꞯʀꜱᴛᴜᴠᴡxʏᴢ for vectors.
inorea v_A     ᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_B     ʙ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_C     ᴄ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_D     ᴅ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_E     ᴇ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_F     ꜰ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_G     ɢ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_H     ʜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_I     ɪ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_J     ᴊ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_K     ᴋ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_L     ʟ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_M     ᴍ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_N     ɴ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_O     ᴏ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_P     ᴘ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_Q     ꞯ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_R     ʀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_S     ꜱ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_T     ᴛ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_U     ᴜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_V     ᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_W     ᴡ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_X     x⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_Y     ʏ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_Z     ᴢ⃗<left><right><c-r>=Eatchar('\s')<cr>

"  ̅ used for not in math.
inorea n_a     a̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_b     b̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_c     c̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_d     d̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_e     e̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_f     f̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_g     g̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_h     h̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_i     i̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_j     j̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_k     k̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_l     l̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_m     m̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_n     n̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_o     o̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_p     p̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_q     q̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_r     r̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_s     s̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_t     t̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_u     u̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_v     v̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_w     w̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_x     x̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_y     y̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_z     z̅<left><right><c-r>=Eatchar('\s')<cr>

inorea n_A     A̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_B     B̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_C     C̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_D     D̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_E     E̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_F     F̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_G     G̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_H     H̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_I     I̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_J     J̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_K     K̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_L     L̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_M     M̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_N     N̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_O     O̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_P     P̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_Q     Q̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_R     R̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_S     S̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_T     T̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_U     U̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_V     V̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_W     W̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_X     X̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_Y     Y̅<left><right><c-r>=Eatchar('\s')<cr>
inorea n_Z     Z̅<left><right><c-r>=Eatchar('\s')<cr>


inorea zv_a    ₐ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_b    ⱃ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_c    ꜀⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_d    ꮷ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_e    ₑ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_f    ғ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_g    ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_h    ₕ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_i    ᵢ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_j    ⱼ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_k    ₖ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_l    ₗ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_m    ₘ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_n    ₙ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_o    ₒ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_p    ₚ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_q    ﻣ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_r    ᵣ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_s    ₛ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_t    ₜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_u    ᵤ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_v    ᵥ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_w    𖾟⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_x    ₓ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_y    ᵧ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_z    ⳾⃗<left><right><c-r>=Eatchar('\s')<cr>

inorea v_0     0⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_1     1⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_2     2⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_3     3⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_4     4⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_5     5⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_6     6⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_7     7⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_8     8⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea v_9     9⃗<left><right><c-r>=Eatchar('\s')<cr>

inorea zv_0    ₀⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_1    ₁⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_2    ₂⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_3    ₃⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_4    ₄⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_5    ₅⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_6    ₆⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_7    ₇⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_8    ₈⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea zv_9    ₉⃗<left><right><c-r>=Eatchar('\s')<cr>

" For combining hat accent ^ use u0302 instead (hat or unit vector).
inorea uv_a    â<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_b    b̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_c    ĉ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_d    d̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_e    ê<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_f    f̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_g    ĝ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_h    ĥ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_i    î<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_j    ĵ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_k    ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_l    l̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_m    m̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_n    n̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_o    ô<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_p    p̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_q    q̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_r    r̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_s    ŝ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_t    t̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_u    û<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_v    v̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_w    ŵ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_x    x̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_y    ŷ<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_z    ẑ<left><right><c-r>=Eatchar('\s')<cr>

inorea uv_A    ᴀ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_B    ʙ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_C    ᴄ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_D    ᴅ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_E    ᴇ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_F    ꜰ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_G    ɢ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_H    ʜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_I    ɪ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_J    ᴊ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_K    ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_L    ʟ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_M    ᴍ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_N    ɴ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_O    ᴏ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_P    ᴘ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_Q    ꞯ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_R    ʀ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_S    ꜱ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_T    ᴛ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_U    ᴜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_V    ᴠ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_W    ᴡ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_X    x̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_Y    ʏ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea uv_Z    ᴢ̂<left><right><c-r>=Eatchar('\s')<cr>

inorea zuv_a   ₐ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_b   ⱃ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_c   ꜀̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_d   𑚤̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_e   ₑ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_f   ғ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_g   ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_h   ₕ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_i   ᵢ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_j   ⱼ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_k   ₖ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_l   ₗ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_m   ₘ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_n   ₙ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_o   ₒ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_p   ₚ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_q   ﻣ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_r   ᵣ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_s   ₛ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_t   ₜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_u   ᵤ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_v   ᵥ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_w   𖾟̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_x   ₓ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_y   ᵧ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea zuv_z   ⳾̂<left><right><c-r>=Eatchar('\s')<cr>

" Vectors
hi  link       MathVectors  AllFilesMultVarColor
syn match      MathVectors  "d\?\%(.⃗\)" contains=@NoSpell  containedin=RegExRanges
syn match      MathVectors  "\%(d⃗\)" contains=@NoSpell  containedin=RegExRanges
syn match      MathVectors  "\%(.̂\)" contains=@NoSpell  containedin=RegExRanges

" Negation
hi  link       MathNotLogic AllFilesVarColor
syn match      MathNotLogic "[A-Z]*\%(.̅\)\+[A-Z]*" contains=@NoSpell  containedin=RegExRanges

" You could also use other combining unicode chars such as the overline used
" for not (u0305).
" A̅ ∨ B̅
" F⃗ F̅ F̄ F̃ F⃔ F⃡ F⃑ F᪰ F߯ F⃗ F꛱
" î k̂ k̑ k⃩ k᪴ k݅ k̀ k⃕ k͒ kͯ kٛ kࠫ k᩷ k᭯ k᷵ kⷣ kⷧ kⷽ kꙵ k꛰ k߮ k៝ k᳐ kꪲ k𐍷 k𐽊 k᳑ k𞀡 k𖬳
" kࠦ kࠧ
" https://www.compart.com/en/unicode/combining/230
" Here is a select list of some of the other combing characters:
" NOTE: You can insert combining chars like below in inorea with:
"       <c-s-u>0300 or <c-v>u0300 (in insert mode).
" U+0300  ◌̀ `  Combining Grave Accent
inorea o_ga  ̀<left><right><c-r>=Eatchar('\s')<cr>
" U+0301  ◌́ ' Combining Acute Accent
inorea o_aa  ́ <left><right><c-r>=Eatchar('\s')<cr>
" U+0302  ◌̂ ^ Combining Circumflex Accent
inorea o_^  ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea o_uv  ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea o_uvec  ̂<left><right><c-r>=Eatchar('\s')<cr>
" U+0303  ◌̃ ~ Combining Tilde
inorea o_~  ̃ <left><right><c-r>=Eatchar('\s')<cr>
" U+0304  ◌̄ - Combining Macron
inorea o_mac  ̄<left><right><c-r>=Eatchar('\s')<cr>
" U+0305  ◌̅ _ Combining Overline, used as complement and not in math.
inorea o__     ̅<left><right><c-r>=Eatchar('\s')<cr>
inorea o_comp  ̅<left><right><c-r>=Eatchar('\s')<cr>
inorea o_not   ̅<left><right><c-r>=Eatchar('\s')<cr>
" U+0306  ◌̆ u Combining Breve
inorea o_bre  ̆<left><right><c-r>=Eatchar('\s')<cr>
" U+0307  ◌̇ . Combining Dot Above
inorea o_dot  ̇<left><right><c-r>=Eatchar('\s')<cr>
" U+0308  ◌̈ .. Combining Diaeresis
inorea o_ddot  ̈<left><right><c-r>=Eatchar('\s')<cr>
" U+030A  ◌̊ o Combining Ring Above
inorea o_ring  ̊<left><right><c-r>=Eatchar('\s')<cr>
" U+030B  ◌̋ '' Combining Double Acute Accent
inorea o_daa  ̋<left><right><c-r>=Eatchar('\s')<cr>
" U+030C  ◌̌ v Combining Caron
inorea o_cr  ̌<left><right><c-r>=Eatchar('\s')<cr>
" U+030D  ◌̍ | Combining Vertical Line Above
inorea o_vl  ̍<left><right><c-r>=Eatchar('\s')<cr>
" U+030E  ◌̎ '' Combining Double Vertical Line Above
inorea o_dvl  ̎<left><right><c-r>=Eatchar('\s')<cr>
" U+030F  ◌̏ '' Combining Double Grave Accent
inorea o_dga  ̏<left><right><c-r>=Eatchar('\s')<cr>
" U+0311  ◌̑ ^ Combining Inverted Breve
inorea o_ib  ̑<left><right><c-r>=Eatchar('\s')<cr>
" U+0312  ◌̒ , Combining Turned Comma Above
inorea o_tc  ̒<left><right><c-r>=Eatchar('\s')<cr>
" U+0313  ◌̓ , Combining Comma Above
inorea o_com  ̓<left><right><c-r>=Eatchar('\s')<cr>
" U+0314  ◌̔ , Combining Reversed Comma Above
inorea o_rc  ̔<left><right><c-r>=Eatchar('\s')<cr>
" U+0336: ◌̶ Combining long stroke overlay
inorea o_strike  ̶<left><right><c-r>=Eatchar('\s')<cr>
" U+0335: ◌̵ Combining short stroke overlay
inorea o_strike2  ̵<left><right><c-r>=Eatchar('\s')<cr>
" U+0337: ◌̷ Combining short solidus overlay
inorea o_solid  ̷<left><right><c-r>=Eatchar('\s')<cr>
" U+033D  ◌̽ x Combining X Above
inorea o_xx  ̽<left><right><c-r>=Eatchar('\s')<cr>
" U+033E  ◌̾ s Combining Vertical Tilde
inorea o_v~  ̾<left><right><c-r>=Eatchar('\s')<cr>
" U+033F  ◌̿ __ Combining Double Overline
inorea o_d_  ̿<left><right><c-r>=Eatchar('\s')<cr>
" U+0340  ◌̀ ' Combining Grave Tone Mark
inorea o_gt  ̀<left><right><c-r>=Eatchar('\s')<cr>
" U+0341  ◌́ ' Combining Acute Tone Mark
inorea o_at  ́<left><right><c-r>=Eatchar('\s')<cr>
" U+0346  ◌͆ n Combining Bridge Above
inorea o_bri  ͆<left><right><c-r>=Eatchar('\s')<cr>
" U+034C  ◌͌ ≈ Combining Almost Equal to Above
inorea o_aeq  ͌<left><right><c-r>=Eatchar('\s')<cr>
" U+0350  ◌͐ > Combining Right Arrowhead Above
inorea o_ra  ͐<left><right><c-r>=Eatchar('\s')<cr>
" U+0351  ◌͑ c Combining Left Half Ring Above
inorea o_lhr  ͑<left><right><c-r>=Eatchar('\s')<cr>
" U+0357  ◌͗ c Combining Right Half Ring Above
inorea o_rhr  ͗<left><right><c-r>=Eatchar('\s')<cr>
" U+0363  ◌ͣ a Combining Latin Small Letter A
inorea o_la  ͣ<left><right><c-r>=Eatchar('\s')<cr>
" U+0364  ◌ͤ e Combining Latin Small Letter E
inorea o_le  ͤ<left><right><c-r>=Eatchar('\s')<cr>
" U+0365  ◌ͥ i Combining Latin Small Letter I
inorea o_li  ͥ<left><right><c-r>=Eatchar('\s')<cr>
" U+0366  ◌ͦ o Combining Latin Small Letter O
inorea o_lo  ͦ<left><right><c-r>=Eatchar('\s')<cr>
" U+0367  ◌ͧ u Combining Latin Small Letter U
inorea o_lu  ͧ<left><right><c-r>=Eatchar('\s')<cr>
" U+0368  ◌ͨ c Combining Latin Small Letter C
inorea o_lc  ͨ<left><right><c-r>=Eatchar('\s')<cr>
" U+0369  ◌ͩ d Combining Latin Small Letter D
inorea o_ld  ͩ<left><right><c-r>=Eatchar('\s')<cr>
" U+036A  ◌ͪ h Combining Latin Small Letter H
inorea o_lh  ͪ<left><right><c-r>=Eatchar('\s')<cr>
" U+036B  ◌ͫ m Combining Latin Small Letter M
inorea o_lm  ͫ<left><right><c-r>=Eatchar('\s')<cr>
" U+036C  ◌ͬ r Combining Latin Small Letter R
inorea o_lr  ͬ<left><right><c-r>=Eatchar('\s')<cr>
" U+036D  ◌ͭ t Combining Latin Small Letter T
inorea o_lt  ͭ<left><right><c-r>=Eatchar('\s')<cr>
" U+036E  ◌ͮ v Combining Latin Small Letter V
inorea o_lv  ͮ<left><right><c-r>=Eatchar('\s')<cr>
" U+036F  ◌ͯ x Combining Latin Small Letter X
inorea o_lx  ͯ<left><right><c-r>=Eatchar('\s')<cr>
" U+07EB◌߫  Nko Combining Short High Tone
" U+07EC◌߬  Nko Combining Short Low Tone
" U+07ED◌߭  Nko Combining Short Rising Tone
" U+07EE◌߮  Nko Combining Long Descending Tone
" U+07EF◌߯  Nko Combining Long High Tone
" U+07F0◌߰  Nko Combining Long Low Tone
" U+07F1◌߱  Nko Combining Long Rising Tone
" U+07F3◌߳  Nko Combining Double Dot Above
" U+0745  ◌݅ ∴ Syriac Three Dots Above
inorea o_3dot  ݅<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB4  ◌᪴ ∴ Combining Triple Dot
inorea o_tdot  ᪴<left><right><c-r>=Eatchar('\s')<cr>
" U+082B  ◌ࠫ △ Samaritan Vowel Sign O
inorea o_tri  ࠫ<left><right><c-r>=Eatchar('\s')<cr>
" U+0816◌ࠖ  Samaritan Mark In
" U+0817◌ࠗ  Samaritan Mark In-Alaf
" U+0818◌࠘  Samaritan Mark Occlusion
" U+0819◌࠙  Samaritan Mark Dagesh
" U+081B◌ࠛ  Samaritan Mark Epenthetic Yut
" U+081C◌ࠜ  Samaritan Vowel Sign Long E
" U+081D◌ࠝ  Samaritan Vowel Sign E
" U+081E◌ࠞ  Samaritan Vowel Sign Overlong Aa
" U+081F◌ࠟ  Samaritan Vowel Sign Long Aa
" U+0820◌ࠠ  Samaritan Vowel Sign Aa
" U+0821◌ࠡ  Samaritan Vowel Sign Overlong A
" U+0822◌ࠢ  Samaritan Vowel Sign Long A
" U+0823◌ࠣ  Samaritan Vowel Sign A
" U+0825◌ࠥ  Samaritan Vowel Sign Short A
" U+0826◌ࠦ  Samaritan Vowel Sign Long U
inorea o_s^  ࠦ<left><right><c-r>=Eatchar('\s')<cr>
" U+0827◌ࠧ  Samaritan Vowel Sign U
" U+0829◌ࠩ  Samaritan Vowel Sign Long I
" U+082A◌ࠪ  Samaritan Vowel Sign I
" U+082B◌ࠫ  Samaritan Vowel Sign O
" U+082C◌ࠬ  Samaritan Vowel Sign Sukun
" U+082D◌࠭  Samaritan Mark Nequdaa
" U+1AB0  ◌᪰ ^^ Combining Doubled Circumflex Accent
inorea o_dca^  ᪰<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB1  ◌᪱ .o. Combining Diaeresis-Ring
inorea o_dr  ᪱<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB2  ◌᪲ ∞ Combining Infinity
inorea o_inf  ᪲<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB3  ◌᪳ ↓ Combining Downwards Arrow
inorea o_dn  ᪳<left><right><c-r>=Eatchar('\s')<cr>
" U+1ABB  ◌᪻ () Combining Parentheses Above
inorea o_()  ᪻<left><right><c-r>=Eatchar('\s')<cr>
" U+1ABC  ◌᪼ (()) Combining Double Parentheses Above
inorea o_(())  ᪼<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDA  ◌ᷚ g Combining Latin Small Letter G
inorea o_lg  ᷚ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDB  ◌ᷛ G Combining Latin Letter Small Capital G
inorea o_lG  ᷛ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDC  ◌ᷜ k Combining Latin Small Letter K
inorea o_lk  ᷜ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDD  ◌ᷝ l Combining Latin Small Letter L
inorea o_ll  ᷝ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDE  ◌ᷞ L Combining Latin Letter Small Capital L
inorea o_lL  ᷞ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDF  ◌ᷟ M Combining Latin Letter Small Capital M
inorea o_lM  ᷟ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE0  ◌ᷠ n Combining Latin Small Letter N
inorea o_ln  ᷠ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE1  ◌ᷡ N Combining Latin Letter Small Capital N
inorea o_lN  ᷡ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE2  ◌ᷢ R Combining Latin Letter Small Capital R
inorea o_lR  ᷢ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE3  ◌ᷣ R Combining Latin Small Letter R Rotunda
inorea o_rtd  ᷣ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE4  ◌ᷤ s Combining Latin Small Letter S
inorea o_ls  ᷤ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE6  ◌ᷦ z Combining Latin Small Letter Z
inorea o_lz  ᷦ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE7  ◌ᷧ a Combining Latin Small Letter Alpha
inorea o_alpha  ᷧ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE8  ◌ᷨ b Combining Latin Small Letter B
inorea o_lb  ᷨ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE9  ◌ᷩ β Combining Latin Small Letter Beta
inorea o_beta  ᷩ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEA  ◌ᷪ e Combining Latin Small Letter Schwa
inorea o_inve  ᷪ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEB  ◌ᷫ f Combining Latin Small Letter F
inorea o_lf  ᷫ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEE  ◌ᷮ p Combining Latin Small Letter P
inorea o_lp  ᷮ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEF  ◌ᷯ ∫ Combining Latin Small Letter Esh
inorea o_int  ᷯ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF0  ◌ᷰ μ Combining Latin Small Letter U with Light Centralization Stroke
inorea o_mu  ᷰ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF1  ◌ᷱ w Combining Latin Small Letter W
inorea o_lw  ᷱ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF2  ◌ᷲ a Combining Latin Small Letter A with Diaeresis
inorea o_ad  ᷲ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF3  ◌ᷳ o Combining Latin Small Letter O with Diaeresis
inorea o_od  ᷳ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF4  ◌ᷴ u Combining Latin Small Letter U with Diaeresis
inorea o_ud  ᷴ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF5  ◌᷵ _|_ Combining Up Tack Above
inorea o_tack  ᷵<left><right><c-r>=Eatchar('\s')<cr>
" U+1DFE  ◌᷾ < Combining Left Arrowhead Above
inorea o_<<  ᷾<left><right><c-r>=Eatchar('\s')<cr>
" U+20D0  ◌⃐ _ Combining Left Harpoon Above
inorea o_hl  ⃐<left><right><c-r>=Eatchar('\s')<cr>
" U+20D1  ◌⃑ _ Combining Right Harpoon Above
inorea o_hr  ⃑<left><right><c-r>=Eatchar('\s')<cr>
" U+20D4  ◌⃔ <- Combining Anticlockwise Arrow Above
inorea o_ar  ⃔<left><right><c-r>=Eatchar('\s')<cr>
" U+20D5  ◌⃕ -> Combining Clockwise Arrow Above vector
inorea o_ca   ⃕<left><right><c-r>=Eatchar('\s')<cr>
" U+20D6  ◌⃖ <- Combining Left Arrow Above
inorea o_<--  ⃖<left><right><c-r>=Eatchar('\s')<cr>
" U+20D7  ◌⃗ -> Combining Right Arrow Above
inorea o_->   ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea o_-->  ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea o_vec  ⃗<left><right><c-r>=Eatchar('\s')<cr>
" U+20DB  ◌⃛ ... Combining Three Dots Above
inorea o_dddot  ⃛<left><right><c-r>=Eatchar('\s')<cr>
" U+20DC  ◌⃜ .... Combining Four Dots Above
inorea o_ddddot  ⃜<left><right><c-r>=Eatchar('\s')<cr>
" U+20E1  ◌⃡ <-> Combining Left Right Arrow Above
inorea o_<>  ⃡<left><right><c-r>=Eatchar('\s')<cr>
" U+20E7  ◌⃧ ‾| Combining Annuity Symbol
inorea o_-\|  ⃧<left><right><c-r>=Eatchar('\s')<cr>
" U+20E9  ◌⃩ ‾ Combining Wide Bridge Above
inorea o_wbri  ⃩<left><right><c-r>=Eatchar('\s')<cr>
" U+20F0  ◌⃰ * Combining Asterisk Above
inorea o_*  ⃰<left><right><c-r>=Eatchar('\s')<cr>
" U+A6F0  ◌꛰  Bamum Combining Mark Koqndon
" U+A6F1  ◌꛱  Bamum Combining Mark Tukwentis

