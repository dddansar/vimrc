"==============================================================================
" File: math.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for math text files.
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


" NOTE: Removed guard so that syntax gets reloaded if file was reloaded.
" Exit if the file was already loaded
" if exists("b:math_loaded")
"    finish
" endif
if exists("b:disable_after_syntax")
   finish
endif
if !exists("g:syntax_on")
   finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif
if exists("g:debug_syntax")
   echom "math.vim syntax file loaded"
endif
let b:math_loaded = 1


" NOTE: See also math_mappings.vim for Unicode math mappings from leanprover
"       vscode that start with "\".

" WARNING: Can slow down/reduce performance!!
" NOTE: I tried creating a simpler version of this, but it wasn't worth it,
"       you still get a performance hit, and you either want the highlighting
"       done properly or you don't want it at all, so you can't really cut
"       corners.
function! MathMatches()
if g:performance_mode <= 0

   " Disable syntax while holding pageup/pagedown, re-enable on CursorHold.
   " Used to improve scrolling performance and speed.
   " nnoremap <pageup>   :let g:syntax_disabled = 1<cr>:syntax clear<cr><pageup>
   " nnoremap <pagedown> :let g:syntax_disabled = 1<cr>:syntax clear<cr><pagedown>

   " NOTE: \%#=N at the very start of a pattern forces which regex engine Vim uses for that pattern:
   "     \%#=0: automatic (the default; Vim picks)
   "     \%#=1: the old backtracking engine
   "     \%#=2: the newer NFA engine
   " The NFA engine is generally faster on complex patterns, but the backtracking engine can win on short, simple ones.
   " It must be the first thing in the pattern.
   " The global equivalent is :set regexpengine=1, but the per-pattern prefix lets you test one match at a time.

   " Match single chars.
   "---------------------------------------------------------------------------
   " Match single character in its own word.
   " NOTE: Vim's word-boundary atoms `\<`/`\>` are not matching some Unicode
   " chars while it matches others... so `ˣ` is invisible to them as a boundary
   " marker -> using \w\@<! instead of \< and \w\@! instead of \>
   " NOTE: \w\@<! over \W\@<=, because \W\@<= does not match start of line ^
   "       so it needs to be \%(\W\|^\)\@<= instead and \%(\W\|^\)\zs with \zs
   "       still does not properly match if preceding char was matched
   "       elsewhere even with old Vim engine \%#=1...
   " 16ˣ × 7ˣ
   " ˣ16 × ˣ7
   " aˣ × aˣ
   " ˣa × ˣa
   " Δy aᵐbᵐ ᵇa aᵇ 2πr ᵥ⃗f ∥s' μi e⁻ˣxᵗ⁻¹
   " aᵐbᵐ

   hi  link    SpMathSingleChar    Constant
   syn match   SpMathSingleChar    "\%#=1\w\@<![b-zB-HJ-Z]\w\@!" contains=@NoSpell

   syn match   SpMathNotSingleChar "\%#=1(\@<=s)\@=" contains=@NoSpell
   syn match   SpMathNotSingleChar "\%#=1'[dstm]\%([ :;,?!.>)\]]\|$\)\@=" contains=@NoSpell

   " Match I a A under certain conditions
   hi  link    SpMathSingleCharIaA1 Constant
   hi  link    SpMathSingleCharIaA2 Constant
   hi  link    SpMathSingleCharIaA3 Constant
   syn match   SpMathSingleCharIaA1 "\%#=1\%(^ *\|[!.?:;,] \|[a-zA-Z][a-z] \|\w\| (\)\@<![IaA]\w\@!" contains=@NoSpell

   syn match   SpMathSingleCharIaA2 "\%#=1\w\@<![IaA]\%(\w\| \%([a-zA-Z'"(][a-zA-Z'"(0-9]\|[0-9]\)\|'\%([dm]\|ve\|ll\)\>\)\@!" contains=@NoSpell
   syn match   SpMathSingleCharIaA3 "\%#=1\w\@<![aA]\%( \%(was\|then\)\>\)\@=" contains=@NoSpell
   syn match   SpMathSingleCharIaA3 "\%#=1\w\@<![IaA]\%( \%(and\|o[rn]\|n\%(and\|o[rt]\|\)\|x\%(or\|nor\)\|exists\|with\|has\|but\|to\|i\%(mplies\|[ns]\)\|are\)\>\)\@=" contains=@NoSpell

   hi  link    SpMathSingleCharIaA4 Constant
   syn match   SpMathSingleCharIaA4 "\%#=1\%(\w\)\@<= A\>" contains=@NoSpell
   syn match   SpMathSingleCharIaA4 "\%#=1\<[Tt]he [IaA]\>" contains=@NoSpell
   " Ignore spell check on "the" followed by "a" like in "the a variable".
   syn match   SpMathSingleCharThe  "\%#=1\<[Tt]he\>" contains=@NoSpell contained containedin=SpMathSingleCharIaA4

   hi  link    SpMathNumberedVar Constant
   syn match   SpMathNumberedVar "\%#=1\w\@<![a-z][0-9]\+\w\@!" contains=@NoSpell

   " Re-match stuff like 2x, 10X, 5y, 123xyz, 3D.
   " Match math variables that are preceded by a number.
   hi  link    SpMathNumInVar   Number
   syn match   SpMathNumInVar   "\%#=1\w\@<![0-9]\+\%([eE][-+±∓]\?[0-9]\)\@!"   contains=@NoSpell contained containedin=SpMathVarInNum,SpMathFunctions

   hi  link    SpMathVarInNum   Constant
   syn match   SpMathVarInNum   "\%#=1\<[0-9]\+\%(\%('s\>\)\@=\|[a-zA-Z]\%(\<0x\)\@<![a-zA-Z]*\w\@!\%(\%([0-9][eE]\)\@<!\|\%([-+±∓]\)\@!\)\)" contains=@NoSpell,SpMathNumInVar
   syn match   SpMathVarInNum   "\%#=1\<[0]x\>" contains=@NoSpell,SpMathNumInVar

   " Match x when it mean multiplication or hex number.
   " Not SpMathXInNum to not get included in SpUnicodeNoSpell
   hi  link    MathXInNum     Function
   syn match   MathXInNum     "\%#=1x" contained contains=@NoSpell

   " Matches numbers with x in them
   " Matches 2x32             3.14x2            0.12x328
   " Matches 329x10^32        32x10^-32         32x10^32
   " Matches 0.329x10^+32     0.32x10^-32       0.32x10^32
   " Matches 2332.329x10^-32  2323.32x10^+32    2332.32x10^32
   " Matches 2332.329x10^+32  2323.32x10^-32
   hi  link    SpMathNumWithX   Number
   syn match   SpMathNumWithX   "\%#=1\%(\<\d\+\%(\.\d\+\)\?\|N\)\%(x[0-9]\+\)\+\w\@!" contains=@NoSpell,MathXInNum
   " SpMathNumWithX2 does not work when merged in SpMathNumWithX/MathXInNum...
   hi  link    SpMathNumWithX2  Number
   syn match   SpMathNumWithX2  "\%#=1\%(×\)\@<=[0-9]\+\w\@!" contains=@NoSpell,MathXInNum,UnicodeOperators2

   " Matches the dot followed by a number but not preceded by one.
   " Matches the dot in: .329E+32    .62E-32    .92  .82E32
   " Matches the dot in: .129x10^32  .52x10^32  .12  .92x10^32
   " Matches the dot in: .229^32     .42^32     .3   .02^32
   hi  link    SpMathDotWithNum  Number
   syn match   SpMathDotWithNum  "\%#=1\%( \|^\)\@<=\.\%([0-9]\)\@=" contains=@NoSpell

   " Derivatives
   hi  link    SpMathDeriv      Constant
   syn match   SpMathDeriv      "\%#=1\w\@<!d[a-np-zA-Z]\w\@!\%(-\)\@!"  contains=@NoSpell
   syn match   SpMathDeriv      "\%#=1\w\@<!d\%(xdy\%(dz\)\?\|xdz\|ydz\|rdф\%(dθ\)\?\|rdθ\%(dф\)\?\|udv\%(dw\)\?\)\w\@!"  contains=@NoSpell

   hi  link    SpMathDeriv2     Constant
   syn match   SpMathDeriv2     "\%#=1\w\@<![a-zA-Z]\>\%(['′] \)\@="  contains=@NoSpell

   " Highlight common math multi-variables.
   hi  link    SpMathMultiVars1 Constant
   syn match   SpMathMultiVars1 "\%#=1\w\@<!\%(np\?\|[a-cm-n][xz]\|[acn][y]\|ijk\?\|jk\|ik\|abc\?d\?e\?\)\w\@!" contains=@NoSpell
   syn match   SpMathMultiVars1 "\%#=1\w\@<![a-w]\?\%(xy\|yz\|xz\|xyz\)\w\@!" contains=@NoSpell

   " Highlight math variables - any 2 chars surrounded by non chars.
   hi  link    SpMathMultiVars2 Constant
   syn match   SpMathMultiVars2 "\%#=1\w\@<![a-zA-Z][a-zA-Z]\%( \?\w\)\@!" contains=@NoSpell

   syn keyword SpMathNotMultiVars2 Ie ie If if In in Is is It it vs We we An an As as At at to so be un up us Re re Ok ok On on Of of Or or He he
   syn match   SpMathNotMultiVars2 "\%#=1\<by\>"
   syn match   SpMathMultiVars2 "\%#=1\%(\w \?\)\@<!by\%( \?\w\)\@!" contains=@NoSpell

   hi  link    SpMathMultiVars3 Constant
   syn match   SpMathMultiVars3 "\%#=1\w\@<!\w\%(.⃗\)\@=" contains=@NoSpell  containedin=RegexRanges

   " Match imaginary i
   hi  link    Mathi Constant
   syn match   Mathi "\w\@<!i" contains=@NoSpell contained containedin=SpMathFunctions

   " Match more functions.
   hi  link    SpMathFunctions  Function
   syn match   SpMathFunctions  "\%#=1\w\@<![f-hF-H]\d*\>\%(['′]\?['′]\?(\)\@="  contains=@NoSpell,Conditional

   " Highlight math terms/functions.
   syn match   SpMathFunctions  "\%#=1\w\@<!\%(mod\|lim\|log\|ln\)\w\@!" contains=@NoSpell
   syn match   SpMathFunctions  "\%#=1\w\@<![0-9]*i\?\%(sinh\?\|cosh\?\|tanh\?\|sech\?\|coth\?\|csch\?\|arctanh\?\|cosech\?\)\w\@!" contains=@NoSpell,SpMathNumInVar
   syn match   SpMathFunctions  "\%#=1\w\@<!\%(curl\|grad\|div\|rot\|proj\|det\)\w\@!" contains=@NoSpell,SpMathNumInVar
   "---------------------------------------------------------------------------

   " Clusters
   "---------------------------------------------------------------------------
   syn cluster ClusterSpMath add=SpMath.*
   "---------------------------------------------------------------------------
