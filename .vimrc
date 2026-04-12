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

" I use the colemak-dh keyboard layout and custom mappings for such layout.
" Setting it here to qwerty instead as most people use that.
let g:keyboard_layout = "qwerty"
" let g:keyboard_layout = "colemak-dh"

" Selects between windows and linux OS
let g:using_windows = 0

" Select btw font styles if you use different PCs or Operating Systems.
let g:font_style = 0

" Use encryption
let g:using_encryption = 0

" Enable autocorrect
let g:use_autocorrect = 1

" Set the <leader> key to space
let mapleader="\<space>"

" Used to load large files faster by not loading vimrc settings.
" File is large from 1000mb.
let g:LargeFile = 1024 * 1024 * 1000

" Disable syntax while holding pageup/pagedown, re-enable on CursorHold.
" Used to improve scrolling performance and speed.
" Indicates when pageup/pagedown was last used.
" let g:syntax_disabled = 0

" NOTE: Controls the syntax highlightings in all files.
" If set to 0 will use the default vim syntax with the pablo colorscheme.
" If set to 1 will use the default vim syntax with my custom colorscheme.
"             This custom colorscheme can be found in:
"             .vim/colors/custom_colorscheme.vim
" If set to 2 will use the default vim syntax with my custom colorscheme in
"             addition to some of my custom syntax matching that may
"             override and/or add onto the default vim syntax matching.
" If set to 3 will use my custom vim syntax with my custom colorscheme and if
"             a file-specific custom syntax file is not found then it will load
"             the default vim syntax file for that filetype without any of the
"             custom syntax files getting loaded.
" if set to 4 will use my custom vim syntax with my custom colorscheme and
"             will turn on performance mode to disable the heavy custom syntax
"             matchings that are known to slow down performance.
" if set to 5 will turn syntax off entirely.
let g:select_custom_syntax = 3


" Will turn off additional settings and syntax matching if set to 1 or 2.
" VINOTE: Vim provides the built-in command :syntime to profile and identify
" which syntax matches are consuming the most time.
" 1) Start the profiling by running the command:
"    :syntime on
" 2) Perform actions that typically cause performance issues, such as
" scrolling through the file or editing the problematic sections.
" 3) Generate and view the report with:
"    :syntime report
if g:select_custom_syntax == 4
   let g:performance_mode = 1
else
   let g:performance_mode = 0
endif


" Path to key vim folders
" For Windows
if g:using_windows
   let $vim_folder_path  = '$HOME/vimfiles'
   let $vim_spell_path   = '$HOME/vimfiles/spell'
   let $nvim_folder_path = '$HOME/AppData/Local/nvim'
   let $nvim_spell_path  = '$HOME/AppData/Local/nvim/spell'
else " For Linux
   let $vim_folder_path  = '$HOME/.vim'
   let $vim_spell_path   = '$HOME/.vim/spell'
   let $nvim_folder_path = '$HOME/.config/nvim'
   let $nvim_spell_path  = '$HOME/.config/nvim/spell'
endif


" This will display the name of the syntax group that is being applied under
" the cursor. Lets you debug which syntax group is giving you issues!
function! SynGroup()
    return synIDattr(synID(line('.'),col('.'),1),'name') . ' ' . synIDattr(synIDtrans(synID(line('.'),col('.'),1)),'name')
endfunction


" NOTE: You can open multiple splits/tabs from terminal!!!
" gvim -o *.sv   horizontal split all files
" gvim -O *.sv   vertical split all files
" gvim -p *.sv   tabs all files


" NOTE: Link neovim to vim's .vimrc and .vim/ in linux!
" Link the .vimrc file in neovim.
" ln -s ~/.vimrc ~/.config/nvim/init.vim
" Link the .vim/ folder in neovim.
" ln -s ~/.vim ~/.config/nvim/.vim
" Link the spell checking folder in neovim.
" ln -s ~/.vim/spell ~/.config/nvim/spell
" Link the custom colorschemen in neovim.
" ln -s ~/.vim/colors ~/.config/nvim/colors
" Link the Pasky plugin to use Claude's API in neovim.
" ln -s ~/.vim/pack ~/.config/nvim/pack


