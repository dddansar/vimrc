"==============================================================================
" File: custom_syntax.vim
"------------------------------------------------------------------------------
" Description: Loads the custom syntax highlighting groups based on the file
"              extension.
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


" --------------------------------------------------------------------------
" Setting b:comment_leader based on Filetype. This can then be used to
" syntax match comments or to create comments with remappings.
" b:comment_leader is used to determine the comments when
" g:select_custom_syntax >= 2.
" --------------------------------------------------------------------------
augroup SetFiletypeComment

   " Use autocmd!/au! to clear existing autocommands to prevent duplicates.
   au!

   if g:select_custom_syntax >= 2 && g:select_custom_syntax < 5

      " NOTE: You can get the current file filetype with :set filetype?
      " Manually set the comment_leader for file types.
      " Used AI to generate this list...
      au FileType aap,alsaconf,apache,arch,art,asm,automake,autopkgtest,awk,bash,bitbake,bzl,calendar,cdrdaoconf,cfg,cgdbrc,changelog,cmake,cmakecache,codeowners,conf,config,cook,crm,crontab,csh,cucumber,cvsrc,deb822sources,debchangelog,debcontrol,debsources,denyhosts,desktop,dictconf,dictdconf,dircolors,dnsmasq,dockerfile,editorconfig,elinks,elixir,env,eterm,expect,exports,fetchmail,fish,fpcmake,fstab,fvwm,gdb,gdscript,git,gitattributes,gitcommit,gitconfig,gitignore,gitrebase,gitsendemail,goaccess,gpg,gprof,graphql,group,grub,gyp,hamster,hcl,hlsplaylist,hog,hostconf,hostsaccess,http,hurl,hyprlang,i3config,icon,indent,jproperties,jq,julia,just,kconfig,kitty,kivy,kwt,ldapconf,leex,lf,lftp,libao,limits,livebook,logcheck,loginaccess,logindefs,lynx,mailaliases,mailcap,make,manconf,mbsync,meson,modconf,mojo,mplayerconf,mrxvtrc,mss,muttrc,nanorc,neomuttrc,netrc,nginx,nickel,nim,nix,nu,objdump,octave,ondir,openvpn,org,pamconf,passwd,pbtxt,perl,pinfo,poefilter,procmail,protocols,ps1,ps1xml,pymanifest,pyrex,python,quarto,r,racc,raku,readline,remind,requirements,reva,rhelp,rmd,rnc,rnoweb,roc,routeros,rrst,ruby,screen,sed,sensors,services,setserial,sh,sieve,skhd,slpconf,slpreg,slpspi,snakemake,solution,spajson,spec,sshconfig,sshdconfig,sudoers,sway,swayconfig,sysctl,systemd,tap,tcl,tcsh,terminfo,terraform,tf,tidy,tmux,toml,treetop,tutor,uci,udevconf,udevperm,udevrules,updatedb,usd,wget,wget2,xcompose,xf86conf,xinetd,xs,yaml,zathurarc,zimbu let b:comment_leader = '#'
      au FileType abap,help,vim                                                let b:comment_leader = '"'
      au FileType abnf,autohotkey,bindzone,chicken,clojure,confini,dosini,dune,fennel,lisp,llvm,m17ndb,masm,msmessages,nsis,obse,registry,samba,scdoc,scheme,sexplib,ssa,tiasm,urlshortcut let b:comment_leader = ';'
      au FileType ada,cabal,eiffel,elm,haskell,idris2,ipkg,karel,lua,luau,mysql,occam,plsql,purescript,sql,unison,vhdl let b:comment_leader = '--'
      au FileType antlr4,arduino,asciidoc,astro,asy,bicep,bicep-params,bp,bpftrace,c,c3,cedar,ch,chatito,corn,cpp,cs,csc,cuda,dart,dax,dtrace,dts,falcon,fga,flexwiki,framescript,gdshader,gel,gleam,go,gomod,groovy,hare,ishd,java,javacc,javascript,javascriptreact,json5,jsonc,jsonnet,kdl,kerml,kotlin,lc,less,lex,mlir,objc,objcpp,odin,opencl,openscad,pascal,php,pkl,poke,pq,prisma,proto,ptx,qml,quake,rasi,rescript,rpl,rust,sass,sbt,scala,scss,shaderslang,slint,solidity,soy,squirrel,stylus,swift,swiftgyb,swig,sysml,systemverilog,thrift,typescript,typescriptreact,typst,uc,v,vdf,verilog,xkb,yacc,zig let b:comment_leader = '//'
      au FileType aspvbs,basic,brighterscript,brightscript,freebasic,qb64,vb   let b:comment_leader = "'"
      au FileType bst,context,erlang,initex,logtalk,lprolog,m3quake,matlab,mf,mp,plaintex,postscr,prolog,tex let b:comment_leader = '%'
      au FileType btm                                                          let b:comment_leader = '::'
      au FileType css,ld,lnk,lnkmap                                            let b:comment_leader = '/*'
      au FileType docbk,dtd,html,htmlangular,markdown,mediawiki,sgml,svelte,svg,tt2html,vue,xhtml,xml,xsd,xslt let b:comment_leader = '<!--'
      au FileType dosbatch                                                     let b:comment_leader = 'REM'
      au FileType eruby                                                        let b:comment_leader = '<%#'
      au FileType forth                                                        let b:comment_leader = '\'
      au FileType fortran,xdefaults,xmodmap                                    let b:comment_leader = '!'
      au FileType groff                                                        let b:comment_leader = '\#'
      au FileType haml                                                         let b:comment_leader = '-#'
      au FileType heex                                                         let b:comment_leader = '<%!--'
      au FileType hgcommit                                                     let b:comment_leader = 'HG:'
      au FileType htmldjango,tera,twig                                         let b:comment_leader = '{#'
      au FileType j                                                            let b:comment_leader = 'NB.'
      au FileType jjdescription                                                let b:comment_leader = 'JJ:'
      au FileType jsp                                                          let b:comment_leader = '<%--'
      au FileType leo                                                          let b:comment_leader = '@'
      au FileType liquid                                                       let b:comment_leader = '{%'
      au FileType m3build,mma,modula2,modula3,ocaml,sml                        let b:comment_leader = '(*'
      au FileType m4                                                           let b:comment_leader = 'dnl'
      au FileType mail                                                         let b:comment_leader = '>'
      au FileType man,nroff                                                    let b:comment_leader = '.\"'
      au FileType mermaid                                                      let b:comment_leader = '%%'

      " I like to use // as comments in text files.
      au FileType text                                                         let b:comment_leader = '//'
      " Add comments for lean.
      au BufNewFile,BufRead *lean.txt,*.lean,*.rtf                             let b:comment_leader = '--'

      " Same idea as comment_leader above but with multi-line comments.
      au FileType c,cpp,cs,java,javascript,typescript,swift,kotlin,go,rust,php,css,scala,dart,groovy,sql,d,verilog,systemverilog,vhdl let b:multi_line_comment_start = '\/\*' | let b:multi_line_comment_end = '\*\/'
 "    au FileType python       let b:multi_line_comment_start = "'''"    | let b:multi_line_comment_end = "'''"
      au FileType ruby         let b:multi_line_comment_start = '=begin' | let b:multi_line_comment_end = '=end'
      au FileType perl         let b:multi_line_comment_start = '=pod'   | let b:multi_line_comment_end = '=cut'
      au FileType html,xml     let b:multi_line_comment_start = '<!--'   | let b:multi_line_comment_end = '-->'
      au FileType lua          let b:multi_line_comment_start = '--\[\[' | let b:multi_line_comment_end = '\]\]'
      au FileType haskell      let b:multi_line_comment_start = '{-'     | let b:multi_line_comment_end = '-}'
      au FileType julia        let b:multi_line_comment_start = '#='     | let b:multi_line_comment_end = '=#'
      au FileType matlab       let b:multi_line_comment_start = '%{'     | let b:multi_line_comment_end = '%}'
      au FileType nim          let b:multi_line_comment_start = '#\['    | let b:multi_line_comment_end = '\]#'
      au FileType ocaml,fsharp let b:multi_line_comment_start = '(\*'    | let b:multi_line_comment_end = '\*)'
      au FileType powershell   let b:multi_line_comment_start = '<#'     | let b:multi_line_comment_end = '#>'

      au BufNewFile,BufRead *lean.txt,*.lean let b:multi_line_comment_start = '\/-' | let b:multi_line_comment_end = '-\/'

      " Set spell checking variable if spell checking enable
      au BufNewFile,BufRead *.txt,*.rtf let g:spell_check_en=1 | setlocal spell
   endif

