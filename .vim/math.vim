"==============================================================================
" File: math.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for math text files.
"              Gets loaded by .vimrc when opening select files with a vim GUI.
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
if exists("b:math_loaded")
  finish
endif
let g:math_loaded = 1


" NOTE: See also math_mappings.vim for unicode math mappings from leanprover
"       vscode that start with "\".

" WARNING: Can slow down/reduce performance!!
" NOTE: I tried creating a simpler version of this, but it wasn't worth it,
"       you still get a performance hit, and you either want the highlighting
"       done properly or you don't want it at all, so you can't really cut
"       corners.
if g:performance_mode <= 0

   " Disable syntax while holding pageup/pagedown, re-enable on CursorHold.
   " Used to improve scrolling performance and speed.
   " nnoremap <pageup>   :let g:syntax_disabled = 1<cr>:syntax clear<cr><pageup>
   " nnoremap <pagedown> :let g:syntax_disabled = 1<cr>:syntax clear<cr><pagedown>

   " Match single chars.
   " --------------------------------------------------------------------------
   " Match single character in its own word.
   hi  link    MathSingleChar SpecialChar
   syn match   MathSingleChar "\%(\w\)\@<![a-zA-Z]\%(\w\)\@!" contains=@NoSpell

   " Unmatch s when it's inside a parenthesis like in apple(s).
   syn match   MathNoColorS "(s)" contains=@NoSpell

   " Unmatch d s t after a quote mark ' like in it's or can't or you'd
   syn match   MathNoColorDST "\%('\)\@<=[dstm]\%([ :;,?!.>)\]]\|$\)\@=" contains=@NoSpell

   " Unmatch I a A as they are common 1 letter words in English.
   syn match   MathNoColorIaA "\%(\%(\W\)\@<!\s\|^\|\%((\)\@<=\)[IaA]\>\%(\s[a-zA-Z0-9'"(][a-zA-Z0-9'"(]\|'[dm] \)\@=\%( \%(and\|or\|nand\|nor\|xor\|xnor\|then\|not\|exists\|has\|to\|implies\|in\|on\|will\|was\|is\)\>\)\@!" contains=@NoSpell

   " Rematch I a A when certain logic words are before/after.
   " hi  link    MathIaA1       SpecialChar
   " syn match   MathIaA1       "\s\?\<[IaA]\>\%( \%(is\|and\|or\|nand\|nor\|xor\|xnor\|then\|not\|exists\|has\|to\|implies\|in\|on\)\>\)\@=" contains=@NoSpell

   " hi  link    MathIaA2       SpecialChar
   " syn match   MathIaA2       "\<[aA]\>\%( \%(will\|was\|is\)\>\)\@=" contains=@NoSpell
   " syn match   MathIaA2       "\%(\<\%(the\|The\) \)\@=\<[IaA]\>" contains=@NoSpell


   " Re-match stuff like 2x, 10X, 5y, 123xyz, 3D.
   " Match math variables that are preceded by a number.
   hi  link    MathNumInVar   Constant
   syn match   MathNumInVar   "\<[0-9]\+\%([a-zA-Z]\+\>\|[a-zA-Z]\+\W\)\@=\%([eE][-+±∓]\?[0-9]\)\@!"   contains=@NoSpell
   hi  link    MathVarInNum   SpecialChar
   syn match   MathVarInNum   "\<[0-9]\+[a-zA-Z]\+\%(\w\)\@!\%(\%([0-9][eE]\)\@<!\|\%([-+±∓]\)\@!\)" contains=@NoSpell,MathNumInVar


   " Match x when it mean multiplication or hex number.
   hi  link    MathXInNum     Operator
   syn match   MathXInNum     "x" contained contains=@NoSpell
   hi  link    MathNumWithX   Constant
   syn match   MathNumWithX   "\%(\w\)\@<!\%([0-9]\+\|N\)\([x×][0-9]\+\)\+\%(\w\)\@!" contains=@NoSpell,MathXInNum,UnicodeOperators2

   " Match 2 char math variables.
   " Disabled as there are too many 2 char words in English...
   " hi  link    MathMathVar2   SpecialChar
   " syn match   MathMathVar2   "\%(\%(^\|\w\)\s*\)\@<![A-Z][a-z]\%(\%(\s*\|'\?\)\%($\|\w\)\)\@!" contains=@NoSpell

   " Match math variables such as Ax that are surrounded by non words.
   " hi  link    MathMathVar3   SpecialChar
   " syn match   MathMathVar3   "\%(\w\)\@<!\%([a-df-np-z][xz]\|[ac-ln-z][y]\|uv\)\%( \?\W\)\@=" contains=@NoSpell

   " Derivatives
   hi  link    MathDeriv      SpecialChar
   syn match   MathDeriv      "\%(\w\)\@<!d[a-np-zA-Z]\%(\w\)\@!\%(-\)\@!"  contains=@NoSpell
   syn match   MathDeriv      "\%(\s\|^\)\%(dxdy\|dxdz\|dydz\|dxdydz\|drdф\|drdθ\|drdθdф\|dudv\|dxdydz\)\%(\w\)\@!"  contains=@NoSpell

   hi  link    MathDeriv2     SpecialChar
   syn match   MathDeriv2     "\<[a-zA-Z]\>\%('\s\)\@="  contains=@NoSpell


   " Highlight common math multi-variables.
   hi  link    MathMultiVars1 SpecialChar
   syn match   MathMultiVars1 "\%(\w\)\@<!\%(xy\|yz\|xz\|xyz\|np\|npq\|[a-cm-n][xz]\|[acn][y]\|ij\|jk\|ik\|ijk\|ab\|abc\)\%(\w\)\@!" contains=@NoSpell

   " Highlight math variables - any 2 chars surrounded by non chars.
   hi  link    MathMultiVars2 SpecialChar
   syn match   MathMultiVars2 "\%(\w\s\?\)\@<!\([a-z][A-Za-z]\|[A-Za-z][a-z]\)\%(\s\?\w\)\@!" contains=@NoSpell,AllPreKeywords8,AllPreKeywords2 containedin=SpellCapitalized1

   hi  link    MathMultiVars3 SpecialChar
   syn match   MathMultiVars3 "\<\w\%(.⃗\)\@=" contains=@NoSpell  containedin=RegExRanges

   " syn match   MathMultiVarsNoColor "\<\%(in\|[Ii]t\|on\|of\|ex\|ie\|vs\|to\|[oO]k\)\>" contains=@NoSpell
   syn match   MathMultiVarsNoColor "\<\%(on\)\>" contains=@NoSpell

   " Match more functions.
   hi  link    MathFunction   Function
   " Matches incorrectly things like n(n-1).
   " syn match   MathFunction   "\%(\s\|^\)[a-z][a-z0-9]*\>\%('\?(\)\@="  contains=@NoSpell,Conditional
   syn match   MathFunction   "\%(\w\)\@<![f-h]\>\%('\?'\?(\)\@="  contains=@NoSpell,Conditional

   " Highlight math terms/functions.
   syn match   MathFunction   "\%(\w\)\@<!\%(mod\|lim\|log\|ln\)\%(\w\)\@!" contains=@NoSpell
   syn match   MathFunction   "\%(\w\)\@<![0-9]*\%(sinh\?\|cosh\?\|tanh\?\|sech\?\|coth\?\|csch\?\|arctanh\?\|cosech\?\)\%(\w\)\@!" contains=@NoSpell,MathNumInVar
   syn match   MathFunction   "\%(\w\)\@<!\%(curl\|grad\|div\|rot\|proj\|det\)\%(\w\)\@!" contains=@NoSpell,MathNumInVar
   " --------------------------------------------------------------------------
endif


"---------------------------
" Common math abbreviations
"---------------------------

" Common pi
inorea _pr2       πr²<left><right><c-r>=Eatchar('\s')<cr>
inorea _pr3       πr³<left><right><c-r>=Eatchar('\s')<cr>

" Common square roots
inorea _sqrh      √(r²+h²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sqab      √(a²+b²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sqxy      √(x²+y²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sqabc     √(a²+b²+c²)<left><right><c-r>=Eatchar('\s')<cr>

inorea _nsq       ⁿ√<left><right><c-r>=Eatchar('\s')<cr>
inorea _3sq       ³√<left><right><c-r>=Eatchar('\s')<cr>
inorea _4sq       ⁴√<left><right><c-r>=Eatchar('\s')<cr>

" Distance btw 2 points
inorea _dist      √((x₁-x₂)²+(y₁-y₂)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _distv     x⃗₁-x⃗₂²
" 3D Distance formula
inorea _3ddist    √((x₁-x₂)²+(y₁-y₂)²+(z₁-z₂)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dist3     √((x₁-x₂)²+(y₁-y₂)²+(z₁-z₂)²)<left><right><c-r>=Eatchar('\s')<cr>

" Geometry
inorea _circ      (x-h)²+(y-k)²=r²<left><right><c-r>=Eatchar('\s')<cr>
inorea _circr     r=√((x-h)²+(y-k)²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _ell       (x-h)²/a²+(y-k)²/b²=1<left><right><c-r>=Eatchar('\s')<cr>

" 2D line
inorea _slope     m=(y₂-y₁)/(x₂-x₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea _line      y=y₀+m(x-x₀)<left><right><c-r>=Eatchar('\s')<cr>

" Quadratic equations and solutions
inorea _quad      y=ax²+bx+c<left><right><c-r>=Eatchar('\s')<cr>
inorea _quads     x=(-b±√(b²-4ac))/(2a)<left><right><c-r>=Eatchar('\s')<cr>

" Cubic function
inorea _cub       y=ax³+bx²+cx+d<left><right><c-r>=Eatchar('\s')<cr>
inorea _cubic     y=ax³+bx²+cx+d<left><right><c-r>=Eatchar('\s')<cr>

" Complete the square
inorea _csq       x²+b*x+c = (x+(b/2))² - b²/4 + c<left><right><c-r>=Eatchar('\s')<cr>

" Exponential and logarithm equations
inorea _exp       aᵇ⋅aᶜ=aᵇ⁺ᶜ ; aᵇ/aᶜ=aᵇ⁻ᶜ ; (aᵇ)ᶜ=aᵇᶜ ; a¹ᐟᵇ=ᵇ√a ; a⁻ⁿ=1/aⁿ ; (ab)ᵐ= aᵐbᵐ<left><right><c-r>=Eatchar('\s')<cr>
inorea _log       logₐx=y->bʸ=x ; logₐ(xy)=logₐx+logₐy ; logₐ(xⁿ)=n logₐ(x) ; logₐ(x)=log꜀(x)/log꜀(a) ; log(x)=log₁₀x ; ln(x)=logₑx<left><right><c-r>=Eatchar('\s')<cr>

inorea _transpose det(Aᵀ) = det(A) ; (AB)ᵀ = BᵀAᵀ ; (ABC)ᵀ = CᵀBᵀAᵀ ; (A+B)ᵀ = Aᵀ+Bᵀ ; (Aᵀ)⁻¹ = (A⁻¹)ᵀ; Rank(A) = rank(Aᵀ)<left><right><c-r>=Eatchar('\s')<cr>

" Midpoint between 2 points
inorea _midp      m = ((x₁+x₂)/2, (y₁+y₂)/2)<left><right><c-r>=Eatchar('\s')<cr>

" Euler's formula and identity
inorea _eulerf    eⁱˣ=cos(x)+i.sin(x)<left><right><c-r>=Eatchar('\s')<cr>
" inorea _euleri    eⁱꟸ=-i<left><right><c-r>=Eatchar('\s')<cr>
inorea _euleri    eⁱꟸ+i=0<left><right><c-r>=Eatchar('\s')<cr>
inorea _euler     eⁱꟸ+i=0<left><right><c-r>=Eatchar('\s')<cr>

" Common e exponents
inorea _eip       eⁱꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea _eipi      eⁱꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea _e2p       e²ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea _e2pi      e²ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inorea _eith      eⁱᶱ<left><right><c-r>=Eatchar('\s')<cr>
inorea _eix       eⁱˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _emkt      e⁻ᵏᵗ<left><right><c-r>=Eatchar('\s')<cr>

" Pythagorean theorem
inorea _pyth      a²+b²=c²<left><right><c-r>=Eatchar('\s')<cr>

" Trigonometric identity - Pythagorean Identity
inorea _trig      cos²(θ)+sin²(θ)=1<left><right><c-r>=Eatchar('\s')<cr>

" Law of cosines:
inorea _cosl      c²=b²+a²-2ab*cos(C)<left><right><c-r>=Eatchar('\s')<cr>

" Cosine of double angle:
inorea _cos2x     cos(2x) = cos²(x)-sin²(x) = 2cos²(x)-1 = 1-2sin²(x)<left><right><c-r>=Eatchar('\s')<cr>

" sin²(θ) and cos²(θ) formulas:
inorea _sin2      sin²(θ)=(1-cos(2θ))/2<left><right><c-r>=Eatchar('\s')<cr>
inorea _cos2      cos²(θ)=(1+cos(2θ))/2<left><right><c-r>=Eatchar('\s')<cr>

" Common ranges involving pi
inorea _rpi2      -π/2 ≤ θ ≤ π/2<left><right><c-r>=Eatchar('\s')<cr>
inorea _r2pi      0 ≤ θ < 2π<left><right><c-r>=Eatchar('\s')<cr>
inorea _rpi       0 ≤ θ ≤ π<left><right><c-r>=Eatchar('\s')<cr>

inorea _mempi2    ∈ [-π/2,π/2]<left><right><c-r>=Eatchar('\s')<cr>
inorea _mempi     ∈ [0,π],<left><right><c-r>=Eatchar('\s')<cr>
inorea _mem2pi    ∈ [0,2π],<left><right><c-r>=Eatchar('\s')<cr>
inorea _mem0inf   ∈ [0,∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _meminf0   ∈ (-∞,0]<left><right><c-r>=Eatchar('\s')<cr>
inorea _memminf0  ∈ (-∞,0]<left><right><c-r>=Eatchar('\s')<cr>
inorea _meminf    ∈ (-∞,∞)<left><right><c-r>=Eatchar('\s')<cr>

" Common member sets
inorea _memn      ∈ ℕ<left><right><c-r>=Eatchar('\s')<cr>
inorea _memz      ∈ ℤ<left><right><c-r>=Eatchar('\s')<cr>
inorea _memq      ∈ ℚ<left><right><c-r>=Eatchar('\s')<cr>
inorea _memr      ∈ ℝ<left><right><c-r>=Eatchar('\s')<cr>
inorea _memi      ∈ 𝕀<left><right><c-r>=Eatchar('\s')<cr>
inorea _memc      ∈ ℂ<left><right><c-r>=Eatchar('\s')<cr>

inorea _xnm1      xⁿ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inorea _xnp1      xⁿ⁺¹<left><right><c-r>=Eatchar('\s')<cr>
inorea _nm1       ⁿ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inorea _np1       ⁿ⁺¹<left><right><c-r>=Eatchar('\s')<cr>

" Formal definitions
inorea _defd      f′(x) = limₕ₋›₀ (f(x+h) - f(x))/h<left><right><c-r>=Eatchar('\s')<cr>
inorea _defdel    ∂f/∂x(a, b) = lim△ₓ₋›₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea _defpd     ∂f/∂x(a, b) = lim△ₓ₋›₀ f(a+Δx,b)f(a,b)/Δx<left><right><c-r>=Eatchar('\s')<cr>
inorea _defdiv    div F(x,y,z) = lim(R(x,y,z)->0) 1/\|R(x,y,z)\| ∫∫𑇁ꜰ⃗.n⃗ dΣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _defdcurl  curl F(x,y,z).[ĵ,î,k̂]ᵀ = lim(\|A(x,y,z).î\|->0) 1/\|A(x,y,z)\| ∮꜀ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>

" Dot product
inorea _dotp      a⃗.b⃗ = ∑(ₙ₌₁:៷)aₙbₙ = a⃗b⃗cosθ = scalar<left><right><c-r>=Eatchar('\s')<cr>
inorea _vecdiff   a⃗-b⃗ = a⃗²+b⃗² - 2a⃗b⃗cosθ<left><right><c-r>=Eatchar('\s')<cr>
inorea _vamb      a⃗-b⃗ = a⃗²+b⃗² - 2a⃗b⃗cosθ<left><right><c-r>=Eatchar('\s')<cr>

" Inequalities
inorea _ineqd     \|a⃗.b⃗\| ≤ a⃗.b⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _ineqp     a⃗+b⃗ ≤ a⃗+b⃗<left><right><c-r>=Eatchar('\s')<cr>

" Cross product
inorea _cross     <space><bs>      ⎡a₂b₃ - b₂a₃⎤<cr><esc>ia⃗×b⃗ = ⎢a₃b₁ - b₃a₁⎥<cr>      ⎣a₁b₂ - b₁a₂⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea _varea     a⃗×b⃗=a⃗b⃗sinθ<left><right><c-r>=Eatchar('\s')<cr>

" Identity matrix
inorea _id3       <space><bs>     ⎡1 0 0⎤<cr><esc>iI₃ = ⎢0 1 0⎥<cr>     ⎣0 0 1⎦<left><right><c-r>=Eatchar('\s')<cr>
inorea _id2       <space><bs>     ⎡1 0⎤<cr><esc>iI₂ = ⎣0 1⎦<left><right><c-r>=Eatchar('\s')<cr>

" Eigenvectors and eigenvalues
inorea _eigen     T(v⃗) = λv⃗ = Av⃗ ; v⃗ is an eigenvector for T and A, λ is an eigenvalue associated with that eigenvector.<left><right><c-r>=Eatchar('\s')<cr>

" Gradient, divergence, curl
inorea _grad      grad ꜰ⃗ = ∇ꜰ⃗ = (∂f/∂x, ∂f/∂y, ∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _gradn     grad u⃗ = ∇u⃗ = (∂f/∂x₁, ∂f/∂x₂, ... ,∂f/∂xₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _div       div ꜰ⃗ = ∇.ꜰ⃗ = ∂P/∂x + ∂Q/∂y + ∂R/∂z<left><right><c-r>=Eatchar('\s')<cr>
inorea _curl      curl ꜰ⃗ = ∇×ꜰ⃗ = (∂R/∂z - ∂Q/∂y)î + (∂P/∂x - ∂R/∂z)ĵ + (∂Q/∂y∂ - ∂P/∂x)ᴋ̂<left><right><c-r>=Eatchar('\s')<cr>

" Laplacian operator
inorea _laplacian ∇²f = ∂²f/∂x² + ∂²f/∂y² + ∂²f/∂z²<left><right><c-r>=Eatchar('\s')<cr>
inorea _laop      ∇²f = ∂²f/∂x² + ∂²f/∂y² + ∂²f/∂z²<left><right><c-r>=Eatchar('\s')<cr>

" Fourier transform
inorea _ft        F(W) = 1/2π ∫(-∞:∞)e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea _fourier   F(W) = 1/2π ∫(-∞:∞)e⁻ⁱᵂᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea _ift       f(t) = ∫(-∞:∞)eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>
inorea _ifourier  f(t) = ∫(-∞:∞)eⁱᵂᵗF(W)dW<left><right><c-r>=Eatchar('\s')<cr>

" Laplace transform
inorea _lp        ℒ{f(t)} = F(S) = ∫(₀:∞)e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea _laplace   ℒ{f(t)} = F(S) = ∫(₀:∞)e⁻ˢᵗf(t)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea _ilp       ℒ⁻¹{F(s)} = f(t) = 1/2πi ∫(ₐ₋ᵢ∞:ₐ₊ᵢ∞)eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>
inorea _ilaplace  ℒ⁻¹{F(s)} = f(t) = 1/2πi ∫(ₐ₋ᵢ∞:ₐ₊ᵢ∞)eˢᵗF(S)dS<left><right><c-r>=Eatchar('\s')<cr>

" Step, delta function
inorea _stepf     u꜀(t) = ⎧0 t < c<cr>        ⎩1 t ≥ c<left><right><c-r>=Eatchar('\s')<cr>
inorea _deltaf    δ(t) = ⎧∞ x = 0<cr>       ⎩0 x ≠ 0<left><right><c-r>=Eatchar('\s')<cr>

" Convolution
inorea _conv      (f∗g)(t) = ∫(₀:ₜ)f(t-τ)g(τ)∂τ<left><right><c-r>=Eatchar('\s')<cr>

" Linear, non linear, homogeneous, non homogeneous differential Equations
inorea _hde1      y'+p(x)y=0<left><right><c-r>=Eatchar('\s')<cr>
inorea _lde1      y'+p(x)y=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlde1     y'=p(x,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea _hde2      y''+p(x)y'+q(x)y=0<left><right><c-r>=Eatchar('\s')<cr>
inorea _lde2      y''+p(x)y'+q(x)y=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlde2     y''=f(x,y,y')<left><right><c-r>=Eatchar('\s')<cr>
inorea _hden      aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=0<left><right><c-r>=Eatchar('\s')<cr>
inorea _lden      aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlden     y⁽ⁿ⁾=f(y⁽ⁿ⁻¹⁾,...,y⁽¹⁾,y⁽⁰⁾,x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _hde       aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=0<left><right><c-r>=Eatchar('\s')<cr>
inorea _lde       aₙ(x)y⁽ⁿ⁾+...+a₀(x)y⁽⁰⁾=d(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _nlde      y⁽ⁿ⁾=f(y⁽ⁿ⁻¹⁾,...,y⁽¹⁾,y⁽⁰⁾,x)<left><right><c-r>=Eatchar('\s')<cr>


" Change of variables
inorea _2cv       ∫∫ ཱf(x,y)dxdy=∫∫𑇁f(x(u,v),y(u,v))\|∂(x,y)/∂(u,v)\|du.dv<left><right><c-r>=Eatchar('\s')<cr>

" Polar coordinates
" inorea _2pol      ∫∫ ཱf(x,y)dxdy=∫(៵:ᵦ)∫(₍𛱝₎:ₕ₍𛱝₎)f(r cos θ, r sin θ) r drdθ<left><right><c-r>=Eatchar('\s')<cr>
inorea _2pol      ∫∫ ཱf(x,y)dxdy=∫∫f(r.cosθ,r.sinθ) r drdθ<left><right><c-r>=Eatchar('\s')<cr>
inorea _3pol      ∫∫∫𛱖f(x,y,z)dxdydz=∫∫∫𑇁f(r.sinθcosф,r.sinθsinф,r.cosθ) r²sinθ drdθdф<left><right><c-r>=Eatchar('\s')<cr>

" Change of variables
inorea _3cv       ∫∫∫𛱖f(x,y,z)dxdydz=∫∫∫𑇁f(x(u,v,w),y(u,v,w),z(u,v,w))\|∂(x,y,z)/∂(u,v,w)\|du.dv.dw<left><right><c-r>=Eatchar('\s')<cr>

" Surface integral
inorea _sint       A = ∫∫𑇁dꜱ⃗ = ∫∫꛵∂r⃗/∂x × ∂r⃗/∂ydᴀ⃗ = ∫∫꛵√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _surfaceint A = ∫∫𑇁dꜱ⃗ = ∫∫꛵∂r⃗/∂x × ∂r⃗/∂ydᴀ⃗ = ∫∫꛵√((df/dx)²+(df/dy)²+1)dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Line integrals
inorea _greens    ∮ꜰ⃗₁dx+ꜰ⃗₂dy=∫∫𐼦(∂ꜰ⃗₂/∂x-∂ꜰ⃗₁/∂y)dᴀ⃗=∫𐫶ꜰ⃗.dr⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _stokes    ∮𐫶ꜰ⃗.dr⃗ = ∫∫𑇁curl(ꜰ⃗).dꜱ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Flux integrals
inorea _flux      Flux = ∫∫𑇁ꜰ⃗.dꜱ⃗ = ∫∫∫៴divꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _flux3d    Flux = ∫∫𑇁ꜰ⃗.dꜱ⃗ = ∫∫∫៴divꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _flux2d    Flux = ∫𐫶ꜰ⃗.n⃗dꜱ⃗ =  ∫∫𐼦divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _div3d     Flux = ∫∫𑇁ꜰ⃗.dꜱ⃗ = ∫∫∫៴divꜰ⃗.dᴠ⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _div2d     Flux = ∫𐫶ꜰ⃗.n⃗dꜱ⃗ =  ∫∫𐼦divꜰ⃗.dᴀ⃗<left><right><c-r>=Eatchar('\s')<cr>

" Population growth, logistic growth, temperature change
inorea _popg      dP/dt = k.P -> ∫1/P dP = ∫k.dt -> P = ±C.eᵏᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _logg      dN/dt = r.N(K-N) -> N(t) = N₀K/((K-N₀)e⁻ʳᵗ + N₀)<left><right><c-r>=Eatchar('\s')<cr>
inorea _tempc     dT/dt = -K(T-Tₐ) -> T(t) = ±C.e⁻ᵏᵗ + Tₐ<left><right><c-r>=Eatchar('\s')<cr>

" Exact equations
inorea _exact     d/dx Ψ(x,y) = ∂Ψ/∂x + ∂Ψ/∂y * ∂y/∂x = Ψₓ<left><right><c-r>=Eatchar('\s')<cr>

" Jacobian transformation
inorea _jacobian  \|∂(x,y,z)/∂(u,v,w)\| = \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>
inorea _jacob     \|∂(x,y,z)/∂(u,v,w)\| = \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>

" Hessian Matrix
inorea _hessian   Hf = ⎡∂²f/∂x₁∂x₁ ... ∂²f/∂x₁∂x៷⎤<cr>     ⎢     .              .    ⎥<cr>⎢     .              .    ⎥<cr>⎣∂²f/∂x៷∂x₁ ... ∂²f/∂x៷∂x៷⎦<left><right><c-r>=Eatchar('\s')<cr>

" Del matrices
inorea _3delm     \|∂x/∂u ∂x/∂v ∂x/∂w\|<cr>\|∂y/∂u ∂y/∂v ∂y/∂w\|<cr>\|∂z/∂u ∂z/∂v ∂z/∂w\|<left><right><c-r>=Eatchar('\s')<cr>
inorea _2delm     \|∂x/∂u ∂x/∂v\|<cr>\|∂y/∂u ∂y/∂v\|<left><right><c-r>=Eatchar('\s')<cr>
inorea _delm      \|∂x/∂u ∂x/∂v\|<cr>\|∂y/∂u ∂y/∂v\|<left><right><c-r>=Eatchar('\s')<cr>

" Common derivatives/del notations
inorea _dx        ∂x<left><right><c-r>=Eatchar('\s')<cr>
inorea _dy        ∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea _dz        ∂z<left><right><c-r>=Eatchar('\s')<cr>
inorea _dxy       ∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea _dxyz      ∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>

inorea _dfdx      ∂f/∂x<left><right><c-r>=Eatchar('\s')<cr>
inorea _dfdy      ∂f/∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea _dfdz      ∂f/∂z<left><right><c-r>=Eatchar('\s')<cr>

inorea _dfdxyz    (∂f/∂x,∂f/∂y,∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dfxyz     (∂f/∂x,∂f/∂y,∂f/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dphdxyz   (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dphxyz    (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dphidxyz  (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _dphixyz   (∂φ/∂x,∂φ/∂y,∂φ/∂z)<left><right><c-r>=Eatchar('\s')<cr>


" Variables
inorea _fx        f(x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _fy        f(x,y)<left><right><c-r>=Eatchar('\s')<cr>
inorea _fz        f(x,y,z)<left><right><c-r>=Eatchar('\s')<cr>
inorea _fx2       f(x₁,x₂)<left><right><c-r>=Eatchar('\s')<cr>
inorea _fxn       f(x₁,...,xₙ)<left><right><c-r>=Eatchar('\s')<cr>

inorea _a1an      a₁,...,aₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _b1bn      b₁,...,bₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _c1cn      c₁,...,cₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _x1xn      x₁,...,xₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _y1yn      y₁,...,yₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _z1zn      z₁,...,zₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _u1un      {u⃗₁,...,u⃗ₙ}<left><right><c-r>=Eatchar('\s')<cr>
inorea _v1vn      {v⃗₁,...,v⃗ₙ}<left><right><c-r>=Eatchar('\s')<cr>
inorea _cnvn      c₁v⃗₁+...+cₙv⃗ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _vec       a<bs>  ⎧x₁⎫<cr><esc>ix⃗=⎨..⎬<cr>  ⎩xₙ⎭<left><right><c-r>=Eatchar('\s')<cr>

" Common limits
inorea _lim       limₓ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _lim0      limₓ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _limx0     limₓ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _lim0p     limₓ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _limx0p    limₓ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _lim0m     limₓ→₀-<left><right><c-r>=Eatchar('\s')<cr>
inorea _limx0m    limₓ→₀-<left><right><c-r>=Eatchar('\s')<cr>
inorea _limxa     limₓ→ₐ<left><right><c-r>=Eatchar('\s')<cr>
inorea _limxn     limₓ→ₙ<left><right><c-r>=Eatchar('\s')<cr>
inorea _limxi     limₓ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _limmi     limₓ→-∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _limxmi    limₓ→-∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _limxc     limₓ→꜀<left><right><c-r>=Eatchar('\s')<cr>

inorea _limn0     limₙ→₀<left><right><c-r>=Eatchar('\s')<cr>
inorea _limn0p    limₙ→₀₊<left><right><c-r>=Eatchar('\s')<cr>
inorea _limn0m    limₙ→₀-<left><right><c-r>=Eatchar('\s')<cr>
inorea _limni     limₙ→∞<left><right><c-r>=Eatchar('\s')<cr>
inorea _limnmi    limₙ→-∞<left><right><c-r>=Eatchar('\s')<cr>

" Common integrals
inorea _intpi     ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intmpi    ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intmpipi  ∫(-π:π)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxmpi   ∫(-π:π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxmpipi ∫(-π:π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _int2pi    ∫(₀:₂π)<left><right><c-r>=Eatchar('\s')<cr>
inorea _int02pi   ∫(₀:₂π)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx2pi   ∫(₀:₂π)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _intpi2    ∫(-π៸₂:π៸₂)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxpi2   ∫(-π៸₂:π៸₂)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea _intmix    ∫(-∞:ₓ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _inttmix   ∫(-∞:ₓ)dt<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxi     ∫(ₓ:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _inttxi    ∫(ₓ:∞)dt<left><right><c-r>=Eatchar('\s')<cr>

inorea _intab     ∫(ₐ:ⱃ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxab    ∫(ₐ:ⱃ)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _intba     ∫(ⱃ:ₐ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxba    ∫(ⱃ:ₐ)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea _int0a     ∫(₀:ₐ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx0a    ∫(₀:ₐ)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _int0nT    ∫(₀:ₙ꛵)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx0nT   ∫(₀:ₙ꛵)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _int0T     ∫(₀:꛵)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx0T    ∫(₀:꛵)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _int0i     ∫(₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx0i    ∫(₀:∞)dx<left><right><c-r>=Eatchar('\s')<cr>

inorea _inti      ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intmii    ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intx      ∫(-∞:∞)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxmii   ∫(-∞:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _intdx     ∫(-∞:∞)∂x<left><right><c-r>=Eatchar('\s')<cr>

inorea _intxy     ∫(-∞:∞)∫(-∞:∞)dxdy<left><right><c-r>=Eatchar('\s')<cr>
inorea _intdxy    ∫(-∞:∞)∫(-∞:∞)∂x∂y<left><right><c-r>=Eatchar('\s')<cr>
inorea _intxyz    ∫(-∞:∞)∫(-∞:∞)∫(-∞:∞)dxdydz<left><right><c-r>=Eatchar('\s')<cr>
inorea _intdxyz   ∫(-∞:∞)∫(-∞:∞)∫(-∞:∞)∂x∂y∂z<left><right><c-r>=Eatchar('\s')<cr>

" Common sums
inorea _sumx      ∑(ₓ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx0i    ∑(ₓ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx0N    ∑(ₓ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx1N    ∑(ₓ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx0n    ∑(ₓ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx1n    ∑(ₓ₌₁:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumx1i    ∑(ₓ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumn      ∑(ₙ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumn0i    ∑(ₙ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumn1i    ∑(ₙ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumn0n    ∑(ₙ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumk      ∑(ₖ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumk0i    ∑(ₖ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumkn     ∑(ₖ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumk0n    ∑(ₖ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumk1n    ∑(ₖ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumi      ∑(ᵢ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumfxi    ∑(ᵢ₌₀:៷)f(xᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi0N    ∑(ᵢ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi1N    ∑(ᵢ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumin     ∑(ᵢ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi0n    ∑(ᵢ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi1n    ∑(ᵢ₌₁:ₙ)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumik     ∑(ᵢ₌₀:ₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi0k    ∑(ᵢ₌₀:ₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi1k    ∑(ᵢ₌₁:ₖ)<left><right><c-r>=Eatchar('\s')<cr>

inorea _sumii     ∑(ᵢ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi0i    ∑(ᵢ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sumi1i    ∑(ᵢ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>

" Common mults
inorea _multx     ∏(ₓ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx0i   ∏(ₓ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx0N   ∏(ₓ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx1N   ∏(ₓ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx0n   ∏(ₓ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx1n   ∏(ₓ₌₁:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multx1i   ∏(ₓ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multn     ∏(ₙ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multn0i   ∏(ₙ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multn1i   ∏(ₙ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multn0n   ∏(ₙ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multk     ∏(ₖ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multk0i   ∏(ₖ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multkn    ∏(ₖ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multk0n   ∏(ₖ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multk1n   ∏(ₖ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multi     ∏(ᵢ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multfxi   ∏(ᵢ₌₀:៷)f(xᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi0N   ∏(ᵢ₌₀:៷)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi1N   ∏(ᵢ₌₁:៷)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multin    ∏(ᵢ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi0n   ∏(ᵢ₌₀:ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi1n   ∏(ᵢ₌₁:ₙ)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multik    ∏(ᵢ₌₀:ₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi0k   ∏(ᵢ₌₀:ₖ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi1k   ∏(ᵢ₌₁:ₖ)<left><right><c-r>=Eatchar('\s')<cr>

inorea _multii    ∏(ᵢ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi0i   ∏(ᵢ₌₀:∞)<left><right><c-r>=Eatchar('\s')<cr>
inorea _multi1i   ∏(ᵢ₌₁:∞)<left><right><c-r>=Eatchar('\s')<cr>

" Gram-Shmidt, used to get an orthogonal basis
inorea _gs         v⃗ₙ=u⃗ₙ-∑(ᵢ₌₀:ₙ₋₁)(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑(ᵢ₌₀:ₙ₋₁)projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _gramshmidt v⃗ₙ=u⃗ₙ-∑(ᵢ₌₀:ₙ₋₁)(<v⃗ᵢ,u⃗ₙ>/<v⃗ᵢ,v⃗ᵢ>)v⃗ᵢ=u⃗ₙ-∑(ᵢ₌₀:ₙ₋₁)projᵤᵢ(v⃗ₙ)<left><right><c-r>=Eatchar('\s')<cr>

" Projections
inorea _proj      b⃗=projₐ⃗(u⃗)=(<a⃗,u⃗>/<u⃗,u⃗>)u⃗=(a⃗.u⃗/u⃗.u⃗)u⃗<left><right><c-r>=Eatchar('\s')<cr>
inorea _projm     A(AᵀA)⁻¹Aᵀ<left><right><c-r>=Eatchar('\s')<cr>

" Least square approximation
inorea _lsq       AᵀAx⃗=Aᵀb⃗<left><right><c-r>=Eatchar('\s')<cr>

" Quadratic approximation
inorea _quada     Q(x,y) = a + b.x + c.y + dx² + e.x.y + f.y² = f(x₀,y₀) + fₓ(x₀,y₀)(x-x₀) + fᵧ(x₀,y₀)(y-y₀) + 1/2 fₓₓ(x₀,y₀)(x-x₀)² + fₓᵧ(x₀,y₀)(x-x₀)(y-y₀) + 1/2 fᵧᵧ(x₀,y₀)(y-y₀)²<left><right><c-r>=Eatchar('\s')<cr>

" Law of total probability
inorea _prob      P(A)=∑(ᵢ₌₀:៷)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _probsum   P(A)=∑(ᵢ₌₀:៷)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _probtot   P(A)=∑(ᵢ₌₀:៷)P(Bᵢ)P(A/Bᵢ)<left><right><c-r>=Eatchar('\s')<cr>

" Addition theorem of probability:
inorea _probu     P(A∪B) = P(A) + P(B) - P(A∩B)<left><right><c-r>=Eatchar('\s')<cr>
inorea _proba     P(A∪B) = P(A) + P(B) - P(A∩B)<left><right><c-r>=Eatchar('\s')<cr>

" Conditional Probability :
inorea _probc     P(A/B) = P(A∩B)/P(B) = P(B/A).P(A)/P(B)<left><right><c-r>=Eatchar('\s')<cr>
inorea _bayes     P(Bᵢ/A) = P(Bᵢ)P(A/Bᵢ)/(∑(ᵢ₌₀:៷)P(Bᵢ)P(A/Bᵢ))<left><right><c-r>=Eatchar('\s')<cr>

" De Morgan’s Laws:
inorea _demorgan  (A∪B)ᶜ = Aᶜ∩Bᶜ ; (A∩B)ᶜ = Aᶜ∪Bᶜ<left><right><c-r>=Eatchar('\s')<cr>
inorea _dm        (A∪B)ᶜ = Aᶜ∩Bᶜ ; (A∩B)ᶜ = Aᶜ∪Bᶜ<left><right><c-r>=Eatchar('\s')<cr>

" Distributive Laws :
inorea _distl     A ∪ (B ∩ C) = (A ∪ B) ∩ (A ∪ C) ; A ∩ (B ∪ C) = (A ∩ B) ∪ (A ∩ C)<left><right><c-r>=Eatchar('\s')<cr>

" Number of permutations of n different things taken r at a time =
inorea _perm      ⁿPₖ = n!/(n-k)!<left><right><c-r>=Eatchar('\s')<cr>
" Number of combinations of n different things taken r at a time ; n choose k
inorea _nk        ⎛n⎞<cr>ⁿCₖ = ⎝k⎠ = n!/k!(n-k)!<left><right><c-r>=Eatchar('\s')<cr>
inorea _comb      ⎛n⎞<cr>ⁿCₖ = ⎝k⎠ = n!/k!(n-k)!<left><right><c-r>=Eatchar('\s')<cr>

" Pascal's identity
inorea _pascal    ⎛n⎞   ⎛ n ⎞   ⎛n+1⎞<cr>⎝k⎠ + ⎝k+1⎠ = ⎝k+1⎠<left><right><c-r>=Eatchar('\s')<cr>


" Arithmetic Mean
inorea _mean      AM=∑(ᵢ₌₁:ₙ)xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
inorea _meana     AM=∑(ᵢ₌₁:ₙ)xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
" Geometric Mean
inorea _meang     GM=(∏(ᵢ₌₁:ₙ)xᵢ)¹ᐟⁿ=ⁿ√(x₁x₂...xₙ)<left><right><c-r>=Eatchar('\s')<cr>
" Weighted arithmetic mean
inorea _meanw     WM=∑λᵢxᵢ/∑λᵢ<left><right><c-r>=Eatchar('\s')<cr>
" Mean absolute Deviation
inorea _mad       MAD = Σ(ᵢ₌₁:ₙ)\|xᵢ-μ\|/N<left><right><c-r>=Eatchar('\s')<cr>

" Discreet mean and variance with known probability pᵢ for each event xᵢ
inorea _meand     μ=E(X)=∑pᵢxᵢ/∑pᵢ=∑(ᵢ₌₀:៷)pᵢxᵢ<left><right><c-r>=Eatchar('\s')<cr>
inorea _vard      σ²=V(X)=E[(X-μ)²]=∑(ᵢ₌₀:៷)(xᵢ-μ)²pᵢ/∑pᵢ=∑(ᵢ₌₀:៷)(xᵢ-μ)²pᵢ<left><right><c-r>=Eatchar('\s')<cr>

" Continuous mean and variance
inorea _meanc     μ=E(X)=∫(-∞:∞)x.pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _varc      σ²=V(X)=E[(X-μ)²]=∫(-∞:∞)(x-μ)²pdf(x)dx<left><right><c-r>=Eatchar('\s')<cr>

" Mean/expected value and variance properties
inorea _meanprop  E(X+Y)=E(X)+E(Y) ; E(X-Y)=E(X)-E(Y) ; E(cX)=cE(X) ; E(XY)=E(X)E(Y)<c-r>=Eatchar('\s')<cr>
inorea _varprop   V(X+Y)=V(X)+V(Y) ; V(X-Y)=V(X)-V(Y) ; V(cX)=c²V(X) ; V(X+c)=V(X)<c-r>=Eatchar('\s')<cr>

" z-score
inorea _zs        z = (x-μ)/σ<left><right><left><right><c-r>=Eatchar('\s')<cr>
" Population Correlation
inorea _corr      ρₓᵧ=cov(X,Y)/(σₓσᵧ)=(∑(ᵢ₌₁:៷)(xᵢ-μₓ)(yᵢ-μᵧ))/√(∑(ᵢ₌₁:៷)(xᵢ-μₓ)²(yᵢ-μᵧ)²)<left><right><c-r>=Eatchar('\s')<cr>



" Probability Density Function
inorea _pdf       PDF=f(x)=d/dx CDF=dF(x)/dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdf       P(X≤a)=∫(₀:ₐ)f(x)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _pmf       PMF=f(x)=P(X=x)<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfd      P(X≤k)=∑(ₖ₌₀:ₓ)f(x)dx<left><right><c-r>=Eatchar('\s')<cr>

" Binomial distribution function - PMF
inorea _pmfb      ⎛n⎞<cr>P(X=k)=⎝k⎠pᵏ(1-p)ⁿ⁻ᵏ=ⁿCₖpᵏqⁿ⁻ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfb      ⎛n⎞<cr>P(X≤k)=∑(ₖ₌₀:ₓ)⎝k⎠pᵏ(1-p)ⁿ⁻ᵏ=I₁₋ₚ(n−k,k+1)<left><right><c-r>=Eatchar('\s')<cr>
" Binomial Probability Distribution:
inorea _meanb     μ = ∑pᵢxᵢ/∑pᵢ = ∑pᵢxᵢ = np<left><right><c-r>=Eatchar('\s')<cr>
inorea _varb      σ² = ∑(xᵢ-μ)²pᵢ = ∑pᵢxᵢ² - μ² = npq<left><right><c-r>=Eatchar('\s')<cr>

" Geometric distribution
inorea _pmfg      P(X=x)=(1-p)ˣ⁻¹p<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfg      P(X≤x)=1-(1-p)ˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _meangd    μ=1/p<left><right><c-r>=Eatchar('\s')<cr>
inorea _vargd     σ²=q/p²<left><right><c-r>=Eatchar('\s')<cr>

" Poisson Distribution PMF
inorea _pmfp      P(X=k)=λᵏ/k! e⁻ᣔ<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfp      P(X=k)=e⁻ᣔ∑(ᵢ₌₀:ₖ)λⁱ/i!<left><right><c-r>=Eatchar('\s')<cr>
inorea _meanp     μ=λ=np<left><right><c-r>=Eatchar('\s')<cr>
inorea _varp      σ²=λ=np<left><right><c-r>=Eatchar('\s')<cr>

" Normal Probability Density Function
inorea _pdfn      φ(x)=1/σ√2π e⁻⁽ˣ⁻ꭟ⁾ᐟ²ᣙ<left><right><c-r>=Eatchar('\s')<cr>
" Cumulative Normal Distribution Function
inorea _cdfn      F(x)=P(X<x)=1/σ√2π ∫(-∞:ₓ)e⁽ᵗ⁻ꭟ⁾ᐟ²ᣙdt<left><right><c-r>=Eatchar('\s')<cr>

" Continuous Uniform Density
inorea _pdfcu     f(x)=1/(b-a) ; a ≤ x ≤ b ; 0 elsewhere<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfcu     F(x)=0; x < a; F(x)=(x−a)/(b-a) ; a ≤ x ≤ b ; F(x)=1 ; x > b<left><right><c-r>=Eatchar('\s')<cr>
inorea _meancu    μ=(a+b)/2<left><right><c-r>=Eatchar('\s')<cr>
inorea _varcu     σ²=((b−a)²−1)/12<left><right><c-r>=Eatchar('\s')<cr>

" Exponential probability Density Function
inorea _pdfe      f(t)=λe⁻ᣔᵗ<left><right><c-r>=Eatchar('\s')<cr>
inorea _cdfe      F(x)=1−e⁻ᣔˣ<left><right><c-r>=Eatchar('\s')<cr>
inorea _meane     μ=β<left><right><c-r>=Eatchar('\s')<cr>
inorea _vare      σ²=β²<left><right><c-r>=Eatchar('\s')<cr>



" Statistics sample arithmetic mean, uses x̅ and s instead of μ and σ
inorea _means     x̅ = ∑(ᵢ₌₀:ₙ)xᵢ/n<left><right><c-r>=Eatchar('\s')<cr>
" Statistics sample variance, sample standard deviation
inorea _vars      sₓ² = ∑(xᵢ-x̅)²/(n-1)<left><right><c-r>=Eatchar('\s')<cr>
inorea _sds       sₓ = √(∑(xᵢ-x̅)²/(n-1))<left><right><c-r>=Eatchar('\s')<cr>

" Statistics population variance, standard deviation
inorea _meansp    μ = ∑(ᵢ₌₀:៷)xᵢ/N<left><right><c-r>=Eatchar('\s')<cr>
inorea _varsp     σ² = ∑(xᵢ-μ)²/N = ∑xᵢ²/N - μ²<left><right><c-r>=Eatchar('\s')<cr>
inorea _sdsp      σ = √(∑(xᵢ-μ)²/N)<left><right><c-r>=Eatchar('\s')<cr>

" Sample z/t score
inorea _zss       z=(x̅-μ)/(σ/√n)<left><right><c-r>=Eatchar('\s')<cr>
inorea _tss       t=(x̅-μ)/(s/√n)<left><right><c-r>=Eatchar('\s')<cr>
" Sample Correlation
inorea _corrs     r = 1/(n-1) ∑(ᵢ₌₁:ₙ)((xᵢ-x̅)/sₓ (yᵢ-y̅)/sᵧ)<left><right><c-r>=Eatchar('\s')<cr>

" Least-squares regression line
inorea _lsrls     ŷ=a+bx ; b=rsᵧ/sₓ ; a = y̅-bx̅<left><right><c-r>=Eatchar('\s')<cr>

" Standard error of the estimate or standard deviation of the residuals
inorea _se        sₑ=√(1/(n-2) ∑(ᵢ₌₀:ₙ)(yᵢ-ŷ)²<left><right><c-r>=Eatchar('\s')<cr>

" The Standard Error of the Slope
inorea _seb       SEⱃ=sₑ/√(∑(ᵢ₌₁:ₙ)(xᵢ-x̅)²<left><right><c-r>=Eatchar('\s')<cr>




" u Substitution
inorea _usub      ∫(ₐ:ⱃ)f(g(x))g′(x)dx = ∫(₍ₐ₎:₍ⱃ₎)f(u)du<left><right><c-r>=Eatchar('\s')<cr>

" Integration by Parts
inorea _intparts  ∫(ₐ:ⱃ)u dv = uv∣ₐᵇ -∫(ₐ:ⱃ)v du.<left><right><c-r>=Eatchar('\s')<cr>

" Power series
inorea _pseries   ∑(ₙ₌₀:∞)(aₙxⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _pseries0  ∑(ₙ₌₀:∞)(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>
inorea _pseriesx0 ∑(ₙ₌₀:∞)(aₙ(x-x₀)ⁿ)<left><right><c-r>=Eatchar('\s')<cr>

" Taylor series
inorea _taylor    f(x)=∑(ₙ₌₀:∞) f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>
inorea _taylors   f(x)=∑(ₙ₌₀:∞) f⁽ⁿ⁾(a) ((x-a)ⁿ/n!)<left><right><c-r>=Eatchar('\s')<cr>

" Binomial series
inorea _bins1     ⎛n⎞<cr>(1+x)ⁿ=∑(ₖ₌₀:∞)⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea _binomial1 ⎛n⎞<cr>(1+x)ⁿ=∑(ₖ₌₀:∞)⎝k⎠xᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea _bins      ⎛n⎞<cr>(a+b)ⁿ=∑(ₖ₌₀:∞)⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>
inorea _binomial  ⎛n⎞<cr>(a+b)ⁿ=∑(ₖ₌₀:∞)⎝k⎠aⁿ⁻ᵏ+bᵏ<left><right><c-r>=Eatchar('\s')<cr>

" Fourier series
inorea _fs        f(x)=a₀/2 + ∑(ₙ₌₁:∞)(aₙ cos nx + bₙ sin nx) ; aₙ=1/π ∫(-π:π)f(x)cos(nx)dx ; bₙ=1/π ∫(-π:π)f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>
inorea _fourier   f(x)=a₀/2 + ∑(ₙ₌₁:∞)(aₙ cos nx + bₙ sin nx) ; aₙ=1/π ∫(-π:π)f(x)cos(nx)dx ; bₙ=1/π ∫(-π:π)f(x)sin(nx)dx<left><right><c-r>=Eatchar('\s')<cr>

" Common algebraic terms
inorea _s2a2      (s²+a²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _x2a2      (x²+a²)<left><right><c-r>=Eatchar('\s')<cr>
inorea _lnxa      ln∣(x+a)/(x-a)∣<left><right><c-r>=Eatchar('\s')<cr>

" Alligation is a method of calculating weighted averages
inorea _allig     w₁/w₂=(x₂-x)/(x-x₁)<left><right><c-r>=Eatchar('\s')<cr>
inorea _weight    w₁/w₂=(x₂-x)/(x-x₁)<left><right><c-r>=Eatchar('\s')<cr>