" NOTE: You can get a Claude API to work with gvim and vim and neovim!!!
"       See the notes above to link neovim to vim or place everything in
"       neovim's directory structure instead...
" 1) I made modifications to Pasky's Claude plugin that you can use in:
" .vim/pack/pasky/start/claude.vim/plugin/claude.vim
" OR
" 1) You can download Pasky's Original Claude plugin from:
" https://github.com/pasky/claude.vim
" and add it to .vim/pack/pasky/start/claude.vim/
" 2) Get an API key from https://platform.claude.com
" 3) Add API key in g:claude_api_key
let g:claude_api_key='sk-ant-api03-wwwwwwwww_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx_yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy-zzzzzzzz'
" OR add the API key your inside your shell configuration file:
" export API_KEY=add_api_key_here
" and load the API_KEY with:
" let g:claude_api_key=expand("$API_KEY")
" 4) And that should be it, open a new vim window, press <leader>cc to open a
"    Claude prompt, type your question or command in the prompt, press ctrl-]
"    to send you question or command, and Claude should start replying in
"    the prompt window.
" Claude settings and mappings:
let g:claude_map_implement = "<leader>ci"
let g:claude_map_open_chat = "<leader>cc"
let g:claude_map_cancel_response = "<c-c>"
let g:claude_map_send_chat_message = "<c-]>"
" Increase limit from 200k to 1m tokens
" WARNING: Using 1m tokens can increase costs. Only use if necessary!
"          To decrease costs, ask question in small (or even empty files)
"          and all only keep the relevant code/text to the question.
let g:claude_use_1m_context = 0
" Prevent Claude from editing files, opening new files, searching the web or
" using tools. Try to keep it's answers simple in the chat window... This will
" save cost as Claude won't send 5000k lines of code or documentation from a
" file or website it decided to open...
let g:claude_disable_tool_use = 1
if g:claude_disable_tool_use
   let g:claude_tools = ""
endif
" If set, Claude will not add indentation to it's answers.
let g:claude_no_indent = 1
" Set the model to use. By default set to claude-sonnet-4-6
" let g:claude_model = 'claude-opus-4-6'
" Manually save history to ~/claude_history.txt with <leader>cs
noremap <leader>cs :w >> ~/claude_history.txt<cr>


" NOTE: Vim/nvim/neovim on my linux was not copying selections to the linux
" selection buffer even though I have clipboard utility installed and
" loaded... and yet gvim did not have this problem...
" Below works to solve this problem in vim/neovim and even works in Windows.
" NOTE: Sometimes you have to give a second for it to grab the selected text...
" NOTE: Set g:hack_copy_selection to 1 to enable.
let g:hack_copy_selection=0
if (!has("gui_running") || has('nvim') || g:using_windows) && g:hack_copy_selection

   " When the cursor moves, first stop any previous timers, then start a new
   " timer and after 50ms copy the visual selection to the clipboard but only
   " do this once per selection.
   let g:visual_copied = 0
   let g:visual_timer = -1
   augroup CopyOnVisualHold
      au!
      au CursorMoved * call s:visual_hold_reset()
      function! s:visual_hold_reset()
          if g:visual_timer != -1
              call timer_stop(g:visual_timer)
          endif
          let mode = mode()
          if (mode == 'v' || mode == 'V' || mode == "\<C-V>") && g:visual_copied == 0
              let g:visual_timer = timer_start(50, {-> execute('normal! "*ygv')})
              let g:visual_copied = 1
          else
              let g:visual_timer = -1
              let g:visual_copied = 0
          endif
      endfunction
   augroup END
endif


