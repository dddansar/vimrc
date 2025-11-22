
" change the width/size/length/cursor of a range of characters!
" setcellwidths()
" The format for an inner list is:
" [start_char_code, end_char_code, width]
" width: The desired display width for characters within this range (typically 1 or 2). not allowed 3!
call setcellwidths([
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
                  \ [0x3008, 0x300b, 2],
                  \ [0xa4e5, 0xa4e6, 2],
                  \ [0xd7b0, 0xec0f, 2],
                  \ [0x1d360, 0x1d7ff, 2],
                  \ [0x1f110, 0x1f16f, 2],
                  \])


" NOTE: to add more ascii/unicode symbols use (i)c-v  :help i_CTRL-V_digit
" then use u for UTF-16 or U for UTF-32 followed by 4 or 8 digits.
" ex" (i)c-v u03c0 gives: π 
" NOTE: Use ga to get the Unicode code

"---------------------------
" Random symbols
"---------------------------

"" ♲⚛⚖⚔☮★☀
inorea _check     ✓
inorea _xcheck    ✗
inorea _tm        
inorea _euro      €
inorea _pound     £
inorea _lira      ₤
inorea _yen       ¥
inorea _peso      ₱
inorea _rupee     ₹
inorea _ruble     ₽
inorea _bitcoin   ₿
" NOTE: iskeyword command does not like commented out lines
"inorea _...        …
"inorea /...        /…

inorea _male      ♂
inorea _fmale     ♀
inorea _sun       ☼

" section sign
inorea _section   §
inorea _paragraph §
inorea _silcrow   §
inorea _?         ¿

" ❤♡♥
inorea _heart     ♥
inorea _yinyang   ☯
inorea _yy        ☯

"emoji
"🇨🈴🌈🌀🌋🌊🌍🌎🌏🌐🌕🌒🌩🏛🏹🐬🔔🔬🔭🔹🕹😌🚀🛠🟡🟤🟥🥗🧭🐆

" ❌❕❓

"viking runes 𐌙 𐌔 𐌕



"---------------------------
" math terms: operators
"---------------------------

inorea _+-        ±
inorea _pm        ±
inorea _-+        ∓
inorea _mp        ∓
inorea _div       ÷

syn match   OrangeColorb "[±∓÷∗⋅]" contains=@NoSpell

" ⨉ ✕ ✖ ☓   ∖ ∕ ⁄ ⨂ ⨁ ⴻ 𐌈 𐌗 ◎ ☉
" see circled ⨂ ⊗ ① ② ③ ④ ⒈ ⒉ ⒊ ➀ ➁ ➂  ⊙ ⊚ ⊘ ⦸ ⦶ 🄐 🅐 ♳♴♷  
" ⊠ ⊞ ⟐ ⟎ ⧄ ⧉ ⧈ 🄰 🅰
inorea _ring      ∘
inorea _ast       ∗
inorea _**        ∗
inorea _x2        ✕
inorea _x         ×
inorea _ox        ⨂
inorea _ox2       ⊗
inorea _xo        ⨂
inorea _xo2       ⊗
inorea _dot       ⋅

syn match   OrangeColorb "[∘∗∗×✕⨂⊗⨂⊗⋅]" contains=@NoSpell




"---------------------------
" math terms: proofs
"---------------------------

"forall ∀ Ɐ
inorea _fa        ∀
inorea _favs      ∀ 𝒙∈𝕊

"there exists
inorea _te        ∃
inorea _tdne      ∄

"THEREFORE
"inorea _.:       ∴
"BECAUSE
"inorea _:.       ∵


"---------------------------
" math terms: sets
"---------------------------

"empty set, null set
inorea _null      ∅
inorea _compl     ᶜ

" ∊∈ ⋂ ⋃    

"INTERSECTION
inorea _In        ∩
inorea _U(        ∩

"UNION
inorea _Un        ∪
inorea _U)        ∪
inorea _!<        ≮
inorea _!>        ≯
inorea _((        ⊂
inorea _))        ⊃
inorea _!(        ⊄
inorea _!)        ⊅
inorea __(        ⊆
inorea __C        ⊆
inorea __)        ⊇
inorea _!_(       ⊈
inorea _!_)       ⊉

" ELEMENT OF
inorea _(-        ∈
inorea _mem       ∈
inorea _!(-       ∉
inorea _nmem      ∉

" CONTAINS AS MEMBER
inorea _-)        ∋
inorea _!-)       ∌

syn match   Pink2Colorb "[∀∩∪≮≯⊂⊃⊄⊅⊆⊇⊈⊉∈∉∋∌∃∄⋂⋃]" contains=@NoSpell


"---------------------------
" math terms: logic
"---------------------------
" NOT:  ! ~ ¬ ' ‾  ¬A
" AND:  . & ^ ∧ Λ ꓥ ⋀, &&  A∧B  AΛB  AꓥB
" OR:   + | v ∨ ∥ ꓦ ⋁   AvB A∨B AꓦB
" NAND: ↑ ⊼  ¬(A.B)
" NOR:  ↓ ⊽  ¬(A+B)
" xor:  ⊕ ⊻
" xnor: ⊙ ↔
inorea _not       ¬
inorea _and       ∧
inorea _nand      ⊼
inorea _or        ∨
inorea _nor       ⊽
inorea _xor       ⊻
inorea _xor2      ⊕
inorea _xnor      ⊙

syn match   OrangeColorb "[∧∨¬⊻⊕⊙⊼⊽]" contains=@NoSpell


" equivalent ≡ ⇋ ⇔
" non equivalent ≢ ⇎ ⇹
" implies → ⇒ ⊃
" converse ← ⇐ ⊂
" ⥸
" ꜂꜁
inorea _!=        ≠
inorea _neq       ≠
inorea _3=        ≡
inorea _3eq       ≡
inorea _3!=       ≢
inorea _3neq      ≢
inorea _=<        ≤
inorea _le        ≤
inorea _lteq      ≤
inorea _>=        ≥
inorea _ge        ≥
inorea _gteq      ≥
inorea _!<=       ≰
inorea _!>=       ≱
inorea _~=        ≈

syn match   OrangeColorb "[≠≡≤≥≰≱≈]" contains=@NoSpell


" arrows
"     ⇋ ⇌
" ➙ ➜ ➝ ➞ ➔ ⟶ ￫
" ⇔⟺ ⇒⟹ ⇨ ➩ ⟾ ⤇    
inorea _->        →
inorea _>>        →
inorea _implies   ⇒
inorea _imp       ⇒
inorea _=>        ⇒
inorea _eq>       ⇒
inorea _<-        ←
inorea _<<        ←
inorea _<=        ⇐
inorea _eq<       ⇐

