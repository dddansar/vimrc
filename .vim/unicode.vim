"==============================================================================
" File: unicode.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all files that use unicode symbols.
" NOTE: See also: math_mappings.vim
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
if exists("b:unicode_loaded")
  finish
endif
let b:unicode_loaded = 1


if !has('nvim')
   if exists("b:spell_check_en") && filereadable(expand($vim_spell_path . "/math.utf-8.spl"))
      setlocal spelllang+=math
   endif
else
   if exists("b:spell_check_en") && filereadable(expand($nvim_spell_path . "/math.utf-8.spl"))
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
"         in the statusline the name of the matching syntax group and what
"         color it links to. This is very useful to debug which syntax group
"         is causing any issues. The filename or a shortened version is then
"         used in the synax group name to know which file the syntax group is
"         located in.
hi  link    UnicodeSetsColor     Question
hi  link    UnicodeBCColor       Question
hi  link    UnicodeBColor        TitleBar
hi  link    UnicodeCColor        HLBlueB
hi  link    UnicodeDBColor       Statement
hi  link    UnicodeMColor        StorageClass
hi  link    UnicodeVarColor      Constant
hi  link    UnicodeBsColor       PreProc

syn keyword UnicodeSetsColor     UnicodeSetsColor
syn keyword UnicodeBCColor       UnicodeBCColor
syn keyword UnicodeBColor        UnicodeBColor
syn keyword UnicodeCColor        UnicodeCColor
syn keyword UnicodeDBColor       UnicodeDBColor
syn keyword UnicodeMColor        UnicodeMColor
syn keyword UnicodeVarColor      UnicodeVarColor
syn keyword UnicodeBsColor       UnicodeBsColor


" Do not spell check any of the special characters in the whole unicode range!!
"------------------------------------------------------------------------------
if g:performance_mode <= 0
   " Don't spell check any unicode chars in comments:
   hi  link     UnicodeCommentColor   AllComments
   syn match    UnicodeCommentColor  "[a-zA-Z]*[^ -~]\%(\S\)*"   contains=@NoSpell contained containedin=.*Comment.*
   " syn match    UnicodeNoColor1      "[a-z]\+\%([^ -~]\)\@="   contains=@NoSpell

   " Set default color for all unicode chars outside of the main ASCII range:
   " hi  link     UnicodeDefault   StorageClass
   " syn match    UnicodeCommentColor  "[^ -~]"  contains=@NoSpell contained containedin=AllComment.*
   " syn match    UnicodeDefault   "[^ -~]"  contains=@NoSpell containedin=AllComment.*

   " Highlight chars that you don't want used such as tabs:
   hi  link     UnicodeDontUse NonText
   syn match    UnicodeDontUse "[‘-‟−—–∣]" contains=@NoSpell containedin=RegexRanges,@ClusterSpMath,vimMapRhs
endif
"------------------------------------------------------------------------------


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

inorea <buffer> _tick      ✓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _check     ✓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xtick     ✗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xcheck    ✗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tm        <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tm2       ™<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _copy      ©<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tmr       ®<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _reg       ®<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _currency  ¤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dollar    $<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _euro      €<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pound     £<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lira      ₤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _yen       ¥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _peso      ₱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rupee     ₹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ruble     ₽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bitcoin   ₿<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sign     𝄉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _male      ♂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fmale     ♀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sun       ☼<left><right><c-r>=Eatchar('\s')<cr>

" Section sign
inorea <buffer> _section   §<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _paragraph §<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _silcrow   §<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pilcrow   ¶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _paragraph ¶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inv?      ¿<left><right><c-r>=Eatchar('\s')<cr>

" Per mile
inorea <buffer> _pmi       ‰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _per       ⅌<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _??        ⁇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _?!        ⁈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _!n?       ‽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _?n!       ‽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _!!        ‼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _!?        ⁉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3dot      ⋯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_3dot     …<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _no        ø<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nO        Ø<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inv&      ⅋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __:        ∶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inv!      ¡<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ddag      ‡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dag       †<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3ddot     ⋱<left><right><c-r>=Eatchar('\s')<cr>

" Intercalate
inorea <buffer> _ntcal     ⊺<left><right><c-r>=Eatchar('\s')<cr>

" Music
inorea <buffer> _#         ♯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _note      ♩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _natural   ♮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _numero   №<left><right><c-r>=Eatchar('\s')<cr>

"
inorea <buffer> _overscore ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _overline  ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _over      ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ovr       ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a__        ‾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z__        _<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _end       –<left><right><c-r>=Eatchar('\s')<cr>

"
inorea <buffer> _heart     ♥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _heart2    ❤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _heart3    ♡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _yinyang   ☯<left><right><c-r>=Eatchar('\s')<cr>

"
inorea <buffer> _recycle   ♲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nuclear   ⚛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _atom      ⚛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bioh      ☣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _radio     ☢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _scales    ⚖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _swords    ⚔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _peace     ☮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sun       ☀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _warn      ⚠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _uncert    ⯑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _caution   ☡<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _pitchfork ⋔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _scissors  ✂<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _smiley    ☺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fsmiley   ☻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frowny    ☹<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _tbullet   ‣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bullet    •<left><right><c-r>=Eatchar('\s')<cr>

" Emoji
" 🇨🈴🌈🌀🌋🌊🌍🌎🌏🌐🌕🌒🌩🏛🏹🐬🔔🔬🔭🔹🕹😌🚀🛠🟡🟤🟥🥗🧭🐆
" ❌❕❓
inorea <buffer> e_earth   🌍🌎🌏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> e_dna         🧬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> e_star        ⭐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> e_lightning   🗲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> e_light       🗲<left><right><c-r>=Eatchar('\s')<cr>


" hi  link    UnicodeRandom StorageClass
" syn match   UnicodeRandom "[✓✓✗✗™©®®¤€£₤¥₱₹₽₿♂♀☼§§§¶¶¿‰⅌⁇⁈‽‽‼⁉𝄉№⋯…øØ⅋∶¡‡†⋱⊺♯♩♮‾♥❤♡☯♲⚖⚔☮☀⋔✂☺☻☹‣•]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match   UnicodeRandom "[𝄉]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
" hi  link    UnicodeLightning Statement
" syn match   UnicodeLightning "[🗲]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" hi  link    UnicodeImportant NonText
" syn match   UnicodeImportant "[≝≟⚠☣☢⚛⯑☡]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs



"---------------------------
" Geometry
"---------------------------

" Angle, measured, spherical, right
inorea <buffer> _angle     ∠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mangle    ∡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sangle    ∢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rangle    ∟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _90        ∟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _btw       ≬<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _//        ᜶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pll       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _parallel  <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _\|\|      <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pll2      ∥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _parallel2 ∥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _npll      ∦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _w\|\|     ‖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _wpll      ‖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _s\|\|     ॥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _spll      ॥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sspll     ᱿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_pll      ᐦ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _nmid      ∤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsl       ∤<left><right><c-r>=Eatchar('\s')<cr>

" Broken Bar
inorea <buffer> _bbar      ¦<left><right><c-r>=Eatchar('\s')<cr>

" Slashes
inorea <buffer> _ssl       ᱾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fsl       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bsl       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfsl      ⧸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lbsl      ⧹<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLines UnicodeDBColor
syn match   UnicodeLines "[∠∡∢∟∥᜶°∤∦‖॥᱾᱿ᐦ⧸⧹¦≬]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> _tri       △<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_tri      ∆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _square    □<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rect      ▭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _loz       ◊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pent     ⬠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hexa     ⬡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _circle    ○<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lcircle  〇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ellipse   ⬯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _star      ☆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _5star     ☆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nstar     ✯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fstar     ★<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f5star    ★<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fsstar    ⭑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _s*        ⋆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sstar     ⋆<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _fdiam     ◆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2diam     ◈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _diam      ◇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dia       ⋄<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _fsuare    ■<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2square   ▣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rsquare   ▢<left><right><c-r>=Eatchar('\s')<cr>
" Square with bisecting line
inorea <buffer> _sqbl      ◫<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _4star     ✧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f4star    ✦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f6star    ✶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f8star    ✴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f12star   ✹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pllg      ▱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fpllg     ▰<left><right><c-r>=Eatchar('\s')<cr>

" Small u/d/r/l tri
inorea <buffer> _srtri     ▹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sdtri     ▿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sutri     ▵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sltri     ◃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sfrtri    ▸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sfdtri    ▾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sfutri    ◂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sfltri    ▴<left><right><c-r>=Eatchar('\s')<cr>

" Large u/d/r/l tri
inorea <buffer> _ltri      ◁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtri      ▷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dtri      ▽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _utri      △<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fltri     ◀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frtri     ▶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fdtri     ▼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _futri     ▲<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _fcirc     ●<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dcirc     ◌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lcirc     ◯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fsquare   ▪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fsq       ▪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frect     ▬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vrect     ▯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fvrect    ▮<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _fvlrect   ∎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _qed       ∎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _2tri     ⟁<left><right><c-r>=Eatchar('\s')<cr>
" Joint squares
inorea <buffer> _2jsq     ⧉<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeShapes  Operator
syn match   UnicodeShapes  "[△∆□□▭◊⬠⬡○⬯★✯☆⭑⋆◆◈◇■▣▢◫✧✦✶✴✹▱▰◁▷▽△◀▶▼▲▹▿▵◃▸▾◂▴●◌◯▪▪▬▯▮∎⟁⧉]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Operators
"---------------------------

inorea <buffer> _+-        ±<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pm        ±<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _-+        ∓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mp        ∓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _divop     ÷<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _~~        ∼<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __\|       ∣<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOperators1 Operator
syn match   UnicodeOperators1 "[±∓÷∗∼]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"
inorea <buffer> _neg       −<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mdsh      —<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _deg       °<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _degree    °<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _degrees   °<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ring      ∘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dot       ⬝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sdot      ⋅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ast       ∗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _**        ∗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _times     ×<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xx        ×<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x2        ⨯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_xx       ✖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lx        ☓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_lx      𐌗<left><right><c-r>=Eatchar('\s')<cr>
" Hermitian conjugate matrix
inorea <buffer> _hcm       ⊹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _crosshair ⊹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dotplus   ∔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dotpl     ∔<left><right><c-r>=Eatchar('\s')<cr>

" ⵁ⦰⦵⦶⦷🟕🟖🟗🞔🞚ⵔＯ〇🞅⭘
" ⦸⦹⦼⦾⦿𐌏𐍈ⵙⵀ🜕
" ⧀⧁⧄⧅⧆⧇🜔ⴱ𐌈ⴲ
inorea <buffer> _ox        ⊗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ox       ⨂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Odv      ⦼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _opl       𛲜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lopl     𐌈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Opl      ⨁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _omn       ⊝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _owmn      ⊖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Omn      🜔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _odot      ☉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Odot     𐌏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Odot2     ⨀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _oo        ⊚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _oo2       ◎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Oo       ⦾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _oe        ○<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Oe       〇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _oeq       ⊜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _oast      ⊛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _otri      ⎊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ostar     ⍟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Opll     ⦷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Opause   ⦷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Osqare   🟗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Otri     🟕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ogt      ⧁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Olt      ⧀<left><right><c-r>=Eatchar('\s')<cr>

" ⴳ ⴴ ⴵ
inorea <buffer> _ltm       ⋉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ltimes    ⋉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtm       ⋊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtimes    ⋊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lrtm      ⋈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lrtimes   ⋈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _utm       ⴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dtm       ⴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _udtm      ⴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hour      ⴵ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _spl       ⊞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _smn       ⊟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sx        ⊠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ssq       ⊡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sdot      ⚀<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ofsl      ⊘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _owfsl     ⌀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _diameter  ⌀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Owfsl    ⵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _obsl     ⦸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Owbsl    ⦰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Osl      ⦶<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _divx      ⋇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xdiv      ⋇<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOperators2 Operator
syn match   UnicodeOperators2 "[∘∗×⨯⋅✖☓𐌗⨉⋇⋄⬝⋉⋊⋈⊹∔]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" syn match   UnicodeOperators2 "/" contains=@NoSpell
hi  link    UnicodeOShapes StorageClass
syn match   UnicodeOShapes "[ⴳⴴⴵ⨂⊗⦼⌀𐌈⨁〇𛲜⊝⊖🜔☉⊚◎⊜⨀𐌏⦾⦷🟗🟕⧁⧀⍟⊞⊟⊠⊡⚀⊘⦸⦶⦰ⵁ⊛⎊]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Sets
"---------------------------

" For all
inorea <buffer> _fa        ∀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _faxs      ∀x∈𝕊<left><right><c-r>=Eatchar('\s')<cr>

" There exists
inorea <buffer> _te        ∃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tne       ∄<left><right><c-r>=Eatchar('\s')<cr>

" Therefore
inorea <buffer> _therefore ∴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tf        ∴<left><right><c-r>=Eatchar('\s')<cr>
" Because
inorea <buffer> _because   ∵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bc        ∵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets0 UnicodeSetsColor
syn match   UnicodeSets0 "[∀∃∄∴∵]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Empty set, null set
inorea <buffer> _null     ∅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _empty    ∅<left><right><c-r>=Eatchar('\s')<cr>

" Set difference
inorea <buffer> _setd      ∖<left><right><c-r>=Eatchar('\s')<cr>
" Multimap
inorea <buffer> _mmap      ⊸<left><right><c-r>=Eatchar('\s')<cr>

" Complement
inorea <buffer> _comp      ∁<left><right><c-r>=Eatchar('\s')<cr>
" Right s-shaped bag delimiter
inorea <buffer> _rbag      ⟆<left><right><c-r>=Eatchar('\s')<cr>
" Semidirect
inorea <buffer> _rsemid    ⋌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lsemid    ⋋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _wreath    ≀<left><right><c-r>=Eatchar('\s')<cr>

" INTERSECTION
inorea <buffer> _inter     ∩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _in        ∩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Inter     ⋂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _In        ⋂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_in       ⋒<left><right><c-r>=Eatchar('\s')<cr>

" UNION
inorea <buffer> _union     ∪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _un        ∪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Union     ⋃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Un        ⋃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_un       ⋓<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _unpl      ⊎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _undot     ⊍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Unpl     ⨄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Undot    ⨃<left><right><c-r>=Eatchar('\s')<cr>

" ELEMENT OF
inorea <buffer> _member    ∈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mem       ∈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nmember   ∉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nmem      ∉<left><right><c-r>=Eatchar('\s')<cr>

