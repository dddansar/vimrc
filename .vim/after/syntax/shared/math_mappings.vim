"==============================================================================
" File: math_mappings.vim
"------------------------------------------------------------------------------
" Description: This file adds custom math mappings and symbols in insert mode.
"              Type \ followed by a keyword to print it's unicode symbol.
" NOTE: See also: unicode.vim
"------------------------------------------------------------------------------
" NOTE: Source: https://github.com/leanprover/vscode-lean/blob/master/src/abbreviation/abbreviations.json
"------------------------------------------------------------------------------
" Modified by Danny Sarraf to be used in vim.
" URL: https://github.com/dddansar/vimrc
"------------------------------------------------------------------------------
" Copyright: Apache License
" Source: https://github.com/leanprover/vscode-lean/blob/master/LICENSE
"
"                                 Apache License
"                           Version 2.0, January 2004
"                        http://www.apache.org/licenses/
"
"   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
"
"   1. Definitions.
"
"      "License" shall mean the terms and conditions for use, reproduction,
"      and distribution as defined by Sections 1 through 9 of this document.
"
"      "Licensor" shall mean the copyright owner or entity authorized by
"      the copyright owner that is granting the License.
"
"      "Legal Entity" shall mean the union of the acting entity and all
"      other entities that control, are controlled by, or are under common
"      control with that entity. For the purposes of this definition,
"      "control" means (i) the power, direct or indirect, to cause the
"      direction or management of such entity, whether by contract or
"      otherwise, or (ii) ownership of fifty percent (50%) or more of the
"      outstanding shares, or (iii) beneficial ownership of such entity.
"
"      "You" (or "Your") shall mean an individual or Legal Entity
"      exercising permissions granted by this License.
"
"      "Source" form shall mean the preferred form for making modifications,
"      including but not limited to software source code, documentation
"      source, and configuration files.
"
"      "Object" form shall mean any form resulting from mechanical
"      transformation or translation of a Source form, including but
"      not limited to compiled object code, generated documentation,
"      and conversions to other media types.
"
"      "Work" shall mean the work of authorship, whether in Source or
"      Object form, made available under the License, as indicated by a
"      copyright notice that is included in or attached to the work
"      (an example is provided in the Appendix below).
"
"      "Derivative Works" shall mean any work, whether in Source or Object
"      form, that is based on (or derived from) the Work and for which the
"      editorial revisions, annotations, elaborations, or other modifications
"      represent, as a whole, an original work of authorship. For the purposes
"      of this License, Derivative Works shall not include works that remain
"      separable from, or merely link (or bind by name) to the interfaces of,
"      the Work and Derivative Works thereof.
"
"      "Contribution" shall mean any work of authorship, including
"      the original version of the Work and any modifications or additions
"      to that Work or Derivative Works thereof, that is intentionally
"      submitted to Licensor for inclusion in the Work by the copyright owner
"      or by an individual or Legal Entity authorized to submit on behalf of
"      the copyright owner. For the purposes of this definition, "submitted"
"      means any form of electronic, verbal, or written communication sent
"      to the Licensor or its representatives, including but not limited to
"      communication on electronic mailing lists, source code control systems,
"      and issue tracking systems that are managed by, or on behalf of, the
"      Licensor for the purpose of discussing and improving the Work, but
"      excluding communication that is conspicuously marked or otherwise
"      designated in writing by the copyright owner as "Not a Contribution."
"
"      "Contributor" shall mean Licensor and any individual or Legal Entity
"      on behalf of whom a Contribution has been received by Licensor and
"      subsequently incorporated within the Work.
"
"   2. Grant of Copyright License. Subject to the terms and conditions of
"      this License, each Contributor hereby grants to You a perpetual,
"      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
"      copyright license to reproduce, prepare Derivative Works of,
"      publicly display, publicly perform, sublicense, and distribute the
"      Work and such Derivative Works in Source or Object form.
"
"   3. Grant of Patent License. Subject to the terms and conditions of
"      this License, each Contributor hereby grants to You a perpetual,
"      worldwide, non-exclusive, no-charge, royalty-free, irrevocable
"      (except as stated in this section) patent license to make, have made,
"      use, offer to sell, sell, import, and otherwise transfer the Work,
"      where such license applies only to those patent claims licensable
"      by such Contributor that are necessarily infringed by their
"      Contribution(s) alone or by combination of their Contribution(s)
"      with the Work to which such Contribution(s) was submitted. If You
"      institute patent litigation against any entity (including a
"      cross-claim or counterclaim in a lawsuit) alleging that the Work
"      or a Contribution incorporated within the Work constitutes direct
"      or contributory patent infringement, then any patent licenses
"      granted to You under this License for that Work shall terminate
"      as of the date such litigation is filed.
"
"   4. Redistribution. You may reproduce and distribute copies of the
"      Work or Derivative Works thereof in any medium, with or without
"      modifications, and in Source or Object form, provided that You
"      meet the following conditions:
"
"      (a) You must give any other recipients of the Work or
"          Derivative Works a copy of this License; and
"
"      (b) You must cause any modified files to carry prominent notices
"          stating that You changed the files; and
"
"      (c) You must retain, in the Source form of any Derivative Works
"          that You distribute, all copyright, patent, trademark, and
"          attribution notices from the Source form of the Work,
"          excluding those notices that do not pertain to any part of
"          the Derivative Works; and
"
"      (d) If the Work includes a "NOTICE" text file as part of its
"          distribution, then any Derivative Works that You distribute must
"          include a readable copy of the attribution notices contained
"          within such NOTICE file, excluding those notices that do not
"          pertain to any part of the Derivative Works, in at least one
"          of the following places: within a NOTICE text file distributed
"          as part of the Derivative Works; within the Source form or
"          documentation, if provided along with the Derivative Works; or,
"          within a display generated by the Derivative Works, if and
"          wherever such third-party notices normally appear. The contents
"          of the NOTICE file are for informational purposes only and
"          do not modify the License. You may add Your own attribution
"          notices within Derivative Works that You distribute, alongside
"          or as an addendum to the NOTICE text from the Work, provided
"          that such additional attribution notices cannot be construed
"          as modifying the License.
"
"      You may add Your own copyright statement to Your modifications and
"      may provide additional or different license terms and conditions
"      for use, reproduction, or distribution of Your modifications, or
"      for any such Derivative Works as a whole, provided Your use,
"      reproduction, and distribution of the Work otherwise complies with
"      the conditions stated in this License.
"
"   5. Submission of Contributions. Unless You explicitly state otherwise,
"      any Contribution intentionally submitted for inclusion in the Work
"      by You to the Licensor shall be under the terms and conditions of
"      this License, without any additional terms or conditions.
"      Notwithstanding the above, nothing herein shall supersede or modify
"      the terms of any separate license agreement you may have executed
"      with Licensor regarding such Contributions.
"
"   6. Trademarks. This License does not grant permission to use the trade
"      names, trademarks, service marks, or product names of the Licensor,
"      except as required for reasonable and customary use in describing the
"      origin of the Work and reproducing the content of the NOTICE file.
"
"   7. Disclaimer of Warranty. Unless required by applicable law or
"      agreed to in writing, Licensor provides the Work (and each
"      Contributor provides its Contributions) on an "AS IS" BASIS,
"      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
"      implied, including, without limitation, any warranties or conditions
"      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
"      PARTICULAR PURPOSE. You are solely responsible for determining the
"      appropriateness of using or redistributing the Work and assume any
"      risks associated with Your exercise of permissions under this License.
"
"   8. Limitation of Liability. In no event and under no legal theory,
"      whether in tort (including negligence), contract, or otherwise,
"      unless required by applicable law (such as deliberate and grossly
"      negligent acts) or agreed to in writing, shall any Contributor be
"      liable to You for damages, including any direct, indirect, special,
"      incidental, or consequential damages of any character arising as a
"      result of this License or out of the use or inability to use the
"      Work (including but not limited to damages for loss of goodwill,
"      work stoppage, computer failure or malfunction, or any and all
"      other commercial damages or losses), even if such Contributor
"      has been advised of the possibility of such damages.
"
"   9. Accepting Warranty or Additional Liability. While redistributing
"      the Work or Derivative Works thereof, You may choose to offer,
"      and charge a fee for, acceptance of support, warranty, indemnity,
"      or other liability obligations and/or rights consistent with this
"      License. However, in accepting such obligations, You may act only
"      on Your own behalf and on Your sole responsibility, not on behalf
"      of any other Contributor, and only if You agree to indemnify,
"      defend, and hold each Contributor harmless for any liability
"      incurred by, or claims asserted against, such Contributor by reason
"      of your accepting any such warranty or additional liability.
"
"   END OF TERMS AND CONDITIONS
"==============================================================================


