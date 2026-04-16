"==============================================================================
" File: vim.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all vim files.
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
if exists("b:vim_loaded")
  finish
endif
let g:vim_loaded = 1

" Keep autoindent, but remove cindent
set nocindent

" This is needed when loading multiple files at the same time, with some .vim
" extension files and others with spell enabled.
setlocal nospell

" Match global variables in vim.
hi  link    VimVariables   Operator
syn match   VimVariables   '\%(\<[gbwtsl]:\)\@<=\w\+'  contains=@NoSpell


" Highlight a bunch of Vim options.
" Source: $VIMRUNTIME/syntax/vim.vim
hi  link    vimOption Function
syn match   vimOption "\<vimOption\>" contains=@NoSpell
syn match   vimOption "\<\(aleph\|ari\|allowrevins\|ambw\|ambiwidth\|arab\|arabic\|arshape\|arabicshape\|acd\|autochdir\|autocomplete\|acl\|autocompletedelay\|act\|autocompletetimeout\|autoindent\|autoread\|asd\|autoshelldir\|autowrite\|awa\|autowriteall\|background\|backspace\|backup\|bkc\|backupcopy\|bdir\|backupdir\|bex\|backupext\|bsk\|backupskip\|bdlay\|balloondelay\|beval\|ballooneval\|bevalterm\|balloonevalterm\|bexpr\|balloonexpr\|belloff\|bin\|binary\|bomb\|brk\|breakat\|bri\|breakindent\|briopt\|breakindentopt\|bsdir\|browsedir\|bufhidden\|buflisted\|buftype\|cmp\|casemap\|cdh\|cdhome\|cdpath\|cedit\|ccv\|charconvert\|chi\|chistory\|cin\|cindent\|cink\|cinkeys\|cino\|cinoptions\|cinsd\|cinscopedecls\|cinw\|cinwords\|clipboard\|cpm\|clipmethod\|cmdheight\|cwh\|cmdwinheight\|colorcolumn\)\>"
syn match   vimOption "\<\(columns\|com\|comments\|cms\|commentstring\|compatible\|cpt\|complete\|cfu\|completefunc\|cia\|completeitemalign\|cot\|completeopt\|cpp\|completepopup\|csl\|completeslash\|cto\|completetimeout\|cocu\|concealcursor\|cole\|conceallevel\|confirm\|copyindent\|cpo\|cpoptions\|cryptmethod\|cspc\|cscopepathcomp\|csprg\|cscopeprg\|csqf\|cscopequickfix\|csre\|cscoperelative\|cst\|cscopetag\|csto\|cscopetagorder\|csverb\|cscopeverbose\|crb\|cursorbind\|cuc\|cursorcolumn\|cul\|cursorline\|culopt\|cursorlineopt\|debug\|def\|define\|deco\|delcombine\|dict\|dictionary\|diff\|dia\|diffanchors\|dex\|diffexpr\|dip\|diffopt\|digraph\|dir\|directory\|display\|ead\|eadirection\|edcompatible\|emo\|emoji\|enc\|encoding\|eof\|endoffile\|eol\|endofline\|equalalways\|equalprg\|errorbells\|errorfile\)\>"
syn match   vimOption "\<\(efm\|errorformat\|esckeys\|eventignore\|eiw\|eventignorewin\|expandtab\|exrc\|fenc\|fileencoding\|fencs\|fileencodings\|fileformat\|ffs\|fileformats\|fic\|fileignorecase\|filetype\|fcs\|fillchars\|ffu\|findfunc\|fixeol\|fixendofline\|fcl\|foldclose\|fdc\|foldcolumn\|fen\|foldenable\|fde\|foldexpr\|fdi\|foldignore\|fdl\|foldlevel\|fdls\|foldlevelstart\|fmr\|foldmarker\|fdm\|foldmethod\|fml\|foldminlines\|fdn\|foldnestmax\|fdo\|foldopen\|fdt\|foldtext\|fex\|formatexpr\|flp\|formatlistpat\|formatoptions\|formatprg\|fsync\|gdefault\|gfm\|grepformat\|grepprg\|gcr\|guicursor\|gfn\|guifont\|gfs\|guifontset\|gfw\|guifontwide\|ghr\|guiheadroom\|gli\|guiligatures\|guioptions\|guipty\|gtl\|guitablabel\|gtt\|guitabtooltip\|helpfile\|helpheight\|hlg\|helplang\|hid\|hidden\|highlight\)\>"
syn match   vimOption "\<\(history\|hkmap\|hkp\|hkmapp\|hls\|hlsearch\|icon\|iconstring\|ignorecase\|imaf\|imactivatefunc\|imak\|imactivatekey\|imc\|imcmdline\|imd\|imdisable\|imi\|iminsert\|ims\|imsearch\|imsf\|imstatusfunc\|imst\|imstyle\|inc\|include\|inex\|includeexpr\|incsearch\|inde\|indentexpr\|indk\|indentkeys\|inf\|infercase\|insertmode\|isf\|isfname\|isi\|isident\|isk\|iskeyword\|isp\|isprint\|joinspaces\|jop\|jumpoptions\|key\|kmp\|keymap\|keymodel\|kpc\|keyprotocol\|keywordprg\|lmap\|langmap\|langmenu\|lnr\|langnoremap\|lrm\|langremap\|laststatus\|lazyredraw\|lhi\|lhistory\|lbr\|linebreak\|lines\|lsp\|linespace\|lisp\|lop\|lispoptions\|lispwords\|list\|lcs\|listchars\|lpl\|loadplugins\|luadll\|magic\|mef\|makeef\|menc\|makeencoding\|makeprg\|mps\|matchpairs\|mat\|matchtime\|mco\|maxcombine\|mfd\|maxfuncdepth\)\>"
syn match   vimOption "\<\(mmd\|maxmapdepth\|maxmem\|mmp\|maxmempattern\|mmt\|maxmemtot\|msc\|maxsearchcount\|mis\|menuitems\|mopt\|messagesopt\|msm\|mkspellmem\|modeline\|mle\|modelineexpr\|mls\|modelines\|modifiable\|mod\|modified\|more\|mouse\|mousef\|mousefocus\|mousehide\|mousem\|mousemodel\|mousemev\|mousemoveevent\|mouses\|mouseshape\|mouset\|mousetime\|mzq\|mzquantum\|mzschemedll\|mzschemegcdll\|nrformats\|number\|nuw\|numberwidth\|ofu\|omnifunc\|odev\|opendevice\|opfunc\|operatorfunc\|ost\|osctimeoutlen\|packpath\|para\|paragraphs\|paste\|pastetoggle\|pex\|patchexpr\|patchmode\|path\|perldll\|preserveindent\|pvh\|previewheight\|pvp\|previewpopup\|pvw\|previewwindow\|pdev\|printdevice\|penc\|printencoding\|pexpr\|printexpr\|pfn\|printfont\|pheader\|printheader\|pmbcs\|printmbcharset\|pmbfn\|printmbfont\)\>"
syn match   vimOption "\<\(popt\|printoptions\|prompt\|pumborder\|pumheight\|pmw\|pummaxwidth\|pumwidth\|pythondll\|pythonhome\|pythonthreedll\|pythonthreehome\|pyx\|pyxversion\|qftf\|quickfixtextfunc\|quoteescape\|readonly\|rdt\|redrawtime\|regexpengine\|rnu\|relativenumber\|remap\|rop\|renderoptions\|report\|restorescreen\|revins\|rightleft\|rlc\|rightleftcmd\|rubydll\|ruler\|ruf\|rulerformat\|rtp\|runtimepath\|scr\|scroll\|scb\|scrollbind\|scf\|scrollfocus\|scrolljump\|scrolloff\|sbo\|scrollopt\|sect\|sections\|secure\|sel\|selection\|slm\|selectmode\|ssop\|sessionoptions\|shell\|shcf\|shellcmdflag\|shellpipe\|shq\|shellquote\|srr\|shellredir\|ssl\|shellslash\|stmp\|shelltemp\|shelltype\|sxe\|shellxescape\|sxq\|shellxquote\|shiftround\|shiftwidth\|shm\|shortmess\|shortname\|sbr\|showbreak\)\>"
syn match   vimOption "\<\(showcmd\|sloc\|showcmdloc\|sft\|showfulltag\|showmatch\|smd\|showmode\|stal\|showtabline\|stpl\|showtabpanel\|sidescroll\|siso\|sidescrolloff\|scl\|signcolumn\|scs\|smartcase\|smartindent\|sta\|smarttab\|sms\|smoothscroll\|sts\|softtabstop\|spc\|spellcapcheck\|spf\|spellfile\|spl\|spelllang\|spo\|spelloptions\|sps\|spellsuggest\|splitbelow\|spk\|splitkeep\|spr\|splitright\|sol\|startofline\|stl\|statusline\|stlo\|statuslineopt\|suffixes\|sua\|suffixesadd\|swf\|swapfile\|sws\|swapsync\|swb\|switchbuf\|smc\|synmaxcol\|syn\|syntax\|tcl\|tal\|tabline\|tpm\|tabpagemax\|tpl\|tabpanel\|tplo\|tabpanelopt\|tabstop\|tbs\|tagbsearch\|tagcase\|tfu\|tagfunc\|taglength\|tagrelative\|tag\|tags\|tgst\|tagstack\|tcldll\|term\|tbidi\|termbidi\|tenc\|termencoding\|tgc\|termguicolors\|tsy\|termsync\)\>"
syn match   vimOption "\<\(twk\|termwinkey\|twsl\|termwinscroll\|tws\|termwinsize\|twt\|termwintype\|terse\|textauto\|textmode\|textwidth\|tsr\|thesaurus\|tsrfu\|thesaurusfunc\|top\|tildeop\|timeout\|timeoutlen\|title\|titlelen\|titleold\|titlestring\|toolbar\|tbis\|toolbariconsize\|ttimeout\|ttm\|ttimeoutlen\|tbi\|ttybuiltin\|ttyfast\|ttym\|ttymouse\|tsl\|ttyscroll\|tty\|ttytype\|udir\|undodir\|udf\|undofile\|undolevels\|undoreload\|updatecount\|updatetime\|vsts\|varsofttabstop\|vts\|vartabstop\|vbs\|verbose\|vfile\|verbosefile\|vdir\|viewdir\|vop\|viewoptions\|viminfo\|vif\|viminfofile\|virtualedit\|visualbell\|warn\|wiv\|weirdinvert\|whichwrap\|wildchar\|wcm\|wildcharm\|wig\|wildignore\|wic\|wildignorecase\|wmnu\|wildmenu\|wim\|wildmode\|wop\|wildoptions\|wak\|winaltkeys\|wcr\|wincolor\|window\)\>"
syn match   vimOption "\<\(wfb\|winfixbuf\|wfh\|winfixheight\|wfw\|winfixwidth\|winheight\|whl\|winhighlight\|wmh\|winminheight\|wmw\|winminwidth\|winptydll\|wiw\|winwidth\|wse\|wlseat\|wst\|wlsteal\|wtm\|wltimeoutlen\|wrap\|wrapmargin\|wrapscan\|write\|writeany\|writebackup\|writedelay\|xtermcodes\)\>"