inorea _<->       ↔ " does not work...
inorea _<>        ↔
inorea _</->      ⇹
inorea _<-/->     ⇹
inorea _<-->      ⇆
inorea _-><-      ⇄
inorea _<-<-      ⇇
inorea _->->      ⇉
inorea _->'       ⇀
inorea _->,       ⇁
inorea _<=>       ⇔
inorea _</=>      ⇎
inorea _<=/=>     ⇎

syn match   Pink2Colorb "[→⇒←⇐↔⇹⇹⇆⇄⇇⇉⇀⇁⇔⇎⇎]" contains=@NoSpell


" brackets/parenthesis
" □ ◻ ☐ ◊ ⋄ ◇ ♢ ⬦  ❬ ❭ ❮ ❯❰ ❱ ⟨ ⟩〈 〉    
inorea _v[        ⟨
inorea _v<        ⟨
inorea _v]        ⟩
inorea _v>        ⟩
inorea _v[]       ⟨⟩

syn match   RedColorb "[⟨⟩]" contains=@NoSpell


" Tack ⊢ ⊦ ⊣, turnstile, tee, yields, proves, satisfies, entails, assert ⊦ \vdash
" Ⱶ ⱶ ⹐ ⹑
" ⟂ ⟘ ⟙
"inorea _\|-       ⊢
"inorea _!\|-      ⊬
inorea _assert    ⊦
inorea _tee       ⊢
inorea _ntee      ⊬
inorea _rtee      ⊣
inorea _-\|       ⊣
inorea _top       ⊤
inorea _bot       ⊥


" double turnstile, entails, models, true ⊨ models ⊧
"inorea _\|=       ⊨
"inorea _!\|=      ⊭
inorea _dtee      ⊨
inorea _ndtee     ⊭

" forces,does not force, satisfies
"inorea _\|\|-     ⊩
"inorea _!\|\|-    ⊮
inorea _sats      ⊩
inorea _nsats     ⊮

syn match   Pink2Colorb "[⟂⊦⊢⊬⊣⊤⊥⊨⊭⊩⊮]" contains=@NoSpell


"---------------------------
" math terms: algebra
"---------------------------

" 𝝙 𝞓 𝛁 𝞩
"partial differential
inorea _partial   ∂
inorea _pdiff     ∂
inorea _del       ∂
inorea _grad      ∇


"∨ ∧ ⋀ ⋁ Λ ꓥ ꓦ ⋂ ⋃     Σ 𝚺 𝛴 𝜮 𝝨 𝞢
"N-ARY PRODUCT
inorea _mult      ∏
inorea _prod      ∏
inorea _coprod    ∐

"N-ARY SUMMATION
inorea _sum       Σ
inorea _Sum       ∑
inorea ddsum      ⅀

"N-ary logical or logical and
inorea _And       ꓥ
inorea _Nand      ꓥ
inorea _NV        ꓥ
inorea _Nor       ꓦ
inorea _Or        ꓦ

" ᶴ
inorea _int       ∫
inorea _into      ∮
inorea _int0      ∮


syn match   Blue2Colorb "[∏∐∑⅀ꓥꓦ]" contains=@NoSpell
syn match   OrangeColorb   "[∂∫∮]" contains=@NoSpell


"---------------------------
" math terms: other
"---------------------------

inorea _sqrt      √
inorea _inf       ∞

"Proportional to
inorea _prop      ∝

inorea _sine      ∿

syn match   OrangeColorb "[∿∝]" contains=@NoSpell
syn match   BlueColorb   "[⚛]" contains=@NoSpell
syn match   OrangeColorb "[√]" contains=@NoSpell
syn match   CyanColorb   "[∞]" contains=@NoSpell

syn match   BlueColor   "[∞]\+[A-Z0-9]\+" contains=@NoSpell


"---------------------------
" geometry
"---------------------------

"" Impossible/Penrose triangle ⨻ ⟁ ⧉ ⎊ ◮ ◆ ◇ ◈
" ॥ ‖ ∥  ᜶ ✡ ✩ ✯ ★ ☆ ⭑ °ﹾ ∦ ▱ ⭐
"inorea _!//       ∦
inorea _angle     ∠
inorea _rangle    ∟
inorea _90        ∟
inorea _90deg     ∟
inorea _//        
inorea _deg       °
inorea _degree    °
inorea _degrees   °

syn match   YellowColorb "[∠∟°]" contains=@NoSpell

inorea _tri       △
inorea _sq        □
inorea _square    □
inorea _rect      ▭
inorea _diam      ◊
inorea _pent      ⬠
inorea _hexa      ⬡
inorea _circ      ○
inorea _ellipse   ⬯
inorea _star      ★
inorea _star2     ✯
inorea _star3     ☆

syn match   OrangeColorb "[△□□▭◊⬠⬡○⬯★✯☆]" contains=@NoSpell


"---------------------------
" Greek letters
" used in science and math
"---------------------------

inorea _hbar      ħ
inorea _planck    ħ

" ɸ Φ φ ϕф  Ф ⱷ   𝚽 𝛗 𝛟 𝛷 𝜑 𝜙 𝜱 𝝋 𝝓 𝝫 𝞅 𝞍 𝞥 𝞿 𝟇  Ⲫ ⲫ 
" ⲑ Ⲑ ᴦ
" 𝜕 𝜖 𝜗 𝜘 𝜙 𝜚 𝜛
" ᴫ ᴨ ᴩ ᴪ ៵ᴨ

" superscript
inorea sp_alpha   ᵅ
inorea sp_beta    ᵝ
inorea sp_gamma   ᵞ
inorea sp_delta   ᵟ
inorea sp_epsilon ᵋ
inorea sp_zeta    ᶼ
inorea sp_eta     ᶯ
inorea sp_theta   ᶱ
inorea sp_phi     ᵠ
inorea sp_chi     ᵡ
inorea sp_upsilon ᶷ

inorea sp_Theta   ᶿ
inorea sp_Phi     ᶲ

" subscript
inorea sb_beta    ᵦ
inorea sb_gamma   ᵧ
inorea sb_rho     ᵨ
inorea sb_phi     ᵩ
inorea sb_chi     ᵪ

syn match   CyanColor   "[ᵅᵝᵞᵟᵋᶼᶯᶱᵠᵡᶷᶿᶲᵦᵧᵨᵩᵪ]" contains=@NoSpell

inorea b_Delta2   𝝙
inorea bc_Delta2  𝞓
inorea _phi2      ф
inorea c_phi2     𝜙
inorea _Sigma2    ∑
inorea c_Theta2   𝛳