augroup END


" -----------------------------------------------------------------------
" Colors and Syntax Highlighting
" -----------------------------------------------------------------------
" This will load all the custom syntax highlightings for all files based
" on the file extension.
augroup EnCustomSyntax

   " Use autocmd!/au! to clear existing autocommands to prevent duplicates.
   au!

   "=====================================================================
   "===================== Source syntax files ===========================
   "=====================================================================

   " NOTE: FileType specific syntax files can be found in:
   "       $VIMRUNTIME/syntax/
   " See:  $VIMRUNTIME/syntax/vim.vim
   " NOTE: Vim determines which syntax file to load based on the file:
   "       $VIMRUNTIME/filetype.vim

   " Use my colorscheme.
   if g:select_custom_syntax >= 2 && g:select_custom_syntax < 5
      " This file will color the highlighting groups names to the colors
      " that they are mapped to.
      au BufNewFile,BufRead * so  $vim_folder_path/colors.vim

      " If a dedicated syntax file is not found, then source
      " $VIMRUNTIME/syntax/'FileType'.vim
      au BufNewFile,BufRead * let g:custom_syntax_found=0

      " Load rainbow parenthesis functions.
      au BufNewFile,BufRead * so  $vim_folder_path/rainbow_parenthesis.vim

      " NOTE: THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES BEFORE THE
      "       RESPECTIVE FILE SETTINGS ARE APPLIED!!!
      " WARNING: BufNewFile and BufRead load before au FileType!!
      au BufNewFile,BufRead * so $vim_folder_path/all_pre.vim

      " Enables spellchecking in specific file extensions.
      au BufNewFile,BufRead *.txt,*.rtf so $vim_folder_path/spell.vim

      " Add custom syntax for files that use math symbols.
      au BufNewFile,BufRead math_mappings.vim,*.lean so $vim_folder_path/math_mappings.vim

      " Add custom syntax for files that use math symbols.
      au BufNewFile,BufRead *.uni.txt so $vim_folder_path/math.vim

      " Add custom syntax for files that use unicode chars.
      au BufNewFile,BufRead math_mappings.vim,math.vim,unicode.vim,*lean.txt,*.lean,*.uni,*.uni.txt so $vim_folder_path/unicode.vim

      " Add custom syntax for .vimrc.
      au BufNewFile,BufRead *vimrc*,*.vim so $vim_folder_path/vim.vim | let g:custom_syntax_found=1

      if g:select_custom_syntax >= 3
         " Add custom syntax for vhdl.
         au BufNewFile,BufRead *.vhd,*.vhdl,*.psl so $vim_folder_path/vhdl.vim | let g:custom_syntax_found=1

         " Add custom syntax for System Verilog.
         au BufNewFile,BufRead *.sv,*.svh,*.sv.bak,*.vt,*.vb,*.v,*.vlib,*.vh so $vim_folder_path/sv.vim | let g:custom_syntax_found=1

         " Add custom syntax for assembly.
         au BufNewFile,BufRead *.asm,*.masm,*.s,*.objdump so $vim_folder_path/asm.vim | let g:custom_syntax_found=1

         " Add custom syntax for java.
         au BufNewFile,BufRead *.java so $vim_folder_path/java.vim | let g:custom_syntax_found=1

         " Add custom syntax for perl.
         au BufNewFile,BufRead *.pl,*.pm so $vim_folder_path/pl.vim | let g:custom_syntax_found=1

         " Add custom syntax for python.
         au BufNewFile,BufRead *.py so $vim_folder_path/py.vim | let g:custom_syntax_found=1

         " Add custom syntax for TCL.
         au BufNewFile,BufRead *.tcl,*.f so $vim_folder_path/tcl.vim | let g:custom_syntax_found=1

         " Add custom syntax for latex.
         au BufNewFile,BufRead *.tex so $vim_folder_path/latex.vim | let g:custom_syntax_found=1

         " Add custom syntax for .log.
         au BufNewFile,BufRead *.log,*.log.* so $vim_folder_path/log.vim | let g:custom_syntax_found=1

         " Add custom syntax for files that use strikethrough and gray-out.
         au BufNewFile,BufRead *.txt so $vim_folder_path/strikethrough.vim

         " Settings for the file browser aka the netrw plugin (when opening
         " folders with vim or can be opened with :E).
         au FileType netrw so $vim_folder_path/netrw.vim | let g:custom_syntax_found=1
      endif

      " Add custom syntax for C.
      au BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp,*.i so $vim_folder_path/c.vim | let g:custom_syntax_found=1

      " Add custom syntax for txt.
      au BufNewFile,BufRead *.txt,*.tex,*.rtf so $vim_folder_path/txt.vim | let g:custom_syntax_found=1

      " Add custom syntax for bash. \w is to avoid loading bash.vim.
      au BufNewFile,BufRead bash_*,.bash*,*.sh,.cshrc*,*.csh,.aliases,*.ps1 so $vim_folder_path/bash.vim | let g:custom_syntax_found=1

      " Add custom syntax for lean.
      au BufNewFile,BufRead *lean.txt,*.lean so $vim_folder_path/lean.vim | let g:custom_syntax_found=1

      " Syntax for files that support regular expressions.
      " (NOTE: May be extension dependent as different
      "        programs/editors/programming languages/OS can use regex
      "        slightly differently and with different syntax).
      au BufNewFile,BufRead *.pl,*.pm,*vimrc*,*.vim,tags so $vim_folder_path/regex.vim

      " NOTE Add abbreviations to shorten common and repetitive text.
      au BufNewFile,BufRead * so $vim_folder_path/abbrev.vim

      " Add custom syntax for custom vim file.
      if filereadable(expand($vim_folder_path . "/" . $custom_vim_file))
         au BufNewFile,BufRead $custom_vim_ext so $vim_folder_path/$custom_vim_file | let g:custom_syntax_found=1
      endif

      " Use default syntax for vim help documents.
      au BufNewFile,BufRead $VIMRUNTIME/doc/* let g:custom_syntax_found=0

      " No custom syntax file needed for the following filetypes.
      au BufNewFile,BufRead .gitignore,*ipynb,*.ahk,*.md let g:custom_syntax_found=1
      au BufNewFile,BufRead svn-commit*.tmp let g:custom_syntax_found=1 | so  $vim_folder_path/svn.vim

      " Add custom syntax for claude_history.txt
      au BufNewFile,BufRead claude_history.txt call g:SetupClaudeChatSyntax() | setlocal nospell | let g:custom_syntax_found=1

      " NOTE: THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES AFTER THE
      "       RESPECTIVE FILE SETTINGS ARE APPLIED!!!
      au BufNewFile,BufRead * so $vim_folder_path/all_post.vim

      " NOTE: Moved deliberately after all_post.vim as I want to clear
      "       all syntax first or the file can feel laggy!!!
      " NOTE: all_colors.vim contains a list of all colors colorized!
      au BufNewFile,BufRead all_colors.vim so $vim_folder_path/all_colors.vim

      " If a custom syntax file is not found, then source one from
      " $VIMRUNTIME/syntax/'FileType'.vim
      if g:select_custom_syntax == 3
         " if exists('*popup_notification') && has("gui_running")
         "    au BufNewFile,BufRead * if g:custom_syntax_found==0 && &filetype != '' && &filetype != 'custom_syntax' && filereadable(expand('$VIMRUNTIME/syntax/' . &filetype . '.vim')) | syntax clear | exe 'so $VIMRUNTIME/syntax/' . &filetype . '.vim' | call popup_notification("Custom syntax file not found, loading default syntax from $VIMRUNTIME/", #{time: 3000}) | endif
         " else
            au BufNewFile,BufRead * if g:custom_syntax_found==0 && &filetype != '' && &filetype != 'custom_syntax' && filereadable(expand('$VIMRUNTIME/syntax/' . &filetype . '.vim')) | syntax clear | exe 'so $VIMRUNTIME/syntax/' . &filetype . '.vim' | redraw | echom "Custom syntax file not found, loading default syntax from $VIMRUNTIME/" | endif
         " endif
      endif

      " This will prevent any future "syntax on" from loading the default
      " syntax files in $VIMRUNTIME/syntax/'FileType'.vim. Syntax on will
      " now load the custom syntax files in the current
      " augroup EnCustomSyntax by loading the local
      " .vim/syntax/custom_syntax.vim file.
      if g:select_custom_syntax >= 3
         au BufNewFile,BufRead * if g:custom_syntax_found==1 && &filetype != 'custom_syntax' | set filetype=custom_syntax | endif
      endif

   endif
   "=====================================================================

augroup END


" This will load all my custom syntax highlightings for all files based
" on their file extension. EnCustomSyntax can be found in .vimrc.
" The lines above will get loaded on Vim statup and the following will
" get loaded whenever "syntax on" is executed.
if exists('g:en_custom_syntax_loaded')
   if g:select_custom_syntax >= 2 && g:select_custom_syntax < 5
      doautocmd EnCustomSyntax BufRead
   endif
endif
let g:en_custom_syntax_loaded = 1