syn match   vimOption "\<\(noari\|noallowrevins\|noarab\|noarabic\|noarshape\|noarabicshape\|noacd\|noautochdir\|noac\|noautocomplete\|noai\|noautoindent\|noar\|noautoread\|noasd\|noautoshelldir\|noaw\|noautowrite\|noawa\|noautowriteall\|nobk\|nobackup\|nobeval\|noballooneval\|nobevalterm\|noballoonevalterm\|nobin\|nobinary\|nobomb\|nobri\|nobreakindent\|nobl\|nobuflisted\|nocdh\|nocdhome\|nocin\|nocindent\|nocp\|nocompatible\|nocf\|noconfirm\|noci\|nocopyindent\|nocsre\|nocscoperelative\|nocst\|nocscopetag\|nocsverb\|nocscopeverbose\|nocrb\|nocursorbind\|nocuc\|nocursorcolumn\|nocul\|nocursorline\|nodeco\|nodelcombine\|nodiff\|nodg\|nodigraph\|noed\|noedcompatible\|noemo\|noemoji\|noeof\|noendoffile\|noeol\|noendofline\|noea\|noequalalways\|noeb\|noerrorbells\|noek\|noesckeys\|noet\|noexpandtab\|noex\|noexrc\|nofic\|nofileignorecase\)\>"
syn match   vimOption "\<\(nofixeol\|nofixendofline\|nofen\|nofoldenable\|nofs\|nofsync\|nogd\|nogdefault\|noguipty\|nohid\|nohidden\|nohk\|nohkmap\|nohkp\|nohkmapp\|nohls\|nohlsearch\|noicon\|noic\|noignorecase\|noimc\|noimcmdline\|noimd\|noimdisable\|nois\|noincsearch\|noinf\|noinfercase\|noim\|noinsertmode\|nojs\|nojoinspaces\|nolnr\|nolangnoremap\|nolrm\|nolangremap\|nolz\|nolazyredraw\|nolbr\|nolinebreak\|nolisp\|nolist\|nolpl\|noloadplugins\|nomagic\|noml\|nomodeline\|nomle\|nomodelineexpr\|noma\|nomodifiable\|nomod\|nomodified\|nomore\|nomousef\|nomousefocus\|nomh\|nomousehide\|nomousemev\|nomousemoveevent\|nonu\|nonumber\|noodev\|noopendevice\|nopaste\|nopi\|nopreserveindent\|nopvw\|nopreviewwindow\|noprompt\|noro\|noreadonly\|nornu\|norelativenumber\|noremap\|nors\|norestorescreen\|nori\|norevins\|norl\|norightleft\|noru\|noruler\)\>"
syn match   vimOption "\<\(noscb\|noscrollbind\|noscf\|noscrollfocus\|nosecure\|nossl\|noshellslash\|nostmp\|noshelltemp\|nosr\|noshiftround\|nosn\|noshortname\|nosc\|noshowcmd\|nosft\|noshowfulltag\|nosm\|noshowmatch\|nosmd\|noshowmode\|noscs\|nosmartcase\|nosi\|nosmartindent\|nosta\|nosmarttab\|nosms\|nosmoothscroll\|nospell\|nosb\|nosplitbelow\|nospr\|nosplitright\|nosol\|nostartofline\|noswf\|noswapfile\|notbs\|notagbsearch\|notr\|notagrelative\|notgst\|notagstack\|notbidi\|notermbidi\|notgc\|notermguicolors\|notsy\|notermsync\|noterse\|nota\|notextauto\|notx\|notextmode\|notop\|notildeop\|noto\|notimeout\|notitle\|nottimeout\|notbi\|nottybuiltin\|notf\|nottyfast\|noudf\|noundofile\|novb\|novisualbell\|nowarn\|nowiv\|noweirdinvert\|nowic\|nowildignorecase\|nowmnu\|nowildmenu\|nowfb\|nowinfixbuf\|nowfh\|nowinfixheight\|nowfw\|nowinfixwidth\)\>"
syn match   vimOption "\<\(nowst\|nowlsteal\|nowrap\|nows\|nowrapscan\|nowrite\|nowa\|nowriteany\|nowb\|nowritebackup\|noxtermcodes\)\>"

