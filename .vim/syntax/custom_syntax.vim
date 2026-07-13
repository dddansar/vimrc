"==============================================================================
" File: custom_syntax.vim
"------------------------------------------------------------------------------
" Description: Loads the custom syntax highlighting groups based on the file
"              extension.
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

"------------------------------------------------------------------------------
" Setting b:comment_leader based on Filetype. This can then be used to
" syntax match comments or to create comments with remappings.
" b:comment_leader is used to determine the comments when
" g:select_custom_syntax >= 2.
"------------------------------------------------------------------------------
augroup SetFiletypeComment

   " Use autocmd!/au! to clear existing autocommands to prevent duplicates.
   autocmd!

   " Comment Leader is still useful in mappings so generate it for all options.
   " Set default value for comment_leader
   if !exists('b:comment_leader')
      let b:comment_leader = '//'
   endif

   " Add filetype for extensions that don't have any
   autocmd BufNewFile,BufRead *.REG                     set filetype=registry
   autocmd BufNewFile,BufRead .aliases                  set filetype=sh
   autocmd BufNewFile,BufRead *.log,*.log.*,transcript  set filetype=log
   autocmd BufNewFile,BufRead *.rtf                     set filetype=text
   autocmd BufNewFile,BufRead *.uni                     set filetype=uni
   autocmd BufNewFile,BufRead *.vh                      set filetype=verilog
   autocmd BufNewFile,BufRead *.i                       set filetype=c
   autocmd BufNewFile,BufRead *.rcf                     set filetype=rcf
   autocmd BufNewFile,BufRead *.objdump                 set filetype=asm

   " NOTE: You can get the current file filetype with :set filetype?
   " Manually set the comment_leader for file types.
   " Used AI to generate this list...
   autocmd FileType aap,alsaconf,apache,arch,art,asm,automake,autopkgtest,awk,bash,bitbake,bzl,calendar,cdrdaoconf,cfg,cgdbrc,changelog,cmake,cmakecache,codeowners,conf,config,cook,crm,crontab,csh,cucumber,cvsrc,deb822sources,debchangelog,debcontrol,debsources,denyhosts,desktop,dictconf,dictdconf,dircolors,dnsmasq,dockerfile,editorconfig,elinks,elixir,env,eterm,expect,exports,fetchmail,fish,fpcmake,fstab,fvwm,gdb,gdscript,git,gitattributes,gitcommit,gitconfig,gitignore,gitrebase,gitsendemail,goaccess,gpg,gprof,graphql,group,grub,gyp,hamster,hcl,hlsplaylist,hog,hostconf,hostsaccess,http,hurl,hyprlang,i3config,icon,indent,jproperties,jq,julia,just,kconfig,kitty,kivy,kwt,ldapconf,leex,lf,lftp,libao,limits,livebook,logcheck,loginaccess,logindefs,lynx,mailaliases,mailcap,make,manconf,mbsync,meson,modconf,mojo,mplayerconf,mrxvtrc,mss,muttrc,nanorc,neomuttrc,netrc,nginx,nickel,nim,nix,nu,objdump,octave,ondir,openvpn,org,pamconf,passwd,pbtxt,perl,pinfo,poefilter,procmail,protocols,ps1,ps1xml,pymanifest,pyrex,python,quarto,r,racc,raku,readline,remind,requirements,reva,rhelp,rmd,rnc,rnoweb,roc,routeros,rrst,ruby,screen,sed,sensors,services,setserial,sh,sieve,skhd,slpconf,slpreg,slpspi,snakemake,solution,spajson,spec,sshconfig,sshdconfig,sudoers,sway,swayconfig,sysctl,systemd,tap,tcl,tcsh,terminfo,terraform,tf,tidy,tmux,toml,treetop,tutor,uci,udevconf,udevperm,udevrules,updatedb,usd,wget,wget2,xcompose,xf86conf,xinetd,xs,yaml,zathurarc,zimbu let b:comment_leader = '#'
   autocmd FileType abap,help,vim                                                let b:comment_leader = '"'
   autocmd FileType abnf,autohotkey,bindzone,chicken,clojure,confini,dosini,dune,fennel,lisp,llvm,m17ndb,masm,msmessages,nsis,obse,registry,samba,scdoc,scheme,sexplib,ssa,tiasm,urlshortcut let b:comment_leader = ';'
   autocmd FileType ada,cabal,eiffel,elm,haskell,idris2,ipkg,karel,lua,luau,mysql,occam,plsql,purescript,sql,unison,vhdl let b:comment_leader = '--'
   autocmd FileType antlr4,arduino,asciidoc,astro,asy,bicep,bicep-params,bp,bpftrace,c,c3,cedar,ch,chatito,corn,cpp,cs,csc,cuda,dart,dax,dtrace,dts,falcon,fga,flexwiki,framescript,gdshader,gel,gleam,go,gomod,groovy,hare,ishd,java,javacc,javascript,javascriptreact,json5,jsonc,jsonnet,kdl,kerml,kotlin,lc,less,lex,mlir,objc,objcpp,odin,opencl,openscad,pascal,php,pkl,poke,pq,prisma,proto,ptx,qml,quake,rasi,rescript,rpl,rust,sass,sbt,scala,scss,shaderslang,slint,solidity,soy,squirrel,stylus,swift,swiftgyb,swig,sysml,systemverilog,thrift,typescript,typescriptreact,typst,uc,v,vdf,verilog,xkb,yacc,zig let b:comment_leader = '//'
   autocmd FileType aspvbs,basic,brighterscript,brightscript,freebasic,qb64,vb   let b:comment_leader = "'"
   autocmd FileType bst,context,erlang,initex,logtalk,lprolog,m3quake,matlab,mf,mp,plaintex,postscr,prolog,tex let b:comment_leader = '%'
   autocmd FileType btm                                                          let b:comment_leader = '::'
   autocmd FileType css,ld,lnk,lnkmap                                            let b:comment_leader = '/*'
   autocmd FileType docbk,dtd,html,htmlangular,markdown,mediawiki,sgml,svelte,svg,tt2html,vue,xhtml,xml,xsd,xslt let b:comment_leader = '<!--'
   autocmd FileType dosbatch                                                     let b:comment_leader = 'REM'
   autocmd FileType eruby                                                        let b:comment_leader = '<%#'
   autocmd FileType forth                                                        let b:comment_leader = '\'
   autocmd FileType fortran,xdefaults,xmodmap                                    let b:comment_leader = '!'
   autocmd FileType groff                                                        let b:comment_leader = '\#'
   autocmd FileType haml                                                         let b:comment_leader = '-#'
   autocmd FileType heex                                                         let b:comment_leader = '<%!--'
   autocmd FileType hgcommit                                                     let b:comment_leader = 'HG:'
   autocmd FileType htmldjango,tera,twig                                         let b:comment_leader = '{#'
   autocmd FileType j                                                            let b:comment_leader = 'NB.'
   autocmd FileType jjdescription                                                let b:comment_leader = 'JJ:'
   autocmd FileType jsp                                                          let b:comment_leader = '<%--'
   autocmd FileType leo                                                          let b:comment_leader = '@'
   autocmd FileType liquid                                                       let b:comment_leader = '{%'
   autocmd FileType m3build,mma,modula2,modula3,ocaml,sml                        let b:comment_leader = '(*'
   autocmd FileType m4                                                           let b:comment_leader = 'dnl'
   autocmd FileType mail                                                         let b:comment_leader = '>'
   autocmd FileType man,nroff                                                    let b:comment_leader = '.\"'
   autocmd FileType mermaid                                                      let b:comment_leader = '%%'

   " Same idea as comment_leader above but with multi-line comments.
   autocmd FileType c,cpp,cs,java,javascript,typescript,swift,kotlin,go,rust,php,css,scala,dart,groovy,sql,d,verilog,systemverilog,vhdl let b:multi_line_comment_start = '\/\*' | let b:multi_line_comment_end = '\*\/'
 " autocmd FileType python       let b:multi_line_comment_start = "'''"    | let b:multi_line_comment_end = "'''"
   autocmd FileType ruby         let b:multi_line_comment_start = '=begin' | let b:multi_line_comment_end = '=end'
   autocmd FileType perl         let b:multi_line_comment_start = '=pod'   | let b:multi_line_comment_end = '=cut'
   autocmd FileType html,xml     let b:multi_line_comment_start = '<!--'   | let b:multi_line_comment_end = '-->'
   autocmd FileType lua          let b:multi_line_comment_start = '--\[\[' | let b:multi_line_comment_end = '\]\]'
   autocmd FileType haskell      let b:multi_line_comment_start = '{-'     | let b:multi_line_comment_end = '-}'
   autocmd FileType julia        let b:multi_line_comment_start = '#='     | let b:multi_line_comment_end = '=#'
   autocmd FileType matlab       let b:multi_line_comment_start = '%{'     | let b:multi_line_comment_end = '%}'
   autocmd FileType nim          let b:multi_line_comment_start = '#\['    | let b:multi_line_comment_end = '\]#'
   autocmd FileType ocaml,fsharp let b:multi_line_comment_start = '(\*'    | let b:multi_line_comment_end = '\*)'
   autocmd FileType powershell   let b:multi_line_comment_start = '<#'     | let b:multi_line_comment_end = '#>'

   autocmd FileType * let b:SetFiletypeComment_loaded = 1