" Exit if the file was already loaded
if exists("b:math_mappings_loaded")
  finish
endif
let b:math_mappings_loaded = 1


" NOTE: Using   <c-r>=Eatchar('\s')<cr>   to consume the space typed after an
"       abbreviation.

" NOTE: inoremap is different than inorea, \ does not work with inorea.
inoremap  \<esc>                      \<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\\                         \\<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \a                          α<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b                          β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \c                          χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d                          ↓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \e                          ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \g                          γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \i                          ∩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \m                          μ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \n                          ¬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o                          ∘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \p                          Π<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \t                          ▸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r                          →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u                          ↑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \v                          ∨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \x                          ×<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-                          ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~                          ∼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \.                          ·<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \*                          ⋆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \?                          ¿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \1                          ₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \2                          ₂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \3                          ₃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \4                          ₄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \5                          ₅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \6                          ₆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \7                          ₇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \8                          ₈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \9                          ₉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \0                          ₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l                          ←<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<                          ⟨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>                          ⟩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \O                          Ø<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \&                          ⅋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \A                          𝔸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \C                          ℂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \D                          Δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \F                          𝔽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \G                          Γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \H                          ℍ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \I                          ⋂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \I0                         ⋂₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \K                          𝕂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \L                          Λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \N                          ℕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \P                          Π<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Q                          ℚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \R                          ℝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \S                          Σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \U                          ⋃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \U0                         ⋃₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Z                          ℤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \#                          ♯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \:                          ∶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|                         ∣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \!                          ¡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \be                         β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ga                         γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \de                         δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ep                         ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ze                         ζ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \et                         η<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \th                         θ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \io                         ι<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ka                         κ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \la                         λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mu                         μ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nu                         ν<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \xi                         ξ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pi                         π<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rh                         ρ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vsi                        ς<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \si                         σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ta                         τ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ph                         φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ch                         χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ps                         ψ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \om                         ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`A                         À<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'A                         Á<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{A}                       Â<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~A                         Ã<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"A                        Ä<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cC                         Ç<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`E                         È<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'E                         É<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{E}                       Ê<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"E                        Ë<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`I                         Ì<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'I                         Í<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{I}                       Î<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"I                        Ï<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~N                         Ñ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`O                         Ò<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'O                         Ó<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{O}                       Ô<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~O                         Õ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"O                        Ö<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \/O                         Ø<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`U                         Ù<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'U                         Ú<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{U}                       Û<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"U                        Ü<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'Y                         Ý<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`a                         à<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'a                         á<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{a}                       â<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~a                         ã<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"a                        ä<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cc                         ç<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`e                         è<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'e                         é<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{e}                       ê<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"e                        ë<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`i                         ì<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'i                         í<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{i}                       î<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"i                        ï<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~{n}                       ñ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`o                         ò<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'o                         ó<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{o}                       ô<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~o                         õ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"o                        ö<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \/o                         ø<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \`u                         ù<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'u                         ú<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^{u}                       û<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"u                        ü<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \'y                         ý<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\"y                        ÿ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \/L                         Ł<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \notin                      ∉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \note                       ♩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \not                        ¬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nomisma                    𐆎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nin                        ∉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nni                        ∌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ni                         ∋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nattrans                   ⟹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nat_trans                  ⟹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \natural                    ♮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nat                        ℕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \naira                      ₦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nabla                      ∇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \napprox                    ≉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \numero                     №<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nLeftarrow                 ⇍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nLeftrightarrow            ⇎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nRightarrow                ⇏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nVDash                     ⊯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nVdash                     ⊮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ncong                      ≇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nearrow                    ↗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \neg                        ¬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nequiv                     ≢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \neq                        ≠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nexists                    ∄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ne                         ≠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ngeqq                      ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ngeqslant                  ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ngeq                       ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ngtr                       ≯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nleftarrow                 ↚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nleftrightarrow            ↮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nleqq                      ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nleqslant                  ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nleq                       ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nless                      ≮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nmid                       ∤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nparallel                  ∦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \npreceq                    ⋠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nprec                      ⊀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nrightarrow                ↛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nshortmid                  ∤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsimeq                     ≄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsim                       ≁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsubseteqq                 ⊈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsubseteq                  ⊈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsubset                    ⊄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsucceq                    ⋡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsucc                      ⊁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsupseteqq                 ⊉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsupseteq                  ⊉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nsupset                    ⊅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ntrianglelefteq            ⋬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ntriangleleft              ⋪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ntrianglerighteq           ⋭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ntriangleright             ⋫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nvDash                     ⊭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nvdash                     ⊬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nwarrow                    ↖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eqn                        ≠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \equiv                      ≃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eqcirc                     ≖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eqcolon                    ≕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eqslantgtr                 ⋝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eqslantless                ⋜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \entails                    ⊢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \en                         –<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \exn                        ∄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \exists                     ∃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ex                         ∃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \emptyset                   ∅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \empty                      ∅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \em                         —<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \epsilon                    ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eps                        ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \euro                       €<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \eta                        η<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ell                        ℓ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \iso                        ≅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \in                         ∈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \inn                        ∉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \inter                      ∩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \intercal                   ⊺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \intersection               ∩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \integral                   ∫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \int                        ℤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \inv                        ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \increment                  ∆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \inf                        ⊓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \infi                       ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \infty                      ∞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \iff                        ↔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \imp                        →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \imath                      ı<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \iota                       ι<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \=n                         ≠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \==n                        ≢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \===                        ≣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \==>                        ⟹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \==                         ≡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \=:                         ≕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \=o                         ≗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \=>n                        ⇏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \=>                         ⇒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~n                         ≁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~~n                        ≉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~~~                        ≋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~~-                        ≊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~~                         ≈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~-n                        ≄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~-                         ≃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~=n                        ≇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~=                         ≅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \homotopy                   ∼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hom                        ⟶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hori                       ϩ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hookleftarrow              ↩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hookrightarrow             ↪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hryvnia                    ₴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \heta                       ͱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \heartsuit                  ♥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hbar                       ℏ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \:~                         ∻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \:=                         ≔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \::-                        ∺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \::                         ∷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-~                         ≂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-\|                        ⊣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-1                         ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^-1                        ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-2                         ⁻²<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-3                         ⁻³<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-:                         ∹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \->n                        ↛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \->                         →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-->                        ⟶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \---                        ─<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \--=                        ═<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \--_                        ━<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \--.                        ╌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-o                         ⊸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \.=.                        ≑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \.=                         ≐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \.+                         ∔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \.-                         ∸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \...                        ⋯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \(=                         ≘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \(b                         ⟅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \and=                       ≙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \and                        ∧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \an                         ∧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \angle                      ∠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightangle                 ∟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \angstrom                   Å<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \all                        ∀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \allf                       ∀ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \all^f                      ∀ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \allm                       ∀ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \all^m                      ∀ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \alpha                      α<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \aleph                      ℵ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \asterisk                   ⁎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ast                        ∗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \asymp                      ≍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \apl                        ⌶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \approxeq                   ≊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \approx                     ≈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \aa                         å<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ae                         æ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \austral                    ₳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \afghani                    ؋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \amalg                      ∐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \or=                        ≚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ordfeminine                ª<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ordmasculine               º<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \or                         ∨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \oplus                      ⊕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \od                         ᵒᵈ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \aop                        ᵃᵒᵖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mop                        ᵐᵒᵖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \op                         ᵒᵖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o+                         ⊕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o--                        ⊖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o-                         ⊝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ox                         ⊗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o/                         ⊘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o.                         ⊙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \oo                         ⊚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o*                         ∘*<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \o=                         ⊜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \oe                         œ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \octagonal                  🛑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ohm                        Ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ounce                      ℥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \omega                      ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \omicron                    ο<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ominus                     ⊖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \odot                       ⊙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \oint                       ∮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \oslash                     ⊘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \otimes                     ⊗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \*=                         ≛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \t=                         ≜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \transport                  ▹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \trans                      ▹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \triangledown               ▿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \trianglelefteq             ⊴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \triangleleft               ◃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \triangleq                  ≜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \trianglerighteq            ⊵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \triangleright              ▹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \triangle                   ▵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tr                         ⬝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tb                         ◂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \twoheadleftarrow           ↞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \twoheadrightarrow          ↠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tw                         ◃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tie                        ⁀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \times                      ×<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \theta                      θ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \therefore                  ∴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \thickapprox                ≈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \thicksim                   ∼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \telephone                  ℡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tenge                      ₸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textmusicalnote            ♪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textmu                     µ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textfractionsolidus        ⁄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textbaht                   ฿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textdied                   ✝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textdiscount               ⁒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textcolonmonetary          ₡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textcircledP               ℗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textwon                    ₩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textnaira                  ₦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textnumero                 №<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textpeso                   ₱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textpertenthousand         ‱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textlira                   ₤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textlquill                 ⁅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textrecipe                 ℞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textreferencemark          ※<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textrquill                 ⁆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textinterrobang            ‽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textestimated              ℮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \textopenbullet             ◦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tugrik                     ₮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tau                        τ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \top                        ⊤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to                         →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to0                        →₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r0                         →₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_0                       →₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_0                        →₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \finsupp                    →₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to1                        →₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r1                         →₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_1                       →₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_1                        →₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l1                         →₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to1s                       →₁ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r1s                        →₁ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_1s                      →₁ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_1s                       →₁ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l1simplefunc               →₁ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \toa                        →ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ra                         →ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_a                       →ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_a                        →ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \alghom                     →ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tob                        →ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rb                         →ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to^b                       →ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r^b                        →ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \boundedcontinuousfunction  →ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tol                        →ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rl                         →ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_l                       →ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_l                        →ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \linearmap                  →ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tom                        →ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rm                         →ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_m                       →ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_m                        →ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \aeeqfun                    →ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rp                         →ₚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_p                       →ₚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_p                        →ₚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dfinsupp                   →ₚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \tos                        →ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rs                         →ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \to_s                       →ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r_s                        →ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \simplefunc                 →ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \covers                     ⋖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \covby                      ⋖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \wcovby                     ⩿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \wcovers                    ⩿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \def=                       ≝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \defs                       ≙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \degree                     °<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dei                        ϯ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \delta                      δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \doteqdot                   ≑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \doteq                      ≐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dotplus                    ∔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dotsquare                  ⊡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dot                        ⬝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dong                       ₫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \downarrow                  ↓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \downdownarrows             ⇊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \downleftharpoon            ⇃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \downrightharpoon           ⇂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dr-                        ↘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dr=                        ⇘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \drachma                    ₯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dr                         ↘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dl-                        ↙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dl=                        ⇙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dl                         ↙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d-2                        ⇊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d-u-                       ⇵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d-\|                       ↧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d-                         ↓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d==                        ⟱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \d=                         ⇓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dd-                        ↡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ddagger                    ‡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ddag                       ‡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ddots                      ⋱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dz                         ↯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dib                        ◆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \diw                        ◇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \di.                        ◈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \die                        ⚀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \division                   ÷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \divideontimes              ⋇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \div                        ÷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \diameter                   ⌀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \diamondsuit                ♢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \diamond                    ⋄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \digamma                    ϝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \di                         ◆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dagger                     †<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dag                        †<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \daleth                     ℸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dashv                      ⊣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \dh                         ð<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \m=                         ≞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \meet                       ⊓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \member                     ∈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mem                        ∈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \measuredangle              ∡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \male                       ♂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \maltese                    ✠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \manat                      ₼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mapsto                     ↦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mathscr{I}                 ℐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \minus                      −<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mill                       ₥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \micro                      µ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mid                        ∣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \multiplication             ×<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \multimap                   ⊸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mho                        ℧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \models                     ⊧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \mp                         ∓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \?=                         ≟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \??                         ⁇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \?!                         ‽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \prohibited                 🛇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \prod                       ∏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \propto                     ∝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \precapprox                 ≾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \preceq                     ≼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \precnapprox                ⋨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \precnsim                   ⋨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \precsim                    ≾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \prec                       ≺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \preim                      ⁻¹'<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \preimage                   ⁻¹'<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \prime                      ′<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pr                         ↣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \powerset                   𝒫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pounds                     £<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pound                      £<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pab                        ▰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \paw                        ▱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \partnership                ㉐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \partial                    ∂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \paragraph                  ¶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \parallel                   ∥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pa                         ▰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pm                         ±<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \perp                       ⟂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^perp                      ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \permil                     ‰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \per                        ⅌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \peso                       ₱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \peseta                     ₧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pilcrow                    ¶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \pitchfork                  ⋔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \psi                        ψ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \phi                        φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \8<                         ✂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leqn                       ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leqq                       ≦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leqslant                   ≤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leq                        ≤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \len                        ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leadsto                    ↝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftarrowtail              ↢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftarrow                  ←<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftharpoondown            ↽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftharpoonup              ↼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftleftarrows             ⇇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftrightarrows            ⇆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftrightarrow             ↔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftrightharpoons          ⇋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftrightsquigarrow        ↭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \leftthreetimes             ⋋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lessapprox                 ≲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lessdot                    ⋖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lesseqgtr                  ⋚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lesseqqgtr                 ⋚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lessgtr                    ≶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lesssim                    ≲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \le                         ≤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lub                        ⊔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr--                       ⟷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr-n                       ↮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr-                        ↔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr=n                       ⇎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr=                        ⇔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr~                        ↭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lrcorner                   ⌟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lr                         ↔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l-2                        ⇇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l-r-                       ⇆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l--                        ⟵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l-n                        ↚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l-\|                       ↤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l->                        ↢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l-                         ←<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l==                        ⇚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l=n                        ⇍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l=                         ⇐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \l~                         ↜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ll-                        ↞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \llcorner                   ⌞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \llbracket                  〚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ll                         ≪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lbag                       ⟅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lambda                     λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lamda                      λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lam                        λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lari                       ₾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \langle                     ⟨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lira                       ₤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lceil                      ⌈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ldots                      …<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ldq                        “<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ldata                      《<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lf                         ⧏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<\|                        ⧏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lfloor                     ⌊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lhd                        ◁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lnapprox                   ⋦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lneqq                      ≨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lneq                       ≨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lnsim                      ⋦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lnot                       ¬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \longleftarrow              ⟵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \longleftrightarrow         ⟷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \longrightarrow             ⟶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \looparrowleft              ↫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \looparrowright             ↬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lozenge                    ✧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lq                         ‘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ltimes                     ⋉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lvertneqq                  ≨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \geqn                       ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \geqq                       ≧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \geqslant                   ≥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \geq                        ≥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gen                        ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gets                       ←<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ge                         ≥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \glb                        ⊓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \glqq                       „<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \glq                        ‚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \guarani                    ₲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gangia                     ϫ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gamma                      γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ggg                        ⋙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gg                         ≫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gimel                      ℷ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gnapprox                   ⋧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gneqq                      ≩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gneq                       ≩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gnsim                      ⋧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtrapprox                  ≳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtrdot                     ⋗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtreqless                  ⋛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtreqqless                 ⋛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtrless                    ≷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gtrsim                     ≳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \gvertneqq                  ≩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \grqq                       “<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \grq                        ‘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<=n                        ≰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<=>n                       ⇎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<=>                        ⇔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<=                         ≤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<n                         ≮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<~nn                       ≴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<~n                        ⋦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<~                         ≲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<:                         ⋖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \:>                         ⋗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<->n                       ↮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<->                        ↔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<-->                       ⟷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<--                        ⟵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<-n                        ↚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<-                         ←<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \<<                         ⟪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>=n                        ≱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>=                         ≥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>n                         ≯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>~nn                       ≵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>~n                        ⋧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>~                         ≳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \>>                         ⟫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \root                       √<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssubn                      ⊄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssub                       ⊂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssupn                      ⊅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssup                       ⊃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssqub                      ⊏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ssqup                      ⊐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ss                         ⊆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subn                       ⊈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subseteqq                  ⊆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subseteq                   ⊆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subsetneqq                 ⊊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subsetneq                  ⊊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \subset                     ⊂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sub                        ⊆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supn                       ⊉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supseteqq                  ⊇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supseteq                   ⊇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supsetneqq                 ⊋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supsetneq                  ⊋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supset                     ⊃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sup                        ⊔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \supr                       ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \surd3                      ∛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \surd4                      ∜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \surd                       √<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succapprox                 ≿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succcurlyeq                ≽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succeq                     ≽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succnapprox                ⋩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succnsim                   ⋩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succsim                    ≿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \succ                       ≻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sum                        ∑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \specializes                ⤳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \~>                         ⤳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \squbn                      ⋢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \squb                       ⊑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \squpn                      ⋣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \squp                       ⊒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \square                     □<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \squigarrowright            ⇝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqb                        ■<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqw                        □<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sq.                        ▣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqo                        ▢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqcap                      ⊓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqcup                      ⊔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqrt                       √<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqsubseteq                 ⊑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqsubset                   ⊏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqsupseteq                 ⊒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sqsupset                   ⊐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sq                         ◾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sy                         ⁻¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \st4                        ✦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \st6                        ✶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \st8                        ✴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \st12                       ✹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \stigma                     ϛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \star                       ⋆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \straightphi                φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \st                         ⋆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \spesmilo                   ₷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \spadesuit                  ♠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sphericalangle             ∢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \section                    §<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \searrow                    ↘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \setminus                   ∖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \san                        ϻ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sampi                      ϡ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \shortmid                   ∣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sho                        ϸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \shima                      ϭ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \shei                       ϣ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sharp                      ♯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sigma                      σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \simeq                      ≃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sim                        ∼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sbs                        ﹨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \smallamalg                 ∐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \smallsetminus              ∖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \smallsmile                 ⌣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \smile                      ⌣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \smul                       •<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \swarrow                    ↙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Tr                         ◀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Tb                         ◀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Tw                         ◁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Tau                        Τ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Theta                      Θ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \TH                         Þ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \union                      ∪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \undertie                   ‿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \uncertainty                ⯑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \un                         ∪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u+                         ⊎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u.                         ⊍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ud-\|                      ↨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ud-                        ↕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ud=                        ⇕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ud                         ↕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ul-                        ↖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ul=                        ⇖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ulcorner                   ⌜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ul                         ↖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ur-                        ↗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ur=                        ⇗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \urcorner                   ⌝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ur                         ↗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u-2                        ⇈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u-d-                       ⇅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u-\|                       ↥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u-                         ↑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u==                        ⟰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \u=                         ⇑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \uu-                        ↟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \upsilon                    υ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \uparrow                    ↑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \updownarrow                ↕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \upleftharpoon              ↿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \uplus                      ⊎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \uprightharpoon             ↾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \upuparrows                 ⇈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \And                        ⋀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \AA                         Å<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \AE                         Æ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Alpha                      Α<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Or                         ⋁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \O+                         ⨁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Ox                         ⨂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \O.                         ⨀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \O*                         ⍟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \OE                         Œ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Omega                      Ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Omicron                    Ο<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Int                        ℤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Inter                      ⋂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bInter                     ⋂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Iota                       Ι<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Im                         ℑ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Un                         ⋃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Union                      ⋃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bUnion                     ⋃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \U+                         ⨄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \U.                         ⨃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Upsilon                    Υ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Uparrow                    ⇑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Updownarrow                ⇕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gl-                        ƛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gl                         λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gangia                     Ϫ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gamma                      Γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Glb                        ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Ga                         α<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GA                         Α<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gb                         β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GB                         Β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gg                         γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GG                         Γ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gd                         δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GD                         Δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Ge                         ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GE                         Ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gz                         ζ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GZ                         Ζ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gth                        θ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gt                         τ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GTH                        Θ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GT                         Τ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gi                         ι<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GI                         Ι<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gk                         κ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GK                         Κ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GL                         Λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gm                         μ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GM                         Μ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gn                         ν<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GN                         Ν<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gx                         ξ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GX                         Ξ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gr                         ρ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GR                         Ρ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gs                         σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GS                         Σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gu                         υ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GU                         Υ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gf                         φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GF                         Φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gc                         χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GC                         Χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Gp                         ψ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GP                         Ψ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Go                         ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \GO                         Ω<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Inf                        ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Join                       ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Lub                        ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Lambda                     Λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Lamda                      Λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Leftarrow                  ⇐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Leftrightarrow             ⇔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Letter                     ✉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Lleftarrow                 ⇚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Ll                         ⋘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Longleftarrow              ⇐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Longleftrightarrow         ⇔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Longrightarrow             ⇒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Meet                       ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sup                        ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sqcap                      ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sqcup                      ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Lsh                        ↰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|-n                       ⊬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|-                        ⊢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|=n                       ⊭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|=                        ⊨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|-n                     ⊮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|-                      ⊩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|=n                     ⊯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|=                      ⊫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|\|-                    ⊪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|\|                       ‖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \fuzzy                      ‖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \\|n                        ∤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Com                        ℂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Chi                        Χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Cap                        ⋒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Cup                        ⋓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cul                        ⌜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cuL                        ⌈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \currency                   ¤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curlyeqprec                ⋞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curlyeqsucc                ⋟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curlypreceq                ≼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curlyvee                   ⋎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curlywedge                 ⋏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curvearrowleft             ↶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \curvearrowright            ↷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cur                        ⌝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cuR                        ⌉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cup                        ∪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cu                         ⌜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cll                        ⌞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \clL                        ⌊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \clr                        ⌟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \clR                        ⌋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \clubsuit                   ♣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cl                         ⌞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \construction               🚧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cong                       ≅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \con                        ⬝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \compl                      ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \complement                 ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \complementprefix           ∁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Complement                 ∁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \comp                       ∘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \com                        ℂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \coloneq                    ≔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \colon                      ₡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \copyright                  ©<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cdots                      ⋯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cdot                       ⬝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cib                        ●<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ciw                        ○<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ci..                       ◌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ci.                        ◎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ciO                        ◯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circeq                     ≗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circlearrowleft            ↺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circlearrowright           ↻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circledR                   ®<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circledS                   Ⓢ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circledast                 ⊛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circledcirc                ⊚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circleddash                ⊝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \circ                       ∘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ci                         ●<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \centerdot                  ·<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cent                       ¢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cedi                       ₵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \celsius                    ℃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ce                         ȩ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \checkmark                  ✓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \chi                        χ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cruzeiro                   ₢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \caution                    ☡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \cap                        ∩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \qed                        ∎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \quad                        <left><right><c-r>=Eatchar('\s')<cr>
inoremap  \quot                       ⧸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigsolidus                 ⧸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \/                          ⧸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \+                          ⊹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b+                         ⊞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b-                         ⊟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bx                         ⊠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b.                         ⊡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bn                         ℕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bz                         ℤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bq                         ℚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \brokenbar                  ¦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \br                         ℝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bc                         ℂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bp                         ℙ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bb                         𝔹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bsum                       ⅀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b0                         𝟘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b1                         𝟙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b2                         𝟚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b3                         𝟛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b4                         𝟜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b5                         𝟝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b6                         𝟞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b7                         𝟟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b8                         𝟠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \b9                         𝟡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb0                        𝟬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb1                        𝟭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb2                        𝟮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb3                        𝟯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb4                        𝟰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb5                        𝟱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb6                        𝟲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb7                        𝟳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb8                        𝟴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sb9                        𝟵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bub                        •<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \buw                        ◦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \but                        ‣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bumpeq                     ≏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bu                         •<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \biohazard                  ☣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigcap                     ⋂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigcirc                    ◯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigcoprod                  ∐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigcup                     ⋃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigglb                     ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \biginf                     ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigjoin                    ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \biglub                     ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigmeet                    ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigsqcap                   ⨅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigsqcup                   ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigstar                    ★<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigsup                     ⨆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigtriangledown            ▽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigtriangleup              △<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigvee                     ⋁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bigwedge                   ⋀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \beta                       β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \beth                       ℶ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \between                    ≬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \because                    ∵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \backcong                   ≌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \backepsilon                ∍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \backprime                  ‵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \backsimeq                  ⋍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \backsim                    ∽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \barwedge                   ⊼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacklozenge               ✦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacksquare                ▪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacksmiley                ☻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacktriangledown          ▾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacktriangleleft          ◂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacktriangleright         ▸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \blacktriangle              ▴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bot                        ⊥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^bot                       ᗮ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bowtie                     ⋈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \boxminus                   ⊟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \boxmid                     ◫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \hcomp                      ◫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \boxplus                    ⊞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \boxtimes                   ⊠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \join                       ⊔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-2                        ⇉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-3                        ⇶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-l-                       ⇄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r--                        ⟶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-n                        ↛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-\|                       ↦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r->                        ↣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-o                        ⊸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r-                         →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r==                        ⇛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r=n                        ⇏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r=                         ⇒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \r~                         ↝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rr-                        ↠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \reb                        ▬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rew                        ▭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \real                       ℝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \registered                 ®<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \re                         ▬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rbag                       ⟆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rat                        ℚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \radioactive                ☢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rangle                     ⟩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rq                         ’<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rial                       ﷼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightarrowtail             ↣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightarrow                 →<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightharpoondown           ⇁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightharpoonup             ⇀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightleftarrows            ⇄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightleftharpoons          ⇌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightrightarrows           ⇉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rightthreetimes            ⋌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \risingdotseq               ≓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ruble                      ₽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rupee                      ₨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rho                        ρ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rhd                        ▷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rceil                      ⌉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rfloor                     ⌋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rtimes                     ⋊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rdq                        ”<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \rdata                      》<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \functor                    ⥤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \fun                        λ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \f<<                        «<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \f<                         ‹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \f>>                        »<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \f>                         ›<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac12                     ½<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac13                     ⅓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac14                     ¼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac15                     ⅕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac16                     ⅙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac18                     ⅛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac1                      ⅟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac23                     ⅔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac25                     ⅖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac34                     ¾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac35                     ⅗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac38                     ⅜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac45                     ⅘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac56                     ⅚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac58                     ⅝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac78                     ⅞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frac                       ¼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frown                      ⌢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frqq                       »<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \frq                        ›<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \female                     ♀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \fei                        ϥ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \facsimile                  ℻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \fallingdotseq              ≒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \flat                       ♭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \flqq                       «<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \flq                        ‹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \forall                     ∀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \)b                         ⟆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \[[                         ⟦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \]]                         ⟧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \{{                         ⦃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \}}                         ⦄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \([                         ⟮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \])                         ⟯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Xi                         Ξ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Nat                        ℕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Nu                         Ν<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Zeta                       Ζ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rat                        ℚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Real                       ℝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Re                         ℜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rho                        Ρ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rightarrow                 ⇒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rrightarrow                ⇛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rsh                        ↱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Fei                        Ϥ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Frowny                     ☹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Hori                       Ϩ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Heta                       Ͱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Khei                       Ϧ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Koppa                      Ϟ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Kappa                      Κ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^a                         ᵃ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^b                         ᵇ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^c                         ᶜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^d                         ᵈ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^e                         ᵉ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^f                         ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^g                         ᵍ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^h                         ʰ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^i                         ⁱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^j                         ʲ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^k                         ᵏ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^l                         ˡ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^m                         ᵐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^n                         ⁿ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^o                         ᵒ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^p                         ᵖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^r                         ʳ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^s                         ˢ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^t                         ᵗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^u                         ᵘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^v                         ᵛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^w                         ʷ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^x                         ˣ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^y                         ʸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^z                         ᶻ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^A                         ᴬ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^B                         ᴮ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^D                         ᴰ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^E                         ᴱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^G                         ᴳ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^H                         ᴴ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^I                         ᴵ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^J                         ᴶ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^K                         ᴷ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^L                         ᴸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^M                         ᴹ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^N                         ᴺ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^O                         ᴼ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^P                         ᴾ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^R                         ᴿ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^T                         ᵀ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^U                         ᵁ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^V                         ⱽ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^W                         ᵂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^0                         ⁰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^1                         ¹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^2                         ²<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^3                         ³<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^4                         ⁴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^5                         ⁵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^6                         ⁶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^7                         ⁷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^8                         ⁸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^9                         ⁹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^)                         ⁾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^(                         ⁽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^=                         ⁼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^+                         ⁺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^o_                        º<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^-                         ⁻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^a_                        ª<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^uhook                     ꭟ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ubar                      ᶶ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^upsilon                   ᶷ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ltilde                    ꭞ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ls                        ꭝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^lhook                     ᶪ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^lretroflexhook            ᶩ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^oe                        ꟹ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^heng                      ꭜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^hhook                     ʱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^hwithhook                 ʱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Hstroke                   ꟸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^theta                     ᶿ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedv                   ᶺ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedmleg                ᶭ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedm                   ᵚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedh                   ᶣ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedalpha               ᶛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedae                  ᵆ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turneda                   ᵄ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedi                   ᵎ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnede                   ᵌ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedrhook               ʵ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedrwithhook           ʵ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^turnedr                   ʴ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^twithpalatalhook          ᶵ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^otop                      ᵔ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ezh                       ᶾ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^esh                       ᶴ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^eth                       ᶞ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^eng                       ᵑ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^zcurl                     ᶽ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^zretroflexhook            ᶼ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^vhook                     ᶹ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Ismall                    ᶦ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Lsmall                    ᶫ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Nsmall                    ᶰ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Usmall                    ᶸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Istroke                   ᶧ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Rinverted                 ʶ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ccurl                     ᶝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^chi                       ᵡ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^shook                     ᶳ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^gscript                   ᶢ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^schwa                     ᵊ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^usideways                 ᵙ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^phi                       ᶲ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^obarred                   ᶱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^beta                      ᵝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^obottom                   ᵕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^nretroflexhook            ᶯ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^nlefthook                 ᶮ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^mhook                     ᶬ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^jtail                     ᶨ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^iota                      ᶥ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^istroke                   ᶤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ereversedopen             ᶟ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^stop                      ˤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^varphi                    ᵠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^vargamma                  ᵞ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^gamma                     ˠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^ain                       ᵜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^alpha                     ᵅ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^oopen                     ᵓ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^eopen                     ᵋ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Ou                        ᴽ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Nreversed                 ᴻ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Ereversed                 ᴲ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Bbarred                   ᴯ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^Ae                        ᴭ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^SM                        ℠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^TEL                       ℡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \^TM                        ™<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_a                         ₐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_e                         ₑ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_h                         ₕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_i                         ᵢ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_j                         ⱼ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_k                         ₖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_l                         ₗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_m                         ₘ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_n                         ₙ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_o                         ₒ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_p                         ₚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_r                         ᵣ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_s                         ₛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_t                         ₜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_u                         ᵤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_v                         ᵥ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_x                         ₓ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_0                         ₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_1                         ₁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_2                         ₂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_3                         ₃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_4                         ₄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_5                         ₅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_6                         ₆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_7                         ₇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_8                         ₈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_9                         ₉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_)                         ₎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_(                         ₍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_=                         ₌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_+                         ₊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_--                        "̲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \_-                         ₋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \!!                         ‼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \!?                         ⁉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \San                        Ϻ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sampi                      Ϡ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sho                        Ϸ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Shima                      Ϭ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Shei                       Ϣ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Stigma                     Ϛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Sigma                      Σ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Subset                     ⋐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Supset                     ⋑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Smiley                     ☺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Psi                        Ψ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Phi                        Φ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Pi                         Π<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Pi0                        Π₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \P0                         Π₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Pi_0                       Π₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \P_0                        Π₀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfA                        𝐀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfB                        𝐁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfC                        𝐂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfD                        𝐃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfE                        𝐄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfF                        𝐅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfG                        𝐆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfH                        𝐇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfI                        𝐈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfJ                        𝐉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfK                        𝐊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfL                        𝐋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfM                        𝐌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfN                        𝐍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfO                        𝐎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfP                        𝐏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfQ                        𝐐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfR                        𝐑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfS                        𝐒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfT                        𝐓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfU                        𝐔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfV                        𝐕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfW                        𝐖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfX                        𝐗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfY                        𝐘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfZ                        𝐙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfa                        𝐚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfb                        𝐛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfc                        𝐜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfd                        𝐝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfe                        𝐞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bff                        𝐟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfg                        𝐠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfh                        𝐡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfi                        𝐢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfj                        𝐣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfk                        𝐤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfl                        𝐥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfm                        𝐦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfn                        𝐧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfo                        𝐨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfp                        𝐩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfq                        𝐪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfr                        𝐫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfs                        𝐬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bft                        𝐭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfu                        𝐮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfv                        𝐯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfw                        𝐰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfx                        𝐱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfy                        𝐲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bfz                        𝐳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiA                        𝐴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiB                        𝐵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiC                        𝐶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiD                        𝐷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiE                        𝐸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiF                        𝐹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiG                        𝐺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiH                        𝐻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiI                        𝐼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiJ                        𝐽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiK                        𝐾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiL                        𝐿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiM                        𝑀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiN                        𝑁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiO                        𝑂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiP                        𝑃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiQ                        𝑄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiR                        𝑅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiS                        𝑆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiT                        𝑇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiU                        𝑈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiV                        𝑉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiW                        𝑊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiX                        𝑋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiY                        𝑌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MiZ                        𝑍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mia                        𝑎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mib                        𝑏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mic                        𝑐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mid                        𝑑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mie                        𝑒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mif                        𝑓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mig                        𝑔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mii                        𝑖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mij                        𝑗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mik                        𝑘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mil                        𝑙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mim                        𝑚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Min                        𝑛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mio                        𝑜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mip                        𝑝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miq                        𝑞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mir                        𝑟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mis                        𝑠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mit                        𝑡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miu                        𝑢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miv                        𝑣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miw                        𝑤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mix                        𝑥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miy                        𝑦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Miz                        𝑧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIA                        𝑨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIB                        𝑩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIC                        𝑪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MID                        𝑫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIE                        𝑬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIF                        𝑭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIG                        𝑮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIH                        𝑯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MII                        𝑰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIJ                        𝑱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIK                        𝑲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIL                        𝑳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIM                        𝑴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIN                        𝑵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIO                        𝑶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIP                        𝑷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIQ                        𝑸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIR                        𝑹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIS                        𝑺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIT                        𝑻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIU                        𝑼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIV                        𝑽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIW                        𝑾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIX                        𝑿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIY                        𝒀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIZ                        𝒁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIa                        𝒂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIb                        𝒃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIc                        𝒄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MId                        𝒅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIe                        𝒆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIf                        𝒇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIg                        𝒈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIh                        𝒉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIi                        𝒊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIj                        𝒋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIk                        𝒌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIl                        𝒍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIm                        𝒎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIn                        𝒏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIo                        𝒐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIp                        𝒑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIq                        𝒒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIr                        𝒓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIs                        𝒔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIt                        𝒕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIu                        𝒖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIv                        𝒗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIw                        𝒘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIx                        𝒙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIy                        𝒚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MIz                        𝒛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McA                        𝒜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McB                        ℬ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McC                        𝒞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McD                        𝒟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McE                        ℰ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McF                        ℱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McG                        𝒢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McH                        ℋ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McI                        ℐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McJ                        𝒥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McK                        𝒦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McL                        ℒ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McM                        ℳ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McN                        𝒩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McO                        𝒪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McP                        𝒫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McQ                        𝒬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McR                        ℛ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McS                        𝒮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McT                        𝒯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McU                        𝒰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McV                        𝒱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McW                        𝒲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McX                        𝒳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McY                        𝒴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \McZ                        𝒵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mca                        𝒶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcb                        𝒷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcc                        𝒸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcd                        𝒹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mce                        ℯ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcf                        𝒻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcg                        ℊ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mch                        𝒽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mci                        𝒾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcj                        𝒿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mck                        𝓀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcl                        𝓁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcm                        𝓂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcn                        𝓃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mco                        ℴ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcp                        𝓅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcq                        𝓆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcr                        𝓇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcs                        𝓈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mct                        𝓉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcu                        𝓊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcv                        𝓋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcw                        𝓌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcx                        𝓍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcy                        𝓎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mcz                        𝓏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCA                        𝓐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCB                        𝓑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCC                        𝓒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCD                        𝓓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCE                        𝓔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCF                        𝓕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCG                        𝓖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCH                        𝓗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCI                        𝓘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCJ                        𝓙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCK                        𝓚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCL                        𝓛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCM                        𝓜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCN                        𝓝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCO                        𝓞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCP                        𝓟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCQ                        𝓠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCR                        𝓡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCS                        𝓢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCT                        𝓣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCU                        𝓤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCV                        𝓥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCW                        𝓦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCX                        𝓧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCY                        𝓨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCZ                        𝓩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCa                        𝓪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCb                        𝓫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCc                        𝓬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCd                        𝓭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCe                        𝓮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCf                        𝓯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCg                        𝓰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCh                        𝓱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCi                        𝓲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCj                        𝓳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCk                        𝓴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCl                        𝓵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCm                        𝓶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCn                        𝓷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCo                        𝓸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCp                        𝓹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCq                        𝓺<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCr                        𝓻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCs                        𝓼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCt                        𝓽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCu                        𝓾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCv                        𝓿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCw                        𝔀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCx                        𝔁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCy                        𝔂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MCz                        𝔃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfA                        𝔄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfB                        𝔅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfC                        ℭ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfD                        𝔇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfE                        𝔈<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfF                        𝔉<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfG                        𝔊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfH                        ℌ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfI                        ℑ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfJ                        𝔍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfK                        𝔎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfL                        𝔏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfM                        𝔐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfN                        𝔑<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfO                        𝔒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfP                        𝔓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfQ                        𝔔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfR                        ℜ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfS                        𝔖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfT                        𝔗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfU                        𝔘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfV                        𝔙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfW                        𝔚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfX                        𝔛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfY                        𝔜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \MfZ                        ℨ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfa                        𝔞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfb                        𝔟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfc                        𝔠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfd                        𝔡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfe                        𝔢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mff                        𝔣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfg                        𝔤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfh                        𝔥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfi                        𝔦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfj                        𝔧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfk                        𝔨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfl                        𝔩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfm                        𝔪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfn                        𝔫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfo                        𝔬<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfp                        𝔭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfq                        𝔮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfr                        𝔯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfs                        𝔰<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mft                        𝔱<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfu                        𝔲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfv                        𝔳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfw                        𝔴<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfx                        𝔵<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfy                        𝔶<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Mfz                        𝔷<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \yen                        ¥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varrho                     ϱ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varkappa                   ϰ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varkai                     ϗ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varpi                      ϖ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varphi                     ϕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varprime                   ′<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varpropto                  ∝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vartheta                   ϑ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vartriangleleft            ⊲<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vartriangleright           ⊳<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varbeta                    ϐ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \varsigma                   ς<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \veebar                     ⊻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vee                        ∨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ve                         ě<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vE                         Ě<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vdash                      ⊢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vdots                      ⋮<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vd                         ď<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vDash                      ⊨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vD                         Ď<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vc                         č<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vC                         Č<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \koppa                      ϟ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \kip                        ₭<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ki                         į<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \kI                         Į<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \kelvin                     K<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \kappa                      κ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \khei                       ϧ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \warning                    ⚠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \won                        ₩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \wedge                      ∧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \wp                         ℘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \wr                         ≀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Dei                        Ϯ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Delta                      Δ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Digamma                    Ϝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Diamond                    ◇<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Downarrow                  ⇓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \DH                         Ð<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \zeta                       ζ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Eta                        Η<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Epsilon                    Ε<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Beta                       Β<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Box                        □<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Bumpeq                     ≎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbA                        𝔸<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbB                        𝔹<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbC                        ℂ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbD                        𝔻<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbE                        𝔼<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbF                        𝔽<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbG                        𝔾<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbH                        ℍ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbI                        𝕀<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbJ                        𝕁<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbK                        𝕂<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbL                        𝕃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbM                        𝕄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbN                        ℕ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbO                        𝕆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbP                        ℙ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbQ                        ℚ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbR                        ℝ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbS                        𝕊<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbT                        𝕋<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbU                        𝕌<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbV                        𝕍<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbW                        𝕎<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbX                        𝕏<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbY                        𝕐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbZ                        ℤ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bba                        𝕒<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbb                        𝕓<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbc                        𝕔<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbd                        𝕕<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbe                        𝕖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbf                        𝕗<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbg                        𝕘<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbh                        𝕙<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbi                        𝕚<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbj                        𝕛<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbk                        𝕜<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbl                        𝕝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbm                        𝕞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbn                        𝕟<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbo                        𝕠<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbp                        𝕡<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbq                        𝕢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbr                        𝕣<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbs                        𝕤<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbt                        𝕥<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbu                        𝕦<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbv                        𝕧<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbw                        𝕨<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbx                        𝕩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bby                        𝕪<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bbz                        𝕫<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Rge0                       ℝ≥0<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \R>=0                       ℝ≥0<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nnreal                     ℝ≥0<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \ennreal                    ℝ≥0∞<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Zsqrt                      ℤ√<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \zsqrtd                     ℤ√<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \liel                       ⁅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \[-                         ⁅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bracketl                   ⁅<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \lier                       ⁆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \-]                         ⁆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \bracketr                   ⁆<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nhds                       𝓝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \nbhds                      𝓝<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \X                          ⨯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \vectorproduct              ⨯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \crossproduct               ⨯<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \coprod                     ⨿<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \sigmaobj                   ∐<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \xf                         ×ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \exf                        ∃ᶠ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \c[                         ⦃<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \c]                         ⦄<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Yot                        Ϳ<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \goal                       ⊢<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Vdash                      ⊩<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Vert                       ‖<left><right><c-r>=Eatchar('\s')<cr>
inoremap  \Vvdash                     ⊪<left><right><c-r>=Eatchar('\s')<cr>

" Multi-cursor editing, also known as multiple selection, is a feature in many
" code editors that allows users to place multiple cursors within a document
" and edit them simultaneously.
" inoremap \{} {$CURSOR}
" inoremap \{}_ {$CURSOR}_
" inoremap \{{}} ⦃$CURSOR⦄
" inoremap \[] [$CURSOR]
" inoremap \[]_ [$CURSOR]_
" inoremap \[[]] ⟦$CURSOR⟧
" inoremap \<> ⟨$CURSOR⟩
" inoremap \() ($CURSOR)
" inoremap \()_ ($CURSOR)_
" inoremap \([])' ⟮$CURSOR⟯
" inoremap \f<> ‹$CURSOR›
" inoremap \f<<>> «$CURSOR»
" inoremap \[--] ⁅$CURSOR⁆
" inoremap \nnnorm ‖$CURSOR‖₊
" inoremap \norm ‖$CURSOR‖