syn match   vimOption "\<\(invari\|invallowrevins\|invarab\|invarabic\|invarshape\|invarabicshape\|invacd\|invautochdir\|invac\|invautocomplete\|invai\|invautoindent\|invar\|invautoread\|invasd\|invautoshelldir\|invaw\|invautowrite\|invawa\|invautowriteall\|invbk\|invbackup\|invbeval\|invballooneval\|invbevalterm\|invballoonevalterm\|invbin\|invbinary\|invbomb\|invbri\|invbreakindent\|invbl\|invbuflisted\|invcdh\|invcdhome\|invcin\|invcindent\|invcp\|invcompatible\|invcf\|invconfirm\|invci\|invcopyindent\|invcsre\|invcscoperelative\|invcst\|invcscopetag\|invcsverb\|invcscopeverbose\|invcrb\|invcursorbind\|invcuc\|invcursorcolumn\|invcul\|invcursorline\|invdeco\|invdelcombine\|invdiff\|invdg\|invdigraph\|inved\|invedcompatible\|invemo\|invemoji\|inveof\|invendoffile\|inveol\|invendofline\|invea\|invequalalways\|inveb\|inverrorbells\)\>"
syn match   vimOption "\<\(invek\|invesckeys\|invet\|invexpandtab\|invex\|invexrc\|invfic\|invfileignorecase\|invfixeol\|invfixendofline\|invfen\|invfoldenable\|invfs\|invfsync\|invgd\|invgdefault\|invguipty\|invhid\|invhidden\|invhk\|invhkmap\|invhkp\|invhkmapp\|invhls\|invhlsearch\|invicon\|invic\|invignorecase\|invimc\|invimcmdline\|invimd\|invimdisable\|invis\|invincsearch\|invinf\|invinfercase\|invim\|invinsertmode\|invjs\|invjoinspaces\|invlnr\|invlangnoremap\|invlrm\|invlangremap\|invlz\|invlazyredraw\|invlbr\|invlinebreak\|invlisp\|invlist\|invlpl\|invloadplugins\|invmagic\|invml\|invmodeline\|invmle\|invmodelineexpr\|invma\|invmodifiable\|invmod\|invmodified\|invmore\|invmousef\|invmousefocus\|invmh\|invmousehide\|invmousemev\|invmousemoveevent\|invnu\|invnumber\|invodev\|invopendevice\|invpaste\|invpi\|invpreserveindent\)\>"
syn match   vimOption "\<\(invpvw\|invpreviewwindow\|invprompt\|invro\|invreadonly\|invrnu\|invrelativenumber\|invremap\|invrs\|invrestorescreen\|invri\|invrevins\|invrl\|invrightleft\|invru\|invruler\|invscb\|invscrollbind\|invscf\|invscrollfocus\|invsecure\|invssl\|invshellslash\|invstmp\|invshelltemp\|invsr\|invshiftround\|invsn\|invshortname\|invsc\|invshowcmd\|invsft\|invshowfulltag\|invsm\|invshowmatch\|invsmd\|invshowmode\|invscs\|invsmartcase\|invsi\|invsmartindent\|invsta\|invsmarttab\|invsms\|invsmoothscroll\|invspell\|invsb\|invsplitbelow\|invspr\|invsplitright\|invsol\|invstartofline\|invswf\|invswapfile\|invtbs\|invtagbsearch\|invtr\|invtagrelative\|invtgst\|invtagstack\|invtbidi\|invtermbidi\|invtgc\|invtermguicolors\|invtsy\|invtermsync\|invterse\|invta\|invtextauto\|invtx\|invtextmode\|invtop\|invtildeop\|invto\|invtimeout\)\>"
syn match   vimOption "\<\(invtitle\|invttimeout\|invtbi\|invttybuiltin\|invtf\|invttyfast\|invudf\|invundofile\|invvb\|invvisualbell\|invwarn\|invwiv\|invweirdinvert\|invwic\|invwildignorecase\|invwmnu\|invwildmenu\|invwfb\|invwinfixbuf\|invwfh\|invwinfixheight\|invwfw\|invwinfixwidth\|invwst\|invwlsteal\|invwrap\|invws\|invwrapscan\|invwrite\|invwa\|invwriteany\|invwb\|invwritebackup\|invxtermcodes\)\>"


syn match vimOption "\<\(t_AB\|t_AF\|t_AU\|t_AL\|t_al\|t_bc\|t_BE\|t_BD\|t_cd\|t_ce\|t_Ce\|t_CF\|t_cl\|t_cm\|t_Co\|t_CS\|t_Cs\|t_cs\|t_CV\|t_da\|t_db\|t_DL\|t_dl\|t_ds\|t_Ds\|t_EC\|t_EI\|t_fs\|t_fd\|t_fe\|t_GP\|t_IE\|t_IS\|t_ke\|t_ks\|t_le\|t_mb\|t_md\|t_me\|t_mr\|t_ms\|t_nd\|t_op\|t_RF\|t_RB\|t_RC\|t_RI\|t_Ri\|t_RK\|t_RS\|t_RT\|t_RV\|t_Sb\|t_SC\|t_se\|t_Sf\|t_SH\|t_SI\|t_Si\|t_so\|t_SR\|t_sr\|t_ST\|t_Te\|t_te\|t_TE\|t_ti\|t_TI\|t_Ts\|t_ts\|t_u7\|t_ue\|t_us\|t_Us\|t_ut\|t_vb\|t_ve\|t_vi\|t_VS\|t_vs\|t_WP\|t_WS\|t_XM\|t_xn\|t_xs\|t_ZH\|t_ZR\|t_8f\|t_8b\|t_8u\|t_xo\|t_BS\|t_ES\)\>"
syn match vimOption "\<\(t_F1\|t_F2\|t_F3\|t_F4\|t_F5\|t_F6\|t_F7\|t_F8\|t_F9\|t_k1\|t_K1\|t_k2\|t_k3\|t_K3\|t_k4\|t_K4\|t_k5\|t_K5\|t_k6\|t_K6\|t_k7\|t_K7\|t_k8\|t_K8\|t_k9\|t_K9\|t_KA\|t_kb\|t_kB\|t_KB\|t_KC\|t_kd\|t_kD\|t_KD\|t_KE\|t_KF\|t_KG\|t_kh\|t_KH\|t_kI\|t_KI\|t_KJ\|t_KK\|t_kl\|t_KL\|t_kN\|t_kP\|t_kr\|t_ku\)\>"
syn match   vimOption "t_%1"
syn match   vimOption "t_#2"
syn match   vimOption "t_#4"
syn match   vimOption "t_@7"
syn match   vimOption "t_\*7"
syn match   vimOption "t_&8"
syn match   vimOption "t_%i"
syn match   vimOption "t_k;"


