"---------------------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------
"                               Settings that get loaded by vim
"---------------------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------
"---------------------------------------------------------------------------------------------

" NOTE: I use the colemak-dh layout and additional colemak-dh specific bindings!!
let g:keyboard_layout = "qwerty"
" let g:keyboard_layout = "colemak-dh"

" selects between windows and linux OS
let g:using_windows = 0

" will turn off some settings if set to 1:
"     highlighting custom matches in the b:match_words variable, path matching, website
"     matching,
" will turn off even more settings if set to 2:
"     autocorrect, loading file at last known cursor, quotes matching, title matching,
"     spellchecking and the g:spell_check_en variable, unicode.vim
"     matching,
" will turn off even more settings if set to 3:
"     regex.vim matching,
" will turn off even more settings if set to 4:
"     all highlighting and syntax settings, will not load any *.vim file, text will be entirely bland
let g:performance_mode = 0

" enable autocorrect (need to download your own autocorrect.vim files)
" let g:use_autocorrect = 1

" Used to load large files faster by not loading vimrc settings
" file is large from 100mb
" NOTE: large files can slow down/reduce performance
let g:LargeFile = 1024 * 1024 * 100

if g:performance_mode >= 3
   let g:use_autocorrect = 0
endif

" set the <leader> key to space
let mapleader="\<space>"

" NOTE: you can open multiple splits/tabs from terminal!!!
"gvim -o *.sv   horizontal split all files
"gvim -O *.sv   vertical   split all files
"gvim -p *.sv   tabs