endif
endfunction


"---------------------------
" Common math abbreviations
"---------------------------

" NOTE: <buffer> makes abbrev local to the current buffer instead of global.

" Common pi
inorea <buffer> _pr2       πr²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pr3       πr³<left><right><c-r>=Eatchar('\s')<cr>

" Common square roots
inorea <buffer> _sqrh      √(r²+h²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sqab      √(a²+b²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sqxy      √(x²+y²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sqabc     √(a²+b²+c²)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _nsq       ⁿ√<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3sq       ³√<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _4sq       ⁴√<left><right><c-r>=Eatchar('\s')<cr>

" Distance btw 2 points
inorea <buffer> _dist      √((x₁-x₂)²+(y₁-y₂)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _distv     ∥x⃗₁-x⃗₂∥²
" 3D Distance formula
inorea <buffer> _3ddist    √((x₁-x₂)²+(y₁-y₂)²+(z₁-z₂)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dist3     √((x₁-x₂)²+(y₁-y₂)²+(z₁-z₂)²)<left><right><c-r>=Eatchar('\s')<cr>

" Geometry
inorea <buffer> _circ      (x-h)²+(y-k)²=r²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _circr     r=√((x-h)²+(y-k)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ell       (x-h)²/a²+(y-k)²/b²=1<left><right><c-r>=Eatchar('\s')<cr>

" 2D line
inorea <buffer> _slope     m=(y₂-y₁)/(x₂-x₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _line      y=y₀+m(x-x₀)<left><right><c-r>=Eatchar('\s')<cr>

" Quadratic equations and solutions
inorea <buffer> _quad      y=ax²+bx+c<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _quads     x=(-b±√(b²-4ac))/(2a)<left><right><c-r>=Eatchar('\s')<cr>

" Cubic function
inorea <buffer> _cub       y=ax³+bx²+cx+d<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cubic     y=ax³+bx²+cx+d<left><right><c-r>=Eatchar('\s')<cr>

" Complete the square
inorea <buffer> _csq       x²+bx+c = (x+(b/2))² - b²/4 + c<left><right><c-r>=Eatchar('\s')<cr>

" Exponential and logarithm equations
inorea <buffer> _exp2      aᵇaᶜ=aᵇ⁺ᶜ ; aᵇ/aᶜ=aᵇ⁻ᶜ ; (aᵇ)ᶜ=aᵇᶜ ; a¹ᐟᵇ=ᵇ√a ; a⁻ⁿ=1/aⁿ ; (ab)ᵐ= aᵐbᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _exp       aᵇaᶜ=aᵇ⁺ᶜ ; aᵇ/aᶜ=aᵇ⁻ᶜ ; (aᵇ)ᶜ=aᵇᶜ ; a¹ᵇ=ᵇ√a ; a⁻ⁿ=1/aⁿ ; (ab)ᵐ= aᵐbᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _log2      logₐx=y->bʸ=x ; logₐ(xy)=logₐx+logₐy ; logₐ(xⁿ)=n logₐ(x) ; logₐ(x)=log꜀(x)/log꜀(a) ; log(x)=log₁₀x ; ln(x)=logₑx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _log       logₐx=y->bʸ=x ; logₐ(xy)=logₐx+logₐy ; logₐ(xⁿ)=n logₐ(x) ; logₐ(x)=log(x)/log(a) ; log(x)=log₁₀x ; ln(x)=logₑx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _transpose det(Aᵀ) = det(A) ; (AB)ᵀ = BᵀAᵀ ; (ABC)ᵀ = CᵀBᵀAᵀ ; (A+B)ᵀ = Aᵀ+Bᵀ ; (Aᵀ)⁻¹ = (A⁻¹)ᵀ; Rank(A) = rank(Aᵀ)<left><right><c-r>=Eatchar('\s')<cr>

" Midpoint between 2 points
inorea <buffer> _midp      m = ((x₁+x₂)/2, (y₁+y₂)/2)<left><right><c-r>=Eatchar('\s')<cr>

" Euler's formula and identity
inorea <buffer> _eulerf    eⁱˣ=cos(x)+isin(x)<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> _euleri    eⁱꟸ=-i<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> _euleri2   eⁱꟸ+i=0<left><right><c-r>=Eatchar('\s')<cr>
" inorea <buffer> _euleri    eⁱ+i=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _euler2    eⁱꟸ+i=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _euler     eⁱ+i=0<left><right><c-r>=Eatchar('\s')<cr>

" Common e exponents
inorea <buffer> _eipi2     eⁱꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eipi      eⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e2pi2     e²ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e2pi      e²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e2pii2    e²ꟸⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _e2pii     e²ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eith      eⁱᶿ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _eix       eⁱˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _emkt      e⁻ᵏᵗ<left><right><c-r>=Eatchar('\s')<cr>

" Pythagorean theorem
inorea <buffer> _pyth      a²+b²=c²<left><right><c-r>=Eatchar('\s')<cr>

" Trigonometric identity - Pythagorean Identity
inorea <buffer> _trig      cos²(θ)+sin²(θ)=1<left><right><c-r>=Eatchar('\s')<cr>

" Law of cosines:
inorea <buffer> _cosl      c²=b²+a²-2ab*cos(C)<left><right><c-r>=Eatchar('\s')<cr>

" Cosine of double angle:
inorea <buffer> _cos2x     cos(2x) = cos²(x)-sin²(x) = 2cos²(x)-1 = 1-2sin²(x)<left><right><c-r>=Eatchar('\s')<cr>

" sin²(θ) and cos²(θ) formulas:
inorea <buffer> _sin2      sin²(θ)=(1-cos(2θ))/2<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cos2      cos²(θ)=(1+cos(2θ))/2<left><right><c-r>=Eatchar('\s')<cr>

" Common ranges involving pi
inorea <buffer> _rpi2      -π/2 ≤ θ ≤ π/2<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _r2pi      0 ≤ θ < 2π<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _rpi       0 ≤ θ ≤ π<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _mempi2    ∈[-π/2,π/2]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mempi     ∈[0,π],<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mem2pi    ∈[0,2π],<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mem0inf   ∈[0,∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meminf0   ∈(-∞,0]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memminf0  ∈(-∞,0]<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meminf    ∈(-∞,∞)<left><right><c-r>=Eatchar('\s')<cr>

" Common member sets
inorea <buffer> _memn      ∈ℕ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memz      ∈ℤ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memq      ∈ℚ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memr      ∈ℝ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memi      ∈𝕀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _memc      ∈ℂ<left><right><c-r>=Eatchar('\s')<cr>

" Formal definitions
inorea <buffer> _defd2     f'(x) = limₕ₋›₀ (f(x+h) - f(x))/h<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defd      f'(x) = limₕ₀ (f(x+h) - f(x))/h<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdel2   ∂f/∂x(a,b) = lim△ₓ₋›₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdel    ∂f/∂x(a,b) = limₓ₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defpd2    ∂f/∂x(a,b) = lim△ₓ₋›₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defpd     ∂f/∂x(a,b) = limₓ₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdiv2   div F(x,y,z) = lim(R(x,y,z)->0) 1/\|R(x,y,z)\| ∫∫ₛꜰ⃗.n⃗ dΣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdiv    div F(x,y,z) = lim₍₍ₓ₎₀₎ 1/\|R(x,y,z)\| ∫∫ₛꜰ⃗.n⃗ dΣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdcurl2 curl F(x,y,z).[ĵ,î,k̂]ᵀ = lim(\|A(x,y,z).î\|->0) 1/\|A(x,y,z)\| ∮꜀ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _defdcurl  curl F(x,y,z).[ĵ,î,k̂]ᵀ = lim₍₍ₓ₎ᵢ̂₀₎ 1/\|A(x,y,z)\| ∮ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>

" Dot product
inorea <buffer> _dotp2     a⃗.b⃗ = ∑(ₙ₌₁:៷)aₙbₙ = ∥a⃗∥∥b⃗∥cosθ = scalar<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dotp      a⃗.b⃗ = ∑₍ₙ₌₁₎aₙbₙ = ∥a⃗∥∥b⃗∥cosθ = scalar<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vecdiff   ∥a⃗-b⃗∥ = ∥a⃗∥²+∥b⃗∥² - 2∥a⃗∥∥b⃗∥cosθ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vamb      ∥a⃗-b⃗∥ = ∥a⃗∥²+∥b⃗∥² - 2∥a⃗∥∥b⃗∥cosθ<left><right><c-r>=Eatchar('\s')<cr>

" Inequalities
inorea <buffer> _ineqd     \|a⃗.b⃗\| ≤ ∥a⃗∥.∥b⃗∥<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ineqp     ∥a⃗+b⃗∥ ≤ ∥a⃗∥+∥b⃗∥<left><right><c-r>=Eatchar('\s')<cr>

" Cross product
inorea <buffer> _crossm    <space><bs>      ⎡a₂b₃-b₂a₃⎤<cr><esc>ia⃗×b⃗ = ⎢a₃b₁-b₃a₁⎥<cr>      ⎣a₁b₂-b₁a₂⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varea     ∥a⃗×b⃗∥=∥a⃗∥∥b⃗∥sinθ<left><right><c-r>=Eatchar('\s')<cr>

" Identity matrix
inorea <buffer> _id3       <space><bs>     ⎡1 0 0⎤<cr><esc>iI₃ = ⎢0 1 0⎥<cr>     ⎣0 0 1⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _id2       <space><bs>     ⎡1 0⎤<cr><esc>iI₂ = ⎣0 1⎦<left><right><c-r>=Eatchar('\s')<cr>

" Eigenvectors and eigenvalues
inorea <buffer> _eigen     T(v⃗) = λv⃗ = Av⃗ ; v⃗ is an eigenvector for T and A, λ is an eigenvalue associated with that eigenvector.<left><right><c-r>=Eatchar('\s')<cr>

" Gradient, divergence, curl
inorea <buffer> _grad      grad ꜰ⃗ = ∇ꜰ⃗ = (∂f/∂x, ∂f/∂y, ∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gradn     grad u⃗ = ∇u⃗ = (∂f/∂x₁, ∂f/∂x₂, ... ,∂f/∂xₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _divg      div ꜰ⃗ = ∇.ꜰ⃗ = ∂P/∂x + ∂Q/∂y + ∂R/∂z<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _curl      curl ꜰ⃗ = ∇×ꜰ⃗ = (∂R/∂z - ∂Q/∂y)î + (∂P/∂x - ∂R/∂z)ĵ + (∂Q/∂y∂ - ∂P/∂x)ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>

" Laplacian operator
inorea <buffer> _laplacian ∇²f = ∂²f/∂x² + ∂²f/∂y² + ∂²f/∂z²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _laop      ∇²f = ∂²f/∂x² + ∂²f/∂y² + ∂²f/∂z²<left><right><c-r>=Eatchar('\s')<cr>

" Fourier transform
inorea <buffer> _ft2       F(W) = 1/2π ∫(-∞:∞)e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ft        F(W) = 1/2π ∫₍₋₎e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fourier2  F(W) = 1/2π ∫(-∞:∞)e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fourier   F(W) = 1/2π ∫₍₋₎e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ift2      f(t) = ∫(-∞:∞)eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ift       f(t) = ∫₍₋₎eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ifourier2 f(t) = ∫(-∞:∞)eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ifourier  f(t) = ∫₍₋₎eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>

" Laplace transform
inorea <buffer> _lp2       ℒ{f(t)} = F(S) = ∫(₀:∞)e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lp        ℒ{f(t)} = F(S) = ∫₍₀₎e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _laplace2  ℒ{f(t)} = F(S) = ∫(₀:∞)e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _laplace   ℒ{f(t)} = F(S) = ∫₍₀₎e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ilp2      ℒ⁻¹{F(S)} = f(t) = 1/2πi ∫(ₐ₋ᵢ∞:ₐ₊ᵢ∞)eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ilp       ℒ⁻¹{F(S)} = f(t) = 1/2πi ∫₍ₐ₋ᵢₐ₊ᵢ₎eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ilaplace2 ℒ⁻¹{F(S)} = f(t) = 1/2πi ∫(ₐ₋ᵢ∞:ₐ₊ᵢ∞)eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _ilaplace  ℒ⁻¹{F(S)} = f(t) = 1/2πi ∫₍ₐ₋ᵢₐ₊ᵢ₎eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>

" Step, delta function
inorea <buffer> _stepf2    u꜀(t) = ⎧0, t < c<cr>        ⎩1, t ≥ c<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stepf     u(t) = ⎧0, t < c<cr>        ⎩1, t ≥ c<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _deltaf    δ(t) = ⎧∞, x = 0<cr>       ⎩0, x ≠ 0<left><right><c-r>=Eatchar('\s')<cr>

" Convolution
inorea <buffer> _conv      (f∗g)(t) = ∫(₀:ₜ)f(t-τ)g(τ)∂τ<left><right><c-r>=Eatchar('\s')<cr>

" Linear, non linear, homogeneous, non homogeneous differential Equations
inorea <buffer> _hde1      y'+p(x)y=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lde1      y'+p(x)y=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlde1     y'=p(x,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hde2      y''+p(x)y'+q(x)y=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lde2      y''+p(x)y'+q(x)y=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlde2     y''=f(x,y,y')<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hden      aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lden      aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlden     y⁽ⁿ⁾=f(y⁽ⁿ⁻¹⁾,...,y⁽¹⁾,y⁽⁰⁾,x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _hde       aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=0<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lde       aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _nlde      y⁽ⁿ⁾=f(y⁽ⁿ⁻¹⁾,...,y⁽¹⁾,y⁽⁰⁾,x)<left><right><c-r>=Eatchar('\s')<cr>


" Change of variables
inorea <buffer> _2cv2      ∫∫ ཱf(x,y)dxdy=∫∫ₛf(x(u,v),y(u,v))\|∂(x,y)/∂(u,v)\|du.dv<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2cv       ∫∫f(x,y)dxdy=∫∫ₛf(x(u,v),y(u,v))\|∂(x,y)/∂(u,v)\|du.dv<left><right><c-r>=Eatchar('\s')<cr>

" Polar coordinates
" inorea <buffer> _2pol      ∫∫ ཱf(x,y)dxdy=∫(៵:ᵦ)∫(₍𛱝₎:ₕ₍𛱝₎)f(r cos θ, r sin θ) r drdθ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2pol2     ∫∫ ཱf(x,y)dxdy=∫∫f(r.cosθ,r.sinθ) r.drdθ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2pol      ∫∫f(x,y)dxdy=∫∫f(r.cosθ,r.sinθ) r.drdθ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3pol2     ∫∫∫𛱖f(x,y,z)dxdydz=∫∫∫ₛf(r.sinθcosф,r.sinθsinф,r.cosθ) r²sinθ drdθdф<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3pol      ∫∫∫f(x,y,z)dxdydz=∫∫∫ₛf(r.sinθcosф,r.sinθsinф,r.cosθ) r²sinθ drdθdф<left><right><c-r>=Eatchar('\s')<cr>

" Change of variables
inorea <buffer> _3cv2      ∫∫∫𛱖f(x,y,z)dxdydz=∫∫∫ₛf(x(u,v,w),y(u,v,w),z(u,v,w))\|∂(x,y,z)/∂(u,v,w)\|du.dv.dw<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _3cv       ∫∫∫f(x,y,z)dxdydz=∫∫∫ₛf(x(u,v,w),y(u,v,w),z(u,v,w))\|∂(x,y,z)/∂(u,v,w)\|du.dv.dw<left><right><c-r>=Eatchar('\s')<cr>

" Surface integral
inorea <buffer> _sint2       A = ∫∫ₛdꜱ⃗ = ∫∫꛵∥∂r⃗/∂x × ∂r⃗/∂y∥dᴀ⃗ = ∫∫꛵√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sint        A = ∫∫ₛdꜱ⃗ = ∫∫∥∂r⃗/∂x × ∂r⃗/∂y∥dᴀ⃗ = ∫∫√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _surfaceint2 A = ∫∫ₛdꜱ⃗ = ∫∫꛵∥∂r⃗/∂x × ∂r⃗/∂y∥dᴀ⃗ = ∫∫꛵√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _surfaceint  A = ∫∫ₛdꜱ⃗ = ∫∫∥∂r⃗/∂x × ∂r⃗/∂y∥dᴀ⃗ = ∫∫√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Line integrals
inorea <buffer> _greens2   ∮ꜰ⃗₁dx+ꜰ⃗₂dy=∫∫𐼦(∂ꜰ⃗₂/∂x-∂ꜰ⃗₁/∂y)dᴀ⃗=∫𐫶ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _greens    ∮ꜰ⃗₁dx+ꜰ⃗₂dy=∫∫(∂ꜰ⃗₂/∂x-∂ꜰ⃗₁/∂y)dᴀ⃗=∫ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stokes2   ∮𐫶ꜰ⃗.dr⃗ = ∫∫ₛcurl(ꜰ⃗).dꜱ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _stokes    ∮ꜰ⃗.dr⃗ = ∫∫ₛcurl(ꜰ⃗).dꜱ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Flux integrals
inorea <buffer> _flux      Flux = ∫∫ₛꜰ⃗.dꜱ⃗ = ∫∫∫ᵥdivꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flux3d    Flux = ∫∫ₛꜰ⃗.dꜱ⃗ = ∫∫∫ᵥdivꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flux2d2   Flux = ∫𐫶ꜰ⃗.n⃗dꜱ⃗ =  ∫∫𐼦divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _flux2d    Flux = ∫ꜰ⃗.n⃗dꜱ⃗ =  ∫∫divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _divg3d    Flux = ∫∫ₛꜰ⃗.dꜱ⃗ = ∫∫∫ᵥdivꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _divg2d2   Flux = ∫𐫶ꜰ⃗.n⃗dꜱ⃗ =  ∫∫𐼦divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _divg2d    Flux = ∫ꜰ⃗.n⃗dꜱ⃗ =  ∫∫divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Population growth, logistic growth, temperature change
inorea <buffer> _popg      dP/dt = k.P -> ∫1/P dP = ∫k.dt -> P = ±C.eᵏᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _logg      dN/dt = r.N(K-N) -> N(t) = N₀K/((K-N₀)e⁻ʳᵗ + N₀)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tempc     dT/dt = -K(T-Tₐ) -> T(t) = ±C.e⁻ᵏᵗ + Tₐ<left><right><c-r>=Eatchar('\s')<cr>

" Exact equations
inorea <buffer> _exact     d/dx Ψ(x,y) = ∂Ψ/∂x + ∂Ψ/∂y * ∂y/∂x = Ψₓ<left><right><c-r>=Eatchar('\s')<cr>

" Jacobian transformation
inorea <buffer> _jacobian  \|∂(x,y,z)/∂(u,v,w)\| = \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _jacob     \|∂(x,y,z)/∂(u,v,w)\| = \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>

" Hessian Matrix
inorea <buffer> _hessian   Hf = ⎡∂²f/∂x₁∂x₁ ... ∂²f/∂x₁∂x៷⎤<cr>     ⎢     .              .    ⎥<cr>⎢     .              .    ⎥<cr>⎣∂²f/∂x៷∂x₁ ... ∂²f/∂x៷∂x៷⎦<left><right><c-r>=Eatchar('\s')<cr>

" Del matrices
inorea <buffer> _3delm     \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _2delm     \|∂x/∂u ∂x/∂v\|<cr>\|∂y/∂u ∂y/∂v\|<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _delm      \|∂x/∂u ∂x/∂v\|<cr>\|∂y/∂u ∂y/∂v\|<left><right><c-r>=Eatchar('\s')<cr>

" Common derivatives/del notations
inorea <buffer> _dx        ∂x<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dy        ∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dz        ∂z<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dxy       ∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dxdy      ∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dxyz      ∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dxdydz    ∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _dfdx      ∂f/∂x<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dfdy      ∂f/∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dfdz      ∂f/∂z<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _dfxyz     (∂f/∂x,∂f/∂y,∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dfdxdydz  (∂f/∂x,∂f/∂y,∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dphdxyz   (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dphxyz    (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dphidxyz  (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dphixyz   (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>

" Variables
inorea <buffer> _fx        f(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fy        f(x,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fz        f(x,y,z)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fx2       f(x₁,x₂)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fxn       f(x₁,...,xₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fxN       f(x₁,...,x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fx0n      f(x₀,...,xₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fx0N      f(x₀,...,x₋₁)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a1an      (a₁,...,aₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b1bn      (b₁,...,bₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c1cn      (c₁,...,cₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x1xn      (x₁,...,xₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y1yn      (y₁,...,yₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z1zn      (z₁,...,zₙ)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a1aN      (a₁,...,a)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b1bN      (b₁,...,b)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c1cN      (c₁,...,c)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x1xN      (x₁,...,x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y1yN      (y₁,...,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z1zN      (z₁,...,z)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a1ak      (a₁,...,aₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b1bk      (b₁,...,bₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c1ck      (c₁,...,cₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x1xk      (x₁,...,xₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y1yk      (y₁,...,yₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z1zk      (z₁,...,zₖ)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a1aK      (a₁,...,a)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b1bK      (b₁,...,b)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c1cK      (c₁,...,c)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x1xK      (x₁,...,x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y1yK      (y₁,...,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z1zK      (z₁,...,z)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a0an      (a₀,...,aₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b0bn      (b₀,...,bₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c0cn      (c₀,...,cₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x0xn      (x₀,...,xₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y0yn      (y₀,...,yₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z0zn      (z₀,...,zₙ₋₁)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a0aN      (a₀,...,a₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b0bN      (b₀,...,b₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c0cN      (c₀,...,c₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x0xN      (x₀,...,x₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y0yN      (y₀,...,y₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z0zN      (z₀,...,z₋₁)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a0ak      (a₀,...,aₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b0bk      (b₀,...,bₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c0ck      (c₀,...,cₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x0xk      (x₀,...,xₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y0yk      (y₀,...,yₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z0zk      (z₀,...,zₖ₋₁)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _a0aK      (a₀,...,a₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _b0bK      (b₀,...,b₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _c0cK      (c₀,...,c₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x0xK      (x₀,...,x₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _y0yK      (y₀,...,y₋₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _z0zK      (z₀,...,z₋₁)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _u1un      {u⃗₁,...,u⃗ₙ}<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v1vn      {v⃗₁,...,v⃗ₙ}<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _u0un      {u⃗₀,...,u⃗ₙ₋₁}<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _v0vn      {v⃗₀,...,v⃗ₙ₋₁}<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cnvn      c₁v⃗₁+...+cₙv⃗ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cnvnm1    c₀v⃗₀+...+cₙ₋₁v⃗ₙ₋₁<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vec       a<bs>  ⎧x₁⎫<cr><esc>ix⃗=⎨..⎬<cr>  ⎩xₙ⎭<left><right><c-r>=Eatchar('\s')<cr>

" Common limits
inorea <buffer> _lim2       limₓ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim02      limₓ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx02     limₓ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim0p2     limₓ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx0p2    limₓ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim0m2     limₓ→₀₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx0m2    limₓ→₀₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxa2     limₓ→ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxn2     limₓ→ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxi2     limₓ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limmi2     limₓ→₋∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxmi2    limₓ→₋∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxc2     limₓ→꜀<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _limn02     limₙ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limn0p2    limₙ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limn0m2    limₙ→₀₋<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limni2     limₙ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limnmi2    limₙ→₋∞<left><right><c-r>=Eatchar('\s')<cr>


inorea <buffer> _lim       lim₍ₓ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim0      lim₍ₓ₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx0     lim₍ₓ₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim0p     lim₍ₓ₀₊₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx0p    lim₍ₓ₀₊₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lim0m     lim₍ₓ₀₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limx0m    lim₍ₓ₀₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxa     lim₍ₓₐ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxn     lim₍ₓₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxi     lim₍ₓ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limmi     lim₍ₓ₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxmi    lim₍ₓ₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limxc     lim₍ₓ₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _limn0     lim₍ₙ₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limn0p    lim₍ₙ₀₊₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limn0m    lim₍ₙ₀₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limni     lim₍ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _limnmi    lim₍ₙ₋₎<left><right><c-r>=Eatchar('\s')<cr>


" Common integrals
inorea <buffer> _intpi2     ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmpi2    ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmpipi2  ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmpi2   ∫(-π:π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmpipi2 ∫(-π:π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int2pi2    ∫(0:2π)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int02pi2   ∫(0:2π)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx2pi2   ∫(0:2π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intpi22    ∫(-π/2:π/2)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxpi22   ∫(-π/2:π/2)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intmix2    ∫(-∞:x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inttmix2   ∫(-∞:x)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxi2     ∫(x:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inttxi2    ∫(x:∞)dt<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intab2     ∫(a:b)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxab2    ∫(a:b)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intba2     ∫(b:a)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxba2    ∫(b:a)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _int0a2     ∫(0:a)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0a2    ∫(0:a)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0nT2    ∫(0:nT)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0nT2   ∫(0:nT)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0T2     ∫(0:T)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0N2     ∫(0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0N2    ∫(0:N)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0T2    ∫(0:T)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0i2     ∫(0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0i2    ∫(0:∞)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _inti2      ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmii2    ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx2      ∫(-∞:∞)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmii2   ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdx2     ∫(-∞:∞)∂x<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intxy2     ∫(-∞:∞)∫(-∞:∞)dxdy<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdxy2    ∫(-∞:∞)∫(-∞:∞)∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxyz2    ∫(-∞:∞)∫(-∞:∞)∫(-∞:∞)dxdydz<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdxyz2   ∫(-∞:∞)∫(-∞:∞)∫(-∞:∞)∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intpi     ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmpi    ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmpipi  ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmpi   ∫₍₋₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmpipi ∫₍₋₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int2pi    ∫₍₀₂₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int02pi   ∫₍₀₂₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx2pi   ∫₍₀₂₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intpi2    ∫₍₋₂₂₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxpi2   ∫₍₋₂₂₎dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intmix    ∫₍₋ₓ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inttmix   ∫₍₋ₓ₎dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxi     ∫₍ₓ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _inttxi    ∫₍ₓ₎dt<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intab     ∫₍ₐ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxab    ∫₍ₐ₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intba     ∫₍ₐ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxba    ∫₍ₐ₎dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _int0a     ∫₍₀ₐ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0a    ∫₍₀ₐ₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0nT    ∫₍₀ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0nT   ∫₍₀ₙ₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0T     ∫₍₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0T    ∫₍₀₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0N     ∫₍₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0N    ∫₍₀₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _int0i     ∫₍₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx0i    ∫₍₀₎dx<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _inti      ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intmii    ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intx      ∫₍₋₎dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxmii   ∫₍₋₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdx     ∫₍₋₎∂x<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _intxy     ∫₍₋₎∫₍₋₎dxdy<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdxy    ∫₍₋₎∫₍₋₎∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intxyz    ∫₍₋₎∫₍₋₎∫₍₋₎dxdydz<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intdxyz   ∫₍₋₎∫₍₋₎∫₍₋₎∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>


" Common sums
inorea <buffer> _sumx0i2    ∑(x=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0N2    ∑(x=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1N2    ∑(x=1:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0n2    ∑(x=0:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1n2    ∑(x=1:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1i2    ∑(x=1:∞)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumn0i2    ∑(n=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1i2    ∑(n=1:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn0n2    ∑(n=0:N)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumk0i2    ∑(k=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumkn2     ∑(k=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk0n2    ∑(k=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk1n2    ∑(k=1:N)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumi0N2    ∑(i=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1N2    ∑(i=1:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0n2    ∑(i=0:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1n2    ∑(i=1:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0k2    ∑(i=0:k)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1k2    ∑(i=1:k)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0i2    ∑(i=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1i2    ∑(i=1:∞)<left><right><c-r>=Eatchar('\s')<cr>


inorea <buffer> _sumx0i    ∑₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1i    ∑₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0N    ∑₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1N    ∑₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0K    ∑₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1K    ∑₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0n    ∑₍ₓ₌₀ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1n    ∑₍ₓ₌₁ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0Nm1  ∑₍ₓ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1Nm1  ∑₍ₓ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0Km1  ∑₍ₓ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1Km1  ∑₍ₓ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx0nm1  ∑₍ₓ₌₀ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumx1nm1  ∑₍ₓ₌₁ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumn0i    ∑₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1i    ∑₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn0N    ∑₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn0K    ∑₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1N    ∑₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1K    ∑₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn0Nm1  ∑₍ₙ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn0Km1  ∑₍ₙ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1Nm1  ∑₍ₙ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumn1Km1  ∑₍ₙ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumk0i    ∑₍ₖ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk1i    ∑₍ₖ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk0N    ∑₍ₖ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk1N    ∑₍ₖ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk0Nm1  ∑₍ₖ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumk1Nm1  ∑₍ₖ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _sumi0i    ∑₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1i    ∑₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0N    ∑₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1N    ∑₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0n    ∑₍ᵢ₌₀ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1n    ∑₍ᵢ₌₁ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0k    ∑₍ᵢ₌₀ₖ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1k    ∑₍ᵢ₌₁ₖ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0K    ∑₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1K    ∑₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0Nm1  ∑₍ᵢ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1Nm1  ∑₍ᵢ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0nm1  ∑₍ᵢ₌₀ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1nm1  ∑₍ᵢ₌₁ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0km1  ∑₍ᵢ₌₀ₖ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1km1  ∑₍ᵢ₌₁ₖ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi0Km1  ∑₍ᵢ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sumi1Km1  ∑₍ᵢ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

" Common mults
inorea <buffer> _multx0i2    ∏(x=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0N2    ∏(x=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1N2    ∏(x=1:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0n2    ∏(x=0:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1n2    ∏(x=1:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1i2    ∏(x=1:∞)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multn0i2    ∏(n=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1i2    ∏(n=1:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn0n2    ∏(n=0:N)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multk0i2    ∏(k=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multkn2     ∏(k=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk0n2    ∏(k=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk1n2    ∏(k=1:N)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multi0N2    ∏(i=0:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1N2    ∏(i=1:N)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0n2    ∏(i=0:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1n2    ∏(i=1:n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0k2    ∏(i=0:k)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1k2    ∏(i=1:k)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0i2    ∏(i=0:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1i2    ∏(i=1:∞)<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multx0i    ∏₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1i    ∏₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0N    ∏₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1N    ∏₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0K    ∏₍ₓ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1K    ∏₍ₓ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0n    ∏₍ₓ₌₀ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1n    ∏₍ₓ₌₁ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0Nm1  ∏₍ₓ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1Nm1  ∏₍ₓ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0Km1  ∏₍ₓ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1Km1  ∏₍ₓ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx0nm1  ∏₍ₓ₌₀ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multx1nm1  ∏₍ₓ₌₁ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multn0i    ∏₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1i    ∏₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn0N    ∏₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn0K    ∏₍ₙ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1N    ∏₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1K    ∏₍ₙ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn0Nm1  ∏₍ₙ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn0Km1  ∏₍ₙ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1Nm1  ∏₍ₙ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multn1Km1  ∏₍ₙ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multk0i    ∏₍ₖ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk1i    ∏₍ₖ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk0N    ∏₍ₖ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk1N    ∏₍ₖ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk0Nm1  ∏₍ₖ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multk1Nm1  ∏₍ₖ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>

inorea <buffer> _multi0i    ∏₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1i    ∏₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0N    ∏₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1N    ∏₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0n    ∏₍ᵢ₌₀ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1n    ∏₍ᵢ₌₁ₙ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0k    ∏₍ᵢ₌₀ₖ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1k    ∏₍ᵢ₌₁ₖ₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0K    ∏₍ᵢ₌₀₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1K    ∏₍ᵢ₌₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0Nm1  ∏₍ᵢ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1Nm1  ∏₍ᵢ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0nm1  ∏₍ᵢ₌₀ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1nm1  ∏₍ᵢ₌₁ₙ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0km1  ∏₍ᵢ₌₀ₖ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1km1  ∏₍ᵢ₌₁ₖ₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi0Km1  ∏₍ᵢ₌₀₋₁₎<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _multi1Km1  ∏₍ᵢ₌₁₋₁₎<left><right><c-r>=Eatchar('\s')<cr>



" Gram-Shmidt, used to get an orthogonal basis
inorea <buffer> _gs2        v⃗ₙ=u⃗ₙ-∑(i=0:n-1)(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑(i=0:n-1)projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gs         v⃗ₙ=u⃗ₙ-∑₍ᵢ₌₀ₙ₋₁₎(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑₍ᵢ₌₀ₙ₋₁₎projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gramshmidt  v⃗ₙ=u⃗ₙ-∑(i=0:n-1)(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑(i=0:n-1)projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _gramshmidt2 v⃗ₙ=u⃗ₙ-∑₍ᵢ₌₀ₙ₋₁₎(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑₍ᵢ₌₀ₙ₋₁₎projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>

" Projections
inorea <buffer> _proj      b⃗=projₐ⃗(u⃗)=(<a⃗,u⃗>/<u⃗,u⃗>)u⃗=(a⃗.u⃗/u⃗.u⃗)u⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _projm     A(AᵀA)⁻¹Aᵀ<left><right><c-r>=Eatchar('\s')<cr>

" Least square approximation
inorea <buffer> _lsq       AᵀAx⃗=Aᵀb⃗<left><right><c-r>=Eatchar('\s')<cr>

" Quadratic approximation
inorea <buffer> _quada     Q(x,y) = a + b.x + c.y + dx² + e.x.y + f.y² = f(x₀,y₀) + fₓ(x₀,y₀)(x-x₀) + fᵧ(x₀,y₀)(y-y₀) + 1/2 fₓₓ(x₀,y₀)(x-x₀)² + fₓᵧ(x₀,y₀)(x-x₀)(y-y₀) + 1/2 fᵧᵧ(x₀,y₀)(y-y₀)²<left><right><c-r>=Eatchar('\s')<cr>

" Law of total probability
inorea <buffer> _prob2     P(A)=∑(i=0:N)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _prob      P(A)=∑₍ᵢ₌₀₎P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _probsum2  P(A)=∑(i=0:N)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _probsum   P(A)=∑₍ᵢ₌₀₎P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _probtot2  P(A)=∑(i=0:N)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _probtot   P(A)=∑₍ᵢ₌₀₎P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>

" Addition theorem of probability:
inorea <buffer> _probu     P(A∪B) = P(A) + P(B) - P(A∩B)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _proba     P(A∪B) = P(A) + P(B) - P(A∩B)<left><right><c-r>=Eatchar('\s')<cr>

" Conditional Probability :
inorea <buffer> _probc     P(A/B) = P(A∩B)/P(B) = P(B/A).P(A)/P(B)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bayes2    P(Bᵢ/A) = P(Bᵢ)P(A/Bᵢ)/(∑(i=0:N)P(Bᵢ)P(A/Bᵢ))<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bayes     P(Bᵢ/A) = P(Bᵢ)P(A/Bᵢ)/(∑₍ᵢ₌₀₎P(Bᵢ)P(A/Bᵢ))<left><right><c-r>=Eatchar('\s')<cr>

" De Morgan's Laws:
inorea <buffer> _demorgan  (A∪B)ᶜ = Aᶜ∩Bᶜ ; (A∩B)ᶜ = Aᶜ∪Bᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _dm        (A∪B)ᶜ = Aᶜ∩Bᶜ ; (A∩B)ᶜ = Aᶜ∪Bᶜ<left><right><c-r>=Eatchar('\s')<cr>

" Distributive Laws :
inorea <buffer> _distl     A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C) ; A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C)<left><right><c-r>=Eatchar('\s')<cr>

" Number of permutations of n different things taken r at a time =
inorea <buffer> _perm      ⁿPₖ = n!/(n-k)!<left><right><c-r>=Eatchar('\s')<cr>
" Number of combinations of n different things taken r at a time ; n choose k
inorea <buffer> _nk        ⎛n⎞<cr>ⁿCₖ = ⎝k⎠ = n!/k!(n-k)!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _comb      ⎛n⎞<cr>ⁿCₖ = ⎝k⎠ = n!/k!(n-k)!<left><right><c-r>=Eatchar('\s')<cr>

" Pascal's identity
inorea <buffer> _pascal    ⎛n⎞   ⎛ n ⎞   ⎛n+1⎞<cr>⎝k⎠ + ⎝k+1⎠ = ⎝k+1⎠<left><right><c-r>=Eatchar('\s')<cr>


" Arithmetic Mean
inorea <buffer> _meana2    AM=∑(i=1:n)xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meana     AM=∑₍ᵢ₌₁ₙ₎xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
" Geometric Mean
inorea <buffer> _meang2    GM=(∏(i=1:n)xᵢ)¹ᐟⁿ=ⁿ√(x₁x₂...xₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meang     GM=(∏₍ᵢ₌₁ₙ₎xᵢ)¹ⁿ=ⁿ√(x₁x₂...xₙ)<left><right><c-r>=Eatchar('\s')<cr>
" Weighted arithmetic mean
inorea <buffer> _meanwa    WM=∑λᵢxᵢ/∑λᵢ<left><right><c-r>=Eatchar('\s')<cr>
" Mean absolute Deviation
inorea <buffer> _mad2      MAD = Σ(i=1:n)\|xᵢ-μ\|/N<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _mad       MAD = Σ₍ᵢ₌₁ₙ₎\|xᵢ-μ\|/N<left><right><c-r>=Eatchar('\s')<cr>

" Discreet mean and variance with known probability pᵢ for each event xᵢ
inorea <buffer> _meand2    μ=E(X)=∑pᵢxᵢ/∑pᵢ=∑(i=0:N)pᵢxᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meand     μ=E(X)=∑pᵢxᵢ/∑pᵢ=∑₍ᵢ₌₀₎pᵢxᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vard2     σ²=V(X)=E[(X-μ)²]=∑(i=0:N)(xᵢ-μ)²pᵢ/∑pᵢ=∑(i=0:N)(xᵢ-μ)²pᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vard      σ²=V(X)=E[(X-μ)²]=∑₍ᵢ₌₀₎(xᵢ-μ)²pᵢ/∑pᵢ=∑₍ᵢ₌₀₎(xᵢ-μ)²pᵢ<left><right><c-r>=Eatchar('\s')<cr>

" Continuous mean and variance
inorea <buffer> _meanc2    μ=E(X)=∫(-∞:∞)x.pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meanc     μ=E(X)=∫₍₋₎x.pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varc2     σ²=V(X)=E[(X-μ)²]=∫(-∞:∞)(x-μ)²pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varc      σ²=V(X)=E[(X-μ)²]=∫₍₋₎(x-μ)²pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>

" Mean/expected value and variance properties
inorea <buffer> _meanprop  E(X+Y)=E(X)+E(Y) ; E(X-Y)=E(X)-E(Y) ; E(cX)=cE(X) ; E(XY)=E(X)E(Y)<c-r>=Eatchar('\s')<cr>
inorea <buffer> _varprop   V(X+Y)=V(X)+V(Y) ; V(X-Y)=V(X)-V(Y) ; V(cX)=c²V(X) ; V(X+c)=V(X)<c-r>=Eatchar('\s')<cr>

" z-score
inorea <buffer> _zs        z = (x-μ)/σ<left><right><left><right><c-r>=Eatchar('\s')<cr>
" Population Correlation
inorea <buffer> _corr2     ρₓᵧ=cov(X,Y)/(σₓσᵧ)=(∑(i=1:N)(xᵢ-μₓ)(yᵢ-μᵧ))/√(∑(i=1:N)(xᵢ-μₓ)²(yᵢ-μᵧ)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _corr      ρₓᵧ=cov(X,Y)/(σₓσᵧ)=(∑₍ᵢ₌₁₎(xᵢ-μₓ)(yᵢ-μᵧ))/√(∑₍ᵢ₌₁₎(xᵢ-μₓ)²(yᵢ-μᵧ)²)<left><right><c-r>=Eatchar('\s')<cr>



" Probability Density Function
inorea <buffer> _pdf       PDF=f(x)=d/dx CDF=dF(x)/dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdf2      P(X≤a)=∫(0:a)f(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdf       P(X≤a)=∫₍₀ₐ₎f(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pmf       PMF=f(x)=P(X=x)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfd2     P(X≤k)=∑(k=0:x)f(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfd      P(X≤k)=∑₍ₖ₌₀ₓ₎f(x)dx<left><right><c-r>=Eatchar('\s')<cr>

" Binomial distribution function - PMF
inorea <buffer> _pmfb      ⎛n⎞<cr>P(X=k)=⎝k⎠pᵏ(1-p)ⁿ⁻ᵏ=ⁿCₖpᵏqⁿ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfb2     ⎛n⎞<cr>P(X≤k)=∑(k=0:x)⎝k⎠pᵏ(1-p)ⁿ⁻ᵏ=I₁₋ₚ(n-k,k+1)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfb      ⎛n⎞<cr>P(X≤k)=∑₍ₖ₌₀ₓ₎⎝k⎠pᵏ(1-p)ⁿ⁻ᵏ=I₁₋ₚ(n-k,k+1)<left><right><c-r>=Eatchar('\s')<cr>
" Binomial Probability Distribution:
inorea <buffer> _meanb     μ = ∑pᵢxᵢ/∑pᵢ = ∑pᵢxᵢ = np<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varb      σ² = ∑(xᵢ-μ)²pᵢ = ∑pᵢxᵢ² - μ² = npq<left><right><c-r>=Eatchar('\s')<cr>

" Geometric distribution
inorea <buffer> _pmfg      P(X=x)=(1-p)ˣ⁻¹p<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfg      P(X≤x)=1-(1-p)ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meangd    μ=1/p<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vargd     σ²=q/p²<left><right><c-r>=Eatchar('\s')<cr>

" Poisson Distribution PMF
inorea <buffer> _pmfp2     P(X=k)=λᵏ/k! e⁻ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pmfp      P(X=k)=λᵏ/k! e⁻<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfp2     P(X=k)=e⁻ᣔ∑(i=0:k)λⁱ/i!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfp      P(X=k)=e⁻∑₍ᵢ₌₀ₖ₎λⁱ/i!<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meanp     μ=λ=np<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varp      σ²=λ=np<left><right><c-r>=Eatchar('\s')<cr>

" Normal Probability Density Function
inorea <buffer> _pdfn2     φ(x)=1/σ√2π e⁻⁽ˣ⁻ꭟ⁾^²ᐟ²ᣙ^²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pdfn      φ(x)=1/σ√2π e⁻⁽ˣ⁻⁾²²²<left><right><c-r>=Eatchar('\s')<cr>
" Cumulative Normal Distribution Function
inorea <buffer> _cdfn2     F(x)=P(X<x)=1/σ√2π ∫(-∞:x)e⁽ᵗ⁻ꭟ⁾^²ᐟ²ᣙ^²dt<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfn      F(x)=P(X<x)=1/σ√2π ∫₍₋ₓ₎e⁽ᵗ⁻⁾²²²dt<left><right><c-r>=Eatchar('\s')<cr>

" Continuous Uniform Density
inorea <buffer> _pdfcu     f(x)=1/(b-a) ; a ≤ x ≤ b ; 0 elsewhere<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfcu     F(x)=0; x < a; F(x)=(x-a)/(b-a) ; a ≤ x ≤ b ; F(x)=1 ; x > b<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meancu    μ=(a+b)/2<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varcu     σ²=((b-a)²-1)/12<left><right><c-r>=Eatchar('\s')<cr>

" Exponential probability Density Function
inorea <buffer> _pdfe2     f(t)=λe⁻ᣔᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pdfe      f(t)=λe⁻ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfe2     F(x)=1-e⁻ᣔˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _cdfe      F(x)=1-e⁻ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meane     μ=β<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _vare      σ²=β²<left><right><c-r>=Eatchar('\s')<cr>



" Statistics sample arithmetic mean, uses x̅ and s instead of μ and σ
inorea <buffer> _means2    x̅ = ∑(i=0:n)xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _means     x̅ = ∑₍ᵢ₌₀ₙ₎xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
" Statistics sample variance, sample standard deviation
inorea <buffer> _vars      sₓ² = ∑(xᵢ-x̅)²/(n-1)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sds       sₓ = √(∑(xᵢ-x̅)²/(n-1))<left><right><c-r>=Eatchar('\s')<cr>

" Statistics population variance, standard deviation
inorea <buffer> _meansp2   μ = ∑(i=0:N)xᵢ/N<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _meansp    μ = ∑₍ᵢ₌₀₎xᵢ/N<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _varsp     σ² = ∑(xᵢ-μ)²/N = ∑xᵢ²/N - μ²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _sdsp      σ = √(∑(xᵢ-μ)²/N)<left><right><c-r>=Eatchar('\s')<cr>

" Sample z/t score
inorea <buffer> _zss       z=(x̅-μ)/(σ/√n)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _tss       t=(x̅-μ)/(s/√n)<left><right><c-r>=Eatchar('\s')<cr>
" Sample Correlation
inorea <buffer> _corrs     r = 1/(n-1) ∑(ᵢ₌₁:ₙ)((xᵢ-x̅)/sₓ (yᵢ-y̅)/sᵧ)<left><right><c-r>=Eatchar('\s')<cr>

" Least-squares regression line
inorea <buffer> _lsrls     ŷ=a+bx ; b=rsᵧ/sₓ ; a = y̅-bx̅<left><right><c-r>=Eatchar('\s')<cr>

" Standard error of the estimate or standard deviation of the residuals
inorea <buffer> _se2       sₑ=√(1/(n-2) ∑(i=0:n)(yᵢ-ŷ)²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _se        sₑ=√(1/(n-2) ∑₍ᵢ₌₀ₙ₎(yᵢ-ŷ)²<left><right><c-r>=Eatchar('\s')<cr>

" The Standard Error of the Slope
inorea <buffer> _seb2      SEⱃ=sₑ/√(∑(i=1:n)(xᵢ-x̅)²<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _seb       SEⱃ=sₑ/√(∑₍ᵢ₌₁ₙ₎(xᵢ-x̅)²<left><right><c-r>=Eatchar('\s')<cr>


" u Substitution
inorea <buffer> _usub2     ∫(a:b)f(g(x))g'(x)dx = ∫(g(a):g(b))f(u)du<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _usub      ∫₍ₐ₎f(g(x))g'(x)dx = ∫₍₍ₐ₎₍₎₎f(u)du<left><right><c-r>=Eatchar('\s')<cr>

" Integration by Parts
inorea <buffer> _intparts2 ∫(a:b)u dv = uv\|ₐᵇ -∫(a:b)v du<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _intparts  ∫₍ₐ₎u dv = uv\|ₐᵇ -∫₍ₐ₎v du<left><right><c-r>=Eatchar('\s')<cr>

" Power series
inorea <buffer> _pseries2   ∑(n=0:∞)(aₙxⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pseries    ∑₍ₙ₌₀₎(aₙxⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pseries02  ∑(n=0:∞)(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pseries0   ∑₍ₙ₌₀₎(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pseriesx02 ∑(n=0:∞)(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _pseriesx0  ∑₍ₙ₌₀₎(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>

" Taylor series
inorea <buffer> _taylor2   f(x)=∑(n=0:∞) f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _taylor    f(x)=∑₍ₙ₌₀₎ f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _taylors2  f(x)=∑(n=0:∞) f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _taylors   f(x)=∑₍ₙ₌₀₎ f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>

" Binomial series
inorea <buffer> _bins12     ⎛n⎞<cr>(1+x)ⁿ=∑(k=0:∞)⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bins1      ⎛n⎞<cr>(1+x)ⁿ=∑₍ₖ₌₀₎⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _binomial12 ⎛n⎞<cr>(1+x)ⁿ=∑(k=0:∞)⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _binomial1  ⎛n⎞<cr>(1+x)ⁿ=∑₍ₖ₌₀₎⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bins2      ⎛n⎞<cr>(a+b)ⁿ=∑(k=0:∞)⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _bins       ⎛n⎞<cr>(a+b)ⁿ=∑₍ₖ₌₀₎⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _binomial2  ⎛n⎞<cr>(a+b)ⁿ=∑(k=0:∞)⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _binomial   ⎛n⎞<cr>(a+b)ⁿ=∑₍ₖ₌₀₎⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>

" Fourier series
inorea <buffer> _fs2            f(x)=a₀/2 + ∑(n=1:∞)(aₙcos(nx)+bₙsin(nx)) ; aₙ=1/π ∫(-π:π)f(x)cos(nx)dx ; bₙ=1/π ∫(-π:π)f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fs             f(x)=a₀/2 + ∑₍ₙ₌₁₎(aₙcos(nx)+bₙsin(nx)) ; aₙ=1/π ∫₍₋₎f(x)cos(nx)dx ; bₙ=1/π ∫₍₋₎f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fourierseries2 f(x)=a₀/2 + ∑(n=1:∞)(aₙcos(nx)+bₙsin(nx)) ; aₙ=1/π ∫(-π:π)f(x)cos(nx)dx ; bₙ=1/π ∫(-π:π)f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _fourierseries  f(x)=a₀/2 + ∑₍ₙ₌₁₎(aₙcos(nx)+bₙsin(nx)) ; aₙ=1/π ∫₍₋₎f(x)cos(nx)dx ; bₙ=1/π ∫₍₋₎f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>

" Common algebraic terms
inorea <buffer> _s2a2      (s²+a²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _x2a2      (x²+a²)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _lnxa      ln\|(x+a)/(x-a)\|<left><right><c-r>=Eatchar('\s')<cr>

" Alligation is a method of calculating weighted averages
inorea <buffer> _allig     w₁/w₂=(x₂-x)/(x-x₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea <buffer> _weight    w₁/w₂=(x₂-x)/(x-x₁)<left><right><c-r>=Eatchar('\s')<cr>