" Highlight a bunch of Vim functions.
" Source: $VIMRUNTIME/syntax/vim.vim
hi  link    vimFuncName Statement
syn match   vimFuncName "\<vimFuncName\>" contains=@NoSpell
syn match vimFuncName "\<\(abs\|acos\|add\|append\|appendbufline\|argc\|argidx\|arglistid\|argv\|asin\|assert_beeps\|assert_equal\|assert_equalfile\|assert_exception\|assert_fails\|assert_false\|assert_inrange\|assert_match\|assert_nobeep\|assert_notequal\|assert_notmatch\|assert_report\|assert_true\|atan\|atan2\|autocmd_add\|autocmd_delete\|autocmd_get\|balloon_gettext\|balloon_show\|balloon_split\|base64_decode\|base64_encode\|bindtextdomain\|blob2list\|blob2str\|browse\|browsedir\|bufadd\|bufexists\|buflisted\|bufload\|bufloaded\|bufname\|bufnr\|bufwinid\|bufwinnr\|byte2line\|byteidx\|byteidxcomp\|call\|ceil\|ch_canread\|ch_close\|ch_close_in\|ch_evalexpr\|ch_evalraw\|ch_getbufnr\|ch_getjob\|ch_info\|ch_log\|ch_logfile\|ch_open\|ch_read\|ch_readblob\|ch_readraw\|ch_sendexpr\|ch_sendraw\|ch_setoptions\|ch_status\|changenr\)\>"
syn match vimFuncName "\<\(char2nr\|charclass\|charcol\|charidx\|chdir\|cindent\|clearmatches\|cmdcomplete_info\|col\|complete\|complete_add\|complete_check\|complete_info\|confirm\|copy\|cos\|cosh\|count\|cscope_connection\|cursor\|debugbreak\|deepcopy\|delete\|deletebufline\|did_filetype\|diff\|diff_filler\|diff_hlID\|digraph_get\|digraph_getlist\|digraph_set\|digraph_setlist\|echoraw\|empty\|environ\|err_teapot\|escape\|eval\|eventhandler\|executable\|execute\|exepath\|exists\|exists_compiled\|exp\|expand\|expandcmd\|extend\|extendnew\|feedkeys\|filecopy\|filereadable\|filewritable\|filter\|finddir\|findfile\|flatten\|flattennew\|float2nr\|floor\|fmod\|fnameescape\|fnamemodify\|foldclosed\|foldclosedend\|foldlevel\|foldtext\|foldtextresult\|foreach\|foreground\|fullcommand\|funcref\|garbagecollect\|get\|getbufinfo\)\>"
syn match vimFuncName "\<\(getbufline\|getbufoneline\|getbufvar\|getcellpixels\|getcellwidths\|getchangelist\|getchar\|getcharmod\|getcharpos\|getcharsearch\|getcharstr\|getcmdcomplpat\|getcmdcompltype\|getcmdline\|getcmdpos\|getcmdprompt\|getcmdscreenpos\|getcmdtype\|getcmdwintype\|getcompletion\|getcompletiontype\|getcurpos\|getcursorcharpos\|getcwd\|getenv\|getfontname\|getfperm\|getfsize\|getftime\|getftype\|getimstatus\|getjumplist\|getline\|getloclist\|getmarklist\|getmatches\|getmousepos\|getmouseshape\|getpid\|getpos\|getqflist\|getreg\|getreginfo\|getregion\|getregionpos\|getregtype\|getscriptinfo\|getstacktrace\|gettabinfo\|gettabvar\|gettabwinvar\|gettagstack\|gettext\|getwininfo\|getwinpos\|getwinposx\|getwinposy\|getwinvar\|glob\|glob2regpat\|globpath\|has\|has_key\|haslocaldir\|hasmapto\|histadd\|histdel\)\>"
syn match vimFuncName "\<\(histget\|histnr\|hlID\|hlexists\|hlget\|hlset\|hostname\|iconv\|id\|indent\|index\|indexof\|input\|inputdialog\|inputlist\|inputrestore\|inputsave\|inputsecret\|insert\|instanceof\|interrupt\|invert\|isabsolutepath\|isdirectory\|isinf\|islocked\|isnan\|items\|job_getchannel\|job_info\|job_setoptions\|job_start\|job_status\|job_stop\|join\|js_decode\|js_encode\|json_decode\|json_encode\|keys\|keytrans\|len\|libcall\|libcallnr\|line\|line2byte\|lispindent\|list2blob\|list2str\|list2tuple\|listener_add\|listener_flush\|listener_remove\|localtime\|log\|log10\|luaeval\|map\|maparg\|mapcheck\|maplist\|mapnew\|mapset\|match\|matchadd\|matchaddpos\|matcharg\|matchbufline\|matchdelete\|matchend\|matchfuzzy\|matchfuzzypos\|matchlist\|matchstr\|matchstrlist\|matchstrpos\|max\|menu_info\|min\|mkdir\|mode\|mzeval\|nextnonblank\)\>"
syn match vimFuncName "\<\(ngettext\|nr2char\|pathshorten\|perleval\|popup_atcursor\|popup_beval\|popup_clear\|popup_close\|popup_create\|popup_dialog\|popup_filter_menu\|popup_filter_yesno\|popup_findecho\|popup_findinfo\|popup_findpreview\|popup_getoptions\|popup_getpos\|popup_hide\|popup_list\|popup_locate\|popup_menu\|popup_move\|popup_notification\|popup_setbuf\|popup_setoptions\|popup_settext\|popup_show\|pow\|preinserted\|prevnonblank\|printf\|prompt_getprompt\|prompt_setcallback\|prompt_setinterrupt\|prompt_setprompt\|prop_add\|prop_add_list\|prop_clear\|prop_find\|prop_list\|prop_remove\|prop_type_add\|prop_type_change\|prop_type_delete\|prop_type_get\|prop_type_list\|pum_getpos\|pumvisible\|py3eval\|pyeval\|pyxeval\|rand\|range\|readblob\|readdir\|readdirex\|readfile\|redraw_listener_add\|redraw_listener_remove\)\>"
syn match vimFuncName "\<\(reduce\|reg_executing\|reg_recording\|reltime\|reltimefloat\|reltimestr\|remote_expr\|remote_foreground\|remote_peek\|remote_read\|remote_send\|remote_startserver\|remove\|rename\|resolve\|reverse\|round\|rubyeval\|screenattr\|screenchar\|screenchars\|screencol\|screenpos\|screenrow\|screenstring\|search\|searchcount\|searchdecl\|searchpair\|searchpairpos\|searchpos\|server2client\|serverlist\|setbufline\|setbufvar\|setcellwidths\|setcharpos\|setcharsearch\|setcmdline\|setcmdpos\|setcursorcharpos\|setenv\|setfperm\|setline\|setloclist\|setmatches\|setpos\|setqflist\|setreg\|settabvar\|settabwinvar\|settagstack\|setwinvar\|sha256\|shellescape\|shiftwidth\|sign_define\|sign_getdefined\|sign_getplaced\|sign_jump\|sign_place\|sign_placelist\|sign_undefine\|sign_unplace\|sign_unplacelist\)\>"
syn match vimFuncName "\<\(simplify\|sin\|sinh\|slice\|sort\|sound_clear\|sound_playevent\|sound_playfile\|sound_stop\|soundfold\|spellbadword\|spellsuggest\|split\|sqrt\|srand\|state\|str2blob\|str2float\|str2list\|str2nr\|strcharlen\|strcharpart\|strchars\|strdisplaywidth\|strftime\|strgetchar\|stridx\|string\|strlen\|strpart\|strptime\|strridx\|strtrans\|strutf16len\|strwidth\|submatch\|substitute\|swapfilelist\|swapinfo\|swapname\|synID\|synIDattr\|synIDtrans\|synconcealed\|synstack\|system\|systemlist\|tabpagebuflist\|tabpagenr\|tabpagewinnr\|tagfiles\|taglist\|tan\|tanh\|tempname\|term_dumpdiff\|term_dumpload\|term_dumpwrite\|term_getaltscreen\|term_getansicolors\|term_getattr\|term_getcursor\|term_getjob\|term_getline\|term_getscrolled\|term_getsize\|term_getstatus\|term_gettitle\|term_gettty\|term_list\|term_scrape\)\>"
syn match vimFuncName "\<\(term_sendkeys\|term_setansicolors\|term_setapi\|term_setkill\|term_setrestore\|term_setsize\|term_start\|term_wait\|terminalprops\|test_alloc_fail\|test_autochdir\|test_feedinput\|test_garbagecollect_now\|test_garbagecollect_soon\|test_getvalue\|test_gui_event\|test_ignore_error\|test_mswin_event\|test_null_blob\|test_null_channel\|test_null_dict\|test_null_function\|test_null_job\|test_null_list\|test_null_partial\|test_null_string\|test_null_tuple\|test_option_not_set\|test_override\|test_refcount\|test_setmouse\|test_settime\|test_srand_seed\|test_unknown\|test_void\|timer_info\|timer_pause\|timer_start\|timer_stop\|timer_stopall\|tolower\|toupper\|tr\|trim\|trunc\|tuple2list\|type\|typename\|undofile\|undotree\|uniq\|uri_decode\|uri_encode\|utf16idx\|values\|virtcol\|virtcol2col\)\>"
syn match vimFuncName "\<\(visualmode\|wildmenumode\|wildtrigger\|win_execute\|win_findbuf\|win_getid\|win_gettype\|win_gotoid\|win_id2tabwin\|win_id2win\|win_move_separator\|win_move_statusline\|win_screenpos\|win_splitmove\|winbufnr\|wincol\|windowsversion\|winheight\|winlayout\|winline\|winnr\|winrestcmd\|winrestview\|winsaveview\|winwidth\|wordcount\|writefile\)\>"