syn match   WhiteColor   "[𝝙𝞓]" contains=@NoSpell
syn match   BlueColor   "[ф]" contains=@NoSpell
syn match   LightOliveColor   "[𝜙]" contains=@NoSpell

" greek
inorea _Alpha     Α
inorea _Beta      Β
inorea _Gamma     Γ
inorea _Delta     Δ
inorea _Epsilon   Ε
inorea _Zeta      Ζ
inorea _Eta       Η
inorea _Theta     Θ
inorea _Iota      Ι
inorea _Kappa     Κ
inorea _Lambda    Λ
inorea _Mu        Μ
inorea _Nu        Ν
inorea _Xi        Ξ
inorea _Omicron   Ο
inorea _Pi        Π
inorea _Rho       Ρ
inorea _Sigma     Σ
inorea _Tau       Τ
inorea _Upsilon   Υ
inorea _Phi       Φ
inorea _Chi       Χ
inorea _Psi       Ψ
inorea _Omega     Ω

inorea _Nabla     𝞩

syn match   BlueColor   "[ΑΒΓΔΕΖΗΘΙΚΛΜΝΞΟΠΡΣΤΥΦΧΨΩ∑𝞩]" contains=@NoSpell

" cursive
inorea c_Alpha    𝛢
inorea c_Beta     𝛣
inorea c_Gamma    𝛤
inorea c_Delta    𝛥
inorea c_Epsilon  𝛦
inorea c_Zeta     𝛧
inorea c_Eta      𝛨
inorea c_Theta    𝛩
inorea c_Iota     𝛪
inorea c_Kappa    𝛫
inorea c_Lambda   𝛬
inorea c_Mu       𝛭
inorea c_Nu       𝛮
inorea c_Xi       𝛯
inorea c_Omicron  𝛰
inorea c_Pi       𝛱
inorea c_Rho      𝛲
inorea c_Sigma    𝛴
inorea c_Tau      𝛵
inorea c_Upsilon  𝛶
inorea c_Phi      𝛷
inorea c_Chi      𝛸
inorea c_Psi      𝛹
inorea c_Omega    𝛺

inorea c_nabla    𝛻

syn match   LightOliveColor   "[𝛢𝛣𝛤𝛥𝛦𝛧𝛨𝛩𝛪𝛫𝛬𝛭𝛮𝛯𝛰𝛱𝛲𝛳𝛴𝛵𝛶𝛷𝛸𝛹𝛺𝛻]" contains=@NoSpell

" greek
inorea _alpha     α
inorea _beta      β
inorea _gamma     γ
inorea _delta     δ
inorea _epsilon   ε
inorea _zeta      ζ
inorea _eta       η
inorea _theta     θ
inorea _iota      ι
inorea _kappa     κ
inorea _lambda    λ
inorea _mu        μ
inorea _nu        ν
inorea _xi        ξ
inorea _omicron   ο
inorea _pi        π
inorea _rho       ρ
inorea _fsigm     ς
inorea _sigma     σ
inorea _tau       τ
inorea _upsilon   υ
inorea _phi       φ
inorea _chi       χ
inorea _psi       ψ
inorea _omega     ω

inorea _nabla     ∇

syn match   BlueColor   "[αβγδεζηθικλμνξοπρςστυφχψω∇]" contains=@NoSpell

" cursive
inorea c_alpha    𝛼
inorea c_beta     𝛽
inorea c_gamma    𝛾
inorea c_delta    𝛿
inorea c_epsilon  𝜀
inorea c_zeta     𝜁
inorea c_eta      𝜂
inorea c_theta    𝜃
inorea c_iota     𝜄
inorea c_kappa    𝜅
inorea c_lambda   𝜆
inorea c_mu       𝜇
inorea c_nu       𝜈
inorea c_xi       𝜉
inorea c_omicron  𝜊
inorea c_pi       𝜋
inorea c_rho      𝜌
inorea c_fsigm    𝜍
inorea c_sigma    𝜎
inorea c_tau      𝜏
inorea c_upsilon  𝜐
inorea c_phi      𝜑
inorea c_chi      𝜒
inorea c_psi      𝜓
inorea c_omega    𝜔

syn match   LightOliveColor   "[𝛼𝛽𝛾𝛿𝜀𝜁𝜂𝜃𝜄𝜅𝜆𝜇𝜈𝜉𝜊𝜋𝜌𝜍𝜎𝜏𝜐𝜑𝜒𝜓𝜔]" contains=@NoSpell

" bold cursive
inorea bc_Alpha   𝜜
inorea bc_Beta    𝜝
inorea bc_Gamma   𝜞
inorea bc_Delta   𝜟
inorea bc_Epsilon 𝜠
inorea bc_Zeta    𝜡
inorea bc_Eta     𝜢
inorea bc_Theta   𝜣
inorea bc_Iota    𝜤
inorea bc_Kappa   𝜥
inorea bc_Lambda  𝜦
inorea bc_Mu      𝜧
inorea bc_Nu      𝜨
inorea bc_Xi      𝜩
inorea bc_Omicron 𝜪
inorea bc_Pi      𝜫
inorea bc_Rho     𝜬
inorea bc_Fsigm   𝜭
inorea bc_Sigma   𝜮
inorea bc_Tau     𝜯
inorea bc_Upsilon 𝜰
inorea bc_Phi     𝜱
inorea bc_Chi     𝜲
inorea bc_Psi     𝜳
inorea bc_Omega   𝜴
inorea bc_Nabla   𝜵

syn match   WhiteColor   "[𝜜𝜝𝜞𝜟𝜠𝜡𝜢𝜣𝜤𝜥𝜦𝜧𝜨𝜩𝜪𝜫𝜬𝜭𝜮𝜯𝜰𝜱𝜲𝜳𝜴𝜵]" contains=@NoSpell

" bold cursive
inorea bc_alpha   𝜶
inorea bc_beta    𝜷
inorea bc_gamma   𝜸
inorea bc_delta   𝜹
inorea bc_epsilon 𝜺
inorea bc_zeta    𝜻
inorea bc_eta     𝜼
inorea bc_theta   𝜽
inorea bc_iota    𝜾
inorea bc_kappa   𝜿
inorea bc_lambda  𝝀
inorea bc_mu      𝝁
inorea bc_nu      𝝂
inorea bc_xi      𝝃
inorea bc_omicron 𝝄
inorea bc_pi      𝝅
inorea bc_rho     𝝆
inorea bc_fsigm   𝝇
inorea bc_sigma   𝝈
inorea bc_tau     𝝉
inorea bc_upsilon 𝝊
inorea bc_phi     𝝋
inorea bc_chi     𝝌
inorea bc_psi     𝝍
inorea bc_omega   𝝎

