"==============================================================================
" File: .vimrc
"------------------------------------------------------------------------------
" Description: Settings that get loaded when opening any file with a vim GUI.
"------------------------------------------------------------------------------
" Author: Danny Sarraf
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

" I use the colemak-dh keyboard layout and custom mappings for this layout.
let g:keyboard_layout = "qwerty"
" let g:keyboard_layout = "colemak-dh"

" Selects between windows and linux OS
let g:using_windows = 0

" Path to key vim folders
if g:using_windows
   let $vim_folder_path  = '$HOME/.vim'
   let $vim_spell_path   = '$HOME/.vim/spell'
   let $nvim_folder_path = '$HOME/AppData/Local/nvim'
   let $nvim_spell_path  = '$HOME/AppData/Local/nvim/spell'
else " For Linux
   let $vim_folder_path  = '$HOME/.vim'
   let $vim_spell_path   = '$HOME/.vim/spell'
   let $nvim_folder_path = '$HOME/.config/nvim'
   let $nvim_spell_path  = '$HOME/.config/nvim/spell'
endif

" Select btw font styles
let g:font_style = 0

" Some systems do not support CTRL-SHIFT or ALT-SHIFT...
let g:ctrl_shift_enabled = 1

" Will turn off additional settings if set to 1,2,3.
let g:performance_mode = 0

" Enable autocorrect
if g:performance_mode >= 3
   let g:use_autocorrect = 0
else
   let g:use_autocorrect = 1
endif

" If set will not update highlighting as you scroll (improves performance and
" scroll speed). This is currently being set inside math.vim as the
" highlightings in that file adds a performance hit.
let g:do_not_update_highlighting_while_scrolling = 0

" Used to load large files faster by not loading vimrc settings.
" File is large from 1000mb.
" NOTE: Large files can slow down/reduce performance
let g:LargeFile = 1024 * 1024 * 1000

" Set the <leader> key to space
let mapleader="\<space>"

" This will list the name of the syntax group that is being applied under the
" cursor, and lets you debug which highlighting group is giving you issues!
let g:status_line_var = ''
function! UpdateStatusVar()
   let g:status_line_var=synIDattr(synID(line('.'),col('.'),1),'name') . ' ' . synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name')
endfunction

" NOTE: You can open multiple splits/tabs from terminal!!!
" gvim -o *.sv   split all files
" gvim -O *.sv   vertical split all files
" gvim -p *.sv   tabs all files

" NOTE: Link neovim to vim's .vimrc in linux!
" ln -s ~/.vimrc ~/.config/nvim/init.vim
" ln -s ~/.vim ~/.config/nvim/.vim
" ln -s ~/.vim/spell ~/.config/nvim/spell

" nvim/neovim on my linux is not able to copy selections to linux selection
" buffer even though I have clipboard utility installed and loaded...
" Below works to partially solve this problem when using the mouse:
if has('nvim') && !g:using_windows
   vnoremap <LeftRelease> "*ygv<esc>gv
endif


" NOTE: You can get a Claude API to work with gvim!!!
" See https://github.com/pasky/claude.vim for details.
" 1) Get API key from https://platform.claude.com
" 2) Download Claude plugin from:
" https://github.com/pasky/claude.vim
" and add to .vim/pack/pasky/start/claude.vim/
" 3) Add API key in g:claude_api_key
" let g:claude_api_key='add_api_key_here'
" or add to your .bash_aliases file:
" export API_KEY=add_api_key_here
let g:claude_api_key=expand("$API_KEY")
let g:claude_map_implement = "<Leader>ci"
let g:claude_map_open_chat = "<Leader>cc"
let g:claude_map_cancel_response = "<Leader>cx"
" (<C-]> here only affects Claude window, not tags jumping)
let g:claude_map_send_chat_message = "<C-]>"