" Highlight a bunch of Vim Variables.
" Source: $VIMRUNTIME/syntax/vim.vim
hi  link    vimVimVarName Identifier
syn match   vimVimVarName "\<vimVimVarName\>" contains=@NoSpell
syn match vimVimVarName "\<\(count\|count1\|prevcount\|errmsg\|warningmsg\|statusmsg\|shell_error\|this_session\|version\|lnum\|termresponse\|fname\|lang\|lc_time\|ctype\|charconvert_from\|charconvert_to\|fname_in\|fname_out\|fname_new\|fname_diff\|cmdarg\|foldstart\|foldend\|folddashes\|foldlevel\|progname\|servername\|dying\|exception\|throwpoint\|register\|cmdbang\|insertmode\|val\|key\|profiling\|fcs_reason\|fcs_choice\|beval_bufnr\|beval_winnr\|beval_winid\|beval_lnum\|beval_col\|beval_text\|scrollstart\|swapname\|swapchoice\|swapcommand\|mouse_win\|mouse_winid\|mouse_lnum\|mouse_col\|operator\|searchforward\|hlsearch\|oldfiles\|windowid\|progpath\|completed_item\|option_new\|option_old\|option_oldlocal\|option_oldglobal\|option_command\|option_type\|errors\|none\|numbermax\|numbermin\|numbersize\)\>"
syn match vimVimVarName "\<\(vim_did_enter\|testing\|t_number\|t_string\|t_func\|t_list\|t_dict\|t_float\|t_bool\|t_none\|t_job\|t_channel\|t_blob\|t_class\|t_object\|termrfgresp\|termrbgresp\|termu7resp\|termstyleresp\|termblinkresp\|event\|versionlong\|echospace\|argv\|collate\|exiting\|colornames\|sizeofint\|sizeoflong\|sizeofpointer\|maxcol\|python3_version\|t_typealias\|t_enum\|t_enumvalue\|stacktrace\|t_tuple\|wayland_display\|clipmethod\|termda1\|termosc\|vim_did_init\|clipproviders\)\>"

if has("nvim")
  syn match vimOption "\<\(channel\|inccommand\|mousescroll\|pumblend\|redrawdebug\|scrollback\|shada\|shadafile\|statuscolumn\|termpastefilter\|termsync\|winbar\|winblend\|winhighlight\)\>"
  syn match vimFuncName "\<\(api_info\|buffer_exists\|buffer_name\|buffer_number\|chanclose\|chansend\|ctxget\|ctxpop\|ctxpush\|ctxset\|ctxsize\|dictwatcheradd\|dictwatcherdel\|file_readable\|highlight_exists\|highlightID\|jobclose\|jobpid\|jobresize\|jobsend\|jobstart\|jobstop\|jobwait\|last_buffer_nr\|menu_get\|msgpackdump\|msgpackparse\|reg_recorded\|rpcnotify\|rpcrequest\|rpcstart\|rpcstop\|serverstart\|serverstop\|sockconnect\|stdioopen\|stdpath\|termopen\|test_write_list_log\|wait\)\>"
  syn match   vimFuncName   "\<nvim_\w\+\>"
  syn match vimVimVarName "\<\(lua\|msgpack_types\|relnum\|stderr\|termrequest\|virtnum\)\>"
endif


" My custom syntax without the default vim settings.
if g:select_custom_syntax >= 3 && g:select_custom_syntax < 5

   " Override default coloring of the syn/ia/au commands and any following text.
   "------------------------------------------------------------------------------
   hi  link    VimMatch1   Statement
   syn match   VimMatch1   '\<\%(syn\%(t\%(ax\?\)\?\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(au\%(group\|tocmd\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(colorscheme\|filetype\|\%(do\|no\)autocmd\|command\)\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%([ci]\%(nore\)\?\)a\%(bbrev\)\?\>'  contains=@NoSpell
   syn match   VimMatch1   '\<\%(ab\|abbreviate\)\>'  contains=@NoSpell

   hi  link    VimMatch2   Type
   syn match   VimMatch2   '\<\%(BufNewFile\|BufRead\|FileType\|keyword\|region\|match\|ignore\|clear\|exists\|hlexists\|has\)\>'  contains=@NoSpell

   hi  link    VimMatch3   SpecialChar
   syn match   VimMatch3   "\<contains="
   syn match   VimMatch3   "\<contained\>"
   syn match   VimMatch3   "\<containedin="  contains=@NoSpell

   hi  link    VimDirections  SpecialChar
   syn match   VimDirections  "\%(<\)\@<=\%([cas]-\)\?\%(left\|right\|up\|down\)\%(>\)\@="  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Override default coloring of the map commands.
   "------------------------------------------------------------------------------
   hi  link    VimMatch4   Statement
   syn match   VimMatch4   '\<\%([nvixotcsl]\?\%(nore\)\?map\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%([nvi]\?unmap\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%(nore\|finish\)\>'  contains=@NoSpell

   syn match   VimMatch4   '\<\%(hi\|highlight\)\>'  contains=@NoSpell
   syn match   VimMatch4   '\<\%(fun\|endfun\)\>'  contains=@NoSpell

   hi  link    VimMatch5   Type
   syn match   VimMatch5   '\<\%(link\|bold\|underline\|undercurl\|mapleader\|maplocalleader\)\>'  contains=@NoSpell
   syn match   VimMatch5   '\<\%(plug\%(in\|ged\)\?\)\>'  contains=@NoSpell
   syn match   VimMatch5   '\<\%(echo\%(m\|n\|hl\)\?\|redraw\|sign\)\>'  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Other Keywords
   "------------------------------------------------------------------------------
   hi  link    VimMatch6   Constant
   syn match   VimMatch6   '\<\%(normal\|exe\|execute\|search\|silent\|exclude\|dir\|copen\|call\)\>'  contains=@NoSpell
   syn match   VimMatch6   '\<\%(let\|unlet\|set\|setlocal\|setglobal\|unset\|indent\)\>'  contains=@NoSpell
   syn match   VimMatch6   '\<[gbwtsl]:'  contains=@NoSpell
   syn match   VimMatch6   '\<\%(source\|windo\|bufdo\|shellescape\|expand\|mode\|so\|source\|runtime\|packadd\)\>'  contains=@NoSpell

   hi  link    VimMatch7   Function
   syn match   VimMatch7   '\<\%(gui\|guifg\|guibg\|guisp\|guifont\|cterm\|ctermfg\|ctermbg\|matchgroup\|skip\|on\|enable\|off\|nospell\|spell\)\>'  contains=@NoSpell

   hi  link    VimMatch8   Conditional
   syn match   VimMatch8   '\<\%(start\|try\|catch\|finally\|endtry\|throw\)\>'  contains=@NoSpell

   " Match expr in between < >.
   hi  link    VimExpr        Type
   syn match   VimExpr        "\%(<\)\@<=expr\%(>\)\@="  contains=@NoSpell
   "------------------------------------------------------------------------------

   " Match hex numbers in vim.
   hi  link    VimHexNum   Constant
   syn match   VimHexNum   '\%(#\)\@<=[0-9a-fA-F]\+\>'  contains=@NoSpell

   " Don't match comments after a non space.
   syn match   VimNoColor1 '\%(\S\)\@<="'  contains=@NoSpell

   " Don't match comments after map or echo or syn keywords.
   syn match   VimNoColor2 '\%(\%(map\>\|\<echo\|\<exe\|\<syn\|\<au\|\<inorea\).*\)\@<="'  contains=@NoSpell

   " Don't match comments in parenthesis (" ... ").
   syn match   VimNoColor3 '\%((.*\)\@<="\%(.*)\)\@='  contains=@NoSpell
   syn match   VimNoColor3 '\%(\'\)\@<="\%(\'\)\@='  contains=@NoSpell

   " Don't match comments after =" ".
   syn match   VimNoColor4 '\%([=\\]\s*\)\@<="'  contains=@NoSpell
   syn match   VimNoColor4 '\%(=\s*".*\)\@<="'  contains=@NoSpell

   " Special combinations ctrl/shift/alt.
   syn case ignore
      hi  link    VimComb  SpecialChar
      syn match   VimComb  "\%(<\)\@<=\%([csa]\-\)\?\%(bs\|esc\|cr\|tab\|space\|leader\|middlemouse\|leftmouse\|rightmouse\|pageup\|pagedown\|backspace\|bar\)\%(>\)\@=" contains=@NoSpell
      syn match   VimComb  "\%(<\)\@<=[csa]\-[!-~]\%(>\)\@=" contains=@NoSpell
   syn case match

   " Match first \ in new line.
   hi  link    VimFirstSlash   Exception
   syn match   VimFirstSlash   '^\s*\\\%(%(\|(\)\@!'  contains=@NoSpell

   " Must start with $path
   hi  link     VimDollarPaths Underlined
   syn match    VimDollarPaths "\
      \%(^\|\s\)\@<=\$\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\/\
      \%([!-'*-.0-[\]-~]\|\\ \)\+\
      \%([!-~]\)\@!" contains=@NoSpell containedin=AllPreDollar,RegexSpChars1,AllPreSpChars1,AllPreSpChars11