syn match   WhiteColor   "[𝜶𝜷𝜸𝜹𝜺𝜻𝜼𝜽𝜾𝜿𝝀𝝁𝝂𝝃𝝄𝝅𝝆𝝇𝝈𝝉𝝊𝝋𝝌𝝍𝝎]" contains=@NoSpell

" bold
inorea b_Alpha    𝚨
inorea b_Beta     𝚩
inorea b_Gamma    𝚪
inorea b_Delta    𝚫
inorea b_Epsilon  𝚬
inorea b_Zeta     𝚭
inorea b_Eta      𝚮
inorea b_Theta    𝚯
inorea b_Iota     𝚰
inorea b_Kappa    𝚱
inorea b_Lambda   𝚲
inorea b_Mu       𝚳
inorea b_Nu       𝚴
inorea b_Xi       𝚵
inorea b_Omicron  𝚶
inorea b_Pi       𝚷
inorea b_Rho      𝚸
inorea b_Fsigm    𝚹
inorea b_Sigma    𝚺
inorea b_Tau      𝚻
inorea b_Upsilon  𝚼
inorea b_Phi      𝚽
inorea b_Chi      𝚾
inorea b_Psi      𝚿
inorea b_Omega    𝛀
inorea b_Nabla    𝛁

syn match   WhiteColor   "[𝚨𝚩𝚪𝚫𝚬𝚭𝚮𝚯𝚰𝚱𝚲𝚳𝚴𝚵𝚶𝚷𝚸𝚹𝚺𝚻𝚼𝚽𝚾𝚿𝛀𝛁]" contains=@NoSpell

" bold
inorea b_alpha    𝛂
inorea b_beta     𝛃
inorea b_gamma    𝛄
inorea b_delta    𝛅
inorea b_epsilon  𝛆
inorea b_zeta     𝛇
inorea b_eta      𝛈
inorea b_theta    𝛉
inorea b_iota     𝛊
inorea b_kappa    𝛋
inorea b_lambda   𝛌
inorea b_mu       𝛍
inorea b_nu       𝛎
inorea b_xi       𝛏
inorea b_omicron  𝛐
inorea b_pi       𝛑
inorea b_rho      𝛒
inorea b_fsigm    𝛓
inorea b_sigma    𝛔
inorea b_tau      𝛕
inorea b_upsilon  𝛖
inorea b_phi      𝛗
inorea b_chi      𝛘
inorea b_psi      𝛙
inorea b_omega    𝛚

syn match   WhiteColor   "[𝛂𝛃𝛄𝛅𝛆𝛇𝛈𝛉𝛊𝛋𝛌𝛍𝛎𝛏𝛐𝛑𝛒𝛓𝛔𝛕𝛖𝛗𝛘𝛙𝛚]" contains=@NoSpell

"syn match   CyanColor "[π]" contains=@NoSpell


"---------------------------
" combined
"---------------------------
inorea _oe        œ
inorea _ae        æ


"---------------------------
" cursive, bold, script, double
"---------------------------

" cursive
inorea c_a        𝑎
inorea c_b        𝑏
inorea c_c        𝑐
inorea c_d        𝑑
inorea c_e        𝑒
inorea c_f        𝑓
inorea c_g        𝑔
inorea c_h        𝘩
inorea c_i        𝑖
inorea c_j        𝑗
inorea c_k        𝑘
inorea c_l        𝑙
inorea c_m        𝑚
inorea c_n        𝑛
inorea c_o        𝑜
inorea c_p        𝑝
inorea c_q        𝑞
inorea c_r        𝑟
inorea c_s        𝑠
inorea c_t        𝑡
inorea c_u        𝑢
inorea c_v        𝑣
inorea c_w        𝑤
inorea c_x        𝑥
inorea c_y        𝑦
inorea c_z        𝑧

syn match   CyanColor   "[𝑎𝑏𝑐𝑑𝑒𝑓𝑔𝘩𝑖𝑗𝑘𝑙𝑚𝑛𝑜𝑝𝑞𝑟𝑠𝑡𝑢𝑣𝑤𝑥𝑦𝑧]" contains=@NoSpell


" bold
inorea b_a        𝐚
inorea b_b        𝐛
inorea b_c        𝐜
inorea b_d        𝐝
inorea b_e        𝐞
inorea b_f        𝐟
inorea b_g        𝐠
inorea b_h        𝐡
inorea b_i        𝐢
inorea b_j        𝐣
inorea b_k        𝐤
inorea b_l        𝐥
inorea b_m        𝐦
inorea b_n        𝐧
inorea b_o        𝐨
inorea b_p        𝐩
inorea b_q        𝐪
inorea b_r        𝐫
inorea b_s        𝐬
inorea b_t        𝐭
inorea b_u        𝐮
inorea b_v        𝐯
inorea b_w        𝐰
inorea b_x        𝐱
inorea b_y        𝐲
inorea b_z        𝐳

syn match   WhiteColor   "[𝐚𝐛𝐜𝐝𝐞𝐟𝐠𝐡𝐢𝐣𝐤𝐥𝐦𝐧𝐨𝐩𝐪𝐫𝐬𝐭𝐮𝐯𝐰𝐱𝐲𝐳]" contains=@NoSpell


" bold, cursive
inorea bc_a       𝒂
inorea bc_b       𝒃
inorea bc_c       𝒄
inorea bc_d       𝒅
inorea bc_e       𝒆
inorea bc_f       𝒇
inorea bc_g       𝒈
inorea bc_h       𝒉
inorea bc_i       𝒊
inorea bc_j       𝒋
inorea bc_k       𝒌
inorea bc_l       𝒍
inorea bc_m       𝒎
inorea bc_n       𝒏
inorea bc_o       𝒐
inorea bc_p       𝒑
inorea bc_q       𝒒
inorea bc_r       𝒓
inorea bc_s       𝒔
inorea bc_t       𝒕
inorea bc_u       𝒖
inorea bc_v       𝒗
inorea bc_w       𝒘
inorea bc_x       𝒙
inorea bc_y       𝒚
inorea bc_z       𝒛


syn match   OrangeColor "[𝒇𝒈𝒉]" contains=@NoSpell
syn match   BlueColor   "[𝒂𝒃𝒄𝒅𝒆𝒊𝒋𝒌𝒍𝒎𝒏𝒐𝒑𝒒𝒓𝒔𝒕𝒖𝒗𝒘𝒙𝒚𝒛]" contains=@NoSpell