"------------------------------------------------------------------------------
" Default settings
"------------------------------------------------------------------------------
function! DefaultSettings()
   let g:EnteredDefaultSetting = 1

   "------------------------------------------------------------------------
   " These options and commands set the font, the background
   " and the dimensions of the vim window.

   " Selects between windows and linux OS
   if has("gui_running")
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
            else " for neovim
               set guifont=Monospace:h12
            endif
            set lines=46          " Height
            set columns=130       " Width
         else
            if !has('nvim')
               set guifont=Monospace\ 20
               " winpos 1000 0         " Open gvim in top right by default
            else " For neovim
               set guifont=Monospace:h20
            endif
            set lines=30          " Height
            set columns=115       " Width
         endif
      endif
   endif

   " Set the default colorscheme
   if g:select_custom_syntax > 0
      " The custom colorscheme is in .vim/colors/custom_colorscheme.vim
      colorscheme custom_colorscheme
   else
      " Use one of the default colorschemes
      colorscheme pablo
   endif

   "------------------------------------------------------------------------
   " Set 'nocompatible' to ward off unexpected things that your distro might
   " have made, as well as sanely reset options when re-sourcing .vimrc.
   set nocompatible

   " Attempt to determine the type of a file based on its name and possibly
   " its contents.  Use this to allow intelligent auto-indenting for each
   " filetype, and for plugins that are filetype specific.
   filetype indent plugin on

   " Enable syntax highlighting
   if g:select_custom_syntax <= 2
      syntax on
   elseif g:select_custom_syntax >= 3 && g:select_custom_syntax < 5
      " NOTE: Here I use my own syntax highlighting settings so turning
      "       syntax off. See "augroup EnCustomSyntax" below where my
      "       custom vim syntax files are sourced.

      " If syntax is off, vim's default syntax files will not be loaded.
      "      :syntax list   Lists the syntax groups loaded.
      "      :syntax off    Completely disables the syntax highlighting for
      "                     all current and future buffers.
      "      :syntax clear  Clears syntax highlighting only for the current
      "                     buffer.
      syntax off
      " syntax clear

      " NOTE: Each time syntax is turned on, vim will load the syntax file
      "       it finds in ~/.vim/syntax/ and then the default syntax file in
      "       $VIMRUNTIME/syntax/ based on the filetype detected. If you
      "       want to prevent vim from loading $VIMRUNTIME/syntax/ you must
      "       create a file in ~/.vim/syntax/ that sets b:current_syntax,
      "       and if this is set, the default syntax files will exit.
      " NOTE: Unfortunately, there is no single filename in the
      "       ~/.vim/syntax/ directory that always gets loaded automatically
      "       regardless of the file type. Meaning you would need to repeat
      "       this for every single filetype.
      " NOTE: If you try to set b:current_syntax in .vimrc instead,
      "       b:current_syntax will get updated each time syntax is turned
      "       on and it will get deleted each time syntax is turned off.
      "       So having this in .vimrc can prevent vim from loading the
      "       syntax files in $VIMRUNTIME/syntax/ at startup. But if you
      "       ever set syntax on after that, vim will go back to loading
      "       the filetype specific syntax files in ~/.vim/syntax/ and then
      "       in $VIMRUNTIME/syntax/
      " let b:current_syntax = "dummy"
      " NOTE: This means if you ever try to turn syntax off and syntax on
      "       again, vim will load the default syntax in $VIMRUNTIME/syntax/
      "       instead of the custom syntax that is defined in
      "       "augroup EnCustomSyntax" below. I have a workaround for this
      "       by calling ":doautocmd EnCustomSyntax BufRead" instead of
      "       using syntax on...

      " NOTE: Unfortunately "filetype off" also disables b:comment_leader,
      "       so I can't use this as a solution either...
      " filetype off

      " NOTE: Changing the runtime path to try to not load
      " $VIMRUNTIME/syntax/ seems to cause errors when loading vim.
      " "set runtimepath=...

      " VINOTE: Found a solution below by setting filetype=custom_syntax...
      "         and creating the file ~/.vim/syntax/custom_syntax.vim

      " Due to the solution mentioned involving filetype=custom_syntax, if
      " you add syntax on in here, it will load the default syntax first and
      " then the custom syntax will get loaded after causing a small lag
      " that is noticeable when loading multiple files in split windows.
      " syntax on
   end

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
   " set statusline+=\ \ \ %{g:status_line_var}
   set statusline+=\ \ \ %{SynGroup()}
   " set statusline+=%=%p%%\ %l/%L:%v\ %t
   set statusline+=%=\ %l/%L:%v\ %p%%
   " The update time for cursor hold, used to upadte g:status_line_var,
   " and also sets the update time for the swap file, but i'm not using the
   " swap file...
   " set updatetime=500
   set updatetime=200

   " Turn on blinking cursor in neovim
   if has('nvim')
      set guicursor+=a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
   end

   " Turn off cursor blinking.
   " set guicursor+=a:blinkon0

   " Instead of failing a command because of unsaved changes, instead raise
   " a dialogue asking if you wish to save changed files.
   set confirm

   " Use visual bell instead of beeping when doing something wrong.
   set visualbell

   " Enable use of the mouse for all modes.
   " set mouse=a
   " set mousemodel=popup

   " Yank/copy to clipboard like in windows.
   " set clipboard^=unnamedplus "append += does not word if an item has
   " exclude, but prepend ^= will work.
   set clipboard=unnamedplus

   " Hide mouse when typing - hidden by default.
   " set mousehide
   " set nomousehide

   " Set the command window height (where commands such as / and : are typed).
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

   " If this is here, will not auto-comment by default.
   " set formatoptions-=cro  " NOTE: Added further below.

   "------------------------------------------------------------------------
   " Use 3 spaces instead of tabs. Converts tab to spaces.
   set expandtab
   " Automatically indent after new line ex if inside function.
   set shiftwidth=3
   " How many spaces a tab is worth.
   set tabstop=3

   " Indents word-wrapped lines as much as the 'parent' line.
   set breakindent

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

   " When you turn on spell checking, tell vim to not check the spelling of
   " text that is not explicitly covered by a syntax item.
   " syntax spell notoplevel

   " Prevents the cursor from going within the top or bottom x lines of the
   " screen and will readjust the screen to show a min of x lines below or
   " above the cursor.
   set scrolloff=2

   " Automatically reloads file if it was changed in another file.
   set autoread

   " Disable swap files (used to restore changes made to buffer in case of
   " crash and to avoid multiple instances of the file being open) (since I
   " save almost all the time, crashes do not affect me as much...).
   " Disabling swapfiles is done to remove the ".swp" files cluttering
   " project directories and to avoid constant prompts when opening files.
   set noswapfile

   " Do not access the menu items with ALT anymore, ALT is also used to
   " access some specific characters such as è that is mapped to a-h. I also
   " map other ALT shortcuts below.
   set winaltkeys=no

   " Set encryption algorithm. xchacha20 (better) or blowfish2.
   if g:using_encryption
      if !has('nvim')
         set cm=xchacha20v2
         " set cm=blowfish2
      endif
      " When editing encrypted files make sure the following is set.
      set viminfo=
      set nobackup
      set noundofile
      set nowritebackup
      set noswapfile
   else
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
   endif

   " Enable delcombine to remove combining characters (like U+0336 aka
   " strikethrough) on their own without deleting the underlying character.
   set delcombine

   " Add the abbreviation list to the thesaurus to look them up as you type
   " with <c-x><c-t> or <c-n> or <c-p>.
   set thesaurus+=$vim_folder_path/abbrevlist.vim

   " When this option is set, the screen will not be redrawn while executing
   " macros, registers and other commands that have not been typed. Speeds
   " up macros significantly!!!
   set lazyredraw

   " Search down into subfolders when using the :find command.
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

   " NOTE: ctags in a terminal will create a tags file for current folder and
   " all it's subfolders.
   "    ctags -R .
   " c-]  To jump to tag under the cursor! (jumps to the definition of the
   "      function even if in a different file!).
   " gc-] For ambiguous tags (select btw multiple tags with the same name).
   " c-t  To jump up the tag stack.

   " Set a line at column 80 to help encourage keeping the text under 80
   " characters per line.
   " set cc=80
   " highlight ColorColumn ctermbg=236 guibg=grey30

   " Maximum column per line before disabling syntax highlighting.
   if g:performance_mode > 0
      set synmaxcol=1000
   else
      set maxmempattern=5000
   endif

   " Remove the toolbar (icon bar) in gvim.
   " set guioptions-=T


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
   "---------------------------------------------------------------------------

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

   " Added <c-z> to clear/reset an ongoing abbreviation in insert mode.
   inoremap <c-z> <bs><esc>gi

   " Set and unset line wrap.
   nnoremap <silent><a-q> :set wrap!<cr>

   " Will pop up a menu if mousemodel=popup.
   nnoremap <leader>z <rightmouse>


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
   " vnoremap <expr> <leader><tab> mode() ==# "v" ? "<c-v><s-i><tab>" : "<s-i><tab>"
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
   inoremap <c-a> <esc><s-a>
   " WARNING: "inoremap <c-i>" Messes up tabs as <c-i> is mapped to tab!!!
   " inoremap <c-i> <esc><s-i>
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

   " Disable syntax while holding pageup/pagedown, re-enable on CursorHold.
   " Used to improve scrolling performance and speed.
   " nnoremap <pageup>   :let g:syntax_disabled = 1<cr>:syntax clear<cr><pageup>
   " nnoremap <pagedown> :let g:syntax_disabled = 1<cr>:syntax clear<cr><pagedown>

   " Uppercase / capitalize / lowercase case of word.
   nnoremap <c-u> viwU
   nnoremap <c-l> viwu

   " Toggle / uppercase / capitalize / lowercase word under cursor.
   nnoremap <c-`> viw~

   " Delete word in i mode.
   inoremap <c-d> <c-w>
   " NOTE: "inoremap <c-v>" conflicts with unicode (i)c-v...
   " inoremap <c-v> <esc>ediwa<bs><esc>a
   " Delete word in n mode.
   inoremap <a-d> daw
   " Delete WORD in n mode.
   nnoremap <a-s-d> daW

   " Delete tab at start of line, (<c-t> inserts tab at start of line).
   inoremap <c-g> <c-d>

   " Map c-d to delete line contents while keeping empty line.
   " nnoremap <c-d> <c-c>
   " vnoremap <c-d> <c-c>
   nnoremap <c-d> 0D

   " Append next line to end of current line.
   " See help :join   - J without g will insert up to 2 spaces (variable).
   nnoremap <a-j> j0i<space><esc>kg<s-j>
   vnoremap <a-j> <s-j>

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
   " noremap ZZ :qa<cr>

   " Center window after quitting.
   " noremap ZA :q<cr><c-w><bar><c-w>_

   " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
   if g:keyboard_layout == "colemak-dh"
      " Move btw split screens. The $/0 combo helps vim to go to the
      " last horizontal split when switching between vertical splits.
      nnoremap <c-,>    $<c-w>j<c-w><bar><c-w>_0zz
      nnoremap <c-e>    $<c-w>k<c-w><bar><c-w>_0zz
      " NOTE" \<lt> maps to <
      nnoremap <silent> <c-.>     :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      nnoremap <silent> <c-h>     :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
   else " For qwerty
      " Move btw split screens.
      nnoremap <c-j> $<c-w>j<c-w><bar><c-w>_0zz
      nnoremap <c-k> $<c-w>k<c-w><bar><c-w>_0zz
      " NOTE" \<lt> maps to <
      nnoremap <silent> <c-l> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
   endif
   " Same "move btw split screens" as above but using the arrow keys.
   nnoremap <c-down> $<c-w>j<c-w><bar><c-w>_0zz
   nnoremap <c-up>   $<c-w>k<c-w><bar><c-w>_0zz
   nnoremap <silent> <c-right> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
   nnoremap <silent> <c-left>  :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>


   " Move Vim window to a different position.
   nnoremap <a-1> :winpos 0 0<cr>
   nnoremap <a-2> :winpos 100 0<cr>
   nnoremap <a-3> :winpos 200 0<cr>
   nnoremap <a-4> :winpos 300 0<cr>
   nnoremap <a-5> :winpos 400 0<cr>
   nnoremap <a-6> :winpos 500 0<cr>
   nnoremap <a-7> :winpos 600 0<cr>
   nnoremap <a-8> :winpos 700 0<cr>
   nnoremap <a-9> :winpos 800 0<cr>
   nnoremap <a-0> :winpos 900 0<cr>

   " Full-size window current split.
   nnoremap <c-space> <c-w><bar><c-w>_zz


   " File tabs shortcuts.
   nnoremap <leader>t<cr>     :tabnew<cr>
   nnoremap <leader>t<Space>  :tabnew
   nnoremap <leader>tf        :tabfirst<cr>
   nnoremap <leader>tn        :tabnext<cr>
   nnoremap <leader>tp        :tabprev<cr>
   nnoremap <leader>tl        :tablast<cr>
   nnoremap <leader>tq        :tabclose<cr>

   " Map a-o to insert new line at the beginning of the next line.
   nnoremap <a-o> o<esc>i
   inoremap <a-o> <cr><esc>i
   nnoremap <a-cr> <cr>
   inoremap <a-cr> <cr><esc>i

   "------------------------------------------------------------------------
   " Zoom in/out.
   noremap <c-middlemouse> :LargerFont<cr>
   noremap <s-middlemouse> :SmallerFont<cr>
   noremap Zi :LargerFont<cr>
   noremap Zo :SmallerFont<cr>

   " Functions for the zoom in/out.
   function! AdjustFontSize(amount)
      let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
      let s:minfontsize = 6
      let s:maxfontsize = 20
      " if has("gui_gtk2") && has("gui_running")
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


   "------------------------------------------------------------------------
   " Useful scripts mappings
   "------------------------------------------------------------------------

   " noremap <silent> gc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
   " noremap <silent> gu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

   " Commenting blocks of code.
   " <c-b> moves to the beginning of the line in command line mode.
   " <c-e> moves to the end       of the line in command line mode.
   " <c-r> This is the insert mode command to insert the contents of a
   "       register.
   " =     This specifies the expression register.
   " _o_   in visual mode will start from first non white space on first and
   "       last line.
   vnoremap <expr> <silent> gc mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> <esc>"
   vnoremap <expr> <silent> gu mode() ==# "v" ? "<c-v>_o_f <del>" : mode() ==# "V" ? "<c-v>_o_f <del>" : "_o_f <del>"
   vnoremap <expr> <silent> gp mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> NOTE: <esc>"
   vnoremap <expr> <silent> gt mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> TODO: <esc>"
   " Puts comment just before first non-whitespace.
   nnoremap <expr> <silent> gc "_i<c-r>=b:comment_leader<cr> <esc>"
   nnoremap <expr> <silent> gu "_vf <del>"
   nnoremap <expr> <silent> gp "_i<c-r>=b:comment_leader<cr> NOTE: <esc>"
   nnoremap <expr> <silent> gt "_i<c-r>=b:comment_leader<cr> TODO: <esc>"

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

   " Enable math and unicode mappings (<leader>sc enables spell checking).
   nnoremap <leader>fm :so $vim_folder_path/math_mappings.vim<cr>:so $vim_folder_path/unicode.vim<cr>
   nnoremap <leader>sm :so $vim_folder_path/math_mappings.vim<cr>:so $vim_folder_path/unicode.vim<cr>

   " Reload the custom syntax highlighting groups without using syntax on
   " and without resourcing .vimrc by reloading EnCustomSyntax instead.
   nnoremap <leader>sr :let g:select_custom_syntax=3<cr>:syntax clear<cr>:set filetype=custom_syntax<cr>:let g:custom_syntax_found=1<cr>:doautocmd EnCustomSyntax BufRead<cr>:syntax on<cr>
   " Loads the default syntax highlighting
   nnoremap <leader>sa :let g:select_custom_syntax=1<cr>:syntax clear<cr>:set filetype=""<cr>:filetype detect<cr>:let g:custom_syntax_found=0<cr>:syntax on<cr>

   " NOTE: Execute commands on all selected lines in <c-v> visual mode.
   if g:keyboard_layout == "colemak-dh"
      vnoremap <leader>fv :norm<space>ffa
   else " For qwerty
      vnoremap <leader>fv :norm<space>bba
   endif

   " m' will update the jump list with the current line.
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
   " <c-o> will jump back through the jump list. The first jump will jump
   "       to the current line where we set the last jump list. The last 2
   "       <c-o> jumps will jump back to before the search and replaces to
   "       the first jump list that we set, aka will jump back to the
   "       initial line.

   " Capitalize all words after every ending punctuation and every new line
   " in the file.
   nnoremap <leader>fc m':%s/\(^[-"' /\\]*\\|[.?!] \+\)[a-z]\ze[a-z]/\U&/ge<cr>:%s/\(^[-"' /\\]*\\|[.?!] \+\)a\ze [a-z][a-z]/\U&/ge<cr>:%s/^[ 0123456789()-]*[a-z]\ze[a-z]/\U&/ge<cr>:noh<cr><c-o><c-o>

   " Capitalize first letter of every Word on the current line.
   nnoremap <leader>fu :s/\<[a-z]/\u&/g<cr>
   " Capitalize first letter of every Word on every line in the file.
   nnoremap <leader>fU m':%s/\<[a-z]/\u&/g<cr>:noh<cr><c-o>


   " Remove extra spacing - Remove unwanted trailing white space.
   nnoremap <leader>f<space> m':%s/\s\+$//e<cr>:noh<cr><c-o>
   " Replace all tabs with spaces according to tabstop setting.
   nnoremap <leader>f<tab> :retab<cr>
   " Every space gets it's own column in visual mode.
   "  -o ' ' : tells column to use a single space (instead of the default 2)
   " since :!command calls external command, you can get more info with man.
   vnoremap <leader>f<space> :%!column -t -o ' '<cr>
   " Every tab (but not space) gets it's own column in visual mode.
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
   nnoremap <a-g> :unlet g:EnteredDefaultSetting<cr>:unlet g:EnteredSmallFile<cr>:so $MYVIMRC<cr>:windo e<cr>


   " NOTE: Execute shell script on current/selected line and print/replace
   "       over the lines.
   noremap <leader>fp :.!sh<cr>
   " NOTE: Execute shell script on current/selected line and print inside
   "       the vim output.
   noremap <leader>fl :.w !sh<cr>
   " For example, have this on it's own line: echo $(( 1 + 200 / 2))


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
   nnoremap <leader>sc  :so ~/.vim/spell.vim<cr>:syntax spell notoplevel<cr>
   nnoremap <leader>ss  :so ~/.vim/spell.vim<cr>:call IgnoreSpellings()<cr>:syntax spell toplevel<cr>
   nnoremap <leader>nsc :setlocal nospell<cr>


   " Fix window after opening a split screen.
   nnoremap <leader>sp  :sp<cr><c-w><bar><c-w>_
   nnoremap <leader>vsp :vsp<cr><c-w><bar><c-w>_
   nnoremap <leader>lsp :vsp<cr><c-w><bar><c-w>_
   " Opposite of sp and vsp.
   nnoremap <leader>sd  :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
   nnoremap <leader>rsp :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
   " topleft botright
   nnoremap <leader>tsp :topleft<space>split<cr><c-w><bar><c-w>_
   nnoremap <leader>bsp :botright<space>split<cr><c-w><bar><c-w>_
   " Full right and full left (should never be used...).
   " nnoremap <leader>lsp :topleft<space>vnew<cr><c-w><bar><c-w>_
   " nnoremap <leader>rsp :botright<space>vnew<cr><c-w><bar><c-w>_
   " close window and fix split screens
   " nnoremap <leader>q   :bd<cr><c-w><bar><c-w>_
   " nnoremap <leader>q   :q<cr><c-w><bar><c-w>_
   " nnoremap <leader>wq  :wq<cr><c-w><bar><c-w>_

   " Buffers
   " Next/previous
   nnoremap <leader>bn :bn<cr>
   nnoremap <leader>bp :bp<cr>
   " Delete
   nnoremap <leader>bd :bd<cr><c-w><bar><c-w>_
   nnoremap <leader>bq :bd<cr><c-w><bar><c-w>_
   " First/last
   nnoremap <leader>bf :bfirst<cr>
   nnoremap <leader>bl :blast<cr>


   " See :helpgrep Eatchar
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

      set t_Co=256
   endif " has("gui_running")

   " --------------------------------------------------------------------------
   " Load autocorrect files
   " --------------------------------------------------------------------------
   if !exists("g:AutocorrectLoaded") && g:use_autocorrect
      let g:AutocorrectLoaded=1
      if filereadable(expand($vim_folder_path . "/autocorrect/autocorrect3.vim"))
         so $vim_folder_path/autocorrect/autocorrect3.vim
      endif
      if filereadable(expand($vim_folder_path . "/autocorrect/wordlist.vim"))
         so $vim_folder_path/autocorrect/wordlist.vim
      endif
   endif


   " --------------------------------------------------------------------------
   " Setting b:comment_leader based on Filetype. This can then be used to
   " syntax match comments or to create comments with remappings.
   " --------------------------------------------------------------------------
   augroup SetFiletypeComment

      " If you want to clear a group, use autocmd!/au! inside the group.
      au!

      " If this is here, will not auto-comment by default.
      au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

      " Add filetype for extensions that don't have any
      au BufNewFile,BufRead *.REG    set filetype=registry
      au BufNewFile,BufRead .aliases set filetype=sh

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
      au BufNewFile,BufRead *lean.txt,*.lean                                   let b:comment_leader = '--'

      " Same idea as comment_leader above but with multi-line comments.
      au FileType c,cpp,cs,java,javascript,typescript,swift,kotlin,go,rust,php,css,scala,dart,groovy,sql,d,verilog,systemverilog,vhdl let b:multi_line_comment_start = '\/\*' | let b:multi_line_comment_end = '\*\/'
    " au FileType python       let b:multi_line_comment_start = "'''"    | let b:multi_line_comment_end = "'''"
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
      au BufNewFile,BufRead *.txt let g:spell_check_en=1 | setlocal spell
      " Apply spell checking everywhere in text files.
      au FileType text syntax spell toplevel

      " Just let vim know that I recognize these file extensions...
      au BufNewFile,BufRead *.log,*.log.* set filetype=log

   augroup END


   " -----------------------------------------------------------------------
   " Add filetype for extensions that don't have any and other FileType
   " related autocmds.
   " -----------------------------------------------------------------------
   augroup AddFiletype

      " Use autocmd!/au! to clear existing autocommands to prevent duplicates.
      au!

      " If this is here, will not auto-comment by default.
      au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

      " Add filetype for extensions that don't have any
      au BufNewFile,BufRead *.REG          set filetype=registry
      au BufNewFile,BufRead .aliases       set filetype=sh
      au BufNewFile,BufRead *.log,*.log.*  set filetype=log

      " Apply spell checking everywhere in text files.
      au FileType text syntax spell toplevel
   augroup END


   " -----------------------------------------------------------------------
   " Colors and Syntax Highlighting
   " -----------------------------------------------------------------------
   " NOTE: This file is responsible for loading the custom syntax
   " highlighting groups based on the file extension whenever
   " g:select_custom_syntax >= 2
   " -----------------------------------------------------------------------
   so $vim_folder_path/syntax/custom_syntax.vim


   " -----------------------------------------------------------------------
   " Always load file at last known cursor position
   " -----------------------------------------------------------------------
   augroup RestoreCursor
      au!
      if g:performance_mode <= 1 && g:using_encryption == 0
         autocmd BufReadPost *
            \ let line = line("'\"")
            \ | if line >= 1
            \      && line <= line("$") && &filetype !~# 'commit'
            \      && index(['xxd', 'gitrebase', 'tutor', 'svn'], &filetype) == -1
            \      && expand("%") !~# 'svn-commit'
            \ |    execute "normal! g`\""
            \ | endif
      endif
   augroup END

   " Disable syntax while holding pageup/pagedown, re-enable on CursorHold.
   " Used to improve scrolling performance and speed.
   " augroup SyntaxOnCursorHold
   "    au!
   "    autocmd CursorHold * if g:syntax_disabled | doautocmd EnCustomSyntax BufRead | let g:syntax_disabled = 0 | endif
   " augroup END

   " Automatically Resize splits whenever a new split is opened.
   augroup AutoResizeSplits
       autocmd!
       autocmd WinNew * wincmd _ | wincmd |
   augroup END

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