" Mix of my custom syntax and default vim settings.
elseif g:select_custom_syntax == 2

   " Match :commands in vim
   hi  link    VimCommands   Operator
   syn match   VimCommands   '\%(\W\|_\)\@<=:\w\+'  contains=@NoSpell contained containedin=vimMapRhs

   " Abbreviation name like in inorea
   hi  link     VimAbName  Type
   syn match    VimAbName  "\%(\s\)\@<=\<_\S\+" contained containedin=vimMapLhs
   syn match    VimAbName  "\%(\s\)\@<=\w\?\w\?\w\?_\S\+" contained containedin=vimMapLhs
endif

" NOTE: At work this works...
let b:match_words='\<function\>:\<endfunction\>,
                 \ \<if\>:\<else\>:\<endif\>'


"------------------------------------------------------------------------------
" This will color the highlighting group names with the color they are mapped
" to and throughout the .vim files.
"------------------------------------------------------------------------------
" Custom syntax groups
" syn match AllFilesFuncColor     "\<AllFilesFuncColor\>"     contains=@NoSpell
" syn match AllFilesDefaultColor  "\<AllFilesDefaultColor\>"  contains=@NoSpell
" syn match AllFilesDefinesColor  "\<AllFilesDefinesColor\>"  contains=@NoSpell
" syn match AllFilesOpColor       "\<AllFilesOpColor\>"       contains=@NoSpell
" syn match AllFilesSBrColor      "\<AllFilesSBrColor\>"      contains=@NoSpell
" syn match AllFilesCBrColor      "\<AllFilesCBrColor\>"      contains=@NoSpell
" syn match AllFilesTBrColor      "\<AllFilesTBrColor\>"      contains=@NoSpell
" syn match AllFilesEqualityColor "\<AllFilesEqualityColor\>" contains=@NoSpell
" syn match AllFilesPointerColor  "\<AllFilesPointerColor\>"  contains=@NoSpell
" syn match AllFilesArrowsColor   "\<AllFilesArrowsColor\>"   contains=@NoSpell
" syn match AllFilesArrayColor    "\<AllFilesArrayColor\>"    contains=@NoSpell
" syn match AllFilesWarningColor  "\<AllFilesWarningColor\>"  contains=@NoSpell
" syn match AllFilesSpecialColor1 "\<AllFilesSpecialColor1\>" contains=@NoSpell
" syn match AllFilesSpecialColorB "\<AllFilesSpecialColorB\>" contains=@NoSpell
" syn match AllFilesSpecialColor2 "\<AllFilesSpecialColor2\>" contains=@NoSpell
" syn match AllFilesSystemColor1  "\<AllFilesSystemColor1\>"  contains=@NoSpell
" syn match AllFilesSystemColor2  "\<AllFilesSystemColor2\>"  contains=@NoSpell
" syn match AllFilesSystemColor3  "\<AllFilesSystemColor3\>"  contains=@NoSpell
" syn match AllFilesSystemColor4  "\<AllFilesSystemColor4\>"  contains=@NoSpell
" syn match AllFilesSystemColor5  "\<AllFilesSystemColor5\>"  contains=@NoSpell
" syn match AllFilesNumColor      "\<AllFilesNumColor\>"      contains=@NoSpell
" syn match AllFilesCapsColor     "\<AllFilesCapsColor\>"     contains=@NoSpell
" syn match AllFilesVarColor      "\<AllFilesVarColor\>"      contains=@NoSpell
" syn match AllFilesMultVarColor  "\<AllFilesMultVarColor\>"  contains=@NoSpell
" syn match AllFilesMultOpColor   "\<AllFilesMultOpColor\>"   contains=@NoSpell
" syn match AllFilesCommentColor  "\<AllFilesCommentColor\>"  contains=@NoSpell
" syn match AllFilesComment2Color "\<AllFilesComment2Color\>" contains=@NoSpell
" syn match AllFilesTimeColor     "\<AllFilesTimeColor\>"     contains=@NoSpell
" syn match AllFilesQuotesColor1  "\<AllFilesQuotesColor1\>"  contains=@NoSpell
" syn match AllFilesQuotesColor2  "\<AllFilesQuotesColor2\>"  contains=@NoSpell
" syn match AllFilesQuotesColor3  "\<AllFilesQuotesColor3\>"  contains=@NoSpell
" syn match AllFilesLoopCondColor "\<AllFilesLoopCondColor\>" contains=@NoSpell
" syn match AllFilesPathsColor1   "\<AllFilesPathsColor1\>"   contains=@NoSpell
" syn match AllFilesPathsColor2   "\<AllFilesPathsColor2\>"   contains=@NoSpell
" syn match AllFilesStructColor   "\<AllFilesStructColor\>"   contains=@NoSpell
" syn match AllFilesMidGrey       "\<AllFilesMidGrey\>"       contains=@NoSpell
syn match AllFilesBarelyVisible "\<AllFilesBarelyVisible\>" contains=@NoSpell

syn match HLSiennaB             "\<HLSiennaB\>"             contains=@NoSpell
syn match HLBrownB              "\<HLBrownB\>"              contains=@NoSpell
syn match HLRed2B               "\<HLRed2B\>"               contains=@NoSpell
syn match HLOrangeredB          "\<HLOrangeredB\>"          contains=@NoSpell
syn match HLDarkorange3B        "\<HLDarkorange3B\>"        contains=@NoSpell
syn match HLDarkorangeB         "\<HLDarkorangeB\>"         contains=@NoSpell
syn match HLOrangeB             "\<HLOrangeB\>"             contains=@NoSpell
syn match HLTomato1B            "\<HLTomato1B\>"            contains=@NoSpell
syn match HLHotpinkB            "\<HLHotpinkB\>"            contains=@NoSpell
syn match HLDeeppinkB           "\<HLDeeppinkB\>"           contains=@NoSpell
syn match HLDeeppink4B          "\<HLDeeppink4B\>"          contains=@NoSpell
syn match HLMagenta4B           "\<HLMagenta4B\>"           contains=@NoSpell
syn match HLFuchsiaB            "\<HLFuchsiaB\>"            contains=@NoSpell
syn match HLPurpleB             "\<HLPurpleB\>"             contains=@NoSpell
syn match HLPurple4B            "\<HLPurple4B\>"            contains=@NoSpell
syn match HLNavyB               "\<HLNavyB\>"               contains=@NoSpell
syn match HLBlue                "\<HLBlue\>"                contains=@NoSpell
syn match HLBlueB               "\<HLBlueB\>"               contains=@NoSpell
syn match HLMediumslateblueB    "\<HLMediumslateblueB\>"    contains=@NoSpell
syn match HLDeepskyblue4B       "\<HLDeepskyblue4B\>"       contains=@NoSpell
syn match HLDodgerblueB         "\<HLDodgerblueB\>"         contains=@NoSpell
syn match HLDeepskyblueB        "\<HLDeepskyblueB\>"        contains=@NoSpell
syn match HLCyanB               "\<HLCyanB\>"               contains=@NoSpell
syn match HLYellowB             "\<HLYellowB\>"             contains=@NoSpell
syn match HLYellowgreenB        "\<HLYellowgreenB\>"        contains=@NoSpell
syn match HLGreen               "\<HLGreen\>"               contains=@NoSpell
syn match HLGreenB              "\<HLGreenB\>"              contains=@NoSpell
syn match HLGreen3              "\<HLGreen3\>"              contains=@NoSpell
syn match HLGreen3B             "\<HLGreen3B\>"             contains=@NoSpell
syn match HLOlive               "\<HLOlive\>"               contains=@NoSpell
syn match HLOliveB              "\<HLOliveB\>"              contains=@NoSpell
syn match HLKhaki4              "\<HLKhaki4\>"              contains=@NoSpell
syn match HLKhaki4B             "\<HLKhaki4B\>"             contains=@NoSpell