" cursive
inorea c_A        𝐴
inorea c_B        𝐵
inorea c_C        𝐶
inorea c_D        𝐷
inorea c_E        𝐸
inorea c_F        𝐹
inorea c_G        𝐺
inorea c_H        𝐻
inorea c_I        𝐼
inorea c_J        𝐽
inorea c_K        𝐾
inorea c_L        𝐿
inorea c_M        𝑀
inorea c_N        𝑁
inorea c_O        𝑂
inorea c_P        𝑃
inorea c_Q        𝑄
inorea c_R        𝑅
inorea c_S        𝑆
inorea c_T        𝑇
inorea c_U        𝑈
inorea c_V        𝑉
inorea c_W        𝑊
inorea c_X        𝑋
inorea c_Y        𝑌
inorea c_Z        𝑍

syn match   CyanColor   "[𝐴𝐵𝐶𝐷𝐸𝐹𝐺𝐻𝐼𝐽𝐾𝐿𝑀𝑁𝑂𝑃𝑄𝑅𝑆𝑇𝑈𝑉𝑊𝑋𝑌𝑍]" contains=@NoSpell

" bold
inorea b_A        𝐀
inorea b_B        𝐁
inorea b_C        𝐂
inorea b_D        𝐃
inorea b_E        𝐄
inorea b_F        𝐅
inorea b_G        𝐆
inorea b_H        𝐇
inorea b_I        𝐈
inorea b_J        𝐉
inorea b_K        𝐊
inorea b_L        𝐋
inorea b_M        𝐌
inorea b_N        𝐍
inorea b_O        𝐎
inorea b_P        𝐏
inorea b_Q        𝐐
inorea b_R        𝐑
inorea b_S        𝐒
inorea b_T        𝐓
inorea b_U        𝐔
inorea b_V        𝐕
inorea b_W        𝐖
inorea b_X        𝐗
inorea b_Y        𝐘
inorea b_Z        𝐙

syn match   WhiteColor   "[𝐀𝐁𝐂𝐃𝐄𝐅𝐆𝐇𝐈𝐉𝐊𝐋𝐌𝐍𝐎𝐏𝐐𝐑𝐒𝐓𝐔𝐕𝐖𝐗𝐘𝐙]" contains=@NoSpell


" bold cursive
inorea bc_A       𝑨
inorea bc_B       𝑩
inorea bc_C       𝑪
inorea bc_D       𝑫
inorea bc_E       𝑬
inorea bc_F       𝑭
inorea bc_G       𝑮
inorea bc_H       𝑯
inorea bc_I       𝑰
inorea bc_J       𝑱
inorea bc_K       𝑲
inorea bc_L       𝑳
inorea bc_M       𝑴
inorea bc_N       𝑵
inorea bc_O       𝑶
inorea bc_P       𝑷
inorea bc_Q       𝑸
inorea bc_R       𝑹
inorea bc_S       𝑺
inorea bc_T       𝑻
inorea bc_U       𝑼
inorea bc_V       𝑽
inorea bc_W       𝑾
inorea bc_X       𝑿
inorea bc_Y       𝒀
inorea bc_Z       𝒁

syn match   WhiteColor   "[𝑨𝑩𝑪𝑫𝑬𝑭𝑮𝑯𝑰𝑱𝑲𝑳𝑴𝑵𝑶𝑷𝑸𝑹𝑺𝑻𝑼𝑽𝑾𝑿𝒀𝒁]" contains=@NoSpell

" mathematical bold script
inorea bs_a       𝓪
inorea bs_b       𝓫
inorea bs_c       𝓬
inorea bs_d       𝓭
inorea bs_e       𝓮
inorea bs_f       𝓯
inorea bs_g       𝓰
inorea bs_h       𝓱
inorea bs_i       𝓲
inorea bs_j       𝓳
inorea bs_k       𝓴
inorea bs_l       𝓵
inorea bs_m       𝓶
inorea bs_n       𝓷
inorea bs_o       𝓸
inorea bs_p       𝓹
inorea bs_q       𝓺
inorea bs_r       𝓻
inorea bs_s       𝓼
inorea bs_t       𝓽
inorea bs_u       𝓾
inorea bs_v       𝓿
inorea bs_w       𝔀
inorea bs_x       𝔁
inorea bs_y       𝔂
inorea bs_z       𝔃

syn match   WhiteColor   "[𝓪𝓫𝓬𝓭𝓮𝓯𝓰𝓱𝓲𝓳𝓴𝓵𝓶𝓷𝓸𝓹𝓺𝓻𝓼𝓽𝓾𝓿𝔀𝔁𝔂𝔃]" contains=@NoSpell


" mathematical bold script
inorea bs_A       𝓐
inorea bs_B       𝓑
inorea bs_C       𝓒
inorea bs_D       𝓓
inorea bs_E       𝓔
inorea bs_F       𝓕
inorea bs_G       𝓖
inorea bs_H       𝓗
inorea bs_I       𝓘
inorea bs_J       𝓙
inorea bs_K       𝓚
inorea bs_L       𝓛
inorea bs_M       𝓜
inorea bs_N       𝓝
inorea bs_O       𝓞
inorea bs_P       𝓟
inorea bs_Q       𝓠
inorea bs_R       𝓡
inorea bs_S       𝓢
inorea bs_T       𝓣
inorea bs_U       𝓤
inorea bs_V       𝓥
inorea bs_W       𝓦
inorea bs_X       𝓧
inorea bs_Y       𝓨
inorea bs_Z       𝓩

syn match   WhiteColor   "[𝓐𝓑𝓒𝓓𝓔𝓕𝓖𝓗𝓘𝓙𝓚𝓛𝓜𝓝𝓞𝓟𝓠𝓡𝓢𝓣𝓤𝓥𝓦𝓧𝓨𝓩]" contains=@NoSpell

" Mathematical Fraktur
inorea f_A        𝔄
inorea f_B        𝔅
inorea f_C        ℭ
inorea f_D        𝔇
inorea f_E        𝔈
inorea f_F        𝔉
inorea f_G        𝔊
inorea f_H        ℌ
inorea f_I        ℑ
inorea f_J        𝔍
inorea f_K        𝔎
inorea f_L        𝔏
inorea f_M        𝔐
inorea f_N        𝔑
inorea f_O        𝔒
inorea f_P        𝔓
inorea f_Q        𝔔
inorea f_R        ℜ
inorea f_S        𝔖
inorea f_T        𝔗
inorea f_U        𝔘
inorea f_V        𝔙
inorea f_W        𝔚
inorea f_X        𝔛
inorea f_Y        𝔜
inorea f_Z        ℨ

syn match   OrangeColorb "[𝔄𝔅ℭ𝔇𝔈𝔉𝔊ℌℑ𝔍𝔎𝔏𝔐𝔑𝔒𝔓𝔔ℜ𝔖𝔗𝔘𝔙𝔚𝔛𝔜ℨ]" contains=@NoSpell