"--------------------------------------------------------------------------------------
" Default settings
"--------------------------------------------------------------------------------------
function! DefaultSettings()
   let g:EnteredDefaultSetting = 1

   "autocmd VimEnter * let FileSize=getfsize(expand("<afile>")) | if FileSize == -1 | echo "The file is empty" | else | echo "The file is" FileSize /1024  /1024 "MB /" FileSize /1024 / 1 "KB /" FileSize "B" | endif

   if has("gui_running")

      "------------------------------------------------------------
      " These options and commands set the font, the background
      " and the dimensions of the vim window

      " selects between windows and linux OS
      if g:using_windows
         set guifont=Consolas:h13.5:cANSI  " use this font in windows
         set lines=46          " height
         set columns=140       " width
      else
         " select btw font styles
         set guifont=Monospace\ 12
         set lines=46          " height
         set columns=120       " width
         winpos 1000 0         " open gvim in top right by default
      endif
      "colorscheme pablo    " use this color scheme
      set background=dark   " adapt colors for background
      hi Normal             guifg=grey95      guibg=grey5
      " see ~/.vim/highlightings for other highlighting settings

      "------------------------------------------------------------
      " Set 'nocompatible' to ward off unexpected things that your distro might
      " have made, as well as sanely reset options when re-sourcing .vimrc
      set nocompatible

      " Attempt to determine the type of a file based on its name and possibly its
      " contents.  Use this to allow intelligent auto-indenting for each filetype,
      " and for plugins that are filetype specific.
      "filetype indent plugin on

      " Enable default syntax highlighting
      " I'm using my own highlighting settings so turning this off
      "syntax on
      syntax off

      "------------------------------------------------------------
      " Allows you to switch from an unsaved buffer without saving it first.
      " Also allows you to keep an undo history for multiple files.
      " Vim will complain if you try to quit without saving, and swap files
      " will keep you safe if your computer crashes.
      set hidden

      " Better command-line completion when pressing tab to autocomplete
      set wildmenu
      set wildmode=full,full

      " Show partial commands in the last line of the screen.
      " for example my remapped :sp will not be visible if not set
      set showcmd

      " Highlight searches (use <c-n> mapping to temporarily turn off highlighting)
      set hlsearch

      " Highlight searches as you type
      set incsearch

      "------------------------------------------------------------
      " Use case insensitive search, except when using capital letters
      set ignorecase
      set smartcase

      " Allow backspacing over autoindent, line breaks and start of insert action
      set backspace=indent,eol,start

      " When entering a new line and no filetype-specific indenting is enabled, keep
      " the same indentation as the line you're currently on.
      set autoindent
      " smartindent in Vim is an indentation option that provides automatic indentation when starting a new line
      " 'cindent' does something like this, works better in most cases, but is more strict,  When 'cindent' is on or 'indentexpr' is set, setting 'smartindent' has no effect. See |C-indenting|.
      " Normally 'autoindent' should also be on when using 'smartindent'.
      " An indent is automatically inserted:
      " - After a line ending in '{'.
      " - After a line starting with a keyword from 'cinwords'.
      " - Before a line starting with '}' (only with the "O" command).
      " When typing '}' as the first character in a new line, that line is given the same indent as the matching '{'.
      " When using the ">>" command, lines starting with '#' are not shifted right. ??? from help !!!
      " WARNING: smartindent makes it so I can't use >> on lines that start with # !!
      " set smartindent
      " need to set this or I can't use >> on lines that start with # !!
      " but this also make vim indent c style with { parenthesis }
      " See |C-indenting|.
      set cindent
      set cinkeys-=0#

      " Stop certain movements from always going to the first character of a line.
      " While this behaviour deviates from that of Vi, it does what most users
      " coming from other editors would expect. TODO: confirm what this does
      set nostartofline

      " Display the cursor position on the last line of the screen or in the status
      " line of a window
      set ruler

      " Always display the status line (showing file name and path), even if only one
      " window is displayed
      set laststatus=2

      " Instead of failing a command because of unsaved changes, instead raise a
      " dialogue asking if you wish to save changed files.
      set confirm

      " Use visual bell instead of beeping when doing something wrong
      set visualbell

      " Enable use of the mouse for all modes
      set mouse=a

      " Hide mouse when typing - hidden by default
      "set mousehide
      "set nomousehide

      " Set the command window height (where the commands suce as / and : are typed)
      set cmdheight=1

      " Display line numbers on the left
      set number

      " lastline: When included, as much as possible of the last line
      " in a window will be displayed. When not included, a last line
      " that doesn't fit is replaced with "@" lines.
      set display+=lastline

      " If set, then line numbers above or below are numbered relatively to the current line
      " ...,3,2,1 for lines above and 1,2,3,... for lines below instead of their actual line number
      "set relativenumber

      " Quickly time out on keycodes, but never time out on mappings
      " does this also impact how long before abbreviations timeout? is that why they randomly don't work?
      "    NO it does not seem the case if you type the abbreviations really slowly...
      set notimeout ttimeout ttimeoutlen=400

      " Use <F11> to toggle between 'paste' and 'nopaste'
      "set pastetoggle=<F11>

      " if this is here, will not auto-comment by default
      "set formatoptions-=cro

      "------------------------------------------------------------
      " use 3 spaces instead of tabs. converts tab to spaces
      set expandtab
      " automatically indent after new line ex if inside function {
      set shiftwidth=3
      " How many spaces a tab is worth
      set tabstop=3

      " Indents word-wrapped lines as much as the 'parent' line
      set breakindent


      "-----------------------------------------------------------------------------------------
      "-----------------------------------------------------------------------------------------
      "-----------------------------------------------------------------------------------------

      " Turn on line-wrapping (text loops around if not enough space)
      set wrap
      " Vim will wrap lines at white spaces if possible
      set linebreak

      " automatically enter a new line after X characters (0 means never)
      set textwidth=0

      " In gvim, 'guioptions' controls whether various GUI widgets are shown
      " Below means left and bottom scroll bar disabled, right scroll bar enabled
      set guioptions+=LlRrb
      set guioptions-=LlRrb
      set guioptions+=r

      " Will highlight spelling mistakes in all file types if set
      " I set this in txt.vim as I don't want it enabled in most file types.
      "set nospell
      "set spell spelllang=en_us
      " ignore uppercase of first word.
      "set spellcapcheck=

      " prevents the cursor from going within the top or bottom x lines of the screen
      " and will readjust the screen to show a min of x lines below or above
      set scrolloff=2

      " automatically reloads file if it was changed in another file
      set autoread

      " disable swap files (used to restore changes made to buffer in case of crash and
      " to avoid multiple instances of the file being open) (since I save almost all
      " the time, crashes do not affect me as much...)
      set noswapfile

      " do not access the menu items with alt anymore, alt is useful to access some specific
      " characters such as è that is mapped to a-h. I also map other alt shortcuts below.
      set winaltkeys=no

      "folding settings
      "set foldnestmax=10      "deepest fold is 10 levels
      " enable folding to indentation level
      " you can use commands such as za, zM, zm, zr, zR, zc to enable and disable folds
      " you can toggle folding with za. You can fold everything with zm/zM and unfold everything with zr/zR.
      set foldmethod=indent
      set foldignore=
      "dont fold by default
      set nofoldenable
      "set foldlevel=1

      " change the width/size/length/cursor of a range of characters!
      " setcellwidths() - moved to unicode.vim

   endif " has("gui_running")


   "-------------------------------------------------------------------------------------
   " remap vs noremap
   "-------------------------------------------------------------------------------------
   " remap is an option that makes mappings work recursively.
   "
   " :map and :noremap are recursive and non-recursive versions of the various
   " mapping commands. What that means is that if you do:
   " :map j gg
   " :map Q j
   " :noremap W j
   "
   " j will be mapped to gg. Q will also be mapped to gg, because j will be
   " expanded for the recursive mapping. W will be mapped to j (and not to gg)
   " because j will not be expanded for the non-recursive mapping.
   "
   " you can even create infinite recursive mapping if you map to the same key!
   "
   " always use noremap!
   "-------------------------------------------------------------------------------------

   " NOTE: these mappings will apply to both vi and gvim
   "if has("gui_running")

      "----------------------------------------------------------------------
      " make vim similar to windows related mappings (save, copy, paste, select, ...)
      "----------------------------------------------------------------------

      " yank/copy to clipboard like in windows
      set clipboard=unnamedplus

      if g:using_windows
         " map ctrl+C to copy and ctrl+X to paste -> using "set clipboard" instead
         vnoremap y "+y
         nnoremap yy V"+y$
         vnoremap <s-p> py
         noremap p "+gp<a-bs>
         vnoremap p "+gpgv"+yy<esc>
         " copy entire word
         nnoremap <c-y> viw"+y
         " paste over entire word
         nnoremap <c-p> viw"+gpgv"+y
      else
         " map ctrl+C to copy and ctrl+X to paste -> using "set clipboard" instead
         vnoremap <s-p> p
         vnoremap p pgvy
         inoremap <c-p> <esc>pa
         " copy entire word
         nnoremap <c-y> viwy
         inoremap <c-y> <esc>viwyi
         " paste over entire word
         nnoremap <c-p> viwpgvy
      endif

      " paste last selected without using mouse
      cnoremap <a-p> <middlemouse>
      nnoremap <a-p> a<middlemouse><esc>

      " uppercase / capitalize / lowercase case of word
      nnoremap <c-u> viwU
      " nnoremap <c-s-u> viwU " NOTE: used by OS !!
      " toggle / uppercase / capitalize / lowercase word under cursor
      nnoremap <c-`> viw~

      " select all in file
      nnoremap <a-a> GVgg
      vnoremap <a-a> <esc>GVgg

      " Use CTRL-S for saving, also in Insert mode
      nnoremap <c-s> :update<cr>
      vnoremap <c-s> <esc>:update<cr>
      " gi goes to last insertion, <c-g>u updates last undo checkpoint
      inoremap <c-s> <esc>:update<cr>gi<c-g>u

      "map backspace to delete like in windows
      nnoremap <bs> i<bs><right><esc>
      nnoremap <c-bs> i<bs><right><esc>
      nnoremap <s-bs> i<bs><right><esc>
      vnoremap <bs> <del>
      vnoremap <c-bs> <del>
      vnoremap <s-bs> <del>
      nnoremap <del> i<del><right><esc>

      " Set and unset line wrap
      nnoremap <silent><a-q> :set wrap!<cr>

   "endif " has("gui_running")

   " NOTE: these mappings will apply to both vi and gvim
   "if has("gui_running")
      "----------------------------------------------------------------------
      " tab, enter, whitespace mappings
      "----------------------------------------------------------------------

      "Insert newline with enter without entering insert mode
      noremap <cr> o<esc>
      noremap <s-cr> O<esc>
      inoremap <s-cr> <cr><esc>i
      inoremap <c-cr> <esc>o


      " WARNING: c-i and tab get the same mapping
      " WARNING: c-i and c-o jump user through their jump list
      " WARNING: <space> in visual mode conflicts with the leader mappings
      "map tab and space bar
      nnoremap <leader><space> i<space>
      " NOTE: make tab and space work the same for visual and block visual mode
      "vnoremap <expr> <tab> mode() ==# "v" ? "<c-v><s-i><space><space><space>" : "<s-i><space><space><space>"
      vnoremap <expr> <tab> mode() ==# "v" ? "<c-v><s-i><tab>" : "<s-i><tab>" "Does not work at home!!
      " vnoremap <expr> <leader><tab> mode() ==# "v" ? "<c-v><s-i><tab>" : "<s-i><tab>"
      vnoremap <expr> <leader><space> mode() ==# "v" ? "<c-v><s-i><space>" : "<s-i><space>"

      " use < instead
      "vnoremap <s-tab> <c-v>0o0lld<esc>

      " <c-g>u updates last undo checkpoints so that a long block of text gets split up into smaller undo pieces.
      inoremap <cr> <c-g>u<cr>
      inoremap . .<c-g>u
      inoremap ! !<c-g>u
      inoremap ? ?<c-g>u

   "endif " has("gui_running")

   " NOTE: these mappings will apply to both vi and gvim
   "if has("gui_running")
      "----------------------------------------------------------------------
      " movement related mappings
      "----------------------------------------------------------------------

      " select between settings specific for the "colemak-dh" vs "qwerty" keyboard layout
      if g:keyboard_layout == "colemak-dh"
         " remap hjkl to something more intuitive
         noremap e k
         noremap j b
         noremap , j
         noremap k .
         noremap . l

         " similar hjkl related mappings as above but with shift
         " NOTE: s-k loads manual --> not really needed, can use terminal I think.
         " noremap <s-e> <s-k>
         " instead, use <s-e> for insert after comment as it is next to <s-i>
         noremap <expr> <s-e>   b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wi" :
                              \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wi" : "<s-k>"
         " map to tab after comment! WARNING: <c-s-i> disables vnoremap <tab> !!!! must be like <c-i>!!! but doing it twice is fine for some reason!!!
         noremap <expr> <c-s-i><c-s-i> b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                              \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wi   <esc><c-o>lll" : "<s-k>"
         " map to remove tab after comment!
         noremap <expr> <c-s-e><c-s-e> b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wXXX<c-o>" :
                              \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wXXX<c-o>" : "<s-k>"

         noremap <s-j> <s-b>
         noremap <s-b> <s-f>
         noremap <s-f> <s-e>
         noremap <s-l> g<s-e>

         " move page up by 1 line
         noremap <c-s-l> <c-e>
         " <c-s-y> moves page dn by 1 line

         " gj and gk are used to not skip over wrapped lines
         noremap g, gj
         noremap ge gk

         " add insert mode hjkl movements
         inoremap <c-h> <esc>ha
         inoremap <c-e> <esc>gka
         inoremap <c-,> <esc>gja
         inoremap <c-.> <esc>la

         " add insert mode A I movements c-a c-i
         inoremap <c-a> <esc><s-a>
         "inoremap <c-i> <esc><s-i>    " WARNING: messes up recording with tabs as c-i is mapped to tabs!!!
         inoremap <c-0> <esc>0i
         inoremap <c-$> <esc>$a
      else
         " unchanged for qwerty
      endif

      if g:keyboard_layout == "colemak-dh"
         " word movement mappings
         noremap b f
         noremap f e
         noremap l ge

         " add insert mode word jumps
         inoremap <c-w> <esc>lwi
         inoremap <c-f> <esc>ea
         inoremap <c-j> <esc>bi
         inoremap <c-l> <esc>gea

         " delete word in i mode
         inoremap <c-d> <c-w>
         " inoremap <c-v> <esc>ediwa<bs><esc>a " NOTE: conflicts with unicode (i)c-v... is <c-d> above not enough?
         " delete WORD in i mode
         inoremap <c-s-d> <esc>lgediWi<bs>
         inoremap <c-s-v> <esc>ediWa<bs><esc>a
         " delete WORD in n mode
         nnoremap <a-v> daW
         nnoremap <a-d> daWge

         " delete till end of line (next to c-u!)
         inoremap <c-;> <esc>l<s-d>a
         " move delete tab to c-g, next to c-t!
         inoremap <c-g> <c-d>
      else
         " unchanged for qwerty
      endif

      if g:keyboard_layout == "colemak-dh"
         " center cursor after pg up/dn/pageup/pagedown/pagedn
         "nnoremap <c-e> <c-u>
         "vnoremap <c-e> <c-u>
         nnoremap <a-f> <pageup><s-m>
         vnoremap <a-f> <pageup><s-m>
         nnoremap <c-f> <c-u><s-m>
         vnoremap <c-f> <c-u><s-m>
         nnoremap <a-c> <pagedown><s-m>
         vnoremap <a-c> <pagedown><s-m>
         nnoremap <c-c> <c-d><s-m>
         vnoremap <c-c> <c-d><s-m>

         " c-c was not useful... so mapping c-d to delete line while keeping line break
         "nnoremap <c-d> <c-c>
         "vnoremap <c-d> <c-c>
         nnoremap <c-d> 0D


         " append next line to end of current line.
         " see help :join   - J without g will insert up to 2 spaces (variable, not constant)
         nnoremap <a-j> j0i<space><esc>kg<s-j>
         vnoremap <a-j> <s-j>
         nnoremap g<a-j> g<s-j>
         vnoremap g<a-j> g<s-j>
         nnoremap <s-a-j> g<s-j>
         vnoremap <s-a-j> g<s-j>
      else
         " unchanged for qwerty
      endif

      " select between settings specific for the "colemak-dh" vs "qwerty" keyboard layout
      if g:keyboard_layout == "colemak-dh"
         " Move text up and down
         nnoremap <a-,> :m .+1<cr>==
         vnoremap <a-,> :m '>+1<cr>gv=gv
         nnoremap <a-e> :m .-2<cr>==
         vnoremap <a-e> :m '<-2<cr>gv=gv
      else
         " Move text up and down
         nnoremap <a-,> :m .+1<cr>==
         vnoremap <a-,> :m '>+1<cr>gv=gv
         nnoremap <a-k> :m .-2<cr>==
         vnoremap <a-k> :m '<-2<cr>gv=gv
      endif

   "endif " has("gui_running")

   " if has("gui_running")
      "----------------------------------------------------------------------
      " Autocorrect related mappings
      "----------------------------------------------------------------------

      " select between settings specific for the "colemak-dh" vs "qwerty" keyboard layout
      if g:keyboard_layout == "colemak-dh"
         " go to next/prev spell error
         nnoremap gH [s
         nnoremap g> ]s

         " fix next/prev spell error
         noremap gh [sz=1<cr><cr>
         noremap g. ]sz=1<cr><cr>

         " add next/prev spell error to dictionary
         noremap zh [szg
         noremap z. ]szg
      else
         " go to next/prev spell error
         nnoremap gH [s
         nnoremap gL ]s

         " fix next/prev spell error
         noremap gl ]sz=1<cr><cr>
         noremap gh [sz=1<cr><cr>

         " add next/prev spell error to dictionary
         noremap zl [szg
         noremap zh ]szg
      endif

      " autocorrect word to first match
      nnoremap gz z=1<cr><cr>

      "----------------------------------------------------------------------
      " seach related mappings
      "----------------------------------------------------------------------

      " recenter window after search
      nnoremap n nzz
      nnoremap N Nzz

      " search for item under cursor with mouse
      nnoremap <c-leftmouse>  <leftmouse>bve<esc>k$/<middlemouse><cr>
      nnoremap <c-rightmouse> <leftmouse>bve<esc>k$/\<<middlemouse>\><cr>
      nnoremap <s-leftmouse>  <leftmouse>bve<esc>k$/\V\c<middlemouse><cr>
      nnoremap <s-rightmouse> <leftmouse>bve<esc>k$/\V\c\<<middlemouse>\><cr>

      vnoremap <c-leftmouse>  <esc><leftmouse>bve<esc>k$/<middlemouse><cr>
      vnoremap <c-rightmouse> <esc><leftmouse>bve<esc>k$/\<<middlemouse>\><cr>
      vnoremap <s-leftmouse>  <esc><leftmouse>bve<esc>k$/\V\c<middlemouse><cr>
      vnoremap <s-rightmouse> <esc><leftmouse>bve<esc>/\<<middlemouse>\><cr>

      " `< will go to the start of the previous visual selection
      " /<up> will start search then pick previous search
      " <a-backspace> will go to previous char even if on previous line
      if g:using_windows
         " search for characters being selected (same as <c-/>)
         vnoremap / "+y<esc>`<<a-backspace>/\V\c<middlemouse><cr>

         " search for characters being selected
         vnoremap <c-/> "+y<esc>`<<a-backspace>/\V\c<middlemouse><cr>
         vnoremap <c-8> "+y<esc>`<<a-backspace>/\<<middlemouse>\><cr>

         " add another word to the existing search!
         vnoremap ? "+y<esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         vnoremap * "+y<esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

         " search for word under the cursor
         nnoremap <c-/> viwo"+y<esc><a-backspace>/\V\c<middlemouse><cr>
         nnoremap <c-8> viwo"+y<esc><a-backspace>/\<<middlemouse>\><cr>

         " add another word to the existing search!
         " NOTE: "?" was used to search backwards.
         nnoremap ? viw"+y<esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         nnoremap * viw"+y<esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>
      else
         " search for characters being selected (same as <c-/>)
         vnoremap / <esc>`<<a-backspace>/\V\c<middlemouse><cr>

         " search for characters being selected
         vnoremap <c-/> <esc>`<<a-backspace>/\V\c<middlemouse><cr>
         vnoremap <c-8> <esc>`<<a-backspace>/\<<middlemouse>\><cr>

         " add another word to the existing search!
         vnoremap ? <esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         vnoremap * <esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

         " search for word under the cursor
         nnoremap <c-/> viwo<esc><a-backspace>/\V\c<middlemouse><cr>
         nnoremap <c-8> viwo<esc><a-backspace>/\<<middlemouse>\><cr>

         " add another word to the existing search!
         " NOTE: "?" was used to search backwards.
         nnoremap ? viw<esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         nnoremap * viw<esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>
      endif

      "Search in multiple split-windows. Type m to continue search in next file
      " NOTE" \<lt> maps to <
      nnoremap <silent> m :exe (search(@/, 'nW') == 0 ?  "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_Gn" : "normal! nzz")<cr>
      nnoremap <silent> M :exe (search(@/, 'bnW') == 0 ?  "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_gg$N" : "normal! Nzz")<cr>
      " remap alt-m back to marks instead of m
      nnoremap <a-m> m


      " search and replace
      " NOTE: gc will ask for confirmation after each replace
      "       % starts from top of the file
      "       c.,$ to start from current line to end of file
      "       |1,''-&& to repeat from first line to cursor line minus one
      " replace next word
      nnoremap <leader>rn :.,$s/<c-r><c-w>/<c-r><c-w><space><bs>/gc\|1,''-&&
      vnoremap <leader>rn :<bs><bs><bs><bs><bs>.,$s/<middlemouse>/<middlemouse>/gc\|1,''-&&
      " replace next word exact match
      nnoremap <leader>re :.,$s/\<<c-r><c-w>\>/<c-r><c-w><space><bs>/gc\|1,''-&&
      vnoremap <leader>re :<bs><bs><bs><bs><bs>.,$s/\<<middlemouse>\>/<middlemouse>/gc\|1,''-&&
      " replace ALL words
      nnoremap <leader>ra :%s/<c-r><c-w>/<c-r><c-w>/g<left><left><space><bs>
      vnoremap <leader>ra :<bs><bs><bs><bs><bs>%s/<middlemouse>/<middlemouse>/g<left><left><space><bs>
      " replace ALL words exact match
      nnoremap <leader>rr :%s/\<<c-r><c-w>\>/<c-r><c-w>/g<left><left><space><bs>
      vnoremap <leader>rr :<bs><bs><bs><bs><bs>%s/\<<middlemouse>\>/<middlemouse>/g<left><left><space><bs>


      " replace all c style block/multi-line comments with line/single-line comments
      noremap <leader>r/ :%s/\/\*/\/\//g<cr>:%s/ *\*\///g<cr>


      " search for word under cursor but not with not_word after it
      "noremap <s-r>! /\<<c-r><c-w>\>\( not_word\)\@!
      noremap <leader>sna  /<c-r><c-w>\( not_word\)\@!
      noremap <leader>snea /\<<c-r><c-w>\>\( not_word\)\@!
      noremap <leader>snb  /\(not_word \)\@<!<c-r><c-w>
      noremap <leader>sneb /\(not_word \)\@<!\<<c-r><c-w>\>
      noremap <leader>snc  /\(not_word \)\@<!<c-r><c-w>\( not_word\)\@!
      noremap <leader>snec /\(not_word \)\@<!\<<c-r><c-w>\>\( not_word\)\@!

      " search for more multiple words in same line (in exact order)
      "noremap <s-r>* /\<<c-r><c-w>\>.*word2
      noremap <leader>s2  /<c-r><c-w>.*word2
      noremap <leader>se2 /\<<c-r><c-w>\>.*\<word2\>


      " search for CamelCase
      nnoremap <leader>sc /\(\<\u\l\+\\|\l\+\)\(\u\)<cr>
      " Convert each NameLikeThis to name_like_this in current line.
      nnoremap <leader>rc1 :s#\(\<\u\l\+\\|\l\+\)\(\u\)#\l\1_\l\2#g<cr>
      nnoremap <leader>rc_ :%s#\(\<\u\l\+\\|\l\+\)\(\u\)#\l\1_\l\2#g<cr>
      " Convert each name_like_this to NameLikeThis in current line.
      nnoremap <leader>r_1 :s#\(\%(\<\l\+\)\%(_\)\@=\)\\|_\(\l\)#\u\1\2#g<cr>
      nnoremap <leader>r_c :%s#\(\%(\<\l\+\)\%(_\)\@=\)\\|_\(\l\)#\u\1\2#g<cr>


      " clear search highlighting
      nnoremap <c-n> :noh<cr>


      "----------------------------------------------------------------------
      " switching/recentering window positioning mappings
      "----------------------------------------------------------------------

      " faster map to quit all files in window
      noremap ZZ :qa<cr>

      " center window after quitting
      noremap ZA :q<cr><c-w><bar><c-w>_

      " max out both height and width of split screen
      nnoremap <c-w>/ <c-w><bar><c-w>_
      nnoremap <c-w>\ <c-w><bar><c-w>_

      " select between settings specific for the "colemak-dh" vs "qwerty" keyboard layout
      if g:keyboard_layout == "colemak-dh"
         " move btw split screens
         nnoremap <c-,> <c-w>j<c-w><bar><c-w>_zz
         nnoremap <c-e> <c-w>k<c-w><bar><c-w>_zz
         " NOTE" \<lt> maps to <
         nnoremap <silent> <c-.> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
         nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      else
         " move btw split screens
         nnoremap <c-j> <c-w>j<c-w><bar><c-w>_zz
         nnoremap <c-k> <c-w>k<c-w><bar><c-w>_zz
         " NOTE" \<lt> maps to <
         nnoremap <silent> <c-l> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
         nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      endif

      " tabs shortcuts using :
      nnoremap <c-t>f  :tabfirst<cr>
      nnoremap <c-t>n  :tabnext<cr>
      nnoremap <c-t>p  :tabprev<cr>
      nnoremap <c-t>l  :tablast<cr>
      nnoremap <c-t>q  :tabclose<cr>
      nnoremap <c-t><Space> :tabnew
      nnoremap <c-t><cr> :tabnew<cr>

      " zoom in/out
      noremap <c-middlemouse> :LargerFont<cr>
      noremap <s-middlemouse> :SmallerFont<cr>
      noremap Zi :LargerFont<cr>
      noremap Zo :SmallerFont<cr>

      " maps ctrl-middlemouse to zoom in and shift-middlemouse to zoom out
      function! AdjustFontSize(amount)
         let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
         let s:minfontsize = 6
         let s:maxfontsize = 20
         "if has("gui_gtk2") && has("gui_running")
         if has("gui_running")
           let fontname = substitute(&guifont, s:pattern, '\1', '')
           let cursize = substitute(&guifont, s:pattern, '\2', '')
           let newsize = cursize + a:amount
           if (newsize >= s:minfontsize) && (newsize <= s:maxfontsize)
             let newfont = fontname . newsize
             let &guifont = newfont
           endif
         else
           echoerr "You need to run the GTK2 version of Vim to use this function."
         endif
      endfunction

      function! LargerFont()
         call AdjustFontSize(1)
      endfunction
      command! LargerFont call LargerFont()

      function! SmallerFont()
         call AdjustFontSize(-1)
      endfunction
      command! SmallerFont call SmallerFont()

      "----------------------------------------------------------------------
      " Useful scripts mappings
      "----------------------------------------------------------------------

      "noremap <silent> gc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
      "noremap <silent> gu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

      " commenting blocks of code
      " <c-b> is used to move to the beginning of the line in command line mode
      " <c-e> is used to move to the end       of the line in command line mode
      " <c-r> This is the insert mode command to insert the contents of a register.
      " =     This specifies the expression register.
      " _o_   in visual mode will start from first non white space on first and last line
      "" this method will comment each line at a different height
      "" vnoremap <silent> gc :<c-b>silent <c-e>s/\(\S\)\@=/<c-r>=escape(b:comment_leader . " ",'\/')<cr>/<cr>/<up><up><esc>u<c-r>:nohlsearch<cr>
      "" this method will comment each line at the start of the line
      "" vnoremap <silent> gc :<c-b>silent <c-e>s/^/<c-r>=escape(b:comment_leader . " ",'\/')<cr>/<cr>/<up><up><esc>u<c-r>:nohlsearch<cr>
      "" vnoremap <silent> gu :<c-b>silent <c-e>s/^\v<c-r>=escape(b:comment_leader . " ",'\/')<cr>//e<cr>/<up><up><esc>u<c-r>:nohlsearch<
      " this method has no issue with search clear or with blinking screen.
      vnoremap <expr> <silent> gc mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> <esc>"
      vnoremap <expr> <silent> gu mode() ==# "v" ? "<c-v>_o_f <del>" : mode() ==# "V" ? "<c-v>_o_f <del>" : "_o_f <del>"
      vnoremap <expr> <silent> gy mode() ==# "v" ? "<c-v>_o_f <del>" : mode() ==# "V" ? "<c-v>_o_f <del>" : "_o_f <del>"
      vnoremap <expr> <silent> gp mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>"
      vnoremap <expr> <silent> gt mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>"
      vnoremap <expr> <silent> gs mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: does not work: <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: does not work: <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> TODO: does not work: <esc>"
      " Puts comment just before first non-whitespace
      " NOTE: /<up><up><esc>u<c-r> is a hack to return the last search and then go to last edit line and center (as it jumped to next search...)
      "nnoremap <silent> gc :<c-b>silent <c-e>s/\(\S\)\@=/<c-r>=escape(b:comment_leader . ",'\/')<cr>/<cr>/<up><up><esc>u<c-r>:nohlsearch<cr>
      "nnoremap <silent> gu :<c-b>silent <c-e>s/\(\S\)\@=\V<c-r>=escape(b:comment_leader . " ",'\/')<cr>//e<cr>/<up><up><esc>u<c-r>:nohlsearch<cr>
      nnoremap <expr> <silent> gc "_i<c-r>=b:comment_leader<cr> <esc>"
      nnoremap <expr> <silent> gu "_vf <del>"
      nnoremap <expr> <silent> gy "_vf <del>"
      nnoremap <expr> <silent> gp "_i<c-r>=b:comment_leader<cr> NOTE: <esc>"
      nnoremap <expr> <silent> gt "_i<c-r>=b:comment_leader<cr> TODO: <esc>"
      nnoremap <expr> <silent> gs "_i<c-r>=b:comment_leader<cr> TODO: does not work: <esc>"

      " load help for word under cursor
      " <c-r><c-w> pastes word under cursor into command line!
      nnoremap    <c-s-h> :help <c-r><c-w><cr><c-w>_:syntax clear Error<cr>:setlocal nospell<cr>
      nnoremap <leader>fh :help <c-r><c-w><cr><c-w>_:syntax clear Error<cr>:setlocal nospell<cr>
      " NOTE: <s-k> is already mapped to manual
      " open manual, command needs to have an entry in the manual in linux
      " nnoremap <leader>fm <s-k> " just use terminal for man....
      " enable math and unicode mappings (also see <leader>sp to enables spell checking)
      nnoremap <leader>fm :so $HOME/.vim/math_mappings.vim<cr>:so $HOME/.vim/unicode.vim<cr>
      nnoremap <leader>sm :so $HOME/.vim/math_mappings.vim<cr>:so $HOME/.vim/unicode.vim<cr>

      " NOTE: executes the same command on all selected lines in <c-v> visual mode
      if g:keyboard_layout == "colemak-dh"
         vnoremap <leader>fv :norm<space>ffa
      else
         vnoremap <leader>fv :norm<space>bba
      endif

      " :%s/search_term/replace_term/g means search and replace all lines
      " g means substitute all matches
      " % matches entire file
      " \< matches start of a word
      " . matches the first char of a word (replaced with [a-z])
      " \u tells vim to uppercase the following character in the substitution string (&)
      " & means substitute whatever was matched on the left hand side
      " \( \| \) means a group of alternatives
      " ^ after a newline
      " [-"' ]* means 0 or more minus signs or spaces after the new line.
      " /\\ means 0 or more \ after the new line.
      " [.?!] \+ means after a terminal punctuation and one or more spaces
      " [a-z]\ze[a-z]   \ze means lookahead
      " \U uppercase following string
      " & with sed means use the match found
      " Capitalize after every ending punctuation and every new line
      nnoremap <leader>fc :%s/\(^[-"' /\\]*\\|[.?!] \+\)[a-z]\ze[a-z]/\U&/g<cr>:%s/\(^[-"' /\\]*\\|[.?!] \+\)a\ze [a-z][a-z]/\U&/g<cr>:%s/^[ 0123456789()-]*[a-z]\ze[a-z]/\U&/g<cr>

      " Capitalize first letter of every Word on the line
      nnoremap <leader>fu :s/\<[a-z]/\u&/g<cr>
      " Capitalize first letter of every Word on every line in the file
      nnoremap <leader>fU :%s/\<[a-z]/\u&/g<cr>


      " gvim remove extra spacing - Remove unwanted white space
      nnoremap <leader>f<space> :%s/\s\+$//e<cr>
      " replace all tabs with spaces according to tabstop setting.
      nnoremap <leader>f<tab> :retab<cr>
      " every space gets it's own column in gvim (visual mode)
      "  -o ' ' : tells column to use a single space (instead of the default 2)
      " since :!command calls external command, you can get more info with man.
      vnoremap <leader>f<space> :%!column -t -o ' '<cr>
      " every tab (but not space) gets it's own column in gvim (visual mode)
      vnoremap <leader>f<tab> :%!column -t -s $'	'<cr>


      " sort selected lines
      vnoremap <leader>fs  :%!sort<cr>
      " sort all lines in the file
      nnoremap <leader>fs  :%sort<cr>
      " sort selected lines and unique (don't know why uniq vs u not consistent...)
      vnoremap <leader>fus :%!sort\|uniq<cr>
      " sort and unique all lines in the file
      nnoremap <leader>fus :%sort u<cr>


      " re-source .vimrc file without reloading file, then update all windows
      "nnoremap <a-g> :unlet g:EnteredDefaultSetting<cr>:unlet g:EnteredSmallFile<cr>:so $MYVIMRC<cr>:windo e<cr> " NOTE: can break/does not work consistently...


      " NOTE: execute shell script on current or selected line and print/replace over the lines
      noremap <leader>fp :.!sh<cr>
      " NOTE: execute shell script on current or selected line and print inside the vim output.
      noremap <leader>fl :.w !sh<cr>
      " example: echo $(( 1 + 200 / 2))


      " add { } in c files if they are missing
      nnoremap <leader>{ 0f(%a {<esc>jo}<esc>
      " else and do don't have ( ) parenthesis, so use a different method
      nnoremap <leader>} 0/else\\|do<cr>ea {<esc>jo}<esc>:noh<cr>


      " list of buffers
      nnoremap <leader>lb :buffers<cr>
      " list all files sources during init
      nnoremap <leader>ls :scriptnames<cr>
      " list all current registers
      nnoremap <leader>lr :reg<cr>
      " list path name
      nnoremap <leader>lp :pwd<cr>
      " list file info
      nnoremap <leader>li g<c-g>

      " print file name
      nnoremap <leader>pf "%p
      " print full file path and name
      nnoremap <leader>pp ipwd<esc>:.!sh<cr>$a/<esc>"%p
      " print all files in current path
      nnoremap <leader>pl :read !ls<cr>
      " print registers
      nnoremap <leader>p0 "0p
      nnoremap <leader>p1 "1p
      nnoremap <leader>p2 "2p
      nnoremap <leader>p3 "3p
      nnoremap <leader>p4 "4p
      nnoremap <leader>p5 "5p
      nnoremap <leader>p6 "6p
      nnoremap <leader>p7 "7p
      nnoremap <leader>p8 "8p
      nnoremap <leader>p9 "9p

      " VINOTE: this also means you can save common macros in a file and load it whenever needed!!
      " print and edit a previous recording!!
      " print the recorded register (s in this example)
      nnoremap <leader>pq :put s
      " yank to the recorded register (s in this example) (use after editing the printed recording)
      nnoremap <leader>yq :yank s


      " jump to % of file
      nnoremap <leader>j1 16%
      nnoremap <leader>j2 33%
      nnoremap <leader>j3 50%
      nnoremap <leader>j4 67%
      nnoremap <leader>j5 83%

      " enable disable spell checking
      nnoremap <leader>sp  :setlocal spell<cr>:setlocal spellcapcheck=<cr>
      " nnoremap <leader>sp  :setlocal spell<cr>:setlocal spellcapcheck=<cr>:setlocal spelllang+=linuxfull,math<cr>
      nnoremap <leader>nsp :setlocal nospell<cr>

      " fix window after opeing a split screen
      nnoremap <leader>ss :sp<cr><c-w><bar><c-w>_
      nnoremap <leader>su :sp<cr><c-w><bar><c-w>_
      nnoremap <leader>sv :vsp<cr><c-w><bar><c-w>_
      nnoremap <leader>sl :vsp<cr><c-w><bar><c-w>_
      " opposite of sp and vsp
      nnoremap <leader>sd :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
      nnoremap <leader>sr :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
      " topleft botright
      nnoremap <leader>st :topleft<space>split<cr><c-w><bar><c-w>_
      nnoremap <leader>sb :botright<space>split<cr><c-w><bar><c-w>_
      " full right and full left (should never be used...)
      nnoremap <leader>sfr :topleft<space>vnew<cr><c-w><bar><c-w>_
      nnoremap <leader>sfl :botright<space>vnew<cr><c-w><bar><c-w>_
      " fix window after closing a split screen
      nnoremap <leader>q :q<cr><c-w><bar><c-w>_
      nnoremap <leader>wq :wq<cr><c-w><bar><c-w>_

   " endif " has("gui_running")


   " ---------------------------------------------------------------------------------------------
   " Colors and Highlighting
   " ---------------------------------------------------------------------------------------------
   " if has("gui_running")
   " else
   "    " changes cursor shape in visual/insert mode
   "    let &t_SI = "\e[6 q"
   "    let &t_SR = "\e[4 q"
   "    let &t_EI = "\e[2 q"
   "    " Quickly time out on keycodes, but never time out on mappings
   "    set notimeout ttimeout ttimeoutlen=100
   " endif " has("gui_running")

endfunction " function DefaultSettings()

function! SmallFile()

   let g:EnteredSmallFile = 1
   " autocmd VimEnter *  echo "The file is less than 100 MB"

   " load autocorrect files
   if !exists("g:AutocorrectLoaded") && exists("g:use_autocorrect") && g:use_autocorrect
      let g:AutocorrectLoaded=1
      so $HOME/.vim/autocorrect/autocorrect.vim
      " so $HOME/.vim/autocorrect/wordlist.vim
   endif

   if has("gui_running")

      augroup syntax

         " If you want to clear a group, use autocmd!/au! inside the group
         au!

         " If this is here, will not auto-comment by default
         au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


         " Manually set the comment_leader for some file types that don't automatically have them
         au BufNewFile,BufRead *.sh,.bash*,.cshrc*,*.ps1,.aliases   let b:comment_leader = '#'
         au BufNewFile,BufRead *.py,*.python,*.pl,*.pm,*.perl,*.tcl let b:comment_leader = '#'
         au BufNewFile,BufRead *.conf,*.fstab,bash\w*,*.do          let b:comment_leader = '#'
         au BufNewFile,BufRead *.objdump,*.asm,*.masm,*.s,*.ini     let b:comment_leader = '#'
         au BufNewFile,BufRead *.vh,*.v,*.sv,*.svh,*.json,*.txt     let b:comment_leader = '//'
         au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp,*.java,*.scala   let b:comment_leader = '//'
         au BufNewFile,BufRead *.tex                                let b:comment_leader = '%'
         au BufNewFile,BufRead *.mail                               let b:comment_leader = '>'
         au BufNewFile,BufRead *.vim,*.vimrc*                       let b:comment_leader = '"'
         au BufNewFile,BufRead *.vhdl,*lean.txt,*.lean,*.lua        let b:comment_leader = '--'
         au BufNewFile,BufRead *.A51                                let b:comment_leader = ';'

         "enable spellchecking in specific file extensions
         if g:performance_mode <= 1
            au BufNewFile,BufRead *.txt so $HOME/.vim/spell.vim
         endif

         " load rainbow parenthesis functions
         au BufNewFile,BufRead * so  $HOME/.vim/rainbow_parenthesis.vim

         "==================================================================
         "===================== Source syntax files ========================
         "==================================================================

         if g:performance_mode <= 3

            " NOTE THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES BEFORE THE RESPECTIVE FILE SETTINGS ARE APPLIED!!!
            au BufNewFile,BufRead * so $HOME/.vim/all_pre.vim

            " NOTE moved all highlighting setting into it's own file
            au BufNewFile,BufRead * so  $HOME/.vim/highlightings.vim

            " Make the % command work on match_words pairs.
            " $VIMRUNTIME = /usr/share/vim/vim82/
            au BufNewFile,BufRead * so  $VIMRUNTIME/macros/matchit.vim

            " Add custom syntax file for linux commands
            au BufNewFile,BufRead .bash*,bash\w*,*.sh,.cshrc*,*.csh,.aliases,*.ps1 so $HOME/.vim/linux.vim

            if g:performance_mode <= 1
               " Add custom syntax file for files that use unicode chars
               au BufNewFile,BufRead *.vimrc*,*.vim,*.lean,*.txt so $HOME/.vim/unicode.vim
            endif

            " Add custom syntax file for .vimrc
            au BufNewFile,BufRead *.vimrc*,*.vim so $HOME/.vim/vim.vim

            " Add custom syntax file for vhdl
            au BufNewFile,BufRead *.vhd,*.vhdl,*.psl so $HOME/.vim/vhdl.vim

            " Add custom syntax file for System Verilog
            au BufNewFile,BufRead *.sv,*.svh,*.sv.bak,*.vt,*.vb,*.v,*.vlib,*.vh so $HOME/.vim/sv.vim

            " Add custom syntax file for assembly
            au BufNewFile,BufRead *.asm,*.masm,*.s,*.objdump so $HOME/.vim/asm.vim

            " Add custom syntax file for C
            au BufNewFile,BufRead *.c,*.h,*.cpp so $HOME/.vim/c.vim

            " Add custom syntax file for java
            au BufNewFile,BufRead *.java so $HOME/.vim/java.vim

            " Add custom syntax file for perl
            au BufNewFile,BufRead *.pl,*.pm so $HOME/.vim/pl.vim

            " Add custom syntax file for python
            au BufNewFile,BufRead *.py so $HOME/.vim/py.vim

            " Add custom syntax file for html
            "au BufNewFile,BufRead *.html so $HOME/.vim/html.vim

            " Add custom syntax file for .vba
            "au BufNewFile,BufRead *.vba so $HOME/.vim/vba.vim

            " Add custom syntax file for TCL
            au BufNewFile,BufRead *.tcl,*.f so $HOME/.vim/tcl.vim

            " Add custom syntax file for txt
            au BufNewFile,BufRead *.txt,*.tex so $HOME/.vim/txt.vim

            " Add custom syntax file for bash. \w is to avoid loading bash.vim
            au BufNewFile,BufRead .bash*,bash\w*,*.sh,.cshrc*,*.csh,.aliases,*.ps1 so $HOME/.vim/bash.vim

            " Add custom syntax file for .log
            au BufNewFile,BufRead *.log,*.log.* so $HOME/.vim/log.vim

            " Add custom syntax file for lean
            au BufNewFile,BufRead *lean.txt,*.lean so $HOME/.vim/lean.vim

            " Add custom syntax file for files that use a custom math spellchecking
            " au BufNewFile,BufRead *.lean,*.txt so $HOME/.vim/math.vim

            " Add custom syntax file for files that use math symbols
            au BufNewFile,BufRead *.vimrc*,*.vim,*.lean,*.txt so $HOME/.vim/math_mappings.vim

            if g:performance_mode <= 2
               " Syntax for files that support regular expressions. (NOTE: may be extension dependent as
               " different programs/editors/programming languages/OS can use regex slightly differently
               " and with different syntax)
               " this helps make regular expressions easier to read
               au BufNewFile,BufRead *.pl,*.pm,*.vimrc*,*.vim so $HOME/.vim/regex.vim
            endif

            " NOTE Add abbreviations to shorten common and repetitive text
            au BufNewFile,BufRead * so $HOME/.vim/abbrev.vim

            " Add custom syntax file for vim colors
            au BufNewFile,BufRead *.vimrc*,*.vim so $HOME/.vim/colors.vim

            " NOTE THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES AFTER THE RESPECTIVE FILE SETTINGS ARE APPLIED!!!
            au BufNewFile,BufRead * so $HOME/.vim/all_post.vim
         endif
         "==================================================================
         "==================================================================
         "==================================================================


         " Always load file at last known cursor position
         " NOTE: can slow down/reduce performance at startup
         if g:performance_mode <= 1
            autocmd BufReadPost *
               \ let line = line("'\"")
               \ | if line >= 1
               \      && line <= line("$") && &filetype !~# 'commit'
               \      && index(['xxd', 'gitrebase', 'tutor'], &filetype) == -1
               \ |    execute "normal! g`\""
               \ | endif
         endif

      augroup END

   endif " has("gui_running")

endfunction

"------------------------------------------------------------------------------------------------
" Load large files faster by not loading vimrc settings
"------------------------------------------------------------------------------------------------
" Protect large files from sourcing and other overhead.
function! LargeFile()
   let g:EnteredLargeFile = 1
   " no syntax highlighting etc
   set eventignore+=FileType
   " save memory when other file is viewed
   setlocal bufhidden=unload
   " is read-only (write with :w new_filename)
   " setlocal buftype=nowrite
   " no undo possible
   setlocal undolevels=-1
   " display message
   autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see LargeFile() in .vimrc for details)."
endfunction


augroup LargeFile
   autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

augroup DefaultSettings1
   if getfsize(expand("<afile>")) < g:LargeFile && !exists("g:EnteredDefaultSetting") && !exists("g:EnteredLargeFile")
      call DefaultSettings()
   endif
augroup END

augroup SmallFile
   autocmd BufReadPre * let y=getfsize(expand("<afile>")) | if y < g:LargeFile && !exists("g:EnteredSmallFile") | call SmallFile() | endif " && EnteredSmallFile == 0
augroup END