syn match HLGrey30              "\<HLGrey30\>"              contains=@NoSpell
syn match HLGrey30B             "\<HLGrey30B\>"             contains=@NoSpell
syn match HLGrey40B             "\<HLGrey40B\>"             contains=@NoSpell
syn match HLGrey50B             "\<HLGrey50B\>"             contains=@NoSpell
syn match HLWhiteB              "\<HLWhiteB\>"              contains=@NoSpell

syn match HLGrey60B             "\<HLGrey60B\>"             contains=@NoSpell
syn match HLLightmagentaB       "\<HLLightmagentaB\>"       contains=@NoSpell
syn match HLSkyblueB            "\<HLSkyblueB\>"            contains=@NoSpell
syn match HLMediumaquamarineB   "\<HLMediumaquamarineB\>"   contains=@NoSpell
syn match HLSpringgreenB        "\<HLSpringgreenB\>"        contains=@NoSpell
syn match HLKhakiB              "\<HLKhakiB\>"              contains=@NoSpell
syn match HLTan1B               "\<HLTan1B\>"               contains=@NoSpell
syn match HLSalmonB             "\<HLSalmonB\>"             contains=@NoSpell

syn match HLRedBU               "\<HLRedBU\>"               contains=@NoSpell
syn match HLOrangeredBU         "\<HLOrangeredBU\>"         contains=@NoSpell
syn match HLYellowBU            "\<HLYellowBU\>"            contains=@NoSpell
syn match HLGreenBU             "\<HLGreenBU\>"             contains=@NoSpell
syn match HLDodgerblueBU        "\<HLDodgerblueBU\>"        contains=@NoSpell
syn match HLHotpinkBU           "\<HLHotpinkBU\>"           contains=@NoSpell

syn match HLGrey15BgB           "\<HLGrey15BgB\>"           contains=@NoSpell
syn match HLOrangered1BgB       "\<HLOrangered1BgB\>"       contains=@NoSpell
syn match HLOrangeBgB           "\<HLOrangeBgB\>"           contains=@NoSpell
syn match HLYellow3BgB          "\<HLYellow3BgB\>"          contains=@NoSpell
syn match HLGreen3BgB           "\<HLGreen3BgB\>"           contains=@NoSpell
syn match HLGreen1BgB           "\<HLGreen1BgB\>"           contains=@NoSpell
syn match HLRedBgB              "\<HLRedBgB\>"              contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Vim default groups
syn match Note              "\<Note\>"              contains=@NoSpell
syn match Comment           "\<Comment\>"           contains=@NoSpell
syn match Constant          "\<Constant\>"          contains=@NoSpell
syn match String            "\<String\>"            contains=@NoSpell
syn match Character         "\<Character\>"         contains=@NoSpell
syn match Number            "\<Number\>"            contains=@NoSpell
syn match Boolean           "\<Boolean\>"           contains=@NoSpell
syn match Float             "\<Float\>"             contains=@NoSpell
syn match Identifier        "\<Identifier\>"        contains=@NoSpell
syn match Function          "\<Function\>"          contains=@NoSpell
syn match Statement         "\<Statement\>"         contains=@NoSpell
syn match Conditional       "\<Conditional\>"       contains=@NoSpell
syn match Repeat            "\<Repeat\>"            contains=@NoSpell
syn match Label             "\<Label\>"             contains=@NoSpell
syn match Operator          "\<Operator\>"          contains=@NoSpell
syn match Keyword           "\<Keyword\>"           contains=@NoSpell
syn match Exception         "\<Exception\>"         contains=@NoSpell
syn match PreProc           "\<PreProc\>"           contains=@NoSpell
syn match Include           "\<Include\>"           contains=@NoSpell
syn match Define            "\<Define\>"            contains=@NoSpell
syn match Macro             "\<Macro\>"             contains=@NoSpell
syn match PreCondit         "\<PreCondit\>"         contains=@NoSpell
syn match Type              "\<Type\>"              contains=@NoSpell
syn match StorageClass      "\<StorageClass\>"      contains=@NoSpell
syn match Structure         "\<Structure\>"         contains=@NoSpell
syn match Typedef           "\<Typedef\>"           contains=@NoSpell
syn match Special           "\<Special\>"           contains=@NoSpell
syn match SpecialChar       "\<SpecialChar\>"       contains=@NoSpell
syn match Tag               "\<Tag\>"               contains=@NoSpell
syn match Delimiter         "\<Delimiter\>"         contains=@NoSpell
syn match SpecialComment    "\<SpecialComment\>"    contains=@NoSpell
syn match Debug             "\<Debug\>"             contains=@NoSpell
syn match Underlined        "\<Underlined\>"        contains=@NoSpell
syn match Ignore            "\<Ignore\>"            contains=@NoSpell
syn match Error             "\<Error\>"             contains=@NoSpell
syn match Todo              "\<Todo\>"              contains=@NoSpell
syn match Added             "\<Added\>"             contains=@NoSpell
syn match Changed           "\<Changed\>"           contains=@NoSpell
syn match Removed           "\<Removed\>"           contains=@NoSpell
syn match ColorColumn       "\<ColorColumn\>"       contains=@NoSpell
syn match Conceal           "\<Conceal\>"           contains=@NoSpell
syn match Cursor            "\<Cursor\>"            contains=@NoSpell
syn match lCursor           "\<lCursor\>"           contains=@NoSpell
syn match CursorIM          "\<CursorIM\>"          contains=@NoSpell
syn match CursorColumn      "\<CursorColumn\>"      contains=@NoSpell
syn match CursorLine        "\<CursorLine\>"        contains=@NoSpell
syn match Directory         "\<Directory\>"         contains=@NoSpell
syn match DiffAdd           "\<DiffAdd\>"           contains=@NoSpell
syn match DiffChange        "\<DiffChange\>"        contains=@NoSpell
syn match DiffDelete        "\<DiffDelete\>"        contains=@NoSpell
syn match DiffText          "\<DiffText\>"          contains=@NoSpell
syn match EndOfBuffer       "\<EndOfBuffer\>"       contains=@NoSpell
syn match ErrorMsg          "\<ErrorMsg\>"          contains=@NoSpell
syn match VertSplit         "\<VertSplit\>"         contains=@NoSpell
syn match Folded            "\<Folded\>"            contains=@NoSpell
syn match FoldColumn        "\<FoldColumn\>"        contains=@NoSpell
syn match SignColumn        "\<SignColumn\>"        contains=@NoSpell
syn match IncSearch         "\<IncSearch\>"         contains=@NoSpell
syn match LineNr            "\<LineNr\>"            contains=@NoSpell
syn match LineNrAbove       "\<LineNrAbove\>"       contains=@NoSpell
syn match LineNrBelow       "\<LineNrBelow\>"       contains=@NoSpell
syn match CursorLineNr      "\<CursorLineNr\>"      contains=@NoSpell
syn match CursorLineFold    "\<CursorLineFold\>"    contains=@NoSpell
syn match CursorLineSign    "\<CursorLineSign\>"    contains=@NoSpell
syn match MatchParen        "\<MatchParen\>"        contains=@NoSpell
syn match MessageWindow     "\<MessageWindow\>"     contains=@NoSpell
syn match ModeMsg           "\<ModeMsg\>"           contains=@NoSpell
syn match MoreMsg           "\<MoreMsg\>"           contains=@NoSpell
syn match NonText           "\<NonText\>"           contains=@NoSpell
syn match Normal            "\<Normal\>"            contains=@NoSpell
syn match Pmenu             "\<Pmenu\>"             contains=@NoSpell
syn match PmenuSel          "\<PmenuSel\>"          contains=@NoSpell
syn match PmenuKind         "\<PmenuKind\>"         contains=@NoSpell
syn match PmenuKindSel      "\<PmenuKindSel\>"      contains=@NoSpell
syn match PmenuExtra        "\<PmenuExtra\>"        contains=@NoSpell
syn match PmenuExtraSel     "\<PmenuExtraSel\>"     contains=@NoSpell
syn match PmenuSbar         "\<PmenuSbar\>"         contains=@NoSpell
syn match PmenuThumb        "\<PmenuThumb\>"        contains=@NoSpell
syn match PopupNotification "\<PopupNotification\>" contains=@NoSpell
syn match Question          "\<Question\>"          contains=@NoSpell
syn match QuickFixLine      "\<QuickFixLine\>"      contains=@NoSpell
syn match Search            "\<Search\>"            contains=@NoSpell
syn match CurSearch         "\<CurSearch\>"         contains=@NoSpell
syn match SpecialKey        "\<SpecialKey\>"        contains=@NoSpell
syn match SpellBad          "\<SpellBad\>"          contains=@NoSpell
syn match SpellCap          "\<SpellCap\>"          contains=@NoSpell
syn match SpellLocal        "\<SpellLocal\>"        contains=@NoSpell
syn match SpellRare         "\<SpellRare\>"         contains=@NoSpell
syn match StatusLine        "\<StatusLine\>"        contains=@NoSpell
syn match StatusLineNC      "\<StatusLineNC\>"      contains=@NoSpell
syn match StatusLineTerm    "\<StatusLineTerm\>"    contains=@NoSpell
syn match StatusLineTermNC  "\<StatusLineTermNC\>"  contains=@NoSpell
syn match TabLine           "\<TabLine\>"           contains=@NoSpell
syn match TabLineFill       "\<TabLineFill\>"       contains=@NoSpell
syn match TabLineSel        "\<TabLineSel\>"        contains=@NoSpell
syn match Terminal          "\<Terminal\>"          contains=@NoSpell
syn match Title             "\<Title\>"             contains=@NoSpell
syn match Visual            "\<Visual\>"            contains=@NoSpell
syn match VisualNOS         "\<VisualNOS\>"         contains=@NoSpell
syn match WarningMsg        "\<WarningMsg\>"        contains=@NoSpell
syn match WildMenu          "\<WildMenu\>"          contains=@NoSpell
syn match TitleBar          "\<TitleBar\>"          contains=@NoSpell
syn match TitleBarNC        "\<TitleBarNC\>"        contains=@NoSpell
syn match ToolbarButton     "\<ToolbarButton\>"     contains=@NoSpell
syn match ToolbarLine       "\<ToolbarLine\>"       contains=@NoSpell
syn match PmenuMatch        "\<PmenuMatch\>"        contains=@NoSpell
syn match PmenuMatchSel     "\<PmenuMatchSel\>"     contains=@NoSpell
syn match TabPanel          "\<TabPanel\>"          contains=@NoSpell
syn match TabPanelFill      "\<TabPanelFill\>"      contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
" Undercurl like in spell errors!
" syn match HLRedUC      "\<HLRedUC\>"      contains=@NoSpell
" syn match HLDarkBlueUC "\<HLDarkBlueUC\>" contains=@NoSpell
" syn match HLFuchsiaUC  "\<HLFuchsiaUC\>"  contains=@NoSpell
" syn match HLCyanUC     "\<HLCyanUC\>"     contains=@NoSpell