inorea f_a        𝔞
inorea f_b        𝔟
inorea f_c        𝔠
inorea f_d        𝔡
inorea f_e        𝔢
inorea f_f        𝔣
inorea f_g        𝔤
inorea f_h        𝔥
inorea f_i        𝔦
inorea f_j        𝔧
inorea f_k        𝔨
inorea f_l        𝔩
inorea f_m        𝔪
inorea f_n        𝔫
inorea f_o        𝔬
inorea f_p        𝔭
inorea f_q        𝔮
inorea f_r        𝔯
inorea f_s        𝔰
inorea f_t        𝔱
inorea f_u        𝔲
inorea f_v        𝔳
inorea f_w        𝔴
inorea f_x        𝔵
inorea f_y        𝔶
inorea f_z        𝔷

syn match   OrangeColorb "[𝔞𝔟𝔠𝔡𝔢𝔣𝔤𝔥𝔦𝔧𝔨𝔩𝔪𝔫𝔬𝔭𝔮𝔯𝔰𝔱𝔲𝔳𝔴𝔵𝔶𝔷]" contains=@NoSpell

" Mathematical Script
inorea s_A        𝒜
inorea s_B        ℬ
inorea s_C        𝒞
inorea s_D        𝒟
inorea s_E        ℰ
inorea s_F        ℱ
inorea s_G        𝒢
inorea s_H        ℋ
inorea s_I        ℐ
inorea s_J        𝒥
inorea s_K        𝒦
inorea s_L        ℒ
inorea s_M        ℳ
inorea s_N        𝒩
inorea s_O        𝒪
inorea s_P        𝒫
inorea s_Q        𝒬
inorea s_R        ℛ
inorea s_S        𝒮
inorea s_T        𝒯
inorea s_U        𝒰
inorea s_V        𝒱
inorea s_W        𝒲
inorea s_X        𝒳
inorea s_Y        𝒴
inorea s_Z        𝒵

syn match   OrangeColorb "[𝒜ℬ𝒞𝒟ℰℱ𝒢ℋℐ𝒥𝒦ℒℳ𝒩𝒪𝒫𝒬ℛ𝒮𝒯𝒰𝒱𝒲𝒳𝒴𝒵]" contains=@NoSpell

inorea s_a        𝒶
inorea s_b        𝒷
inorea s_c        𝒸
inorea s_d        𝒹
inorea s_e        ℯ
inorea s_f        𝒻
inorea s_g        ℊ
inorea s_h        𝒽
inorea s_i        𝒾
inorea s_j        𝒿
inorea s_k        𝓀
inorea s_l        𝓁
inorea s_m        𝓂
inorea s_n        𝓃
inorea s_o        ℴ
inorea s_p        𝓅
inorea s_q        𝓆
inorea s_r        𝓇
inorea s_s        𝓈
inorea s_t        𝓉
inorea s_u        𝓊
inorea s_v        𝓋
inorea s_w        𝓌
inorea s_x        𝓍
inorea s_y        𝓎
inorea s_z        𝓏

syn match   OrangeColorb "[𝒶𝒷𝒸𝒹ℯ𝒻ℊ𝒽𝒾𝒿𝓀𝓁𝓂𝓃ℴ𝓅𝓆𝓇𝓈𝓉𝓊𝓋𝓌𝓍𝓎𝓏]" contains=@NoSpell


" Double
inorea d_nP       Ᵽ
inorea d_A        𝔸
inorea d_B        𝔹
inorea d_C        ℂ
inorea d_D        𝔻
inorea d_E        𝔼
inorea d_F        𝔽
inorea d_G        𝔾
inorea d_H        ℍ
inorea d_I        𝕀
inorea d_J        𝕁
inorea d_K        𝕂
inorea d_L        𝕃
inorea d_M        𝕄
inorea d_N        ℕ
inorea d_O        𝕆
inorea d_P        ℙ
inorea d_Q        ℚ
inorea d_R        ℝ
inorea d_S        𝕊
inorea d_T        𝕋
inorea d_U        𝕌
inorea d_V        𝕍
inorea d_W        𝕎
inorea d_X        𝕏
inorea d_Y        𝕐
inorea d_Z        ℤ

inorea d_np       ᵽ
inorea d_a        𝕒
inorea d_b        𝕓
inorea d_c        𝕔
inorea d_d        𝕕
inorea d_e        𝕖
inorea d_f        𝕗
inorea d_g        𝕘
inorea d_h        𝕙
inorea d_i        𝕚
inorea d_j        𝕛
inorea d_k        𝕜
inorea d_l        𝕝
inorea d_m        𝕞
inorea d_n        𝕟
inorea d_o        𝕠
inorea d_p        𝕡
inorea d_q        𝕢
inorea d_r        𝕣
inorea d_s        𝕤
inorea d_t        𝕥
inorea d_u        𝕦
inorea d_v        𝕧
inorea d_w        𝕨
inorea d_x        𝕩
inorea d_y        𝕪
inorea d_z        𝕫


syn match   YellowColorb "[∅Ᵽ𝔸𝔹ℂ𝔻𝔼𝔽𝔾ℍ𝕀𝕁𝕂𝕃𝕄ℕ𝕆ℙℚℝ𝕊𝕋𝕌𝕍𝕎𝕏𝕐ℤ]" contains=@NoSpell
syn match   YellowColorb "[ᵽ𝕒𝕓𝕔𝕕𝕖𝕗𝕘𝕙𝕚𝕛𝕜𝕝𝕞𝕟𝕠𝕡𝕢𝕣𝕤𝕥𝕦𝕧𝕨𝕩𝕪𝕫]" contains=@NoSpell

syn match  RedColor "[⦃⦄]" contains=@NoSpell


"---------------------------
" functions
"---------------------------