" CONTAINS AS MEMBER
inorea <buffer> _contains  ∋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cnt       ∋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _scnt      ∍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncontains ∌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncnt      ∌<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets1 UnicodeSetsColor
syn match   UnicodeSets1 "[∩∪⋃⋂⋒⋓⊎⊍⨄⨃∈∉∋∌∍]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeSetsO UnicodeSetsColor
syn match   UnicodeSetsO "[∁⟆⋌⋋≀]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Subsets/superset
inorea <buffer> _sub       ⊂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sup       ⊃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsub      ⊄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsup      ⊅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sube      ⊆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _supe      ⊇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsube     ⊈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _subne     ⊊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsupe     ⊉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _supne     ⊋<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> d_sub      ⋐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_sup      ⋑<left><right><c-r>=Eatchar('\s')<cr>

" Normal subgroups
inorea <buffer> _nmsub     ⊲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nmsube    ⊴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nnmsub    ⋪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nnmsube   ⋬<left><right><c-r>=Eatchar('\s')<cr>
" Contains as normal subgroups
inorea <buffer> _cnmsub    ⊳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cnmsube   ⊵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncnmsub   ⋫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncnmsube  ⋭<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _lcoset   ⧏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rcoset   ⧐<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets2 UnicodeSetsColor
syn match   UnicodeSets2 "[⊂⊃⊄⊅⊆⊇⊈⊉⊊⊋⊊⊋⋐⋑⊲⊴⋪⋬⊳⊵⋫⋭⧏⧐∖⊸]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Squared include/union/subset/superset
inorea <buffer> _sin       ⊓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sIn       ⨅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sun       ⊔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sUn       ⨆<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ssub      ⊏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ssup      ⊐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ssube     ⊑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ssupe     ⊒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _snsube    ⋢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _snsupe    ⋣<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSets3 UnicodeSetsColor
syn match   UnicodeSets3 "[⊓⨅⊔⊑⊏⊒⊐⨆⋢⋣]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


"---------------------------
" Logic, equality
"---------------------------
inorea <buffer> _not       ¬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _and       ∧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nand      ⊼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _or        ∨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nor       ⊽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xor       ⊕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xor2      ⊻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xnor      ⊙<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _cor       ⋎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cand      ⋏<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLogic  Operator
syn match   UnicodeLogic "[∧∨¬⊻⊕⊙⊼⊽⋎⋏]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"
inorea <buffer> _!=        ≠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ne        ≠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3=        ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3e        ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3eq       ≡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _!3=       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n3e       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3ne       ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3neq      ≢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _~=        ≈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ae        ≈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n~=       ≉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nae       ≉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nane      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _na2e      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nae2      ≇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _edef      ≝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e?        ≟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n~~       ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ntilde    ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ntil      ≁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _a1e       ≃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ra1e      ⋍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e1a       ≂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _na1e      ≄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _a2e       ≅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ae2       ≅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ra2e      ≌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rae2      ≌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtilde    ∽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtil      ∽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3a        ≋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3ae       ≋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2ae       ≊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _4e        ≣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _4eq       ≣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ecol      ≕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _=:        ≕<left><right><c-r>=Eatchar('\s')<cr>
" Ring equal
inorea <buffer> _re        ≗<left><right><c-r>=Eatchar('\s')<cr>