"------------------------------------------------------------------------------
" Default settings
"------------------------------------------------------------------------------
function! DefaultSettings()
   let g:EnteredDefaultSetting = 1

   if has("gui_running")

      "------------------------------------------------------------------------
      " These options and commands set the font, the background
      " and the dimensions of the vim window.

      " Selects between windows and linux OS
      if g:using_windows
         if !has('nvim')
            set guifont=Consolas:h13.5:cANSI
         else " For neovim
            set guifont=Consolas:h13.5:cANSI
         endif
         set lines=46          " Height
         set columns=140       " Width

      else " For Linux
         " Select btw font styles
         if g:font_style == 0
            if !has('nvim')
               set guifont=Monospace\ 12
               " winpos 1000 0         " Open gvim in top right by default
            else " for neovim
               set guifont=Monospace:h12
               hi VertSplit guifg=white
            endif
            set lines=46          " Height
            set columns=130       " Width
            " set columns=120       " Width
         else
            if !has('nvim')
               set guifont=Monospace\ 20
               " winpos 1000 0         " Open gvim in top right by default
            else " For neovim
               set guifont=Monospace:h20
               hi VertSplit guifg=white
            endif
            set lines=30          " Height
            set columns=115       " Width
         endif
      endif

      " Set background color to black (grey5) and foreground to white (grey95).
      " See ~/.vim/highlightings.vim for other highlighting settings. Many
      " highlighting syntax matches are spread out in the various .vim files.
      if g:using_windows
         hi Normal             guifg=grey80      guibg=grey1
      else " For Linux
         hi Normal             guifg=grey80      guibg=grey5
      endif

      "------------------------------------------------------------------------
      " Set 'nocompatible' to ward off unexpected things that your distro might
      " have made, as well as sanely reset options when re-sourcing .vimrc.
      set nocompatible

      " Attempt to determine the type of a file based on its name and possibly
      " its contents.  Use this to allow intelligent auto-indenting for each
      " filetype, and for plugins that are filetype specific.
      " filetype indent plugin on

      " Enable default syntax highlighting
      " NOTE: I'm using my own highlighting settings so turning this off.
      " syntax on
      syntax off

      "------------------------------------------------------------------------
      " Allows you to switch from an unsaved buffer without saving it first.
      " Also allows you to keep an undo history for multiple files.
      " Vim will complain if you try to quit without saving, and swap files
      " will keep you safe if your computer crashes.
      set hidden

      " Better command-line completion when pressing tab to autocomplete.
      set wildmenu
      set wildmode=full,full

      " Show partial commands in the last line of the screen.
      set showcmd

      " Highlight searches.
      set hlsearch

      " Highlight searches as you type.
      set incsearch

      "------------------------------------------------------------------------
      " Use case insensitive search, except when using capital letters.
      set ignorecase
      set smartcase

      " Allow backspacing over autoindent, line breaks, and start of insert.
      " action.
      set backspace=indent,eol,start

      " When entering a new line and no filetype-specific indenting is enabled,
      " keep the same indentation as the line you're currently on.
      set autoindent
      " smartindent in Vim is an indentation option that provides automatic
      " indentation when starting a new line.
      " 'cindent' does something like this, works better in most cases, but is
      " more strict,  When 'cindent' is on or 'indentexpr' is set, setting
      " 'smartindent' has no effect. See |C-indenting|.
      " Normally 'autoindent' should also be on when using 'smartindent'.
      " An indent is automatically inserted:
      " - After a line ending in '{'.
      " - After a line starting with a keyword from 'cinwords'.
      " - Before a line starting with '}' (only with the "O" command).
      " When typing '}' as the first character in a new line, that line is
      " given the same indent as the matching '{'. When using the ">>" command,
      " lines starting with '#' are not shifted right.
      " WARNING: smartindent makes it so I can't use >> on lines that start
      " with # !!
      " set smartindent
      " Need to set this or I can't use >> on lines that start with # !!
      " but this also make vim indent c style with { parenthesis }.
      " See |C-indenting|.
      set cindent
      set cinkeys-=0#

      " Stop certain movements from going to the first character of a line.
      " While this behaviour deviates from that of Vi, it does what most users
      " coming from other editors would expect. It changes the default behavior
      " of various navigation commands to keep the cursor in the same column
      " rather than moving it to the first non-blank character of the
      " destination line.
      set nostartofline

      " Display the cursor position on the last line of the screen or in the
      " status line of a window.
      set ruler

      " Always display the status line (showing file name and path), even if
      " only one window is displayed.
      set laststatus=2
      " %n: buffer number, %f: file path, %t: file name only %h: help buffer
      " flag, %=: creates sections %m: modified flag," \ : add space, %p: line
      " percentage, %r: display if read only [RO], %v display column number,
      " %l: display line number, %L: display total line numbers.
      set statusline=%f%m%r
      set statusline+=\ \ \ %{g:status_line_var}
      " set statusline+=%=%p%%\ %l/%L:%v\ %t
      set statusline+=%=\ %l/%L:%v\ %p%%
      " The update time for cursor hold, used to upadte g:status_line_var,
      " and also sets the update time for the swap file, but i'm not using the
      " swap file...
      set updatetime=50

      " Instead of failing a command because of unsaved changes, instead raise
      " a dialogue asking if you wish to save changed files.
      set confirm

      " Use visual bell instead of beeping when doing something wrong.
      set visualbell

      " Enable use of the mouse for all modes.
      set mouse=a
      set mousemodel=popup

      " Yank/copy to clipboard like in windows.
      " set clipboard^=unnamedplus "append += does not word if an item has
      " exclude, but prepend ^= will work.
      set clipboard=unnamedplus

      " Hide mouse when typing - hidden by default.
      " set mousehide
      " set nomousehide

      " Set the command window height (where the commands such as / and : are
      " typed).
      set cmdheight=1

      " Display line numbers on the left.
      set number

      " lastline: When included, as much as possible of the last line
      " in a window will be displayed. When not included, a last line
      " that doesn't fit is replaced with "@" lines.
      set display+=lastline

      " If set, then line numbers above or below are numbered relatively to the
      " current line ...,3,2,1 for lines above and 1,2,3,... for lines below
      " instead of their actual line number.
      " set relativenumber

      " Quickly time out on keycodes, but never time out on mappings.
      set notimeout ttimeout ttimeoutlen=400

      " Use <F11> to toggle between 'paste' and 'nopaste'.
      " set pastetoggle=<F11>

      " If this is here, will not auto-comment by default.
      " set formatoptions-=cro  " Added further below.

      "------------------------------------------------------------------------
      " Use 3 spaces instead of tabs. Converts tab to spaces.
      set expandtab
      " Automatically indent after new line ex if inside function.
      set shiftwidth=3
      " How many spaces a tab is worth.
      set tabstop=3

      " Indents word-wrapped lines as much as the 'parent' line.
      set breakindent


      "------------------------------------------------------------------------
      "------------------------------------------------------------------------
      "------------------------------------------------------------------------

      " Turn on line-wrapping (text loops around if not enough space).
      set wrap
      " Vim will wrap lines at white spaces if possible.
      set linebreak

      " Automatically enter a new line after X characters (0 means never).
      set textwidth=0

      " In gvim, 'guioptions' controls whether various GUI widgets are shown.
      " Below means left/bottom scroll bar disabled, right scroll bar enabled.
      set guioptions+=LlRrb
      set guioptions-=LlRrb
      set guioptions+=r

      " Will highlight spelling mistakes in all file types if set
      " I set this in txt.vim as I don't want it enabled in most file types.
      " set nospell
      " set spell spelllang=en_us
      " Ignore uppercase of first word.
      " set spellcapcheck=

      " Prevents the cursor from going within the top or bottom x lines of the
      " screen and will readjust the screen to show a min of x lines below or
      " above the cursor.
      set scrolloff=2

      " Automatically reloads file if it was changed in another file.
      set autoread

      " Disable swap files (used to restore changes made to buffer in case of
      " crash and to avoid multiple instances of the file being open) (since I
      " save almost all the time, crashes do not affect me as much...).
      set noswapfile

      " Do not access the menu items with ALT anymore, ALT is also used to
      " access some specific characters such as è that is mapped to a-h. I also
      " map other ALT shortcuts below.
      set winaltkeys=no

      " Folding settings
      " set foldnestmax=10      " Deepest fold is 10 levels.
      " Enable folding to indentation level.
      " You can use commands such as za, zM, zm, zr, zR, zc to enable and
      " disable folds. You can toggle folding with za and you can fold
      " everything with zm/zM and unfold everything with zr/zR.
      set foldmethod=indent
      set foldignore=
      " Don't fold by default.
      set nofoldenable
      " set foldlevel=1

      " Change the width/size/length/cursor of a range of characters!
      " setcellwidths() - moved to unicode.vim.

      " Enable delcombine to remove combining characters (like U+0336 aka
      " strikethrough) on their own without deleting the underlying character.
      set delcombine

      " Add the abbreviation list to the thesaurus to look them up as you type
      " with <c-x><c-t>.
      set thesaurus+=$vim_folder_path/abbrevlist.vim

      " When this option is set, the screen will not be redrawn while executing
      " macros, registers and other commands that have not been typed. Speeds
      " up macros significantly!!!
      " WARNING: Messes with some mappings like ones that rely on the linux
      " selection buffer to copy and paste contents! But there are workarounds.
      set lazyredraw

      " Search down into subfolders when using the find command.
      " set path+=**
      " default path=.,/usr/include,, however /usr/include/ can take too long
      " to search and slow down autocompletion.
      set path=.,**
      " Then you can use :find file_name.txt and it will open the file, you can
      " even tab and it will complete the name and cycle through all matches
      " even if in different folders.
      " :find file_ (tab) (finds files and folders.)
      " :find test_*.* (tab) (also works, finds just files no folders.)
      " :find *word*.* (tab) (finds file with the word in it)

      " Autocomplete lists that will be used when typing <c-n> in insert mode.
      " .: Scan the current buffer.
      " w: Scan buffers in other windows.
      " b: Scan loaded buffers from the buffer list.
      " u: Scan unloaded buffers that are in the buffer list.
      " t: Scan tag files (requires generating a tags file with ctags).
      " i: Scan the current and included files (uses your path and include
      "    settings).
      " set complete=.,w,b,u,t,i     " Default
      " s: Scan the thesaurus (I added all my abbreviations in there!).
      " k: Scan dictionary files. (adds too many entries, so keeping this
      "    separate) (see autocomplete mappings further below).
      set complete=.,w,b,u,t,i,s
      " Use the autocomplete menu even if there is only one match.
      set completeopt+=menuone

      " netrw file browser (can be opened with :E).
      " Disable banner
      let g:netrw_banner=0
      " Tree view (expands/collapses folder in same window).
      let g:netrw_liststyle=3

      " ctags in a terminal will create a tags file for current folder and all
      " it's subfolders.
      "    ctags -R .
      " c-]  To jump to tag under the cursor! (jumps to the definition of the
      "      function even if in a different file!).
      " gc-] For ambiguous tags (select btw multiple tags with the same name).
      " c-t  To jump up the tag stack.

   endif " has("gui_running")


   "---------------------------------------------------------------------------
   " remap vs noremap
   "---------------------------------------------------------------------------
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
   " You can even create infinite recursive mapping if you map to the same key!
   "
   " Always use noremap!
   "---------------------------------------------------------------------------

   "if has("gui_running")

      "------------------------------------------------------------------------
      " Make vim similar to windows (save, copy, paste, select, ...)
      "------------------------------------------------------------------------

      " Update jump list with m' on cut, copy and paste (you can use <c-o>
      " and <c-i> to jump to past locations). NOTE: gvim requires an extra
      " <c-o> to do the first jump but neovim does not seem to require it...
      if g:using_windows
         " <c-c> to copy and <c-x> to paste using "set clipboard".
         nnoremap yy m'V"+y$
         vnoremap y "+ym'
         nnoremap p "+gp<a-bs>m'
         vnoremap p "+gpgv"+yy<esc>m'
         nnoremap d m'd
         vnoremap d dm'
         vnoremap <s-p> p
         " Copy entire word.
         nnoremap <c-y> viw"+y
         " Paste over entire word.
         nnoremap <c-p> viw"+gpgv"+y
         if g:ctrl_shift_enabled
            " Paste after last char in line.
            nnoremap <c-s-p> $pm'
         endif
      else " For Linux
         nnoremap y m'y
         vnoremap y ym'
         nnoremap p pm'
         vnoremap p pgvym'
         nnoremap d m'd
         vnoremap d dm'
         vnoremap <s-p> p
         " Copy entire word.
         nnoremap <c-y> viwy
         " Paste over entire word.
         nnoremap <c-p> viwpgvy
         if g:ctrl_shift_enabled
            " Paste after last char in line.
            nnoremap <c-s-p> $pm'
         endif
      endif

      " Paste last selected without using mouse.
      cnoremap <a-p>   <middlemouse>
      nnoremap <a-p>   a<middlemouse><esc>

      " Select all in file.
      nnoremap <a-a> GVgg
      vnoremap <a-a> <esc>GVgg

      " Use CTRL-S for saving, also in Insert mode.
      nnoremap <c-s> :update<cr>
      vnoremap <c-s> <esc>:update<cr>
      " gi goes to last insertion, <c-g>u updates last undo checkpoint.
      inoremap <c-s> <esc>:update<cr>gi<c-g>u

      " Map backspace to delete like in windows.
      nnoremap <bs> i<bs><right><esc>
      vnoremap <bs> <del>
      nnoremap <del> i<del><right><esc>

      " Added <c-z> to clear/reset an ongoing abbreviation.
      inoremap <c-z> <bs><esc>gi

      " Set and unset line wrap.
      nnoremap <silent><a-q> :set wrap!<cr>

      " Will pop up a menu if mousemodel=popup.
      nnoremap <leader>z <rightmouse>

   " endif " has("gui_running")

   " if has("gui_running")
      "------------------------------------------------------------------------
      " Tab, enter, whitespace mappings
      "------------------------------------------------------------------------

      " Insert newline with enter without entering insert mode.
      noremap <cr> o<esc>
      noremap <s-cr> O<esc>
      inoremap <s-cr> <cr><esc>i
      inoremap <c-cr> <esc>o

      " WARNING: c-i and tab get the same mapping.
      " WARNING: In normal mode, c-i and c-o jump user through their jump list.
      "          In insert mode, c-i and tab inserts tabs.
      " Map tab and space bar.
      nnoremap <leader><space> i<space>

      " NOTE: Make tab and space work the same for visual and block visual
      "       mode, let it shift all lines equally.
      if g:using_windows
         vnoremap <expr> <tab> mode() ==# "v" ? "<c-v><s-i><tab><esc>gv" : "<s-i><tab><esc>gv"
      else " For Linux
         vnoremap <expr> <tab> mode() ==# "v" ? "<c-v><s-i><tab>" : "<s-i><tab>"
      endif
      vnoremap <expr> <leader><space> mode() ==# "v" ? "<c-v><s-i><space>" : "<s-i><space>"

      " Update >> << in visual mode to reselect last selection after shifting.
      vnoremap >> >><esc>gv
      vnoremap << <<<esc>gv

      " <c-g>u updates the last undo checkpoint, so that a long block of text
      " gets split up into smaller undo pieces.
      inoremap <cr> <c-g>u<cr>
      inoremap . .<c-g>u
      inoremap ! !<c-g>u
      inoremap ? ?<c-g>u

   "endif " has("gui_running")

   "if has("gui_running")
      "------------------------------------------------------------------------
      " Movement related mappings
      "------------------------------------------------------------------------

      " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
      if g:keyboard_layout == "colemak-dh"
         " Remap hjkl to something more intuitive in colemak-dh layouts.
         noremap e k
         noremap j b
         noremap , j
         noremap k .
         noremap . l

         " Word movement mappings.
         noremap b f
         noremap f e
         noremap l ge

         noremap <s-j> <s-b>
         noremap <s-b> <s-f>
         noremap <s-f> <s-e>
         noremap <s-l> g<s-e>

         " gj and gk are used to not skip over wrapped lines.
         noremap g, gj
         noremap ge gk

         " NOTE: s-k loads manual --> can use terminal man command instead.
         " noremap <s-e> <s-k>
         " Use <s-e> for insert after comment as it is next to <s-i>.
         nnoremap <expr> <s-e>   b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wi" :
                               \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wi" : "<s-k>"
         if g:ctrl_shift_enabled
            " Map to tab after comment! Can mess with <c-i> or <tab>.
            nnoremap <expr> <c-s-i><c-s-i> b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wi   <esc><c-o>lll" :
                                         \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wi   <esc><c-o>lll" : "<s-k>"
            " Map to remove tab after comment!
            nnoremap <expr> <c-s-e><c-s-e> b:comment_leader == "//" ? "$?\/\/?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == "--" ? "$?--?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == "\"" ? "$?\"?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == "#"  ? "$?#?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == "%"  ? "$?%?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == ">"  ? "$?>?e<cr>:noh<cr>wXXX<c-o>" :
                                         \ b:comment_leader == ";"  ? "$?;?e<cr>:noh<cr>wXXX<c-o>" : "<s-k>"
         endif
      else " For qwerty

         " noremap l ge
         " noremap <s-l> g<s-e>
         " nnoremap <expr> <s-e>
         " nnoremap <expr> <c-s-i><c-s-i>
         " nnoremap <expr> <c-s-e><c-s-e>
      endif

      if g:keyboard_layout == "colemak-dh"
         " Add insert mode word jumps.
         inoremap <c-w> <esc>lwi
         inoremap <c-f> <esc>ea
         inoremap <c-j> <esc>bi
         inoremap <c-l> <esc>gea

         " Add insert mode hjkl movements.
         inoremap <c-h> <esc>i
         inoremap <c-e> <esc>gka
         inoremap <c-,> <esc>gja
         inoremap <c-.> <esc>la

         if g:ctrl_shift_enabled
            " Move page up by 1 line.
            noremap <c-s-l> <c-e>
            " <c-s-y> moves page dn by 1 line.
         endif
      else " For qwerty

         " Add insert mode word jumps.
         inoremap <c-w> <esc>lwi
         inoremap <c-e> <esc>ea
         inoremap <c-b> <esc>bi
         " inoremap <c-l> <esc>gea

         " Add insert mode hjkl movements.
         inoremap <c-h> <esc>i
         inoremap <c-k> <esc>gka
         inoremap <c-j> <esc>gja
         inoremap <c-l> <esc>la
      endif

      " Add insert mode A I movements c-a c-i.
      noremap <c-a> <esc><s-a>
      " WARNING: "inoremap <c-i>" Messes up tabs as <c-i> is mapped to tab!!!
      inoremap <c-0> <esc>0i
      inoremap <c-9> <esc>_i

      if g:keyboard_layout == "colemak-dh"
         " Center cursor after pg up/dn/pageup/pagedown/pagedn.
         nnoremap <a-f> <pageup><s-m>
         vnoremap <a-f> <pageup><s-m>
         nnoremap <c-f> <c-u>
         vnoremap <c-f> <c-u>
         nnoremap <a-c> <pagedown><s-m>
         vnoremap <a-c> <pagedown><s-m>
         nnoremap <c-c> <c-d>
         vnoremap <c-c> <c-d>
         " c-c was used to interrupt current command.
         vnoremap <a-x> <c-c>
         vnoremap <a-z> <c-c>
      else " For qwerty

      endif

      " Uppercase / capitalize / lowercase case of word.
      nnoremap <c-u> viwU
      nnoremap <c-l> viwu

      " Toggle / uppercase / capitalize / lowercase word under cursor.
      nnoremap <c-`> viw~

      " Delete word in i mode.
      inoremap <c-d> <c-w>
      if g:ctrl_shift_enabled
         " Delete WORD in i mode <c-v>.
         inoremap <c-s-d> <esc><space>gediWi<bs>
      endif
      " Delete word in n mode.
      inoremap <a-d> daw
      " Delete WORD in n mode.
      nnoremap <a-s-d> daW

      " Delete tab at start of line, (<c-t> inserts tab at start of line).
      inoremap <c-g> <c-d>

      " Map c-d to delete line contents while keeping empty line.
      nnoremap <c-d> 0D

      " Append next line to end of current line.
      " See help :join   - J without g will insert up to 2 spaces (variable).
      nnoremap <a-j> j0i<space><esc>kg<s-j>
      vnoremap <a-j> <s-j>
      if g:ctrl_shift_enabled
         nnoremap <a-s-j> g<s-j>
         vnoremap <a-s-j> g<s-j>
      endif

      " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
      if g:keyboard_layout == "colemak-dh"
         " Move text up and down.
         nnoremap <a-,> :m .+1<cr>==
         vnoremap <a-,> :m '>+1<cr>gv=gv
         nnoremap <a-e> :m .-2<cr>==
         vnoremap <a-e> :m '<-2<cr>gv=gv
      else " For qwerty
         " Move text up and down.
         nnoremap <a-,> :m .+1<cr>==
         vnoremap <a-,> :m '>+1<cr>gv=gv
         nnoremap <a-k> :m .-2<cr>==
         vnoremap <a-k> :m '<-2<cr>gv=gv
      endif

   "endif " has("gui_running")

   " if has("gui_running")
      "------------------------------------------------------------------------
      " Autocorrect related mappings
      "------------------------------------------------------------------------

      " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
      if g:keyboard_layout == "colemak-dh"
         " Go to next/prev spell error.
         nnoremap gH [s
         nnoremap g> ]s

         " Fix next/prev spell error.
         noremap gh [sz=1<cr><cr>
         noremap g. ]sz=1<cr><cr>

         " Add next/prev spell error to dictionary.
         noremap zh [szg
         noremap z. ]szg
      else " For qwerty
         " Go to next/prev spell error.
         nnoremap gH [s
         nnoremap gL ]s

         " Fix next/prev spell error.
         noremap gh [sz=1<cr><cr>
         noremap gl ]sz=1<cr><cr>

         " Add next/prev spell error to dictionary.
         noremap zl [szg
         noremap zh ]szg
      endif

      " Autocorrect word to first match.
      nnoremap gz z=1<cr><cr>

      " Shortcut for dictionary autocomplete.
      inoremap <a-d> <c-x><c-k>
      " Shortcut for spelling correction autocomplete.
      inoremap <a-s> <c-x><c-s>
      " Shortcut for whole line autocomplete.
      inoremap <a-l> <c-x><c-l>
      " Cycle through autocomplete list with both ALT and CTRL.
      inoremap <a-p> <c-p>
      inoremap <a-n> <c-n>
      " Exit autocomplete menu and revert to original text.
      inoremap <c-;> <c-e>
      inoremap <a-;> <c-e>
      " Select current autocomplete suggestion.
      inoremap <c-space> <c-y>

      "------------------------------------------------------------------------
      " Search related mappings
      "------------------------------------------------------------------------

      " Recenter window after search.
      nnoremap n nzz
      nnoremap N Nzz

      " Search for item under cursor with mouse.
      " "*y will add selection to the linux selection buffer (needed here
      "     because I have lazyredraw set).
      " NOTE: On Linux, the "*y command yanks text to the selection register
      "       (for middle-click paste), while the "+y command yanks text to the
      "       clipboard register (for standard CTRL+V paste).
      nnoremap <c-leftmouse>  <leftmouse>viw"*y<esc>k$/<middlemouse><cr>
      nnoremap <c-rightmouse> <leftmouse>viw"*y<esc>k$/\<<middlemouse>\><cr>
      nnoremap <s-leftmouse>  <leftmouse>viw"*y<esc>k$/\V\c<middlemouse><cr>
      nnoremap <s-rightmouse> <leftmouse>viw"*y<esc>k$/\V\c\<<middlemouse>\><cr>

      vnoremap <c-leftmouse>  <esc><leftmouse>viw"*y<esc>k$/<middlemouse><cr>
      vnoremap <c-rightmouse> <esc><leftmouse>viw"*y<esc>k$/\<<middlemouse>\><cr>
      vnoremap <s-leftmouse>  <esc><leftmouse>viw"*y<esc>k$/\V\c<middlemouse><cr>
      vnoremap <s-rightmouse> <esc><leftmouse>viw"*y<esc>/\<<middlemouse>\><cr>

      " Invert the lazyredraw setting.
      nnoremap <leader>@ :set invlazyredraw<cr>:echo "lazyredraw ="&lazyredraw<cr>
      nnoremap <leader>2 :set invlazyredraw<cr>:echo "lazyredraw ="&lazyredraw<cr>

      " `< will go to the start of the previous visual selection.
      " /<up> will start search then pick previous search.
      " <a-backspace> will go to previous char even if on previous line.
      if g:using_windows
         " Search for characters being selected (same as <c-/>).
         vnoremap / "+y<esc>`<<a-backspace>/\V\c<middlemouse><cr>

         " Search for characters being selected.
         vnoremap <c-/> "+y<esc>`<<a-backspace>/\V\c<middlemouse><cr>
         vnoremap <c-8> "+y<esc>`<<a-backspace>/\<<middlemouse>\><cr>

         " Add another word to the existing search!
         vnoremap ? "+y<esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         vnoremap * "+y<esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

         " Search for word under the cursor.
         nnoremap <c-/> viw"+y<a-backspace>/\V\c<middlemouse><cr>
         nnoremap <c-8> viw"+y<a-backspace>/\<<middlemouse>\><cr>

         " Add another word to the existing search!
         " NOTE: "?" was used to search backwards but I can just use <s-n>.
         nnoremap ? viw"+y<esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         nnoremap * viw"+y<esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

      else " For Linux
         " Search for characters being selected.
         vnoremap /     <esc>`<<a-backspace>/\V\c<middlemouse><cr>
         vnoremap <c-/> <esc>`<<a-backspace>/\V\c<middlemouse><cr>
         vnoremap <c-8> <esc>`<<a-backspace>/\<<middlemouse>\><cr>

         " Add another word to the existing search!
         vnoremap ? <esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
         vnoremap * <esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

         " Search for word under the cursor.
         nnoremap <c-/> viw"*y<a-backspace>/\V\c<middlemouse><cr>
         nnoremap <c-8> viw"*y<a-backspace>/\<<middlemouse>\><cr>

         " Add another word to the existing search!
         " NOTE: "?" was used to search backwards but I can just use <s-n>.
         nnoremap ? viw"*y`<<a-backspace>/<up>\\|<middlemouse><cr>
         nnoremap * viw"*y`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>
      endif

      " Search in multiple split-windows. Type m to continue the search in
      " next file. NOTE" \<lt> maps to <
      nnoremap <silent> m :exe (search(@/, 'nW') == 0 ?  "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_Gn" : "normal! nzz")<cr>
      nnoremap <silent> M :exe (search(@/, 'bnW') == 0 ?  "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_gg$N" : "normal! Nzz")<cr>
      " Remap ALT-m to marks instead of m that got overridden above.
      nnoremap <a-m> m


      " Search and replace.
      " NOTE: gc will ask for confirmation after each replace.
      "       % starts from top of the file.
      "       c.,$ to start from current line to end of file.
      "       |1,''-&& to repeat from first line to cursor line minus one.
      " NOTE: <c-r><c-w> can be used in the command-line mode to insert the
      "       word currently under the cursor.
      " Replace next word.
      nnoremap <leader>rn :.,$s/\C<c-r><c-w>/<c-r><c-w><space><bs>/gc\|1,''-&&
      vnoremap <leader>rn :<bs><bs><bs><bs><bs>.,$s/\C<middlemouse>/<middlemouse>/gc\|1,''-&&
      " Replace next word exact match.
      nnoremap <leader>re :.,$s/\C\<<c-r><c-w>\>/<c-r><c-w><space><bs>/gc\|1,''-&&
      vnoremap <leader>re :<bs><bs><bs><bs><bs>.,$s/\C\<<middlemouse>\>/<middlemouse>/gc\|1,''-&&
      " Replace ALL words.
      nnoremap <leader>ra m':%s/\C<c-r><c-w>/<c-r><c-w>/g<left><left><space><bs>
      vnoremap <leader>ra <esc>m'gv:<bs><bs><bs><bs><bs>%s/\C<middlemouse>/<middlemouse>/g<left><left><space><bs>
      " Replace ALL words exact match.
      nnoremap <leader>rr m':%s/\C\<<c-r><c-w>\>/<c-r><c-w>/g<left><left><space><bs>
      vnoremap <leader>rr <esc>m'gv:<bs><bs><bs><bs><bs>%s/\C\<<middlemouse>\>/<middlemouse>/g<left><left><space><bs>


      " Replace all c style multi-line comments with single-line comments.
      noremap <leader>r/ m':%s/\/\*/\/\//g<cr>:%s/ *\*\///g<cr>:noh<cr><c-o>c-o>


      " Search for CamelCase.
      nnoremap <leader>sC /\(\<\u\l\+\\|\l\+\)\(\u\)<cr>
      " Convert each NameLikeThis to name_like_this in current line.
      nnoremap <leader>rc1 :s#\(\<\u\l\+\\|\l\+\)\(\u\)#\l\1_\l\2#g<cr>
      " Convert each NameLikeThis to name_like_this in current file.
      nnoremap <leader>rc_ m':%s#\(\<\u\l\+\\|\l\+\)\(\u\)#\l\1_\l\2#g<cr>:noh<cr><c-o>
      " Convert each name_like_this to NameLikeThis in current line.
      nnoremap <leader>r_1 :s#\(\%(\<\l\+\)\%(_\)\@=\)\\|_\(\l\)#\u\1\2#g<cr>
      " Convert each name_like_this to NameLikeThis in current file.
      nnoremap <leader>r_c m':%s#\(\%(\<\l\+\)\%(_\)\@=\)\\|_\(\l\)#\u\1\2#g<cr>:noh<cr><c-o>


      " Clear search highlighting.
      nnoremap <c-n> :noh<cr>


      "------------------------------------------------------------------------
      " Switching/recentering window positioning mappings.
      "------------------------------------------------------------------------

      " Faster map to quit all files in window.
      noremap ZZ :qa<cr>

      " Center window after quitting.
      noremap ZA :q<cr><c-w><bar><c-w>_

      " Max out both height and width of split screen.
      nnoremap <c-w>/ <c-w><bar><c-w>_
      nnoremap <c-w>\ <c-w><bar><c-w>_

      " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
      if g:keyboard_layout == "colemak-dh"
         " Move btw split screens.
         nnoremap <c-,> <c-w>j<c-w><bar><c-w>_zz
         nnoremap <c-e> <c-w>k<c-w><bar><c-w>_zz
         " NOTE" \<lt> maps to <
         nnoremap <silent> <c-.> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
         nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      else " For qwerty
         " Move btw split screens.
         nnoremap <c-j> <c-w>j<c-w><bar><c-w>_zz
         nnoremap <c-k> <c-w>k<c-w><bar><c-w>_zz
         " NOTE" \<lt> maps to <
         nnoremap <silent> <c-l> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
         nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      endif

      if g:font_style == 0
         " Move window left.
         if g:keyboard_layout == "colemak-dh"
            nnoremap <a-l> :winpos 590 0<cr>
         else
            nnoremap <a-.> :winpos 590 0<cr>
         endif
         " Move window center.
         nnoremap <a-u> :winpos 340 0<cr>
         " Move window right.
         nnoremap <a-h> :winpos 0 0<cr>
      else
         " Move window left.
         if g:keyboard_layout == "colemak-dh"
            nnoremap <a-.> :winpos 50 0<cr>
         else
            nnoremap <a-l> :winpos 50 0<cr>
         endif
         " Move window center.
         nnoremap <a-u> :winpos 25 0<cr>
         " Move window right.
         nnoremap <a-h> :winpos 0 0<cr>
      endif

      " Full-size window current split.
      nnoremap <c-space> <c-w><bar><c-w>_zz


      " File tabs shortcuts.
      nnoremap <leader>t<cr> :tabnew<cr>
      nnoremap <leader>t<Space> :tabnew
      nnoremap <leader>tf  :tabfirst<cr>
      nnoremap <leader>tn  :tabnext<cr>
      nnoremap <leader>tp  :tabprev<cr>
      nnoremap <leader>tl  :tablast<cr>
      nnoremap <leader>tq  :tabclose<cr>


      " Map a-o to insert new line at the beginning of the next line.
      nnoremap <a-o> o<esc>i
      inoremap <a-o> <cr><esc>i
      nnoremap <a-cr> <cr>
      inoremap <a-cr> <cr><esc>i

      " Zoom in/out.
      noremap <c-middlemouse> :LargerFont<cr>
      noremap <s-middlemouse> :SmallerFont<cr>
      noremap Zi :LargerFont<cr>
      noremap Zo :SmallerFont<cr>

      " Maps CTRL-middlemouse to zoom in and SHIFT-middlemouse to zoom out.
      function! AdjustFontSize(amount)
         let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
         let s:minfontsize = 6
         let s:maxfontsize = 20
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

      "------------------------------------------------------------------------
      " Useful scripts mappings
      "------------------------------------------------------------------------

      " Commenting blocks of code.
      " <c-b> moves to the beginning of the line in command line mode.
      " <c-e> moves to the end       of the line in command line mode.
      " <c-r> This is the insert mode command to insert the contents of a
      "       register.
      " =     This specifies the expression register.
      " _o_   in visual mode will start from first non white space on first and
      "       last line.
      vnoremap <expr> <silent> gc mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> <esc>"
      vnoremap <expr> <silent> gd mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_second<cr> <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_second<cr> <esc>" : "_o_<s-i><c-r>=b:comment_second<cr> <esc>"
      vnoremap <expr> <silent> gu mode() ==# "v" ? "<c-v>_o_f <del>" : mode() ==# "V" ? "<c-v>_o_f <del>" : "_o_f <del>"
      " Puts comment just before first non-whitespace.
      nnoremap <expr> <silent> gc "_i<c-r>=b:comment_leader<cr> <esc>"
      nnoremap <expr> <silent> gd "_i<c-r>=b:comment_second<cr> <esc>"
      nnoremap <expr> <silent> gu "_vf <del>"

      " Adds the comment ~~ (similar to //) that will highlight the line as a
      " gray strikethrough if strikethrough.vim is loaded. Also works on ranges
      " in the same line by adding a second pair of ~~.
      nnoremap gr _i~~ <esc>
      vnoremap gr <esc>`<i~~<esc>`>lla~~<esc>
      " Remove 2 sets of ~~ starting from current line.
      nnoremap <leader>gu 0/\~\~<cr>xxnxx:noh<cr>

      " Load help for word under cursor.
      " <c-r><c-w> pastes word under cursor into command line!
      nnoremap <leader>fh :help <c-r><c-w><cr><c-w>_:syntax clear AllPreErr1<cr>:setlocal nospell<cr>

      " NOTE: Execute commands on all selected lines in <c-v> visual mode.
      if g:keyboard_layout == "colemak-dh"
         vnoremap <leader>fv :norm<space>ffa
      else " For qwerty
         vnoremap <leader>fv :norm<space>bba
      endif

      " m' will update the jump list with the current line.
      " <c-o> will jump back through the jump list. The first jump will jump
      "       to the current line where we set the last jump list. The last 2
      "       <c-o> jumps will jump back to before the search and replaces to
      "       the first jump list that we set, aka will jump back to the
      "       initial line.
      " :%s/search_term/replace_term/g means search and replace all lines.
      " g means substitute all matches.
      " % matches entire file.
      " \< matches start of a word.
      " . matches the first char of a word (replaced with [a-z]).
      " \u tells vim to uppercase the following character in the substitution
      "    string (&).
      " & means substitute whatever was matched on the left hand side.
      " \(A\|B\) means match a group of alternatives, aka match A or B.
      " ^ after a newline.
      " [-"' ]* means 0 or more minus signs or spaces after the new line.
      " /\\ means 0 or more \ after the new line.
      " [.?!] \+ means after a terminal punctuation and one or more spaces.
      " [a-z]\ze[a-z]   \ze means lookahead.
      " \U uppercase following string.
      " & with sed means use the match found.
      " <cr> just means press enter, aka execute previous command.
      " :noh will dehighlight any searches.

      " Capitalize all words after every ending punctuation and every new line
      " in the file.
      nnoremap <leader>fc m':%s/\(^[-"' /\\]*\\|[.?!] \+\)[a-z]\ze[a-z]/\U&/ge<cr>:%s/\(^[-"' /\\]*\\|[.?!] \+\)a\ze [a-z][a-z]/\U&/ge<cr>:%s/^[ 0123456789()-]*[a-z]\ze[a-z]/\U&/ge<cr>:noh<cr><c-o><c-o>

      " Capitalize first letter of every Word on the current line.
      nnoremap <leader>fu :s/\<[a-z]/\u&/g<cr>
      " Capitalize first letter of every Word on every line in the file.
      nnoremap <leader>fU m':%s/\<[a-z]/\u&/g<cr>:noh<cr><c-o>


      " gvim remove extra spacing - Remove unwanted white space.
      nnoremap <leader>f<space> m':%s/\s\+$//e<cr>:noh<cr><c-o>
      " Replace all tabs with spaces according to tabstop setting.
      nnoremap <leader>f<tab> :retab<cr>
      " Every space gets it's own column in gvim (visual mode).
      "  -o ' ' : tells column to use a single space (instead of the default 2)
      " since :!command calls external command, you can get more info with man.
      vnoremap <leader>f<space> :%!column -t -o ' '<cr>
      " Every tab (but not space) gets it's own column in gvim (visual mode).
      vnoremap <leader>f<tab> :%!column -t -s $'	'<cr>


      " Sort selected lines.
      vnoremap <leader>fs  :%!sort<cr>
      " Sort all lines in the file.
      nnoremap <leader>fs  :%sort<cr>
      " Sort and unique selected lines.
      vnoremap <leader>fS :%!sort\|uniq<cr>
      " Sort and unique all lines in the file.
      nnoremap <leader>fS :%sort u<cr>


      " Re-source .vimrc file without reloading file, then update all windows.
      " NOTE: If there are too many files in the buffer, you might need to
      "       press space to continue applying the script to the remaining
      "       files, otherwise they will have all white text with no syntax.
      nnoremap <a-g> :unlet g:EnteredDefaultSetting<cr>:unlet g:EnteredSmallFile<cr>:so $MYVIMRC<cr>:windo e<cr>


      " NOTE: Execute shell script on current/selected line and print/replace
      "       over the lines.
      noremap <leader>fp :.!sh<cr>
      " NOTE: Execute shell script on current/selected line and print inside
      "       the vim output.
      noremap <leader>fl :.w !sh<cr>
      " For example, have this on it's own line: echo $(( 1 + 200 / 2))


      " Add { } in c files if they are missing.
      nnoremap <leader>{ 0f(%a {<esc>jo}<esc>
      " Else and do don't have ( ) parenthesis, so use a different method.
      nnoremap <leader>} 0/else\\|do<cr>ea {<esc>jo}<esc>:noh<cr>


      " List of buffers.
      nnoremap <leader>lb :buffers<cr>
      " List all files sources during init.
      nnoremap <leader>ls :scriptnames<cr>
      " List all current registers.
      nnoremap <leader>lr :reg<cr>
      " List path name.
      nnoremap <leader>lp :pwd<cr>
      " List file info.
      nnoremap <leader>li g<c-g>

      " Print file name.
      nnoremap <leader>pf "%p
      " Print full file path and name.
      nnoremap <leader>pp ipwd<esc>:.!sh<cr>$a/<esc>"%p
      " Print all file/folder names in current path.
      nnoremap <leader>pl :read !ls<cr>
      " Print registers.
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

      " Print and edit a previous recording!!
      " VINOTE: This also means you can save common macros in a file and load
      "         it whenever needed!!
      " Print the recorded register (s in this example).
      nnoremap <leader>pq :put s
      " Yank to the recorded register (s in this example) (use after editing
      " the printed recording).
      nnoremap <leader>yq :yank s


      " Jump to % of file.
      nnoremap <leader>j1 16%
      nnoremap <leader>j2 33%
      nnoremap <leader>j3 50%
      nnoremap <leader>j4 67%
      nnoremap <leader>j5 83%

      " Enable disable spell checking.
      nnoremap <leader>sc  :so ~/.vim/spell.vim<cr>
      " nnoremap <leader>sc  :so ~/.vim/spell.vim<cr>
      nnoremap <leader>nsc :setlocal nospell<cr>


      " Fix window after opening a split screen.
      nnoremap <leader>sp  :sp<cr><c-w><bar><c-w>_
      nnoremap <leader>usp :sp<cr><c-w><bar><c-w>_
      nnoremap <leader>vsp :vsp<cr><c-w><bar><c-w>_
      nnoremap <leader>lsp :vsp<cr><c-w><bar><c-w>_
      " Opposite of sp and vsp.
      nnoremap <leader>sb  :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
      nnoremap <leader>sd  :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
      nnoremap <leader>vsr :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
      nnoremap <leader>vsd :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
      nnoremap <leader>rsp :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
      " topleft botright
      nnoremap <leader>tsp :topleft<space>split<cr><c-w><bar><c-w>_
      nnoremap <leader>bsp :botright<space>split<cr><c-w><bar><c-w>_
      " Full right and full left (should never be used...).
      " nnoremap <leader>lsp :topleft<space>vnew<cr><c-w><bar><c-w>_
      " nnoremap <leader>rsp :botright<space>vnew<cr><c-w><bar><c-w>_
      " close window and fix split screens
      nnoremap <leader>q   :q<cr><c-w><bar><c-w>_
      nnoremap <leader>wq  :wq<cr><c-w><bar><c-w>_

      " Determine if mode is visual !normal/insert.
      function! s:is_visualmode()
         let mode = mode()
         if (mode == 'v' || mode == 'V' || mode == 'CTRL-V')
            return 1
         endif
         return 0
      endfun

      " :helpgrep Eatchar
      "------------------------------------------------------------------------
      " Use to consume the space typed after an abbreviation:
      " Add  <c-r>=Eatchar('\s')<cr>  at end of abbreviation.
      if !exists("g:eatcharloaded")
         let g:eatcharloaded=1
         function Eatchar(pat)
            let c = nr2char(getchar(0))
            return (c =~ a:pat) ? '' : c
         endfun
      endif
      "------------------------------------------------------------------------

   " endif " has("gui_running")

   " --------------------------------------------------------------------------
   " Some non GUI settings
   " --------------------------------------------------------------------------
   if !has("gui_running")
      " Changes cursor shape in visual/insert mode.
      let &t_SI = "\e[6 q"
      let &t_SR = "\e[4 q"
      let &t_EI = "\e[2 q"
      " Quickly time out on keycodes, but never time out on mappings.
      set notimeout ttimeout ttimeoutlen=100
   endif " has("gui_running")

   " --------------------------------------------------------------------------
   " Load autocorrect files
   " --------------------------------------------------------------------------
   if !exists("g:AutocorrectLoaded") && g:use_autocorrect
      " echo "autocorrect"
      let g:AutocorrectLoaded=1
      if filereadable(expand($vim_folder_path . "/autocorrect/autocorrect3.vim"))
         so $vim_folder_path/autocorrect/autocorrect3.vim
      endif
      if filereadable(expand($vim_folder_path . "/autocorrect/wordlist.vim"))
         so $vim_folder_path/autocorrect/wordlist.vim
      endif
   endif

   " --------------------------------------------------------------------------
   " Colors and Syntax Highlighting
   " --------------------------------------------------------------------------
   if has("gui_running")

      augroup syntax

         " If you want to clear a group, use autocmd!/au! inside the group.
         au!

         " If this is here, will not auto-comment by default.
         au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


         " Manually set the comment_leader for file types.
         au BufNewFile,BufRead *.sh,*.csh,.bash*,.cshrc*,*.ps1      let b:comment_leader = '#'
         au BufNewFile,BufRead *.py,*.python,*.pl,*.pm,*.perl,*.tcl let b:comment_leader = '#'
         au BufNewFile,BufRead *.conf,*.fstab,*.do,hosts            let b:comment_leader = '#'
         au BufNewFile,BufRead *.objdump,*.asm,*.masm,*.s,*.ini     let b:comment_leader = '#'
         au BufNewFile,BufRead plusargs,hierarchy,.aliases          let b:comment_leader = '#'
         au BufNewFile,BufRead *.vh,*.v,*.sv,*.svh,*.json,          let b:comment_leader = '//'
         au BufNewFile,BufRead *.c,*.cpp,*.h,*.hpp,*.java,*.scala   let b:comment_leader = '//'
         au BufNewFile,BufRead *.txt                                let b:comment_leader = '//'
         au BufNewFile,BufRead *.tex                                let b:comment_leader = '%'
         au BufNewFile,BufRead *.mail                               let b:comment_leader = '>'
         au BufNewFile,BufRead *.vim,*.vimrc*                       let b:comment_leader = '"'
         au BufNewFile,BufRead *.vhdl,*lean.txt,*.lean,*.lua        let b:comment_leader = '--'
         au BufNewFile,BufRead *.A51,*.el,*.ahk                     let b:comment_leader = ';'


         " Manually set the comment_second.
         au BufNewFile,BufRead *lean.txt,*.lean                     let b:comment_second = '//'

         " Enable spellchecking in specific file extensions.
         if g:performance_mode <= 1
            au BufNewFile,BufRead *.txt,tutorial.* so $vim_folder_path/spell.vim
         endif

         " Load rainbow parenthesis functions.
         au BufNewFile,BufRead * so  $vim_folder_path/rainbow_parenthesis.vim

         "=====================================================================
         "===================== Source syntax files ===========================
         "=====================================================================

         if g:performance_mode <= 3

            " NOTE: THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES BEFORE THE
            "       RESPECTIVE FILE SETTINGS ARE APPLIED!!!
            au BufNewFile,BufRead * so $vim_folder_path/all_pre.vim

            " Moved all highlighting setting into it's own file.
            au BufNewFile,BufRead * so  $vim_folder_path/highlightings.vim

            " This file will color the highlighting groups names to the colors
            " that they are mapped to.
            au BufNewFile,BufRead *.vim so  $vim_folder_path/colors.vim

            " Add custom syntax for linux commands.
            au BufNewFile,BufRead .bash*,*.sh,.cshrc*,*.csh,.aliases,*.ps1 so $vim_folder_path/linux.vim

            " if g:performance_mode <= 1
               " Add custom syntax for files that use math symbols.
               au BufNewFile,BufRead math_mappings.vim,*.lean so $vim_folder_path/math_mappings.vim

               " Add custom syntax for files that use unicode chars.
               au BufNewFile,BufRead math_mappings.vim,math.vim,unicode.vim,*lean.txt,*.lean,*.uni,*.uni.txt so $vim_folder_path/unicode.vim

               " Add custom syntax for files that use math symbols.
               au BufNewFile,BufRead *.uni.txt so $vim_folder_path/math.vim
            " endif

            " Add custom syntax for .vimrc.
            au BufNewFile,BufRead *.vimrc*,*.vim so $vim_folder_path/vim.vim

            " Add custom syntax for vhdl.
            au BufNewFile,BufRead *.vhd,*.vhdl,*.psl so $vim_folder_path/vhdl.vim

            " Add custom syntax for System Verilog.
            au BufNewFile,BufRead *.sv,*.svh,*.sv.bak,*.vt,*.vb,*.v,*.vlib,*.vh so $vim_folder_path/sv.vim

            " Add custom syntax for assembly.
            au BufNewFile,BufRead *.asm,*.masm,*.s,*.objdump so $vim_folder_path/asm.vim

            " Add custom syntax for C.
            au BufNewFile,BufRead *.c,*.h,*.cpp,*.hpp so $vim_folder_path/c.vim

            " Add custom syntax for java.
            au BufNewFile,BufRead *.java so $vim_folder_path/java.vim

            " Add custom syntax for perl.
            au BufNewFile,BufRead *.pl,*.pm so $vim_folder_path/pl.vim

            " Add custom syntax for python.
            au BufNewFile,BufRead *.py so $vim_folder_path/py.vim

            " Add custom syntax for TCL.
            au BufNewFile,BufRead *.tcl,*.f so $vim_folder_path/tcl.vim

            " Add custom syntax for txt.
            au BufNewFile,BufRead *.txt,*.tex so $vim_folder_path/txt.vim

            " Add custom syntax for latex.
            au BufNewFile,BufRead *.tex so $vim_folder_path/latex.vim

            " Add custom syntax for bash. \w is to avoid loading bash.vim.
            au BufNewFile,BufRead .bash*,*.sh,.cshrc*,*.csh,.aliases,*.ps1 so $vim_folder_path/bash.vim

            " Add custom syntax for .log.
            au BufNewFile,BufRead *.log,*.log.*,transcript so $vim_folder_path/log.vim

            " Add custom syntax for lean.
            au BufNewFile,BufRead *lean.txt,*.lean so $vim_folder_path/lean.vim

            " Add custom syntax for rcf.
            au BufNewFile,BufRead *.rcf so $vim_folder_path/rcf.vim

            " Add custom syntax for csv.
            au BufNewFile,BufRead *.csv so $vim_folder_path/csv.vim

            " Add custom syntax for files that use strikethrough and gray-out.
            au BufNewFile,BufRead *.txt so $vim_folder_path/strikethrough.vim

            if g:performance_mode <= 2
               " Syntax for files that support regular expressions.
               " (NOTE: May be extension dependent as different
               "        programs/editors/programming languages/OS can use regex
               "        slightly differently and with different syntax).
               au BufNewFile,BufRead *.pl,*.pm,*.vimrc*,*.vim so $vim_folder_path/regex.vim
            endif

            " NOTE Add abbreviations to shorten common and repetitive text.
            au BufNewFile,BufRead * so $vim_folder_path/abbrev.vim

            " NOTE: THIS WILL ADD CUSTOM SYNTAX FOR ALL FILES AFTER THE
            "       RESPECTIVE FILE SETTINGS ARE APPLIED!!!
            au BufNewFile,BufRead * so $vim_folder_path/all_post.vim

         endif
         "=====================================================================
         "=====================================================================
         "=====================================================================

         " Always load file at last known cursor position.
         if g:performance_mode <= 1
            autocmd BufReadPost *
               \ let line = line("'\"")
               \ | if line >= 1
               \      && line <= line("$") && &filetype !~# 'commit'
               \      && index(['xxd', 'gitrebase', 'tutor'], &filetype) == -1
               \ |    execute "normal! g`\""
               \ | endif
         endif

         " Settings for the file browser aka the netrw plugin (when opening
         " folders with vim or can be opened with :E).
         au FileType netrw so $vim_folder_path/netrw.vim
         au BufEnter * if isdirectory(expand('%')) | so $vim_folder_path/highlightings.vim | so $vim_folder_path/netrw.vim | endif

      augroup END

      " Update g:status_line_var when the cursor is not moving (so it does not
      " re-update on the fly as you scroll and slow down performance).
      " works with "set updatetime".
      augroup UpdateStatusLine
         au!
         autocmd CursorHold * call UpdateStatusVar()
      augroup END

      augroup UpdateHighlightings
         au!
         " Do not update highlightings when scrolling (improves performance and
         " scroll speed). g:do_not_update_highlighting_while_scrolling is being
         " set inside math.vim. Works with "set updatetime".
         let g:winscrolled=0
         au WinScrolled     * if g:do_not_update_highlighting_while_scrolling | set synmaxcol=1 | let g:winscrolled=1 | endif
         if !has('nvim')
            au SafeStateAgain  * if g:do_not_update_highlighting_while_scrolling | if g:winscrolled | set synmaxcol=3000 | endif | let g:winscrolled=0 | endif
         else " For neovim
            au CursorHold      * if g:do_not_update_highlighting_while_scrolling | if g:winscrolled | set synmaxcol=3000 | endif | let g:winscrolled=0 | endif
         endif
      augroup END


   endif " has("gui_running")

endfunction


"------------------------------------------------------------------------------
" Load large files faster by not using vimrc settings
"------------------------------------------------------------------------------
" Protect large files from sourcing and other overhead.
function! LargeFile()
   let g:EnteredLargeFile = 1
   " No syntax highlighting etc.
   set eventignore+=FileType
   " Save memory when other file is viewed.
   setlocal bufhidden=unload
   " Is read-only (write with :w new_filename).
   " setlocal buftype=nowrite
   " No undo possible.
   setlocal undolevels=-1
   " Display message.
   autocmd VimEnter *  echo "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, and most options are disabled (see LargeFile() in .vimrc for details)."
endfunction


"------------------------------------------------------------------------------
" Load vimrc settings depending on file size
"------------------------------------------------------------------------------
let f=getfsize(expand("<afile>"))
if f >= g:LargeFile || f == -2
   call LargeFile()
endif

if f < g:LargeFile && !exists("g:EnteredDefaultSetting")
   call DefaultSettings()
endif