"  f ƒ 𝐟 𝑓 F 𝟊 𝑭 𝓕 𝒇 𝓯 g ｇ 𝓰(𝒙) 𝐠(𝒙) 𝒈 𝑔(𝒙) ℊ 𝑮 G Ｇ 𝓗 𝑯() 𝐇() 𝐻()
" using bold and cursive where possible
inorea _f         𝒇()
inorea _fx        𝒇(𝒙)
inorea _fxy       𝒇(𝒙,𝒚)
inorea _fxyz      𝒇(𝒙,𝒚,𝒛)
inorea _fx2       𝒇(𝒙₁,𝒙₂)
inorea _fxn       𝒇(𝒙₁,...,𝒙ₙ)
inorea _F         𝑭()
inorea _g         𝒈()
inorea _gx        𝒈(𝒙)
inorea _gxy       𝒈(𝒙,𝒚)
inorea _gxyz      𝒈(𝒙,𝒚,𝒛)
inorea _G         𝑮()
inorea _h         𝒉()
inorea _hx        𝒉(𝒙)
inorea _hxy       𝒉(𝒙,𝒚)
inorea _hxyz      𝒉(𝒙,𝒚,𝒛)
inorea _H         𝑯()
" inorea _sum       ∑(ᵢ₌₀;ᵢ‹𝆗;ᵢ₊₊)𝑖
inorea _sumi      ∑(ᵢ₌₀;ᵢ‹𝆗;ᵢ₊₊)𝑖
inorea _sumn      ∑(ₙ₌₀;ₙ‹𝆗;ₙ₊₊)𝑛
inorea _sumkn     ∑(ₖ₌₀;ₖ‹ₙ;ₖ₊₊)𝑛𝑘
inorea _sumnk     ∑(ₖ₌₀;ₖ‹ₙ;ₖ₊₊)𝑛𝑘
inorea _sumin     ∑(ᵢ₌₀;ᵢ‹ₙ;ᵢ₊₊)𝑛𝑖
inorea _sumni     ∑(ᵢ₌₀;ᵢ‹ₙ;ᵢ₊₊)𝑛𝑖
inorea _sumiN     ∑(ᵢ₌₀;ᵢ‹៷;ᵢ₊₊)𝑁𝑖
inorea _sumNi     ∑(ᵢ₌₀;ᵢ‹៷;ᵢ₊₊)𝑁𝑖
inorea _intx      ∫(-𝆗‹𝒙‹𝆗)∂𝒙
inorea _inty      ∫(-𝆗‹𝒚‹𝆗)∂𝒚
inorea _intz      ∫(-𝆗‹𝒛‹𝆗)∂𝒛
inorea _intxy     ∫(-𝆗‹𝒙‹𝆗)∫(-𝆗‹𝒚‹𝆗)∂𝒙∂𝒚
inorea _intxyz    ∫(-𝆗‹𝒙‹𝆗)∫(-𝆗‹𝒚‹𝆗)∫(-𝆗‹𝒛‹𝆗)∂𝒙∂𝒚∂𝒛

inorea _dx        ∂𝒙
inorea _dy        ∂𝒚
inorea _dz        ∂𝒛
inorea _dxy       ∂𝒙∂𝒚
inorea _dxyz      ∂𝒙∂𝒚∂𝒛

inorea _xy        𝒙𝒚
inorea _xyz       𝒙𝒚𝒛
inorea _xn        𝒙₁,...,𝒙ₙ
inorea _yn        𝒚₁,...,𝒚ₙ
inorea _zn        𝒛₁,...,𝒛ₙ
inorea _ab        𝒂𝒃
inorea _abc       𝒂𝒃𝒄
inorea _abcd      𝒂𝒃𝒄𝒅
inorea _abcde     𝒂𝒃𝒄𝒅𝒆
inorea _xy,       𝑥,𝑦
inorea _xyz,      𝑥,𝑦,𝑧
inorea _ab,       𝑎,𝑏
inorea _abc,      𝑎,𝑏,𝑐




"---------------------------
" superscript/subscript
"---------------------------

" ꜝꜞꜟ 𝆩
" superscript
inorea sp_0       ⁰
inorea sp_1       ¹
inorea sp_2       ²
inorea sp_3       ³
inorea sp_4       ⁴
inorea sp_5       ⁵
inorea sp_6       ⁶
inorea sp_7       ⁷
inorea sp_8       ⁸
inorea sp_9       ⁹
inorea sp_+       ⁺
inorea sp_-       ⁻
inorea sp_=       ⁼
inorea sp_(       ⁽
inorea sp_)       ⁾
inorea sp_*       ˟
inorea sp_/       ᐟ
inorea sp_~       
inorea sp_^       
inorea sp_inf     ᣛ

inorea sp_a       ᵃ
inorea sp_b       ᵇ
inorea sp_c       ᶜ
inorea sp_d       ᵈ
inorea sp_e       ᵉ
inorea sp_f       ᶠ
inorea sp_g       ᵍ
inorea sp_h       ʰ
inorea sp_i       ⁱ
inorea sp_j       ʲ
inorea sp_k       ᵏ
inorea sp_l       ˡ
inorea sp_m       ᵐ
inorea sp_n       ⁿ
inorea sp_o       ᵒ
inorea sp_p       ᵖ
" NOTE no q ...
inorea sp_q       ᕐ
inorea sp_r       ʳ
inorea sp_s       ˢ
inorea sp_t       ᵗ
inorea sp_u       ᵘ
inorea sp_v       ᵛ
inorea sp_w       ᵚ
inorea sp_x       ˣ
inorea sp_y       ʸ
inorea sp_z       ᶻ

syn match   CyanColor "[⁰¹²³⁴⁵⁶⁷⁸⁹ᣛᴺᵀ]" contains=@NoSpell
syn match   OrangeColor "[⁺⁻⁼˟ᐟ]" contains=@NoSpell
syn match   RedColor "[⁽⁾]" contains=@NoSpell

syn match   OrangeColor "[ᶠᵍʰ]" contains=@NoSpell
syn match   CyanColor   "[ᵃᵇᶜᵈᵉⁱʲᵏˡᵐⁿᵒᵖᕐʳˢᵗᵘᵛᵚˣʸᶻ]" contains=@NoSpell
syn match   CyanColor   "[0-9a-zA-Z]\+ᵗʰ" contains=@NoSpell
syn match   CyanColor   "[0-9a-zA-Z]\+ˢᵗ" contains=@NoSpell
syn match   CyanColor   "[0-9a-zA-Z]\+ⁿᵈ" contains=@NoSpell
syn match   CyanColor   "[0-9a-zA-Z]\+ʳᵈ" contains=@NoSpell

" NOTE no C F Q S
inorea sp_A       ᴬ
inorea sp_B       ᴮ

inorea sp_D       ᴰ
inorea sp_E       ᴱ

inorea sp_G       ᴳ
inorea sp_H       ᴴ
inorea sp_I       ᴵ
inorea sp_J       ᴶ
inorea sp_K       ᴷ
inorea sp_L       ᴸ
inorea sp_M       ᴹ
inorea sp_N       ᴺ
inorea sp_O       ᴼ
inorea sp_P       ᴾ

inorea sp_R       ᴿ
" no s
inorea sp_T       ᵀ
inorea sp_U       ᵁ
inorea sp_U       ⱽ
inorea sp_W       ᵂ

syn match   CyanColor "[ᴬᴮᴰᴱᴳᴴᴵᴶᴷᴸᴹᴼᴾᴿᵁⱽᵂ]" contains=@NoSpell