"
inorea <buffer> _:~        ∻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _coltil    ∻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _:=        ≔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cole      ≔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _:-:       ∺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _colmncol  ∺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _::        ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _colcol    ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2col      ∷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _-:        ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mncol     ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dshcol    ∹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _escol     ≑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dote      ≐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dotdsh    ∸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rddote    ≓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lddote    ≒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(=        ≘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ceq       ≘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _^=        ≙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ive       ≙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v=        ≚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _veq       ≚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eqv       ≍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stareq    ≛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _deq       ≜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _teq       ≜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ringe     ≖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _diffbtw   ≏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bumpeq    ≏<left><right><c-r>=Eatchar('\s')<cr>
" Geometrically equivalent to
inorea <buffer> _geomeq    ≎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2bump     ≎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Bumped    ≎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeEquality   PreProc
syn match   UnicodeEquality   "[≁≠≡≃≄≅≋≊⋍≌∽≣≕≗∻≔∺∷≓≒≂∹≑≐∸≘≙≚≍≛≜≜≖≏≎]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> _le        ≤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _el        ⋜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ge        ≥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eg        ⋝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nle       ≰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nge       ≱<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _!<        ≮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nl        ≮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _!>        ≯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ng        ≯<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _l2e       ≦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lae       ≲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _leg       ⋚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lg        ≶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lnae      ⋦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ln2e      ≨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _g2e       ≧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gnae      ⋧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gn2e      ≩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gae       ≳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gel       ⋛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gl        ≷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlae      ≴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ngae      ≵<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ldot      ⋖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gdot      ⋗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ledot     ⩿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gedot     ⪀<left><right><c-r>=Eatchar('\s')<cr>

" Much less/greater
inorea <buffer> _2l        ≪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ml        ≪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2g        ≫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mg        ≫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3g        ⋙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3l        ⋘<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeInEquality PreProc
syn match   UnicodeInEquality "[≤⋜≥⋝≰≱≈≉≮≯≢≇≦≲⋚≶⋦≨≧⋧≩≳⋛≷≴≵⋖⋗⩿⪀≪≪≫≫⋙⋘]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Preceding
inorea <buffer> _pc        ≺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pce       ≼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _epc       ⋞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _npce      ⋠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _npc       ⊀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pcae      ≾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pcnae     ⋨<left><right><c-r>=Eatchar('\s')<cr>

" Succeeding
inorea <buffer> _sc        ≻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsc       ⊁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _esc       ⋟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sce       ≽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsce      ⋡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _scae      ≿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _scnae     ⋩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeCeding PreProc
syn match   UnicodeCeding "[≿≽⋩≻≾≼⋨≺⋞⋠⊀⋡⊁⋟]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Arrows
"---------------------------

inorea <buffer> _imp1      →<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _imp       ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _iff1      ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _iff       ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _-->       →<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _==>       ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _<==       ⇐<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _<->       ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _<-/->     ⇹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _<=>       ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _<=/=>     ⇎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _<-->      ⇆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _-><-      ⇄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _<-<-      ⇇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _->->      ⇉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _->'       ⇀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _->,       ⇁<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _rta       →<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfa       ←<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _upa       ↑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dna       ↓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ula       ↖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ura       ↗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dra       ↘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dla       ↙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _uldra     ⤡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _urdla     ⤢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lra       ↔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _uda       ↕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlfa      ↚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlra      ↮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nrta      ↛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vlra      ⇹<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows1 Question
syn match   UnicodeArrows1 "[→←↑↓↖↗↘↙⤡⤢↔↕↚↮↛⇹]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Double/long arrow
inorea <buffer> _drta     ⟶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dlfa     ⟵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dlra     ⟷<left><right><c-r>=Eatchar('\s')<cr>

" Sans-serif long
inorea <buffer> _lrta      🡒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _llfa      🡐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lupa      🡑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ldna      🡓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lula      🡔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lura      🡕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ldra      🡖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ldla      🡗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _llra      🡘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _luda      🡙<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows2 Question
syn match   UnicodeArrows2 "[⟶⟵⟷🡒🡐🡑🡓🡔🡕🡖🡗🡘🡙]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> _rta2      ⇒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfa2      ⇐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _upa2      ⇑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dna2      ⇓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _uda2      ⇕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ura2      ⇗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ula2      ⇖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dra2      ⇘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dla2      ⇙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lra2      ⇔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nrta2     ⇏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vlfa2     ⇍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vlra2     ⇎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _lfa3      ⇚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rta3      ⇛<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _dna4     ⟱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _upa4     ⟰<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows3 Question
syn match   UnicodeArrows3 "[⇒⇐⇑⇓⇕⇗⇖⇘⇙⇔⇏⇍⇎⇚⇛⟱⟰]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> _2lra      ⇆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2rla      ⇄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2lfa      ⇇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2rta      ⇉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2upa      ⇈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2dna      ⇊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2uda      ⇅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2dua      ⇵<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _3lfa      ⬱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3rta      ⇶<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows4 Question
syn match   UnicodeArrows4 "[⇆⇄⇇⇉⇈⇊⇅⇵⬱⇶]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Top/bot/right/left harpoon arrow
inorea <buffer> _rtha      ⇀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rbha      ⇁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ltha      ↼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lbha      ↽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ulha      ↿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _urha      ↾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dlha      ⇃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _drha      ⇂<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _ltrbha    ⇋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rbltha    ⇌<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows5 Question
syn match   UnicodeArrows5 "[⇀⇁↼↽↿↾⇃⇂⇋⇌]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Hollow
inorea <buffer> _hlfa      ⇦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hrta      ⇨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hupa      ⇧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hdna      ⇩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hlua      ⬁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hrua      ⬀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hrda      ⬂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hlda      ⬃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hlra      ⬄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _huda      ⇳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows6 Question
syn match   UnicodeArrows6 "[⇦⇨⇧⇩⬁⬀⬂⬃⬄⇳]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Full
inorea <buffer> _flfa      ⬅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frta      ➡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fupa      ⬆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fdna      ⬇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flua      ⬉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frua      ⬈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _frda      ⬊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flda      ⬋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flra      ⬌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fuda      ⬍<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows7 Question
syn match   UnicodeArrows7 "[⬅➡⬆⬇⬉⬈⬊⬋⬌⬍]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" 2 headed
inorea <buffer> _2hda      ↡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2hua      ↟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2hla      ↞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2hra      ↠<left><right><c-r>=Eatchar('\s')<cr>

" Arrow with bar
inorea <buffer> _dnba      ↧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _upba      ↥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _udba      ↨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfba      ↤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtba      ↦<left><right><c-r>=Eatchar('\s')<cr>

" Very long arrows
inorea <buffer> _vlrta2    ⟹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vllfa2    ⟸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vllra2    ⟺<left><right><c-r>=Eatchar('\s')<cr>

" Superscript/subscript
inorea <buffer> z_lfa      ˿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_upa      ꜛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dna      ꜜ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows8 Question
syn match   UnicodeArrows8 "[↡↟↞↠˿ꜛꜜ↧↥↨↤↦]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match   UnicodeArrows8 "[⟹⟸⟺]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Squiggle
inorea <buffer> _leadsto   ⇝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtsqa     ⇝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfsqa     ⇜<left><right><c-r>=Eatchar('\s')<cr>

" Loop arrow
inorea <buffer> _lfla      ↫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtla      ↬<left><right><c-r>=Eatchar('\s')<cr>

" Tail arrow
inorea <buffer> _lfta      ↢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtta      ↣<left><right><c-r>=Eatchar('\s')<cr>

" Wave arrow
inorea <buffer> _lrwa      ↭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtwa      ↝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfwa      ↜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lrtwa     ⤳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeArrows9 Question
syn match   UnicodeArrows9 "[⇝⇜↫↬↢↜↣↝↭⤳]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" L arrow
inorea <buffer> _laul      ↰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _laur      ↱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ladl      ↲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ladr      ↳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lald      ⬐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lard      ⬎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lalu      ⬑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _laru      ⬏<left><right><c-r>=Eatchar('\s')<cr>

" Hook
inorea <buffer> _hklfa     ↩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hkrta     ↪<left><right><c-r>=Eatchar('\s')<cr>

" Curve over/under
inorea <buffer> _colfa     ↶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _corta     ↷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _culfa     ↻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _curta     ↺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _crta      ⥀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _clfa      ⥁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _crta2    ⟲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _clfa2    ⟳<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeArrows10 Question
" syn match   UnicodeArrows10 "[↰↱↲↳⬐⬎⬑⬏↩↪↶↷↻↺⥀⥁⟲⟳]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bot/top corners
inorea <buffer> _blc       ⌞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _brc       ⌟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tlc       ⌜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _trc       ⌝<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sblc      ˻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sbrc      ˼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stlc      ˹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _strc      ˺<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _tie       ⁀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _utie      ‿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2tie      ⁐<left><right><c-r>=Eatchar('\s')<cr>

" Quotes
inorea <buffer> _ldq        “<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rdq        ”<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lq         ‘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rq         ’<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dlq        „<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _slq        ‚<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeEdges Function
" syn match   UnicodeEdges "[⌞⌟⌜⌝˻˼˹˺⁀‿⁐]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Fractions
"---------------------------
inorea <buffer> _f12       ½<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f13       ⅓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f14       ¼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f15       ⅕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f16       ⅙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f18       ⅛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f23       ⅔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f25       ⅖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f34       ¾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f35       ⅗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f38       ⅜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f45       ⅘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f56       ⅚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f58       ⅝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f78       ⅞<left><right><c-r>=Eatchar('\s')<cr>

" hi  link    UnicodeFractions  Number
" syn match   UnicodeFractions  "[½⅓¼⅕⅙⅛⅔⅖¾⅗⅜⅘⅚⅝⅞]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Brackets/parenthesis
"---------------------------

" Angle bracket
inorea <buffer> _lab       ⟨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _a<        ⟨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mlab      ❬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hlab      ❮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vhlab     ❰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rab       ⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _a>        ⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mrab      ❭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hrab      ❯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vhrab     ❱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ab2      ⟨⟩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2lab      ⟪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2rab      ⟫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2rab2    ⟪⟫<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> d_lab     《<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_rab     》<left><right><c-r>=Eatchar('\s')<cr>

" Flattened parenthesis
inorea <buffer> _lfp       ⟮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rfp       ⟯<left><right><c-r>=Eatchar('\s')<cr>

" Ceil/floor
inorea <buffer> _lceil     ⌈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lfloor    ⌊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rceil     ⌉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rfloor    ⌋<left><right><c-r>=Eatchar('\s')<cr>

" Angle quotes
inorea <buffer> _2laq      «<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2raq      »<left><right><c-r>=Eatchar('\s')<cr>

hi  link  UnicodeTBrk  PreProc
syn match UnicodeTBrk  "[⟨⟩⟪⟫«»❬❮❰❭❯❱《》]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> d_lpa      ⟦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_rpa      ⟧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_lcb      ⦃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_rcb      ⦄<left><right><c-r>=Eatchar('\s')<cr>

hi  link  UnicodeDbParen   UnicodeDBColor
syn match UnicodeDbParen   "[⟦⟧⦃⦄]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> _topp     ︵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _botp     ︶<left><right><c-r>=Eatchar('\s')<cr>

" Curves and function builder shapes
" ◜◝◟◞︵︶()⎛⎞⎝⎠⎧ ⎫⎩ ⎭⎰╰ ╯╮╭‾᭴⦦⦧⦢⦣⦟⼈㇏𝈺𝈻 ⼃⵰৴ノ𝀎Ꜥᜆ⎎
" ⁀‿◠◡ ◠ ◡ ∿ ~∼/\⊃⊂／＼⨜∫⳽
" hi  link    UnicodeCurves  Operator
" syn match   UnicodeCurves  "[◜◝◟◞╰╯╭╮⨜᭴⦦⦧⦢⦣⦟⳽⵰⼈⼃৴ノ𝀎Ꜥᜆ⎎㇏𝈺𝈻◠◡／＼]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

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
inorea <buffer> _btl     ┌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bbl     └<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _btr     ┐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bbr     ┘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bv      │<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bh      ─<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bdn     ┬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bpl     ┼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bup     ┴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _brt     ├<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _blf     ┤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _box     ┌───┬───┐<cr>│   │   │<cr>├───┼───┤<cr>│   │   │<cr>└───┴───┘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _boxs    ┌───┐<cr>│   │<cr>└───┘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _boxr    ┌──────┐<cr>│      │<cr>└──────┘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _boxl    ┌──────┐<cr>│      │<cr>└──────┘<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> b_btl     ┏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bbl     ┗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_btr     ┓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bbr     ┛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bv      ┃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bh      ━<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bdn     ┳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bpl     ╋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_bup     ┻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_brt     ┣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_blf     ┫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_box    ┏━━━┳━━━┓<cr>┃   ┃   ┃<cr>┣━━━╋━━━┫<cr>┃   ┃   ┃<cr>┗━━━┻━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_boxs   ┏━━━┓<cr>┃   ┃<cr>┗━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_boxr   ┏━━━━━━┓<cr>┃      ┃<cr>┗━━━━━━┛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_boxl   ┏━━━━━━┓<cr>┃      ┃<cr>┗━━━━━━┛<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> d_btl     ╔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bbl     ╚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_btr     ╗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bbr     ╝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bv      ║<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bh      ═<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bdn     ╦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bpl     ╬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_bup     ╩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_brt     ╠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_blf     ╣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_box    ╔═══╦═══╗<cr>║   ║   ║<cr>╠═══╬═══╣<cr>║   ║   ║<cr>╚═══╩═══╝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_boxs   ╔═══╗<cr>║   ║<cr>╚═══╝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_boxr   ╔══════╗<cr>║      ║<cr>╚══════╝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_boxl   ╔══════╗<cr>║      ║<cr>╚══════╝<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeBoxDrawings  StorageClass
syn match   UnicodeBoxDrawings  "[┌└┐┘│─┬┼┴├┤┏┗┓┛┃━┳╋┻┣┫╔╚╗╝║═╦╬╩╠╣]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" Multi-line parenthesis, square/curly brackets
inorea <buffer> _npa          ⎛⎞<cr>⎜⎟<cr>⎝⎠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nparen       ⎛⎞<cr>⎜⎟<cr>⎝⎠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsb          ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsbrack      ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsbracket    ⎡⎤<cr>⎢⎥<cr>⎣⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncb          ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncbrack      ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ncbracket    ⎧⎫<cr>⎪⎪<cr>⎨⎬<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cb          ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cbrack      ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cbracket    ⎧⎫<cr>⎩⎭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cb2         ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cbrack2     ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cbracket2   ⎰⎱<cr>⎱⎰<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeMultiParen Function
syn match   UnicodeMultiParen "[︵︶⎛⎞⎜⎟⎝⎠⟮⟯]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeMultiSBrk Function
syn match   UnicodeMultiSBrk "[⎡⎤⎢⎥⎣⎦⌈⌊⌉⌋]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeMultiCBrk Define
syn match   UnicodeMultiCBrk "[⎧⎫⎪⎨⎬⎩⎭⎰⎱]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Tees
"---------------------------

" Tack, turnstile, tee, yields, proves, satisfies, entails, assert
" inorea <buffer> _\|-      ⊢<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> _!\|-     ⊬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _assert   ⊦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tee      ⊢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ntee     ⊬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rtee     ⊣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _-\|      ⊣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _top      ⊤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bot      ⊥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _perp     ⟂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ltop     ⟙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ltop2    丅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lbot     ⟘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lbot2    丄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __bot      ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __perp     ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_bot      ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_perp     ᗮ<left><right><c-r>=Eatchar('\s')<cr>

" Double turnstile, entails, models, true ⊨ models ⊧
inorea <buffer> _tee2     ⊨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stee2    ⊧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ntee2    ⊭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n2tee2   ⊯<left><right><c-r>=Eatchar('\s')<cr>

" Forces, does not force, satisfies
inorea <buffer> _sat      ⊩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2tee     ⊩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nsat     ⊮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n2tee    ⊮<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _2tee2    ⊫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3tee     ⊪<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeTees UnicodeSetsColor
syn match   UnicodeTees "[⊦⊢⊬⊣⊤⊥⟂⟙丅⟘丄ᗮ⊨⊧⊭⊩⊮⊫⊯⊪]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


"---------------------------
" Algebra
"---------------------------

" Partial differential
inorea <buffer> _partial   ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pdiff     ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _del       ∂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ldel     𝜕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gradop    ∇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _prime     ′<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _'         ′<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rprime    ‵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _`         ‵<left><right><c-r>=Eatchar('\s')<cr>

" N-ARY PRODUCT
inorea <buffer> _mult      ∏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _prod      ∏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cprod     ∐<left><right><c-r>=Eatchar('\s')<cr>

" N-ARY SUMMATION
" inorea <buffer> _sum       Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sum       ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_sum      ⅀<left><right><c-r>=Eatchar('\s')<cr>

" N-ary logical or logical and
inorea <buffer> _And       ⋀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Or        ⋁<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _int       ∫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2int      ∬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3int      ∭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _into      ∮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0      ∮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2int0     ∯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2into     ∯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3int0     ∰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3into     ∰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intc      ∲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inta      ∳<left><right><c-r>=Eatchar('\s')<cr>

hi  link   UnicodeAlgebra     Operator
syn match  UnicodeAlgebra     "[∂𝜕∫∮∯∯∰∰∲∳∬∭′‵]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link   UnicodeAlgebraNary HLBlueB
syn match  UnicodeAlgebraNary "[∏∐∑⋀⋁]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


"---------------------------
" Math terms: Other
"---------------------------

inorea <buffer> _hbar      ħ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _planck    ħ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eul       ⅇ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sqrt      √<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sq        √<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sq3       ∛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sq4       ∜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inf       ∞<left><right><c-r>=Eatchar('\s')<cr>

" Proportional to
inorea <buffer> _prop      ∝<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sine      ∿<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeOther   Operator
syn match   UnicodeOther   "[∿∝ħⅇ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeOperators3 Operator
syn match   UnicodeOperators3 "[√∛∜]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeInfinity   Number
syn match   UnicodeInfinity   "[∞]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" syn match   UnicodeInfinityPlus   "[∞]\+[A-Z0-9]\+" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Circled digits/alphabet
"---------------------------

inorea <buffer> o_1       ①<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_2       ②<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_3       ③<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_4       ④<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_5       ⑤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_6       ⑥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_7       ⑦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_8       ⑧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_9       ⑨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_10      ⑩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_11      ⑪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_12      ⑫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_13      ⑬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_14      ⑭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_15      ⑮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_16      ⑯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_17      ⑰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_18      ⑱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_19      ⑲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_20      ⑳<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _(1)      ⑴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(2)      ⑵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(3)      ⑶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(4)      ⑷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(5)      ⑸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(6)      ⑹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(7)      ⑺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(8)      ⑻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(9)      ⑼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(10)     ⑽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(11)     ⑾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(12)     ⑿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(13)     ⒀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(14)     ⒁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(15)     ⒂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(16)     ⒃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(17)     ⒄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(18)     ⒅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(19)     ⒆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(20)     ⒇<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _1dot     ⒈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2dot     ⒉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3dot     ⒊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _4dot     ⒋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _5dot     ⒌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _6dot     ⒍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _7dot     ⒎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _8dot     ⒏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _9dot     ⒐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _10dot    ⒑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _11dot    ⒒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _12dot    ⒓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _13dot    ⒔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _14dot    ⒕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _15dot    ⒖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _16dot    ⒗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _17dot    ⒘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _18dot    ⒙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _19dot    ⒚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _20dot    ⒛<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _(A)      🄐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(B)      🄑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(C)      🄒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(D)      🄓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(E)      🄔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(F)      🄕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(G)      🄖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(H)      🄗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(I)      🄘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(J)      🄙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(K)      🄚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(L)      🄛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(M)      🄜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(N)      🄝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(O)      🄞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(P)      🄟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(Q)      🄠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(R)      🄡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(S)      🄢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(T)      🄣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(U)      🄤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(V)      🄥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(W)      🄦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(X)      🄧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(Y)      🄨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(Z)      🄩<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _(a)      ⒜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(b)      ⒝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(c)      ⒞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(d)      ⒟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(e)      ⒠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(f)      ⒡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(g)      ⒢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(h)      ⒣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(i)      ⒤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(j)      ⒥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(k)      ⒦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(l)      ⒧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(m)      ⒨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(n)      ⒩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(o)      ⒪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(p)      ⒫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(q)      ⒬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(r)      ⒭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(s)      ⒮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(t)      ⒯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(u)      ⒰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(v)      ⒱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(w)      ⒲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(x)      ⒳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(y)      ⒴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _(z)      ⒵<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> o_A       Ⓐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_B       Ⓑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_C       Ⓒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_D       Ⓓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_E       Ⓔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_F       Ⓕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_G       Ⓖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_H       Ⓗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_I       Ⓘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_J       Ⓙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_K       Ⓚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_L       Ⓛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_M       Ⓜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_N       Ⓝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_O       Ⓞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_P       Ⓟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_Q       Ⓠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_R       Ⓡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_S       Ⓢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_T       Ⓣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_U       Ⓤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_V       Ⓥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_W       Ⓦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_X       Ⓧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_Y       Ⓨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_Z       Ⓩ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> o_a       ⓐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_b       ⓑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_c       ⓒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_d       ⓓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_e       ⓔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_f       ⓕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_g       ⓖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_h       ⓗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_i       ⓘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_j       ⓙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_k       ⓚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_l       ⓛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_m       ⓜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_n       ⓝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_o       ⓞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_p       ⓟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_q       ⓠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_r       ⓡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_s       ⓢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_t       ⓣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_u       ⓤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_v       ⓥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_w       ⓦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_x       ⓧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_y       ⓨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_z       ⓩ<left><right><c-r>=Eatchar('\s')<cr>


" hi  link    UnicodeEnumNumbers   Question
" syn match   UnicodeEnumNumbers "[①②③④⑤⑥⑦⑧⑨⑩⑪⑫⑬⑭⑮⑯⑰⑱⑲⑳⑴⑵⑶⑷⑸⑹⑺⑻⑼⑽⑾⑿⒀⒁⒂⒃⒄⒅⒆⒇⒈⒉⒊⒋⒌⒍⒎⒏⒐⒑⒒⒓⒔⒕⒖⒗⒘⒙⒚⒛]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" hi  link    UnicodeEnumLetters   Operator
" syn match   UnicodeEnumLetters "[🄐🄑🄒🄓🄔🄕🄖🄗🄘🄙🄚🄛🄜🄝🄞🄟🄠🄡🄢🄣🄤🄥🄦🄧🄨🄩⒜⒝⒞⒟⒠⒡⒢⒣⒤⒥⒦⒧⒨⒩⒪⒫⒬⒭⒮⒯⒰⒱⒲⒳⒴⒵ⒶⒷⒸⒹⒺⒻⒼⒽⒾⒿⓀⓁⓂⓃⓄⓅⓆⓇⓈⓉⓊⓋⓌⓍⓎⓏⓐⓑⓒⓓⓔⓕⓖⓗⓘⓙⓚⓛⓜⓝⓞⓟⓠⓡⓢⓣⓤⓥⓦⓧⓨⓩ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


"---------------------------
" Greek letters
" Used in science and math
"---------------------------

" Greek
inorea <buffer> _Alpha     Α<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Al        Α<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Beta      Β<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Be        Β<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Gamma     Γ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ga        Γ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Delta     Δ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _De        Δ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Epsilon   Ε<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ep        Ε<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Zeta      Ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ze        Ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Eta       Η<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Et        Η<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Theta     Θ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Th        Θ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Iota      Ι<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Io        Ι<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Kappa     Κ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ka        Κ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Lambda    Λ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _La        Λ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Mu        Μ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Nu        Ν<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Xi        Ξ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Omicron   Ο<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _On        Ο<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Pi        Π<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sPi       ᴨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Rho       Ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Rh        Ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Sigma     Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Si        Σ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Sigma2    ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Si2       ∑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Tau       Τ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ta        Τ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Upsilon   Υ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Up        Υ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Phi       Φ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ph        Φ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Phi2      Ф<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ph2       Ф<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Chi       Χ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ch        Χ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Psi       Ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ps        Ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Psi2      ᴪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Ps2       ᴪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Omega     Ω<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Om        Ω<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Om2      Ω<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _Nabla     𝞩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Na        𝞩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUNorm UnicodeVarColor
syn match   UnicodeGreekUNorm "[ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩᴨФᴪ𝞩Ω]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Cursive
inorea <buffer> c_Alpha    𝛢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Al       𝛢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Beta     𝛣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Be       𝛣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Gamma    𝛤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ga       𝛤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Delta    𝛥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_De       𝛥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Epsilon  𝛦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ep       𝛦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Zeta     𝛧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ze       𝛧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Eta      𝛨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Et       𝛨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Theta    𝛩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Th       𝛩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Theta2   𝛳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Th2      𝛳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Iota     𝛪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Io       𝛪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Kappa    𝛫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ka       𝛫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Lambda   𝛬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_La       𝛬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Mu       𝛭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Nu       𝛮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Xi       𝛯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Omicron  𝛰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_On       𝛰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Pi       𝛱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Rho      𝛲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Sigma    𝛴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Si       𝛴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Tau      𝛵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ta       𝛵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Upsilon  𝛶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Up       𝛶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Phi      𝛷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ph       𝛷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Chi      𝛸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ch       𝛸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Psi      𝛹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Ps       𝛹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Omega    𝛺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Om       𝛺<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> c_Nabla    𝛻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Na       𝛻<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUC UnicodeCColor
syn match   UnicodeGreekUC "[𝛢𝛣𝛤𝛥𝛦𝛧𝛨𝛩𝛪𝛫𝛬𝛭𝛮𝛯𝛰𝛱𝛲𝛳𝛴𝛵𝛶𝛷𝛸𝛹𝛺𝛻]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Greek
inorea <buffer> _alpha     α<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _al        α<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _beta      β<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _be        β<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gamma     γ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ga        γ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gamma2    ɣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ga2       ɣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _delta     δ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _de        δ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _epsilon   ε<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ep        ε<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _zeta      ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ze        ζ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eta       η<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _et        η<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _theta     θ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _th        θ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _iota      ι<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _io        ι<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _kappa     κ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ka        κ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lambda    λ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _la        λ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mu        μ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mu2       µ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nu        ν<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _xi        ξ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _omicron   ο<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _on        ο<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pi        π<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rho       ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rh        ρ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sigma     σ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _si        σ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sigma2    ς<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _si2       ς<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tau       τ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ta        τ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _upsilon   υ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _up        υ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _phi       φ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ph        φ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _phi2      ф<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ph2       ф<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _chi       χ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ch        χ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _psi       ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ps        ψ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _omega     ω<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _om        ω<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _nabla     ∇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _na        ∇<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLNorm UnicodeVarColor
syn match   UnicodeGreekLNorm "[αβγɣδεζηθικλμνξοπρςστυφχψω∇µф]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Cursive
inorea <buffer> c_alpha    𝛼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_al       𝛼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_beta     𝛽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_be       𝛽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_gamma    𝛾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ga       𝛾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_delta    𝛿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_de       𝛿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_epsilon  𝜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ep       𝜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_zeta     𝜁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ze       𝜁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_eta      𝜂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_et       𝜂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_theta    𝜃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_th       𝜃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_iota     𝜄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_io       𝜄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_kappa    𝜅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ka       𝜅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_lambda   𝜆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_la       𝜆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_mu       𝜇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_nu       𝜈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_xi       𝜉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_omicron  𝜊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_on       𝜊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_pi       𝜋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_rho      𝜌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_rh       𝜌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_sigma    𝜎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_si       𝜎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_sigma2   𝜍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_si2      𝜍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_tau      𝜏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ta       𝜏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_upsilon  𝜐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_up       𝜐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_phi      𝜑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ph       𝜑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_phi2     𝜙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ph2      𝜙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_chi      𝜒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ch       𝜒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_psi      𝜓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_ps       𝜓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_omega    𝜔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_om       𝜔<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLC UnicodeCColor
syn match   UnicodeGreekLC "[𝛼𝛽𝛾𝛿𝜀𝜁𝜂𝜃𝜄𝜅𝜆𝜇𝜈𝜉𝜊𝜋𝜌𝜍𝜎𝜏𝜐𝜑𝜙𝜒𝜓𝜔]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bold cursive
inorea <buffer> bc_Alpha   𝜜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Al      𝜜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Beta    𝜝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Be      𝜝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Gamma   𝜞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ga      𝜞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Delta   𝜟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_De      𝜟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Delta2  𝞓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_De2     𝞓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Epsilon 𝜠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ep      𝜠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Zeta    𝜡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ze      𝜡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Eta     𝜢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Et      𝜢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Theta   𝜣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Th      𝜣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Theta2  𝜭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Th2     𝜭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Iota    𝜤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Io      𝜤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Kappa   𝜥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ka      𝜥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Lambda  𝜦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_La      𝜦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Mu      𝜧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Nu      𝜨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Xi      𝜩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Omicron 𝜪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_On      𝜪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Pi      𝜫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Rho     𝜬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Rh      𝜬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Sigma   𝜮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Si      𝜮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Tau     𝜯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ta      𝜯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Upsilon 𝜰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Up      𝜰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Phi     𝜱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ph      𝜱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Chi     𝜲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ch      𝜲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Psi     𝜳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Ps      𝜳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Omega   𝜴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Om      𝜴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Nabla   𝜵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Na      𝜵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUBC UnicodeBCColor
syn match   UnicodeGreekUBC "[𝜜𝜝𝜞𝜟𝞓𝜠𝜡𝜢𝜣𝜤𝜥𝜦𝜧𝜨𝜩𝜪𝜫𝜬𝜭𝜮𝜯𝜰𝜱𝜲𝜳𝜴𝜵]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bold cursive
inorea <buffer> bc_alpha   𝜶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_al      𝜶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_beta    𝜷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_be      𝜷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_gamma   𝜸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ga      𝜸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_delta   𝜹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_de      𝜹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_epsilon 𝜺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ep      𝜺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_zeta    𝜻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ze      𝜻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_eta     𝜼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_et      𝜼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_theta   𝜽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_th      𝜽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_iota    𝜾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_io      𝜾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_kappa   𝜿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ka      𝜿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_lambda  𝝀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_la      𝝀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_mu      𝝁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_nu      𝝂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_xi      𝝃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_omicron 𝝄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_on      𝝄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_pi      𝝅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_rho     𝝆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_rh      𝝆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_sigma   𝝈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_si      𝝈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_sigma2  𝝇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_si2     𝝇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_tau     𝝉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ta      𝝉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_upsilon 𝝊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_up      𝝊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_phi     𝝋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ph      𝝋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_phi2    𝝓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ph2     𝝓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_chi     𝝌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ch      𝝌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_psi     𝝍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_ps      𝝍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_omega   𝝎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_om      𝝎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLBC UnicodeBCColor
syn match   UnicodeGreekLBC "[𝜶𝜷𝜸𝜹𝜺𝜻𝜼𝜽𝜾𝜿𝝀𝝁𝝂𝝃𝝄𝝅𝝆𝝇𝝈𝝉𝝊𝝋𝝌𝝍𝝎𝝓]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bold
inorea <buffer> b_Alpha    𝚨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Al       𝚨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Beta     𝚩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Be       𝚩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Gamma    𝚪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ga       𝚪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Delta    𝚫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_De       𝚫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Delta2   𝝙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_De2      𝝙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Epsilon  𝚬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ep       𝚬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Zeta     𝚭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ze       𝚭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Eta      𝚮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Et       𝚮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Theta    𝚯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Th       𝚯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Iota     𝚰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Io       𝚰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Kappa    𝚱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ka       𝚱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Lambda   𝚲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_La       𝚲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Mu       𝚳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Nu       𝚴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Xi       𝚵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Omicron  𝚶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_On       𝚶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Pi       𝚷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Rho      𝚸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Rh       𝚸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Sigma    𝚺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Si       𝚺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_sigma2   𝚹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_si2      𝚹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Tau      𝚻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ta       𝚻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Upsilon  𝚼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Up       𝚼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Phi      𝚽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ph       𝚽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Phi2     𝛟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ph2      𝛟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Chi      𝚾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ch       𝚾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Psi      𝚿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Ps       𝚿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Omega    𝛀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Om       𝛀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Nabla    𝛁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Na       𝛁<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekUB UnicodeBColor
syn match   UnicodeGreekUB "[𝚨𝚩𝚪𝚫𝝙𝚬𝚭𝚮𝚯𝚰𝚱𝚲𝚳𝚴𝚵𝚶𝚷𝚸𝚹𝚺𝚻𝚼𝚽𝚾𝚿𝛀𝛁𝛟]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bold
inorea <buffer> b_alpha    𝛂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_al       𝛂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_beta     𝛃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_be       𝛃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_gamma    𝛄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ga       𝛄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_delta    𝛅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_de       𝛅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_epsilon  𝛆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ep       𝛆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_zeta     𝛇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ze       𝛇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_eta      𝛈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_et       𝛈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_theta    𝛉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_th       𝛉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_iota     𝛊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_io       𝛊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_kappa    𝛋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ka       𝛋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_lambda   𝛌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_la       𝛌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_mu       𝛍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_nu       𝛎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_xi       𝛏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_omicron  𝛐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_on       𝛐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_pi       𝛑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_rho      𝛒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_rh       𝛒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_sigma    𝛔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_si       𝛔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_sigma2   𝛓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_si2      𝛓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_tau      𝛕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ta       𝛕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_upsilon  𝛖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_up       𝛖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_phi      𝛗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ph       𝛗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_chi      𝛘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ch       𝛘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_psi      𝛙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_ps       𝛙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_omega    𝛚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_om       𝛚<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeGreekLB UnicodeBColor
syn match   UnicodeGreekLB "[𝛂𝛃𝛄𝛅𝛆𝛇𝛈𝛉𝛊𝛋𝛌𝛍𝛎𝛏𝛐𝛑𝛒𝛓𝛔𝛕𝛖𝛗𝛘𝛙𝛚]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

"---------------------------
" Combined
"---------------------------
inorea <buffer> _coe        œ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cae        æ<left><right><c-r>=Eatchar('\s')<cr>


"---------------------------
" Cursive, bold, script, double
"---------------------------

" Cursive
inorea <buffer> c_a        𝑎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_b        𝑏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_c        𝑐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_d        𝑑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_e        𝑒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_f        𝑓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_g        𝑔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_h        𝘩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_i        𝑖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_j        𝑗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_k        𝑘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_l        𝑙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_m        𝑚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_n        𝑛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_o        𝑜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_p        𝑝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_q        𝑞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_r        𝑟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_s        𝑠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_t        𝑡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_u        𝑢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_v        𝑣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_w        𝑤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_x        𝑥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_y        𝑦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_z        𝑧<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLC UnicodeCColor
syn match   UnicodeLatinLC "[𝑎𝑏𝑐𝑑𝑒𝑓𝑔𝘩𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" Bold
inorea <buffer> b_a        𝐚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_b        𝐛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_c        𝐜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_d        𝐝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_e        𝐞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_f        𝐟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_g        𝐠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_h        𝐡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_i        𝐢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_j        𝐣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_k        𝐤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_l        𝐥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_m        𝐦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_n        𝐧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_o        𝐨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_p        𝐩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_q        𝐪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_r        𝐫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_s        𝐬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_t        𝐭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_u        𝐮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_v        𝐯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_w        𝐰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_x        𝐱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_y        𝐲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_z        𝐳<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLB UnicodeBColor
syn match   UnicodeLatinLB "[𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" Bold, cursive
inorea <buffer> bc_a       𝒂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_b       𝒃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_c       𝒄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_d       𝒅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_e       𝒆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_f       𝒇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_g       𝒈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_h       𝒉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_i       𝒊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_j       𝒋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_k       𝒌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_l       𝒍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_m       𝒎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_n       𝒏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_o       𝒐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_p       𝒑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_q       𝒒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_r       𝒓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_s       𝒔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_t       𝒕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_u       𝒖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_v       𝒗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_w       𝒘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_x       𝒙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_y       𝒚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_z       𝒛<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLBC UnicodeBCColor
syn match   UnicodeLatinLBC "[𝒂𝒃𝒄𝒅𝒆𝒇𝒈𝒉𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Cursive
inorea <buffer> c_A        𝐴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_B        𝐵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_C        𝐶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_D        𝐷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_E        𝐸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_F        𝐹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_G        𝐺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_H        𝐻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_I        𝐼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_J        𝐽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_K        𝐾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_L        𝐿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_M        𝑀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_N        𝑁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_O        𝑂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_P        𝑃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Q        𝑄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_R        𝑅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_S        𝑆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_T        𝑇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_U        𝑈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_V        𝑉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_W        𝑊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_X        𝑋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Y        𝑌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> c_Z        𝑍<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUC UnicodeCColor
syn match   UnicodeLatinUC "[𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Bold
inorea <buffer> b_A        𝐀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_B        𝐁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_C        𝐂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_D        𝐃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_E        𝐄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_F        𝐅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_G        𝐆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_H        𝐇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_I        𝐈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_J        𝐉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_K        𝐊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_L        𝐋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_M        𝐌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_N        𝐍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_O        𝐎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_P        𝐏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Q        𝐐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_R        𝐑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_S        𝐒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_T        𝐓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_U        𝐔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_V        𝐕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_W        𝐖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_X        𝐗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Y        𝐘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> b_Z        𝐙<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUB UnicodeBColor
syn match   UnicodeLatinUB "[𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" Bold cursive
inorea <buffer> bc_A       𝑨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_B       𝑩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_C       𝑪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_D       𝑫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_E       𝑬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_F       𝑭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_G       𝑮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_H       𝑯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_I       𝑰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_J       𝑱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_K       𝑲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_L       𝑳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_M       𝑴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_N       𝑵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_O       𝑶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_P       𝑷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Q       𝑸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_R       𝑹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_S       𝑺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_T       𝑻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_U       𝑼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_V       𝑽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_W       𝑾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_X       𝑿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Y       𝒀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bc_Z       𝒁<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUBC UnicodeBCColor
syn match   UnicodeLatinUBC "[𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Mathematical bold script
inorea <buffer> bs_a       𝓪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_b       𝓫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_c       𝓬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_d       𝓭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_e       𝓮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_f       𝓯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_g       𝓰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_h       𝓱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_i       𝓲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_j       𝓳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_k       𝓴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_l       𝓵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_m       𝓶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_n       𝓷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_o       𝓸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_p       𝓹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_q       𝓺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_r       𝓻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_s       𝓼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_t       𝓽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_u       𝓾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_v       𝓿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_w       𝔀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_x       𝔁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_y       𝔂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_z       𝔃<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLBS UnicodeBsColor
syn match   UnicodeLatinLBS "[𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


" Mathematical bold script
inorea <buffer> bs_A       𝓐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_B       𝓑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_C       𝓒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_D       𝓓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_E       𝓔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_F       𝓕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_G       𝓖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_H       𝓗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_I       𝓘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_J       𝓙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_K       𝓚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_L       𝓛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_M       𝓜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_N       𝓝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_O       𝓞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_P       𝓟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_Q       𝓠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_R       𝓡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_S       𝓢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_T       𝓣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_U       𝓤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_V       𝓥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_W       𝓦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_X       𝓧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_Y       𝓨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> bs_Z       𝓩<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUBS UnicodeBsColor
syn match   UnicodeLatinUBS "[𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Mathematical Fraktur
inorea <buffer> f_A        𝔄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_B        𝔅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_C        ℭ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_D        𝔇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_E        𝔈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_F        𝔉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_G        𝔊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_H        ℌ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_I        ℑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_J        𝔍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_K        𝔎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_L        𝔏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_M        𝔐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_N        𝔑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_O        𝔒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_P        𝔓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_Q        𝔔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_R        ℜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_S        𝔖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_T        𝔗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_U        𝔘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_V        𝔙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_W        𝔚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_X        𝔛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_Y        𝔜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_Z        ℨ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUF UnicodeMColor
syn match   UnicodeLatinUF "[𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> f_a        𝔞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_b        𝔟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_c        𝔠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_d        𝔡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_e        𝔢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_f        𝔣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_g        𝔤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_h        𝔥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_i        𝔦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_j        𝔧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_k        𝔨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_l        𝔩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_m        𝔪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_n        𝔫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_o        𝔬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_p        𝔭<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_q        𝔮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_r        𝔯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_s        𝔰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_t        𝔱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_u        𝔲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_v        𝔳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_w        𝔴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_x        𝔵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_y        𝔶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> f_z        𝔷<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLF UnicodeMColor
syn match   UnicodeLatinLF "[𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Mathematical Script
inorea <buffer> s_A        𝒜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_B        ℬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_C        𝒞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_D        𝒟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_E        ℰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_F        ℱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_G        𝒢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_H        ℋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_I        ℐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_J        𝒥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_K        𝒦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_L        ℒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_M        ℳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_N        𝒩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_O        𝒪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_P        𝒫<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_Q        𝒬<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_R        ℛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_S        𝒮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_T        𝒯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_U        𝒰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_V        𝒱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_W        𝒲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_X        𝒳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_Y        𝒴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_Z        𝒵<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinUS UnicodeMColor
syn match   UnicodeLatinUS "[𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

inorea <buffer> s_a        𝒶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_b        𝒷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_c        𝒸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_d        𝒹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_e        ℯ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_f        𝒻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_g        ℊ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_h        𝒽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_i        𝒾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_j        𝒿<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_k        𝓀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_l        ℓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_l2       𝓁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_m        𝓂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_n        𝓃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_o        ℴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_p        𝓅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_q        𝓆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_r        𝓇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_s        𝓈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_t        𝓉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_u        𝓊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_v        𝓋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_w        𝓌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_x        𝓍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_y        𝓎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> s_z        𝓏<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinLS UnicodeMColor
syn match   UnicodeLatinLS "[𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀ℓ𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Double
inorea <buffer> d_nP       ℙ̶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_A        𝔸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_B        𝔹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_C        ℂ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_D        𝔻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_E        𝔼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_F        𝔽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_G        𝔾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_H        ℍ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_I        𝕀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_J        𝕁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_K        𝕂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_L        𝕃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_M        𝕄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_N        ℕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_O        𝕆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_P        ℙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_Q        ℚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_R        ℝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_S        𝕊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_T        𝕋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_U        𝕌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_V        𝕍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_W        𝕎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_X        𝕏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_Y        𝕐<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_Z        ℤ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> d_np       𝕡̶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_a        𝕒<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_b        𝕓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_c        𝕔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_d        𝕕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_e        𝕖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_f        𝕗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_g        𝕘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_h        𝕙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_i        𝕚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_j        𝕛<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_k        𝕜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_l        𝕝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_m        𝕞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_n        𝕟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_o        𝕠<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_p        𝕡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_q        𝕢<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_r        𝕣<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_s        𝕤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_t        𝕥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_u        𝕦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_v        𝕧<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_w        𝕨<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_x        𝕩<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_y        𝕪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_z        𝕫<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> d_pi        ℼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> d_Pi        ℿ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeLatinD UnicodeDBColor
syn match   UnicodeLatinD "[∅Ᵽ𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤℿ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match   UnicodeLatinD "[ᵽ𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫ℼ⅀]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


"---------------------------
" Superscript/subscript
"---------------------------

" Superscript
inorea <buffer> a_0        ⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_1        ¹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_2        ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_3        ³<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_4        ⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_5        ⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_6        ⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_7        ⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_8        ⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_9        ⁹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_inf      𝆗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_+        ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_pl       ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_-        ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_mn       ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_smn      ᐨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dsh      ᐨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_=        ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_eq       ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_(        ⁽<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_)        ⁾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_*       ˟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_tm      ˟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_*        ﹡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_tm       ᕁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_/        ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dv       ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_fsl      ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_\        ᐠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_bsl      ᐠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dot      ·<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_dot     ᐝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_3dot     <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_oop     ᐤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_oop      ॰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_~        ˜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_^        <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_\|       ᣳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_$        ᙚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dollar   ᙚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_gamma2   ˠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_int      ᶴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_!        ꜝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_inv!     ꜞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_,        ⸴<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> a_lt       ˂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_gt       ˃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_lfah     ˂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_rtah     ˃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_dnah     ˅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_upah     ˄<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> a_sub      ꜂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_sube     ꜃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_sup      ꜄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_supe     ꜅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_un       ᐡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> a_in       ᐢ<left><right><c-r>=Eatchar('\s')<cr>

" Smaller/higher superscript ⁰
inorea <buffer> aa_0       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_1       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_2       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_3       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_4       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_5       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_6       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_7       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_8       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> aa_9       <left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> __0        ⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1        ¹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __2        ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __3        ³<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __4        ⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __5        ⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __6        ⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __7        ⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __8        ⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __9        ⁹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __inf      𝆗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __+        ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pl       ⁺<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __-        ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mn       ⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __=        ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __eq       ⁼<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __/        ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __dv       ᐟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __dot      ·<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __(       ⁽⁾<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __)        ⁾<left><right><c-r>=Eatchar('\s')<cr>

" inorea <buffer> a_p0      ⁺⁰<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p1      ⁺¹<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p2      ⁺²<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p3      ⁺³<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p4      ⁺⁴<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p5      ⁺⁵<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p6      ⁺⁶<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p7      ⁺⁷<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p8      ⁺⁸<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p9      ⁺⁹<left><right><c-r>=Eatchar('\s')<cr>
"
" inorea <buffer> a_m0      ⁻⁰<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m1      ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m2      ⁻²<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m3      ⁻³<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m4      ⁻⁴<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m5      ⁻⁵<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m6      ⁻⁶<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m7      ⁻⁷<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m8      ⁻⁸<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m9      ⁻⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __p0      ⁺⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p1      ⁺¹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p2      ⁺²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p3      ⁺³<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p4      ⁺⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p5      ⁺⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p6      ⁺⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p7      ⁺⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p8      ⁺⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p9      ⁺⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __m0      ⁻⁰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m1      ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m2      ⁻²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m3      ⁻³<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m4      ⁻⁴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m5      ⁻⁵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m6      ⁻⁶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m7      ⁻⁷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m8      ⁻⁸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m9      ⁻⁹<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __1dn    ¹ᐟⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1db    ¹ᐟᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1dx    ¹ᐟˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1d2    ¹ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __d2      ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1on    ¹ᐟⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1ob    ¹ᐟᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1ox    ¹ᐟˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __1o2    ¹ᐟ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __o2      ᐟ²<left><right><c-r>=Eatchar('\s')<cr>

" No q in sp
" inorea <buffer> a_a        ᵃ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_b        ᵇ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_c        ᶜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_d        ᵈ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_e        ᵉ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_f        ᶠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_g        ᵍ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_h        ʰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_i        ⁱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_j        ʲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_k        ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_l        ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_m        ᵐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_n        ⁿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_o        ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_p        ᵖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_q        ᕐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_r        ʳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_s        ˢ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_t        ᵗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_u        ᵘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_v        ᵛ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_w        ᵚ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_x        ˣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_y        ʸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_z        ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __pla     ⁺ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plb     ⁺ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plc     ⁺ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pld     ⁺ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ple     ⁺ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plf     ⁺ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plg     ⁺ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plh     ⁺ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pli     ⁺ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plj     ⁺ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plk     ⁺ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pll     ⁺ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plm     ⁺ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pln     ⁺ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plo     ⁺ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plp     ⁺ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plq     ⁺ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plr     ⁺ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pls     ⁺ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plt     ⁺ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plu     ⁺ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plv     ⁺ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plw     ⁺ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plx     ⁺ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ply     ⁺ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plz     ⁺ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __mna     ⁻ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnb     ⁻ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnc     ⁻ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnd     ⁻ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mne     ⁻ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnf     ⁻ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mng     ⁻ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnh     ⁻ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mni     ⁻ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnj     ⁻ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnk     ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnl     ⁻ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnm     ⁻ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnn     ⁻ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mno     ⁻ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnp     ⁻ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnq     ⁻ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnr     ⁻ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mns     ⁻ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnt     ⁻ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnu     ⁻ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnv     ⁻ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnw     ⁻ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnx     ⁻ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mny     ⁻ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnz     ⁻ᶻ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __a        ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __b        ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __c        ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __d        ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __e        ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __f        ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __g        ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __h        ʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __i        ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __j        ʲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __k        ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __l        ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __m        ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __n        ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __o        ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __p        ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __q        ᕐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __r        ʳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __s        ˢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __t        ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __u        ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __v        ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __w        ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __x        ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __y        ʸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __z        ᶻ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPNum Number
syn match   UnicodeSPNum "[⁰¹²³⁴⁵⁶⁷⁸⁹ᣛᴺᵀ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeSPOps Operator
syn match   UnicodeSPOps "[⁺⁻⁼˟ᐟ˜·ᐨ﹡ᕁᐠᐝᐤ॰ᣳᙚˠᶴꜝꜞ˂˃˅˄꜂꜃꜄꜅ᐡᐢ⸴]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


hi  link    UnicodeSPParen Function
syn match   UnicodeSPParen "[⁽⁾]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeSPLatinL Number
syn match   UnicodeSPLatinL "[ᵃᵇᶜᵈᵉᶠᵍʰⁱʲᵏˡᵐⁿᵒᵖᕐʳˢᵗᵘᵛᵚˣʸᶻ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ᵗʰ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ˢᵗ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ⁿᵈ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
" syn match   UnicodeSPLatinL "[0-9a-zA-Z]\+ʳᵈ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" NOTE no C F Q S
" ʷʿ꜂ 𞥅ᒼ𓎭ᶜ⸇⸄⸁ᶠᣵ𝆍ᶳᔆᕁᕽ𝁂꭛ʸᶣ𐨗ᔾ⸃⸂ᶽᶻ𝆎ᙆᙇ ً𝆎⌕𑱔
" ᴻ꒙ᶰᔿꭩᶬᶫᶩ𝆛ᶨ𞄷ᶝᶢⱀ𝆏𝆑𝆐
" inorea <buffer> a_A        ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_B        ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_C        ᒼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_D        ᴰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_E        ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_F        ⸁<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_G        ᴳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_H        ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_I        ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_J        ᴶ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_K        ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_L        ᴸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_M        ᴹ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_N        ᴺ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_O        ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_P        ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Q        ⌕<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_R        ᴿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_S        ᔆ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_T        ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_U        ᵁ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_V        ⱽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_W        ᵂ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_X        ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Y        𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Z        ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __plA      ⁺ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plB      ⁺ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plC      ⁺ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plD      ⁺ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plE      ⁺ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plF      ⁺⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plG      ⁺ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plH      ⁺ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plI      ⁺ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plJ      ⁺ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plK      ⁺ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plL      ⁺ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plM      ⁺ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plN      ⁺ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plO      ⁺ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plP      ⁺ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plQ      ⁺⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plR      ⁺ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plS      ⁺ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plT      ⁺ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plU      ⁺ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plV      ⁺ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plW      ⁺ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plX      ⁺ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plY      ⁺𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plZ      ⁺ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __mnA      ⁻ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnB      ⁻ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnC      ⁻ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnD      ⁻ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnE      ⁻ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnF      ⁻⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnG      ⁻ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnH      ⁻ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnI      ⁻ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnJ      ⁻ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnK      ⁻ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnL      ⁻ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnM      ⁻ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnN      ⁻ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnO      ⁻ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnP      ⁻ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnQ      ⁻⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnR      ⁻ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnS      ⁻ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnT      ⁻ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnU      ⁻ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnV      ⁻ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnW      ⁻ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnX      ⁻ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnY      ⁻𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnZ      ⁻ᙆ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __A        ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __B        ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __C        ᒼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __D        ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __E        ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __F        ⸁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __G        ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __H        ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __I        ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __J        ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __K        ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __L        ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __M        ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __N        ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __O        ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __P        ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Q        ⌕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __R        ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __S        ᔆ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __T        ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __U        ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __V        ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __W        ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __X        ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Y        𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Z        ᙆ<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPLatinU Number
syn match   UnicodeSPLatinU "[ᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴼᴾᴿᵁⱽᵂᒼ⸁⌕ᔆᕽ𐨗ᙆ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Subscript
inorea <buffer> z_0        ₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_1        ₁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_2        ₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_3        ₃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_4        ₄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_5        ₅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_6        ₆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_7        ₇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_8        ₈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_9        ₉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_+        ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_pl       ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_-        ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_mn       ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_=        ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_eq       ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_dot      .<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_dot2     ․<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_oop      ｡<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_(        ₍<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_)        ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_*        ⁎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_tm       𝅃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_/        ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_dv       ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_fsl      ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_\        ៶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_bsl      ៶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_inf      ∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_<        ‹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_>        ›<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_\|       ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_~        ˷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_gamma2   ៵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_inv!     ꜟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_^        ᶺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_,        ,<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> z_lt       ˱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_gt       ˲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_lfah     ˱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_rtah     ˲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_dnah     ˯<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_upah     ˰<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> z_sub      ꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_sube     ꜁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_sup      ꜆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_supe     ꜇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_un       ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> z_in       ₙ<left><right><c-r>=Eatchar('\s')<cr>

" Smaller/lower subscripts ₀
inorea <buffer> zz_0       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_1       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_2       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_3       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_4       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_5       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_6       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_7       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_8       <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zz_9       <left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> _0         ₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1         ₁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2         ₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3         ₃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _4         ₄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _5         ₅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _6         ₆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _7         ₇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _8         ₈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _9         ₉<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___+       ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___-       ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___=       ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___/       ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pl        ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mn        ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eq        ₌<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dv        ៸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___(      ₍₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___)       ₎<left><right><c-r>=Eatchar('\s')<cr>

" inorea <buffer> z_p0      ₊₀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p1      ₊₁<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p2      ₊₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p3      ₊₃<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p4      ₊₄<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p5      ₊₅<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p6      ₊₆<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p7      ₊₇<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p8      ₊₈<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p9      ₊₉<left><right><c-r>=Eatchar('\s')<cr>
"
" inorea <buffer> z_m0      ₋₀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m1      ₋₁<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m2      ₋₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m3      ₋₃<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m4      ₋₄<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m5      ₋₅<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m6      ₋₆<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m7      ₋₇<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m8      ₋₈<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m9      ₋₉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _p0       ₊₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p1       ₊₁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p2       ₊₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p3       ₊₃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p4       ₊₄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p5       ₊₅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p6       ₊₆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p7       ₊₇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p8       ₊₈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p9       ₊₉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _m0       ₋₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m1       ₋₁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m2       ₋₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m3       ₋₃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m4       ₋₄<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m5       ₋₅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m6       ₋₆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m7       ₋₇<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m8       ₋₈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m9       ₋₉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _minf     ₋∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mninf    ₋∞<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _1dn     ₁៸ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1db     ₁៸ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1dx     ₁៸ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1d2     ₁៸₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _d2       ៸₂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1on     ₁៸ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1ob     ₁៸ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1ox     ₁៸ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _1o2     ₁៸₂<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> _o2      ៸₂<left><right><c-r>=Eatchar('\s')<cr>


" NOTE no b,c,d,f,g,q,r,w,y,z
" ៵𝇒ⱃꮷ𐹠𑚤𑣡𝇥𝇧𖾜ₔꜰғₕ₉ﻣ𖾟 ࣲ ٍ 𑖵⳾𛲟𖾝𖾞𝄾𝇣𝇤٩۹༝𝅃𝅄𝩾ᇮᅇ ᪲ ᳹ᕀ␣ퟠ༛ ⸋ 𑁀𑈫𖾛𛲗𝆘 𑁀𑈫𖾛𛲗𝆘∞
" , If it's not so formal use V_f
" inorea <buffer> z_a        ₐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_b        ⱃ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_c        ꜀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_d        𑚤<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_e        ₑ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_f        ғ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_g        <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_h        ₕ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_i        ᵢ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_j        ⱼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_k        ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_l        ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_m        ₘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_n        ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_o        ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_p        ₚ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_q        ﻣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_r        ᵣ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_s        ₛ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_t        ₜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_u        ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_v        ᵥ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_w        𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_x        ₓ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_y        ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_z        ⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a         ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b         ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c         ꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _d         𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e         ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _f         ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _g         <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _h         ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _i         ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _j         ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _k         ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _l         ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _m         ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _n         ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _o         ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _p         ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _q         ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _r         ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _s         ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _t         ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _u         ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v         ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _w         𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x         ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y         ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z         ⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _pla      ₊ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plb      ₊ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plc      ₊꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pld      ₊𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ple      ₊ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plf      ₊ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plg      ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plh      ₊ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pli      ₊ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plj      ₊ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plk      ₊ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pll      ₊ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plm      ₊ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pln      ₊ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plo      ₊ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plp      ₊ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plq      ₊ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plr      ₊ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pls      ₊ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plt      ₊ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plu      ₊ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plv      ₊ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plw      ₊𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plx      ₊ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ply      ₊ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plz      ₊⳾<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _mna      ₋ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnb      ₋ⱃ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnc      ₋꜀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnd      ₋𑚤<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mne      ₋ₑ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnf      ₋ғ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mng      ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnh      ₋ₕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mni      ₋ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnj      ₋ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnk      ₋ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnl      ₋ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnm      ₋ₘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnn      ₋ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mno      ₋ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnp      ₋ₚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnq      ₋ﻣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnr      ₋ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mns      ₋ₛ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnt      ₋ₜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnu      ₋ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnv      ₋ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnw      ₋𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnx      ₋ₓ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mny      ₋ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnz      ₋⳾<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBLatinL Number
syn match   UnicodeSBLatinL "[ₐₑₕᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓ᙮ⱃ꜀𑚤ғﻣ𖾟⳾ꮷ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" NOTE no uppercase subscripts!!
" ៰ꜟ៲៴៱៷｡𐫶𔗐𛱈𐼦ࡘ𐼈៳𖾕𖾛𐼜ₚ𐼦ﻣﻪ ཱર𖾗𑇁៴⌄˯ ̬𖾓𖾙𐺜꛵ₓ᙮𝄪𝅃⸼𐺔𝀘
" ғꜰֈɟ៷៵𖾘𛱖ҕңҥԋ⧺հዛꃅꮋ𐡲𐫤𖨏ᵤ ̮ܚบᴗⳙꭒ𐓶𐮀𐮪
" 𐼼𐽀ㆴ𐼂𐼋⁁𖡔ࡃᴋ𐔘ҡӄห𐳞ɋԛզᨣ᭷ℴ⧜𐮎ﻪ𓏗𝓆ɯ ྻพᴡ𐐶𖾟𝨸
" inorea <buffer> z_A        ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_B        ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_C        𐫶<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_D        𐼦<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_E        ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_F        ꜰ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_G        𛱖<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_H        ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_I        ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_J        𐼈<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_K        <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_L        𖾘<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_M        ៳<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_N        ៷<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_O        ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_P        𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Q        ﻪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_R       _ ཱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_S        𑇁<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_T        ꛵<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_U        𐮀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_V        ៴<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_W         ྻ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_X        𐺔<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Y        𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Z        𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _A         ៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _B         ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _C         𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _D         𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _E         ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _F         ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _G         𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _H         ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _I         ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _J         𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _K         <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _L         𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _M         ៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _N         ៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _O         ៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _P         𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Q         ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _R        _ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _S         𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _T         ꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _U         𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _V         ៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _W          ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _X         𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Y         𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _Z         𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _plA      ₊៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plB      ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plC      ₊𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plD      ₊𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plE      ₊ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plF      ₊ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plG      ₊𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plH      ₊ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plI      ₊៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plJ      ₊𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plK      ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plL      ₊𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plM      ₊៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plN      ₊៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plO      ₊៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plP      ₊𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plQ      ₊ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plR      ₊ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plS      ₊𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plT      ₊꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plU      ₊𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plV      ₊៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plW      ₊ ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plX      ₊𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plY      ₊𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plZ      ₊𛲟<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _mnA      ₋៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnB      ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnC      ₋𐫶<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnD      ₋𐼦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnE      ₋ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnF      ₋ꜰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnG      ₋𛱖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnH      ₋ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnI      ₋៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnJ      ₋𐼈<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnK      ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnL      ₋𖾘<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnM      ₋៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnN      ₋៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnO      ₋៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnP      ₋𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnQ      ₋ﻪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnR      ₋ ཱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnS      ₋𑇁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnT      ₋꛵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnU      ₋𐮀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnV      ₋៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnW      ₋ ྻ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnX      ₋𐺔<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnY      ₋𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnZ      ₋𛲟<left><right><c-r>=Eatchar('\s')<cr>


hi  link    UnicodeSBLatinU Number
syn match   UnicodeSBLatinU "[ₓ៷៱𐫶𐼦ᇀꜰ𛱖ԋ៲𐼈𖾘៳៰𐼜ﻪ𑇁𐮀꛵៴𐺔𐽀𛲟]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match   UnicodeSBLatinU " ཱ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match   UnicodeSBLatinU " ྻ" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodaSBOps Operator
syn match   UnicodaSBOps "[₊₋₌៸‹›𝅃ᶺ․｡⁎៶˷ꜟ˱˲˯˰꜁꜆꜇]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


hi  link    UnicodaSBParen Function
syn match   UnicodaSBParen "[₍₎]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

hi  link    UnicodeSBNum Number
syn match   UnicodeSBNum "[₀₁₂₃₄₅₆₇₈₉𝆗]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Greek superscript
" Many were missing!
" ᶮᐢꟸᣕ𓎆 ᩦᐡᓑ𐡏ᶸꭟᶣᵘᶺᑋ꒷ᶷᶹ˅ˇ ٚᘁ꣺ ۢᣖᵄᶛ𑁮ᶡᶩᶥ𑆳ᢦ𝅎𐺉🢗▿꒳ᐜᶭ𞲬ﱣﹼʷ
" ᴼᵒᐤ॰ᛜ૰ᣳᶦꜞ𞄷ᵜᵊᶝᶞ ꫭ𓄽 𞥇⸹ᕻᶟᵌᶳᶾᶵᖦᶪ𑪝ꭜᵑᶬᶮᶯᶶ𞄺 ົჼᓐᓒᔊᣙ𐐸𐩥𝇉𐳲𑀙𛲜𛱟꒵
" inorea <buffer> a_alpha    ᵅ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_al       ᵅ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_beta     ᵝ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_be       ᵝ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_gamma    ᵞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ga       ᵞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_delta    ᵟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_de       ᵟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_epsilon  ᵋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ep       ᵋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_zeta     ᶼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ze       ᶼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_eta      ᶯ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_et       ᶯ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_theta    ᶱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_th       ᶱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_phi      ᵠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ph       ᵠ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_phi2     𝇉<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ph2      𝇉<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_chi      ᵡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ch       ᵡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_upsilon  ᶷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_up       ᶷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_iota     ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_io       ˡ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_kappa    ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ka       ᵏ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_lambda   ᣔ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_la       ᣔ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_mu       ꭟ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_nu       ᘁ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_xi       ᶳ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_omicron  ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_on       ᵒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_pi       ꟸ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_pi2      ᶮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_rho      ᣖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_rh       ᣖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_sigma    ᣙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_si       ᣙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_tau      𑁮<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ta       𑁮<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_psi      ᶭ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_ps       ᶭ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_omega    ᐜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_om       ᐜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_nabla    ▿<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_na       ▿<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> __al       ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __be       ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ga       ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __de       ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ep       ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ze       ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __et       ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __th       ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ph       ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ch       ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __up       ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __io       ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ka       ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __la       ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mu       ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __nu       ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __xi       ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __on       ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pi       ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __pi2      ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __rh       ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __si       ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ta       𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __ps       ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __om       ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __na       ▿<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __plal     ⁺ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plbe     ⁺ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plga     ⁺ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plde     ⁺ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plep     ⁺ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plze     ⁺ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plet     ⁺ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plth     ⁺ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plph     ⁺ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plch     ⁺ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plup     ⁺ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plio     ⁺ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plka     ⁺ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plla     ⁺ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plmu     ⁺ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plnu     ⁺ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plxi     ⁺ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plon     ⁺ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plpi     ⁺ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plpi2    ⁺ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plrh     ⁺ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plsi     ⁺ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plta     ⁺𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plps     ⁺ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plom     ⁺ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plna     ⁺▿<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __mnal     ⁻ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnbe     ⁻ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnga     ⁻ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnde     ⁻ᵟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnep     ⁻ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnze     ⁻ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnet     ⁻ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnth     ⁻ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnph     ⁻ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnch     ⁻ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnup     ⁻ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnio     ⁻ˡ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnka     ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnla     ⁻ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnmu     ⁻ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnnu     ⁻ᘁ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnxi     ⁻ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnon     ⁻ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnpi     ⁻ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnpi2    ⁻ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnrh     ⁻ᣖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnsi     ⁻ᣙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnta     ⁻𑁮<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnps     ⁻ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnom     ⁻ᐜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnna     ⁻▿<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPGreekL Number
syn match   UnicodeSPGreekL "[ᵅᵝᵞᵟᵋᶼᶯᶱᵠᵡᶷᶿᶲꭟᣔᘁᶳꟸᶮᣖᣙ𑁮ᶭᐜ𝇉▿]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" ˹ᣘᣴ𝆌⌜⸀ᅀᐞ꒫ᣔᶺ⌃𞄺˄ˆᐪ⸆𐩥𝇉ꚜᴯꚝ⏷
" ³ะཇaᄐᕑaᶧ𐣾𒑋 ̐ˠ ّ ࣘ౻ ඁ ྂ⫝꒴꒶ꣲ ꤪ𐦽𐹪𘡩𝄌 𞥉𞲬
" ▿▿▽𐺉🢓
" inorea <buffer> a_Alpha    ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Al       ᴬ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Beta     ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Be       ᴮ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Gamma    ᣘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ga       ᣘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Delta    ᐞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_De       ᐞ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Epsilon  ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ep       ᴱ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Zeta     ᶽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ze       ᶽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Eta      ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Et       ᴴ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Theta    ᶿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Th       ᶿ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Iota     ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Io       ᴵ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Kappa    ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ka       ᴷ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Lambda   ⌃<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_La       ⌃<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Mu       ᴹ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Nu       ᴺ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Xi       ᶧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Omicron  ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_On       ᴼ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Pi       ᣕ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Rho      ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Rh       ᴾ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Sigma    ᄐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Si       ᄐ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Tau      ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ta       ᵀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Upsilon  𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Up       𐨗<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Phi      ᶲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ph       ᶲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Chi      ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ch       ᕽ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Psi      ꣲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Ps       ꣲ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Omega    ᵜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Om       ᵜ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Nabla    🢓<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> a_Na       🢓<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> __Al       ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Be       ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ga       ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __De       ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ep       ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ze       ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Et       ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Th       ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Io       ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ka       ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __La       ⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Mu       ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Nu       ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Xi       ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __On       ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Pi       ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Rh       ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Si       ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ta       ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Up       𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ph       ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ch       ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Ps       ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Om       ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __Na       🢓<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __plAl     ⁺ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plBe     ⁺ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plGa     ⁺ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plDe     ⁺ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plEp     ⁺ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plZe     ⁺ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plEt     ⁺ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plTh     ⁺ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plIo     ⁺ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plKa     ⁺ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plLa     ⁺⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plMu     ⁺ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plNu     ⁺ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plXi     ⁺ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plOn     ⁺ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plPi     ⁺ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plRh     ⁺ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plSi     ⁺ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plTa     ⁺ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plUp     ⁺𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plPh     ⁺ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plCh     ⁺ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plPs     ⁺ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plOm     ⁺ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __plNa     ⁺🢓<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> __mnAl     ⁻ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnBe     ⁻ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnGa     ⁻ᣘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnDe     ⁻ᐞ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnEp     ⁻ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnZe     ⁻ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnEt     ⁻ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnTh     ⁻ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnIo     ⁻ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnKa     ⁻ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnLa     ⁻⌃<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnMu     ⁻ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnNu     ⁻ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnXi     ⁻ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnOn     ⁻ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnPi     ⁻ᣕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnRh     ⁻ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnSi     ⁻ᄐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnTa     ⁻ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnUp     ⁻𐨗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnPh     ⁻ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnCh     ⁻ᕽ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnPs     ⁻ꣲ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnOm     ⁻ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> __mnNa     ⁻🢓<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSPGreekU Number
syn match   UnicodeSPGreekU "[ᣕᣘᐞ⌃ᶧᵜᄐꣲ🢓ᶽ]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Greek subscript
" ᵤ៵ﻌﻪ 𖾜ₑₔ𖽞៹ࡘㆴ₏ₙ⁁𐽑𐬓 𐴟 𐮀𐮪 𐴟 ៴⌄˯ ̬⌵ࡘ𐺝 ࣣ𖽚𖾙 ̫𖾟𛱠𛱝𛱜𐼚𐼦 ۭꮄ༝
" ഄ⇻⇹𝂷𝂸
" inorea <buffer> z_alpha    ៵<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_al       ៵<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_beta     ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_be       ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_gamma    ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ga       ᵧ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_delta    𖾜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_de       𖾜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_epsilon  𖽞<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ep       𖽞<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_zeta     ៹<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ze       ៹<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_eta      ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_et       ₙ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_theta    𛱝<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_th       𛱝<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_iota     ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_io       ₗ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_kappa    ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ka       ₖ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_lambda   𐽑<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_la       𐽑<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_mu       𐮪<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_nu       ៴<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_xi       ࡘ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_omicron  ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_on       ₒ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_pi       ₏<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_rho      ᵨ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_rh       ᵨ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_sigma    𖽚<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_si       𖽚<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_tau      𖾙<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ta       𖾙<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_upsilon  ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_up       ᵤ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_phi      ᵩ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ph       ᵩ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_chi      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ch       ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_psi      ഄ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_ps       ഄ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_omega    𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_om       𖾟<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_nabla    𝅎<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_na       𝅎<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> ___al      ៵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___be      ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ga      ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___de      𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ep      𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ze      ៹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___et      ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___th      𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___io      ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ka      ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___la      𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___mu      𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___nu      ៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___xi      ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___on      ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___pi      ₏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___rh      ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___si      𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ta      𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___up      ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ph      ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ch      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___ps      ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___om      𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___na      𝅎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _plal     ₊៵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plbe     ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plga     ₊ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plde     ₊𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plep     ₊𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plze     ₊៹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plet     ₊ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plth     ₊𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plio     ₊ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plka     ₊ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plla     ₊𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plmu     ₊𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plnu     ₊៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plxi     ₊ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plon     ₊ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plpi     ₊₏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plrh     ₊ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plsi     ₊𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plta     ₊𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plup     ₊ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plph     ₊ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plch     ₊ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plps     ₊ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plom     ₊𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plna     ₊𝅎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _mnal     ₋៵<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnbe     ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnga     ₋ᵧ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnde     ₋𖾜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnep     ₋𖽞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnze     ₋៹<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnet     ₋ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnth     ₋𛱝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnio     ₋ₗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnka     ₋ₖ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnla     ₋𐽑<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnmu     ₋𐮪<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnnu     ₋៴<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnxi     ₋ࡘ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnon     ₋ₒ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnpi     ₋₏<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnrh     ₋ᵨ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnsi     ₋𖽚<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnta     ₋𖾙<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnup     ₋ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnph     ₋ᵩ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnch     ₋ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnps     ₋ഄ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnom     ₋𖾟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnna     ₋𝅎<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBGreekL Number
syn match   UnicodeSBGreekL "[ᵦᵧᵨᵩᵪ៵𖾜𖽞៹𛱝𐽑𐮪៴ࡘ₏𖽚𖾙ഄ𝅎]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" ៱‸ꞈ𐽑𝅈𐺆𓐆𝍢𛱜᭦𐫭₏𖾕𐺝𑀙𐳲ₐ᭦ﻌᢦ𐺉𝅎▿𖾖𝅏
" inorea <buffer> z_Alpha    ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Al       ៱<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Beta     ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Be       ᵦ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Gamma    𖾖<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ga       𖾖<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Delta    𐺆<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_De       𐺆<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Epsilon  ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ep       ᇀ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Zeta     𛲟<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ze       𛲟<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Eta      ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Et       ԋ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Theta    𛱜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Th       𛱜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Iota     ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Io       ៲<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Kappa    <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ka       <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Lambda   ‸<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_La       ‸<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Mu       ៳<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Nu       ៷<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Xi       𓐆<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Omicron  ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_On       ៰<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Pi       𖾕<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Rho      𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Rh       𐼜<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Sigma    𐺝<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Si       𐺝<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Tau      𖾓<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ta       𖾓<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Upsilon  𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Up       𐽀<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Phi      𐳲<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ph       𐳲<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Chi      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ch       ᵪ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Psi      <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Ps       <left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Omega    ﻌ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Om       ﻌ<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Nabla    𐺉<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> z_Na       𐺉<left><right><c-r>=Eatchar('\s')<cr>

" Shortcuts
inorea <buffer> ___Al      ៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Be      ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ga      𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___De      𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___De2     △<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ep      ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ze      𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Et      ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Th      𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Io      ៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ka      <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___La      ‸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Mu      ៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Nu      ៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Xi      𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___On      ៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Pi      𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Rh      𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Si      𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ta      𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Up      𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ph      𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ch      ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Ps      <left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Om      ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> ___Na      𐺉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _plAl     ₊៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plBe     ₊ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plGa     ₊𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plDe     ₊𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plEp     ₊ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plZe     ₊𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plEt     ₊ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plTh     ₊𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plIo     ₊៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plKa     ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plLa     ₊‸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plMu     ₊៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plNu     ₊៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plXi     ₊𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plOn     ₊៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plPi     ₊𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plRh     ₊𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plSi     ₊𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plTa     ₊𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plUp     ₊𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plPh     ₊𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plCh     ₊ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plPs     ₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plOm     ₊ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _plNa     ₊𐺉<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _mnAl     ₋៱<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnBe     ₋ᵦ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnGa     ₋𖾖<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnDe     ₋𐺆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnEp     ₋ᇀ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnZe     ₋𛲟<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnEt     ₋ԋ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnTh     ₋𛱜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnIo     ₋៲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnKa     ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnLa     ₋‸<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnMu     ₋៳<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnNu     ₋៷<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnXi     ₋𓐆<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnOn     ₋៰<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnPi     ₋𖾕<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnRh     ₋𐼜<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnSi     ₋𐺝<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnTa     ₋𖾓<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnUp     ₋𐽀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnPh     ₋𐳲<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnCh     ₋ᵪ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnPs     ₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnOm     ₋ﻌ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mnNa     ₋𐺉<left><right><c-r>=Eatchar('\s')<cr>

hi  link    UnicodeSBGreekU Number
syn match   UnicodeSBGreekU "[៱𖾖𐺆ᇀ𛲟𛱜៲‸៳𓐆៰𖾕𐼜𐺝𖾓𐽀𐳲ᵪﻌ𐺉]" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs


inorea <buffer> ith        iᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> Ith        Iᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> nth        nᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> Nth        Nᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 0th        0ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 1st        1ˢᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 2nd        2ⁿᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 3rd        3ʳᵈ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 4th        4ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 5th        5ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 6th        6ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 7th        7ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 8th        8ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 9th        9ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 10th       10ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 11th       11ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 12th       12ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 13th       13ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 14th       14ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 15th       15ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 16th       16ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 17th       17ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 18th       18ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 19th       19ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 20th       20ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 21th       21ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 22th       22ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 23th       23ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 24th       24ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 25th       25ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 26th       26ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 27th       27ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 28th       28ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 29th       29ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 30th       30ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 31th       31ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 32th       32ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 33th       33ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 34th       34ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 35th       35ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 36th       36ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 37th       37ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 38th       38ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 39th       39ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 40th       40ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 41th       41ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 42th       42ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 43th       43ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 44th       44ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 45th       45ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 46th       46ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 47th       47ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 48th       48ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 49th       49ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 50th       50ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 51th       51ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 52th       52ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 53th       53ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 54th       54ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 55th       55ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 56th       56ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 57th       57ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 58th       58ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 59th       59ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 60th       60ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 61th       61ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 62th       62ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 63th       63ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 64th       64ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 65th       65ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 66th       66ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 67th       67ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 68th       68ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 69th       69ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 70th       70ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 71th       71ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 72th       72ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 73th       73ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 74th       74ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 75th       75ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 76th       76ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 77th       77ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 78th       78ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 79th       79ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 80th       80ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 81th       81ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 82th       82ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 83th       83ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 84th       84ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 85th       85ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 86th       86ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 87th       87ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 88th       88ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 89th       89ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 90th       90ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 91th       91ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 92th       92ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 93th       93ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 94th       94ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 95th       95ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 96th       96ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 97th       97ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 98th       98ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 99th       99ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 100th      100ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 1000th     1000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 10000th    10000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 100000th   100000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> 1000000th  1000000ᵗʰ<left><right><c-r>=Eatchar('\s')<cr>

" VINOTE: To get vectors in unicode like ᵥ⃗ or v⃗, type the char, then hold
"         ctrl-shift, and type u20d7 and release! You can then repeat the
"         vector motion on other characters with the "." command!
inorea <buffer> v_a     a⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_b     b⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_c     c⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_d     d⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_e     e⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_f     f⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_g     g⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_h     h⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_i     i⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_j     j⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_k     k⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_l     l⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_m     m⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_n     n⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_o     o⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_p     p⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_q     q⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_r     r⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_s     s⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_t     t⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_u     u⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_v     v⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_w     w⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_x     x⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_y     y⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_z     z⃗<left><right><c-r>=Eatchar('\s')<cr>

" Use small capitals ᴀʙᴄᴅᴇꜰɢʜɪᴊᴋʟᴍɴᴏᴘꞯʀꜱᴛᴜᴠᴡxʏᴢ for vectors.
inorea <buffer> v_A     ᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_B     ʙ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_C     ᴄ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_D     ᴅ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_E     ᴇ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_F     ꜰ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_G     ɢ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_H     ʜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_I     ɪ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_J     ᴊ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_K     ᴋ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_L     ʟ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_M     ᴍ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_N     ɴ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_O     ᴏ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_P     ᴘ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_Q     ꞯ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_R     ʀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_S     ꜱ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_T     ᴛ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_U     ᴜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_V     ᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_W     ᴡ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_X     x⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_Y     ʏ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_Z     ᴢ⃗<left><right><c-r>=Eatchar('\s')<cr>

"  ̅ used for not in math.
inorea <buffer> n_a     a̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_b     b̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_c     c̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_d     d̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_e     e̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_f     f̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_g     g̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_h     h̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_i     i̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_j     j̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_k     k̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_l     l̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_m     m̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_n     n̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_o     o̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_p     p̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_q     q̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_r     r̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_s     s̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_t     t̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_u     u̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_v     v̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_w     w̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_x     x̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_y     y̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_z     z̅<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> n_A     A̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_B     B̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_C     C̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_D     D̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_E     E̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_F     F̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_G     G̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_H     H̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_I     I̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_J     J̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_K     K̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_L     L̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_M     M̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_N     N̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_O     O̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_P     P̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_Q     Q̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_R     R̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_S     S̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_T     T̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_U     U̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_V     V̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_W     W̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_X     X̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_Y     Y̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> n_Z     Z̅<left><right><c-r>=Eatchar('\s')<cr>


inorea <buffer> zv_a    ₐ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_b    ⱃ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_c    ꜀⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_d    ꮷ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_e    ₑ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_f    ғ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_g    ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_h    ₕ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_i    ᵢ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_j    ⱼ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_k    ₖ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_l    ₗ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_m    ₘ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_n    ₙ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_o    ₒ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_p    ₚ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_q    ﻣ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_r    ᵣ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_s    ₛ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_t    ₜ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_u    ᵤ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_v    ᵥ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_w    𖾟⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_x    ₓ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_y    ᵧ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_z    ⳾⃗<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> v_0     0⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_1     1⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_2     2⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_3     3⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_4     4⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_5     5⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_6     6⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_7     7⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_8     8⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> v_9     9⃗<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> zv_0    ₀⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_1    ₁⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_2    ₂⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_3    ₃⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_4    ₄⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_5    ₅⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_6    ₆⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_7    ₇⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_8    ₈⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zv_9    ₉⃗<left><right><c-r>=Eatchar('\s')<cr>

" For combining hat accent ^ use u0302 instead (hat or unit vector).
inorea <buffer> uv_a    â<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_b    b̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_c    ĉ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_d    d̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_e    ê<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_f    f̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_g    ĝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_h    ĥ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_i    î<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_j    ĵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_k    ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_l    l̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_m    m̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_n    n̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_o    ô<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_p    p̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_q    q̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_r    r̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_s    ŝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_t    t̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_u    û<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_v    v̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_w    ŵ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_x    x̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_y    ŷ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_z    ẑ<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> uv_A    ᴀ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_B    ʙ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_C    ᴄ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_D    ᴅ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_E    ᴇ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_F    ꜰ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_G    ɢ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_H    ʜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_I    ɪ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_J    ᴊ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_K    ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_L    ʟ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_M    ᴍ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_N    ɴ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_O    ᴏ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_P    ᴘ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_Q    ꞯ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_R    ʀ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_S    ꜱ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_T    ᴛ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_U    ᴜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_V    ᴠ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_W    ᴡ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_X    x̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_Y    ʏ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> uv_Z    ᴢ̂<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> zuv_a   ₐ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_b   ⱃ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_c   ꜀̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_d   𑚤̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_e   ₑ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_f   ғ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_g   ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_h   ₕ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_i   ᵢ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_j   ⱼ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_k   ₖ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_l   ₗ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_m   ₘ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_n   ₙ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_o   ₒ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_p   ₚ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_q   ﻣ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_r   ᵣ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_s   ₛ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_t   ₜ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_u   ᵤ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_v   ᵥ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_w   𖾟̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_x   ₓ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_y   ᵧ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> zuv_z   ⳾̂<left><right><c-r>=Eatchar('\s')<cr>

" Vectors in comments
hi  link   UnicodeVectorsCom  AllComments
syn match  UnicodeVectorsCom  "d\?\%(.⃗\)" contains=@NoSpell  contained containedin=.*Comments.*
syn match  UnicodeVectorsCom  "\%(d⃗\)"    contains=@NoSpell  contained containedin=.*Comments.*
syn match  UnicodeVectorsCom  "\%(.̂\)"    contains=@NoSpell  contained containedin=.*Comments.*

" Vectors
hi  link      UnicodeVectors  HLBlue
syn match     UnicodeVectors  "d\?\%(.⃗\)" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match     UnicodeVectors  "\%(d⃗\)"    contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs
syn match     UnicodeVectors  "\%(.̂\)"    contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" Negation in comments
hi  link   UnicodeNotLogicCom AllComments
syn match  UnicodeNotLogicCom "[A-Z]*\%(.̅\)\+[A-Z]*" contains=@NoSpell  contained containedin=.*Comments.*

" Negation
hi  link      UnicodeNotLogic Constant
syn match     UnicodeNotLogic "[A-Z]*\%(.̅\)\+[A-Z]*" contains=@NoSpell  containedin=RegexRanges,@ClusterSpMath,vimMapRhs

" You could also use other combining unicode chars such as the overline used
" for not (u0305).
" A̅ ∨ B̅
" F⃗ F̅ F̄ F̃ F⃔ F⃡ F⃑ F᪰ F߯ F⃗ F꛱
" î k̂ k̑ k⃩ k᪴ k݅ k̀ k⃕ k͒ kͯ kٛ kࠫ k᩷ k᭯ k᷵ kⷣ kⷧ kⷽ kꙵ k꛰ k߮ k៝ k᳐ kꪲ k𐍷 k𐽊 k᳑ k𞀡 k𖬳
" kࠦ kࠧ
" https://www.compart.com/en/unicode/combining/230
" Here is a select list of some of the other combing characters:
" NOTE: You can insert combining chars like below in inorea <buffer> with:
"       <c-s-u>0300 or <c-v>u0300 (in insert mode).
" U+0300  ◌̀ `  Combining Grave Accent
inorea <buffer> o_ga  ̀<left><right><c-r>=Eatchar('\s')<cr>
" U+0301  ◌́ ' Combining Acute Accent
inorea <buffer> o_aa  ́ <left><right><c-r>=Eatchar('\s')<cr>
" U+0302  ◌̂ ^ Combining Circumflex Accent
inorea <buffer> o_^  ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_uv  ̂<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_uvec  ̂<left><right><c-r>=Eatchar('\s')<cr>
" U+0303  ◌̃ ~ Combining Tilde
inorea <buffer> o_~  ̃ <left><right><c-r>=Eatchar('\s')<cr>
" U+0304  ◌̄ - Combining Macron
inorea <buffer> o_mac  ̄<left><right><c-r>=Eatchar('\s')<cr>
" U+0305  ◌̅ _ Combining Overline, used as complement and not in math.
inorea <buffer> o__     ̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_comp  ̅<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_not   ̅<left><right><c-r>=Eatchar('\s')<cr>
" U+0306  ◌̆ u Combining Breve
inorea <buffer> o_bre  ̆<left><right><c-r>=Eatchar('\s')<cr>
" U+0307  ◌̇ . Combining Dot Above
inorea <buffer> o_dot  ̇<left><right><c-r>=Eatchar('\s')<cr>
" U+0308  ◌̈ .. Combining Diaeresis
inorea <buffer> o_ddot  ̈<left><right><c-r>=Eatchar('\s')<cr>
" U+030A  ◌̊ o Combining Ring Above
inorea <buffer> o_ring  ̊<left><right><c-r>=Eatchar('\s')<cr>
" U+030B  ◌̋ '' Combining Double Acute Accent
inorea <buffer> o_daa  ̋<left><right><c-r>=Eatchar('\s')<cr>
" U+030C  ◌̌ v Combining Caron
inorea <buffer> o_cr  ̌<left><right><c-r>=Eatchar('\s')<cr>
" U+030D  ◌̍ | Combining Vertical Line Above
inorea <buffer> o_vl  ̍<left><right><c-r>=Eatchar('\s')<cr>
" U+030E  ◌̎ '' Combining Double Vertical Line Above
inorea <buffer> o_dvl  ̎<left><right><c-r>=Eatchar('\s')<cr>
" U+030F  ◌̏ '' Combining Double Grave Accent
inorea <buffer> o_dga  ̏<left><right><c-r>=Eatchar('\s')<cr>
" U+0311  ◌̑ ^ Combining Inverted Breve
inorea <buffer> o_ib  ̑<left><right><c-r>=Eatchar('\s')<cr>
" U+0312  ◌̒ , Combining Turned Comma Above
inorea <buffer> o_tc  ̒<left><right><c-r>=Eatchar('\s')<cr>
" U+0313  ◌̓ , Combining Comma Above
inorea <buffer> o_com  ̓<left><right><c-r>=Eatchar('\s')<cr>
" U+0314  ◌̔ , Combining Reversed Comma Above
inorea <buffer> o_rc  ̔<left><right><c-r>=Eatchar('\s')<cr>
" U+0336: ◌̶ Combining long stroke overlay
inorea <buffer> o_strike  ̶<left><right><c-r>=Eatchar('\s')<cr>
" U+0335: ◌̵ Combining short stroke overlay
inorea <buffer> o_strike2  ̵<left><right><c-r>=Eatchar('\s')<cr>
" U+0337: ◌̷ Combining short solidus overlay
inorea <buffer> o_solid  ̷<left><right><c-r>=Eatchar('\s')<cr>
" U+033D  ◌̽ x Combining X Above
inorea <buffer> o_xx  ̽<left><right><c-r>=Eatchar('\s')<cr>
" U+033E  ◌̾ s Combining Vertical Tilde
inorea <buffer> o_v~  ̾<left><right><c-r>=Eatchar('\s')<cr>
" U+033F  ◌̿ __ Combining Double Overline
inorea <buffer> o_d_  ̿<left><right><c-r>=Eatchar('\s')<cr>
" U+0340  ◌̀ ' Combining Grave Tone Mark
inorea <buffer> o_gt  ̀<left><right><c-r>=Eatchar('\s')<cr>
" U+0341  ◌́ ' Combining Acute Tone Mark
inorea <buffer> o_at  ́<left><right><c-r>=Eatchar('\s')<cr>
" U+0346  ◌͆ n Combining Bridge Above
inorea <buffer> o_bri  ͆<left><right><c-r>=Eatchar('\s')<cr>
" U+034C  ◌͌ ≈ Combining Almost Equal to Above
inorea <buffer> o_aeq  ͌<left><right><c-r>=Eatchar('\s')<cr>
" U+0350  ◌͐ > Combining Right Arrowhead Above
inorea <buffer> o_ra  ͐<left><right><c-r>=Eatchar('\s')<cr>
" U+0351  ◌͑ c Combining Left Half Ring Above
inorea <buffer> o_lhr  ͑<left><right><c-r>=Eatchar('\s')<cr>
" U+0357  ◌͗ c Combining Right Half Ring Above
inorea <buffer> o_rhr  ͗<left><right><c-r>=Eatchar('\s')<cr>
" U+0363  ◌ͣ a Combining Latin Small Letter A
inorea <buffer> o_la  ͣ<left><right><c-r>=Eatchar('\s')<cr>
" U+0364  ◌ͤ e Combining Latin Small Letter E
inorea <buffer> o_le  ͤ<left><right><c-r>=Eatchar('\s')<cr>
" U+0365  ◌ͥ i Combining Latin Small Letter I
inorea <buffer> o_li  ͥ<left><right><c-r>=Eatchar('\s')<cr>
" U+0366  ◌ͦ o Combining Latin Small Letter O
inorea <buffer> o_lo  ͦ<left><right><c-r>=Eatchar('\s')<cr>
" U+0367  ◌ͧ u Combining Latin Small Letter U
inorea <buffer> o_lu  ͧ<left><right><c-r>=Eatchar('\s')<cr>
" U+0368  ◌ͨ c Combining Latin Small Letter C
inorea <buffer> o_lc  ͨ<left><right><c-r>=Eatchar('\s')<cr>
" U+0369  ◌ͩ d Combining Latin Small Letter D
inorea <buffer> o_ld  ͩ<left><right><c-r>=Eatchar('\s')<cr>
" U+036A  ◌ͪ h Combining Latin Small Letter H
inorea <buffer> o_lh  ͪ<left><right><c-r>=Eatchar('\s')<cr>
" U+036B  ◌ͫ m Combining Latin Small Letter M
inorea <buffer> o_lm  ͫ<left><right><c-r>=Eatchar('\s')<cr>
" U+036C  ◌ͬ r Combining Latin Small Letter R
inorea <buffer> o_lr  ͬ<left><right><c-r>=Eatchar('\s')<cr>
" U+036D  ◌ͭ t Combining Latin Small Letter T
inorea <buffer> o_lt  ͭ<left><right><c-r>=Eatchar('\s')<cr>
" U+036E  ◌ͮ v Combining Latin Small Letter V
inorea <buffer> o_lv  ͮ<left><right><c-r>=Eatchar('\s')<cr>
" U+036F  ◌ͯ x Combining Latin Small Letter X
inorea <buffer> o_lx  ͯ<left><right><c-r>=Eatchar('\s')<cr>
" U+07EB◌߫  Nko Combining Short High Tone
" U+07EC◌߬  Nko Combining Short Low Tone
" U+07ED◌߭  Nko Combining Short Rising Tone
" U+07EE◌߮  Nko Combining Long Descending Tone
" U+07EF◌߯  Nko Combining Long High Tone
" U+07F0◌߰  Nko Combining Long Low Tone
" U+07F1◌߱  Nko Combining Long Rising Tone
" U+07F3◌߳  Nko Combining Double Dot Above
" U+0745  ◌݅ ∴ Syriac Three Dots Above
inorea <buffer> o_3dot  ݅<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB4  ◌᪴ ∴ Combining Triple Dot
inorea <buffer> o_tdot  ᪴<left><right><c-r>=Eatchar('\s')<cr>
" U+082B  ◌ࠫ △ Samaritan Vowel Sign O
inorea <buffer> o_tri  ࠫ<left><right><c-r>=Eatchar('\s')<cr>
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
inorea <buffer> o_s^  ࠦ<left><right><c-r>=Eatchar('\s')<cr>
" U+0827◌ࠧ  Samaritan Vowel Sign U
" U+0829◌ࠩ  Samaritan Vowel Sign Long I
" U+082A◌ࠪ  Samaritan Vowel Sign I
" U+082B◌ࠫ  Samaritan Vowel Sign O
" U+082C◌ࠬ  Samaritan Vowel Sign Sukun
" U+082D◌࠭  Samaritan Mark Nequdaa
" U+1AB0  ◌᪰ ^^ Combining Doubled Circumflex Accent
inorea <buffer> o_dca^  ᪰<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB1  ◌᪱ .o. Combining Diaeresis-Ring
inorea <buffer> o_dr  ᪱<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB2  ◌᪲ ∞ Combining Infinity
inorea <buffer> o_inf  ᪲<left><right><c-r>=Eatchar('\s')<cr>
" U+1AB3  ◌᪳ ↓ Combining Downwards Arrow
inorea <buffer> o_dn  ᪳<left><right><c-r>=Eatchar('\s')<cr>
" U+1ABB  ◌᪻ () Combining Parentheses Above
inorea <buffer> o_()  ᪻<left><right><c-r>=Eatchar('\s')<cr>
" U+1ABC  ◌᪼ (()) Combining Double Parentheses Above
inorea <buffer> o_(())  ᪼<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDA  ◌ᷚ g Combining Latin Small Letter G
inorea <buffer> o_lg  ᷚ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDB  ◌ᷛ G Combining Latin Letter Small Capital G
inorea <buffer> o_lG  ᷛ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDC  ◌ᷜ k Combining Latin Small Letter K
inorea <buffer> o_lk  ᷜ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDD  ◌ᷝ l Combining Latin Small Letter L
inorea <buffer> o_ll  ᷝ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDE  ◌ᷞ L Combining Latin Letter Small Capital L
inorea <buffer> o_lL  ᷞ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DDF  ◌ᷟ M Combining Latin Letter Small Capital M
inorea <buffer> o_lM  ᷟ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE0  ◌ᷠ n Combining Latin Small Letter N
inorea <buffer> o_ln  ᷠ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE1  ◌ᷡ N Combining Latin Letter Small Capital N
inorea <buffer> o_lN  ᷡ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE2  ◌ᷢ R Combining Latin Letter Small Capital R
inorea <buffer> o_lR  ᷢ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE3  ◌ᷣ R Combining Latin Small Letter R Rotunda
inorea <buffer> o_rtd  ᷣ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE4  ◌ᷤ s Combining Latin Small Letter S
inorea <buffer> o_ls  ᷤ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE6  ◌ᷦ z Combining Latin Small Letter Z
inorea <buffer> o_lz  ᷦ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE7  ◌ᷧ a Combining Latin Small Letter Alpha
inorea <buffer> o_alpha  ᷧ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE8  ◌ᷨ b Combining Latin Small Letter B
inorea <buffer> o_lb  ᷨ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DE9  ◌ᷩ β Combining Latin Small Letter Beta
inorea <buffer> o_beta  ᷩ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEA  ◌ᷪ e Combining Latin Small Letter Schwa
inorea <buffer> o_inve  ᷪ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEB  ◌ᷫ f Combining Latin Small Letter F
inorea <buffer> o_lf  ᷫ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEE  ◌ᷮ p Combining Latin Small Letter P
inorea <buffer> o_lp  ᷮ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DEF  ◌ᷯ ∫ Combining Latin Small Letter Esh
inorea <buffer> o_int  ᷯ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF0  ◌ᷰ μ Combining Latin Small Letter U with Light Centralization Stroke
inorea <buffer> o_mu  ᷰ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF1  ◌ᷱ w Combining Latin Small Letter W
inorea <buffer> o_lw  ᷱ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF2  ◌ᷲ a Combining Latin Small Letter A with Diaeresis
inorea <buffer> o_ad  ᷲ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF3  ◌ᷳ o Combining Latin Small Letter O with Diaeresis
inorea <buffer> o_od  ᷳ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF4  ◌ᷴ u Combining Latin Small Letter U with Diaeresis
inorea <buffer> o_ud  ᷴ<left><right><c-r>=Eatchar('\s')<cr>
" U+1DF5  ◌᷵ _|_ Combining Up Tack Above
inorea <buffer> o_tack  ᷵<left><right><c-r>=Eatchar('\s')<cr>
" U+1DFE  ◌᷾ < Combining Left Arrowhead Above
inorea <buffer> o_<<  ᷾<left><right><c-r>=Eatchar('\s')<cr>
" U+20D0  ◌⃐ _ Combining Left Harpoon Above
inorea <buffer> o_hl  ⃐<left><right><c-r>=Eatchar('\s')<cr>
" U+20D1  ◌⃑ _ Combining Right Harpoon Above
inorea <buffer> o_hr  ⃑<left><right><c-r>=Eatchar('\s')<cr>
" U+20D4  ◌⃔ <- Combining Anticlockwise Arrow Above
inorea <buffer> o_ar  ⃔<left><right><c-r>=Eatchar('\s')<cr>
" U+20D5  ◌⃕ -> Combining Clockwise Arrow Above vector
inorea <buffer> o_ca   ⃕<left><right><c-r>=Eatchar('\s')<cr>
" U+20D6  ◌⃖ <- Combining Left Arrow Above
inorea <buffer> o_<--  ⃖<left><right><c-r>=Eatchar('\s')<cr>
" U+20D7  ◌⃗ -> Combining Right Arrow Above
inorea <buffer> o_->   ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_-->  ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> o_vec  ⃗<left><right><c-r>=Eatchar('\s')<cr>
" U+20DB  ◌⃛ ... Combining Three Dots Above
inorea <buffer> o_dddot  ⃛<left><right><c-r>=Eatchar('\s')<cr>
" U+20DC  ◌⃜ .... Combining Four Dots Above
inorea <buffer> o_ddddot  ⃜<left><right><c-r>=Eatchar('\s')<cr>
" U+20E1  ◌⃡ <-> Combining Left Right Arrow Above
inorea <buffer> o_<>  ⃡<left><right><c-r>=Eatchar('\s')<cr>
" U+20E7  ◌⃧ ‾| Combining Annuity Symbol
inorea <buffer> o_-\|  ⃧<left><right><c-r>=Eatchar('\s')<cr>
" U+20E9  ◌⃩ ‾ Combining Wide Bridge Above
inorea <buffer> o_wbri  ⃩<left><right><c-r>=Eatchar('\s')<cr>
" U+20F0  ◌⃰ * Combining Asterisk Above
inorea <buffer> o_*  ⃰<left><right><c-r>=Eatchar('\s')<cr>
" U+A6F0  ◌꛰  Bamum Combining Mark Koqndon
" U+A6F1  ◌꛱  Bamum Combining Mark Tukwentis

" Clusters
"------------------------------------------------------------------------------
syn cluster ClusterUnicode add=Unicode.*
"------------------------------------------------------------------------------