augroup END

if !exists("g:syntax_on")
  finish
endif
if !isdirectory(expand($vim_folder_path))
   finish
endif

"------------------------------------------------------------------------------
" Colors and Syntax Highlighting
"------------------------------------------------------------------------------
" This will load custom syntax matching for all files.
augroup EnCustomSyntax

   " Use autocmd!/au! to clear existing autocommands to prevent duplicates.
   autocmd!

   "===========================================================================
   "===================== Source syntax files =================================
   "===========================================================================

   " NOTE: FileType specific syntax files can be found in:
   "       $VIMRUNTIME/syntax/
   " See:  $VIMRUNTIME/syntax/vim.vim
   " NOTE: Vim determines which syntax file to load based on the file:
   "       $VIMRUNTIME/filetype.vim

   if g:select_custom_syntax >= 2 && g:select_custom_syntax < 5

      " Apply these settings to all files by default
      "---------------------------------------------------------------------
      " Adds additional color highlight groups.
      autocmd BufNewFile,BufRead * if !exists("b:more_colors_loaded") | source $vim_folder_path/more_colors.vim | endif

      " Contains a library of syntax functions.
      autocmd BufNewFile,BufRead * if !exists("b:syntax_library_loaded") | source $vim_folder_path/syntax_library.vim | endif

      " Adds additional syntax matching for various filetypes.
      " autocmd BufNewFile,BufRead * if !exists("b:AllFilesDefaultSyntax_loaded") | if exists('*AllFilesDefaultSyntax') | call AllFilesDefaultSyntax() | endif | endif

      " Add abbreviations to shorten common and repetitive text.
      autocmd BufNewFile,BufRead * if !exists("b:abbrev_loaded") | source $vim_folder_path/abbrev.vim | endif
      "---------------------------------------------------------------------

   endif
   "===========================================================================

augroup END

let b:custom_syntax_loaded = 1