" ₇  ꜀   ¹    ˲ ˱
" subscript
inorea sb_0       ₀
inorea sb_1       ₁
inorea sb_2       ₂
inorea sb_3       ₃
inorea sb_4       ₄
inorea sb_5       ₅
inorea sb_6       ₆
inorea sb_7       ₇
inorea sb_8       ₈
inorea sb_9       ₉
inorea sb_+       ₊
inorea sb_-       ₋
inorea sb_=       ₌
inorea sb_*       .
inorea sb_(       ₍
inorea sb_)       ₎
inorea sb_/       ៸
inorea sb_inf     𝆗

inorea sb_<       ‹
inorea sb_>       ›


" NOTE no b,c,d,f,g,q,r,w,y,z
inorea sb_a       ₐ
"inorea sb_b
inorea sb_c       ꜀
"inorea sb_d      
inorea sb_e       ₑ
"inorea sb_f      
"inorea sb_g      
inorea sb_h       ₕ
inorea sb_i       ᵢ
" ꜟ
" ꜟ
inorea sb_j       ⱼ
inorea sb_k       ₖ
inorea sb_l       ₗ
inorea sb_m       ₘ
inorea sb_n       ₙ
inorea sb_o       ₒ
inorea sb_p       ₚ
"inorea sb_q      
inorea sb_r       ᵣ
inorea sb_s       ₛ
inorea sb_t       ₜ
inorea sb_u       ᵤ
inorea sb_v       ᵥ
"inorea sb_w      
inorea sb_x       ₓ
"inorea sb_y
"inorea sb_z

" NOTE no uppercase subscripts!!
" ૰៰៲៳៴៱ₓ៷｡⊺
" ៷៵․𝅃
inorea sb_N       ៷
inorea sb_T       ⊺


syn match   CyanColor "[₀₁₂₃₄₅₆₇₈₉𝆗៷]" contains=@NoSpell
syn match   OrangeColor "[₊₋₌៸‹›]" contains=@NoSpell
syn match   RedColor "[₍₎]" contains=@NoSpell

syn match   OrangeColor "[ₕ]" contains=@NoSpell
"syn match   BlueColor   "[ₐ꜀ₑᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓ]" contains=@NoSpell
syn match   CyanColor   "[ₐ꜀ₑᵢⱼₖₗₘₙₒₚᵣₛₜᵤᵥₓ]" contains=@NoSpell


inorea ith        iᵗʰ
inorea nth        nᵗʰ
inorea 0th        0ᵗʰ
inorea 1st        1ˢᵗ
inorea 2nd        2ⁿᵈ
inorea 3rd        3ʳᵈ
inorea 4th        4ᵗʰ
inorea 5th        5ᵗʰ
inorea 6th        6ᵗʰ
inorea 7th        7ᵗʰ
inorea 8th        8ᵗʰ
inorea 9th        9ᵗʰ
inorea 10th       10ᵗʰ
inorea 11th       11ᵗʰ
inorea 12th       12ᵗʰ
inorea 13th       13ᵗʰ
inorea 14th       14ᵗʰ
inorea 15th       15ᵗʰ
inorea 16th       16ᵗʰ
inorea 17th       17ᵗʰ
inorea 18th       18ᵗʰ
inorea 19th       19ᵗʰ
inorea 20th       20ᵗʰ
inorea 21th       21ᵗʰ
inorea 22th       22ᵗʰ
inorea 23th       23ᵗʰ
inorea 24th       24ᵗʰ
inorea 25th       25ᵗʰ
inorea 26th       26ᵗʰ
inorea 27th       27ᵗʰ
inorea 28th       28ᵗʰ
inorea 29th       29ᵗʰ
inorea 30th       30ᵗʰ
inorea 31th       31ᵗʰ
inorea 32th       32ᵗʰ
inorea 33th       33ᵗʰ
inorea 34th       34ᵗʰ
inorea 35th       35ᵗʰ
inorea 36th       36ᵗʰ
inorea 37th       37ᵗʰ
inorea 38th       38ᵗʰ
inorea 39th       39ᵗʰ
inorea 40th       40ᵗʰ
inorea 41th       41ᵗʰ
inorea 42th       42ᵗʰ
inorea 43th       43ᵗʰ
inorea 44th       44ᵗʰ
inorea 45th       45ᵗʰ
inorea 46th       46ᵗʰ
inorea 47th       47ᵗʰ
inorea 48th       48ᵗʰ
inorea 49th       49ᵗʰ
inorea 50th       50ᵗʰ
inorea 51th       51ᵗʰ
inorea 52th       52ᵗʰ
inorea 53th       53ᵗʰ
inorea 54th       54ᵗʰ
inorea 55th       55ᵗʰ
inorea 56th       56ᵗʰ
inorea 57th       57ᵗʰ
inorea 58th       58ᵗʰ
inorea 59th       59ᵗʰ
inorea 60th       60ᵗʰ
inorea 61th       61ᵗʰ
inorea 62th       62ᵗʰ
inorea 63th       63ᵗʰ
inorea 64th       64ᵗʰ
inorea 65th       65ᵗʰ
inorea 66th       66ᵗʰ
inorea 67th       67ᵗʰ
inorea 68th       68ᵗʰ
inorea 69th       69ᵗʰ
inorea 70th       70ᵗʰ
inorea 71th       71ᵗʰ
inorea 72th       72ᵗʰ
inorea 73th       73ᵗʰ
inorea 74th       74ᵗʰ
inorea 75th       75ᵗʰ
inorea 76th       76ᵗʰ
inorea 77th       77ᵗʰ
inorea 78th       78ᵗʰ
inorea 79th       79ᵗʰ
inorea 80th       80ᵗʰ
inorea 81th       81ᵗʰ
inorea 82th       82ᵗʰ
inorea 83th       83ᵗʰ
inorea 84th       84ᵗʰ
inorea 85th       85ᵗʰ
inorea 86th       86ᵗʰ
inorea 87th       87ᵗʰ
inorea 88th       88ᵗʰ
inorea 89th       89ᵗʰ
inorea 90th       90ᵗʰ
inorea 91th       91ᵗʰ
inorea 92th       92ᵗʰ
inorea 93th       93ᵗʰ
inorea 94th       94ᵗʰ
inorea 95th       95ᵗʰ
inorea 96th       96ᵗʰ
inorea 97th       97ᵗʰ
inorea 98th       98ᵗʰ
inorea 99th       99ᵗʰ
inorea 100th      100ᵗʰ
inorea 1000th     1000ᵗʰ
inorea 10000th    10000ᵗʰ
inorea 100000th   100000ᵗʰ
inorea 1000000th  1000000ᵗʰ