" Strikethrough
syn match HLGreyOut              "\<HLGreyOut\>"              contains=@NoSpell
syn match HLStrikeThroughDefault "\<HLStrikeThroughDefault\>" contains=@NoSpell
syn match HLStrikeThroughGrey    "\<HLStrikeThroughGrey\>"    contains=@NoSpell

" Background and foreground mixes
" syn match CyanOnGrey      "\<CyanOnGrey\>"      contains=@NoSpell
" syn match CyanOnGrey3     "\<CyanOnGrey3\>"     contains=@NoSpell
" syn match CyanOnGrey2     "\<CyanOnGrey2\>"     contains=@NoSpell
" syn match CyanOnLightGrey "\<CyanOnLightGrey\>" contains=@NoSpell
" syn match DarkBlueOnTeal  "\<DarkBlueOnTeal\>"  contains=@NoSpell
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" List of all possible gui options (many may not work...).
syn match HLSpecial1       "\<HLSpecial1\>"       contains=@NoSpell
syn match HLSpecial2       "\<HLSpecial2\>"       contains=@NoSpell
syn match HLSpecial3       "\<HLSpecial3\>"       contains=@NoSpell
syn match HLSpecial4       "\<HLSpecial4\>"       contains=@NoSpell
syn match HLSpecial5       "\<HLSpecial5\>"       contains=@NoSpell
syn match HLSpecial6       "\<HLSpecial6\>"       contains=@NoSpell
syn match HLSpecial7       "\<HLSpecial7\>"       contains=@NoSpell
syn match HLSpecial8       "\<HLSpecial8\>"       contains=@NoSpell
syn match HLSpecial9       "\<HLSpecial9\>"       contains=@NoSpell
syn match HLSpecial10      "\<HLSpecial10\>"      contains=@NoSpell
syn match HLSpecial11      "\<HLSpecial11\>"      contains=@NoSpell
"------------------------------------------------------------------------------


"------------------------------------------------------------------------------
"                               Vim abbreviations
"------------------------------------------------------------------------------
inorea _vfunch    "------------------------------------------------------------------------------<cr>
            \" Function: <cr>
            \" Description: <cr>
            \"------------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _vfunc   "------------------------------------------------------------------------------<cr>
            \" Function: v_fname<cr>
            \" Description:<cr>
            \"------------------------------------------------------------------------------<cr>
            \function! funcname()<cr>
            \   <cr>
            \<bs><bs><bs>endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vfunci  "------------------------------------------------------------------------------<cr>
            \" Function: v_fname<cr>
            \" Description:<cr>
            \"------------------------------------------------------------------------------<cr>
            \function! funcname(some_input)<cr>
            \   <cr>
            \<bs><bs><bs>endfunction<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vif     if a == b<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vifel   if a == b<cr>
            \   <cr>
            \<bs><bs><bs>else<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vifelif if a == b<cr>
            \   <cr>
            \<bs><bs><bs>elseif c == d<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vifelifel if a == b<cr>
            \   <cr>
            \<bs><bs><bs>elseif c == d<cr>
            \   <cr>
            \<bs><bs><bs>else<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _vifexists  if exists("g:v")<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _vifnexists if !exists("g:v")<cr>
            \   <cr>
            \<bs><bs><bs>endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _via     inorea replace_word   replace_with<left><right><c-r>=Eatchar('\s')<cr>

inorea _vso    so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>
inorea _vau    au  BufNewFile,BufRead * so $vim_folder_path/filename.vim<left><right><c-r>=Eatchar('\s')<cr>

inorea _vaug " Description<cr>
            \augroup group_name<cr>
            \<cr>
            \   " If you want to clear a group, use "au!" inside the group<cr>
            \au!<cr>
            \<cr>
            \autocmd BufNewFile,BufRead * command_here<cr>
            \<cr>
            \<bs><bs><bs>augroup END<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------


" VINOTE: Adding modelines like below in a file adds specific vim commands for
"         that file! The following line adds the colorcolumn line at column 80!
" vim: cc+=80

