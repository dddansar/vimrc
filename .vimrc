"==============================================================================
" File: .vimrc
"------------------------------------------------------------------------------
" Description: Settings loaded when opening any file with Vim/GVim/NeoVim.
"------------------------------------------------------------------------------
" Author: Danny Sarraf
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
" 1. Global Variables
"------------------------------------------------------------------------------

" I use the colemak-dh keyboard layout and custom mappings for this layout.
let g:keyboard_layout = "qwerty"
" let g:keyboard_layout = "colemak-dh"

" Selects between windows and linux OS
let g:using_windows = 0

" Select btw font styles
let g:font_style = 0

" Use encryption
let g:using_encryption = 0

" Enable autocorrect
let g:use_autocorrect = 1

" Set the <leader> key to space
let mapleader="\<space>"

" This is used to load large files faster by not loading vimrc settings.
" File is large if over 500MB.
let g:LargeFile = 1024 * 1024 * 500

" Disable generation of the .netrwhist file when opening a folder
let g:netrw_dirhistmax = 0


" NOTE: Controls the syntax highlightings in all files.
" If set to 0 will use the default Vim syntax with the pablo colorscheme in
"             addition to some of my custom syntax matching that adds
"             additional syntax on top of the default Vim syntax matching.
" if set to 1 will use the same settings as 0 but will turn on performance mode
"             to disable the heavy custom syntax matchings that are known to
"             slow down performance.
" If set to 2 will use the default Vim syntax with my custom colorscheme in
"             addition to some of my custom syntax matching that adds
"             additional syntax on top of the default Vim syntax matching.
" if set to 3 will use the same settings as 2 but will turn on performance mode
"             to disable the heavy custom syntax matchings that are known to
"             slow down performance.
" If set to 4 will disable Vim's default syntax matching and will instead rely
"             entirely on source $vim_folder_path/syntax/custom_syntax.vim
" if set to 5 will turn syntax off entirely.
let g:select_custom_syntax = 2


" Will turn off additional settings and syntax matching if set to 1 or 2.
" VINOTE: Vim provides the built-in command :syntime to profile and identify
"         which syntax matches are consuming the most time.
"         1) Start the profiling by running the command:
"            :syntime on
"         2) Perform actions that typically cause performance issues, such as
"         scrolling through the file.
"         3) Generate and view the report with:
"            :syntime report
if g:select_custom_syntax == 3 || g:select_custom_syntax == 1
   let g:performance_mode = 1
else
   let g:performance_mode = 0
endif


" Path to key Vim folders
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

" NOTE: You can open multiple splits/tabs from terminal!!!
" gvim -o *.sv   horizontal split all files
" gvim -O *.sv   vertical split all files
" gvim -p *.sv   tabs all files

" NOTE: Link NeoVim to Vim's .vimrc and .vim/ in linux!
" Link the .vimrc file in NeoVim.
" ln -s ~/.vimrc ~/.config/nvim/init.vim
" Link various .vim/ subfolders in NeoVim.
" ln -s ~/.vim/spell ~/.config/nvim/spell
" ln -s ~/.vim/colors ~/.config/nvim/colors
" ln -s ~/.vim/after ~/.config/nvim/after
" ln -s ~/.vim/autocorrect ~/.config/nvim/autocorrect
" ln -s ~/.vim/syntax ~/.config/nvim/syntax
" Link the Pasky plugin to use Claude's API in NeoVim.
" ln -s ~/.vim/pack ~/.config/nvim/pack

" NOTE: How Plugins are Loaded
" Gvim uses a Runtime Path (rtp), which is a list of directories it searches for configuration and script files.
" Startup loading: Any .vim script placed in the plugin/ subdirectory of your runtime path is automatically executed when you open gVim. In Vim 8+, You can organize plugins in a standard folder structure (pack/anyname/start/) and gVim will handle the path management for you.


"=================================== AI API ===================================
"------------------------------------------------------------------------------
" NOTE: You can get an AI API (Claude Sonnet/Opus/Haiku, Google's Gemini,
" OpenAI/ChatGPT, Ollama/Qwen) to work with Vim/GVim/NeoVim!!!
" 1) Grab the AI plugin and place in your .vim/pack/.../start/ folder.
" Although initially intended just for Claude AIs, I made modifications to
" Pasky's Claude plugin to address bugs I was seeing and to add support for
" additional AIs that you can find in:
"    .vim/pack/pasky/start/claude.vim/plugin/claude.vim
" 2) Get an API key from https://platform.claude.com or from one of the other
" AI platforms (NOTE: Gemini and ChatGPT will let you use a limited number of
" tokens for free if you just want to test it out...)
" 3a) Add API key in g:claude_api_key
" let g:claude_api_key='add_api_key_here'
" OR
" 3b) add to your .bash_aliases file:
" export API_KEY=add_api_key_here
" and use the following line to get the value from API_KEY
let g:claude_api_key=$CLAUDE_API_KEY
let g:gemini_api_key=$GEMINI_API_KEY
let g:openai_api_key=$GPT_API_KEY
" 4) Set the model to use in g:ai_model. Defaults to claude-sonnet-4-6
" 5) To confirm it works, open a new Vim window, press <leader>cc
" (g:ai_map_open_chat) to open a Claude prompt, type your question or command
" in the prompt, press ctrl-] to send you question or command, and the AI
" should start replying in the prompt window.
"------------------------------------------------------------------------------


" Settings for all AI models:
"------------------------------------------------------------------------------
" Open a Chat to start chatting with AI
let g:ai_map_open_chat = "<leader>cc"
" Once you type your question or command in the chat window, you can use this
" mapping to send the message. <C-]> only affects AI window, not tags jumping.
let g:ai_map_send_chat_message = "<c-]>"
" The implement key sends just the selection instead of the entire file. May
" result in a vimdiff operation.
let g:ai_map_implement = "<leader>ci"
" Cancel the response at any time.
let g:ai_map_cancel_response = "<c-c>"
" If set, AI will not add indentation to it's answers.
let g:ai_no_indent = 1
" Allow AI to give longer responses (max = 64k for Claude 4.6)
let g:ai_max_output_tokens = 64000
" Turns tools off to prevent AI from editing files, opening new files,
" searching the web... This will save cost as AI won't send 5000+ lines of code
" or documentation from a file or website it decided to open...
" I usually just turn tools on manually if/when I need them...
let g:ai_enable_tool_use = 0
if g:ai_enable_tool_use == 0
   " let g:ai_tools_list = ""
   let g:ai_tools_list = []
endif
" API key used for the web search tool. You can get a free api key from
" https://brave.com/search/api/
let g:ai_web_search_api_key=$BRAVE_API_KEY
"------------------------------------------------------------------------------


" Settings for Claude models:
"------------------------------------------------------------------------------
" Increase input token limit from 200k to 1m tokens
" NOTE: Using 1m tokens can easily increase costs. To decrease costs, ask
" question in small (or even empty) files and all only keep the relevant
" code/text to the question.
let g:claude_use_1m_context = 0
" Manually save (append) history to ~/claude_history.txt with <leader>cs
nnoremap <leader>cs :w >> ~/claude_history.txt<cr>
" NOTE: You can see all the current session's token usages with :messages.
" Enable batch mode. Results come back later (most complete within an hour, results are guaranteed within 24 hours). Uses a polling mechanism to retrieve results (every 30 seconds by default). No tool use during batch. A 50% cost discount is applied during batch mode.
let g:claude_batch_api = 0
" Prompt caching: 0 = disabled, 1 = 5-minute TTL, 2 = 1-hour TTL
" Caching reduces costs by reusing the system prompt and conversation history
" across API calls. 5-minute TTL (default): cache write tokens cost 1.25× base
" input price; cache read tokens cost 0.1× (10%). 1-hour TTL (extended): cache
" write tokens cost 2× base input price; still 0.1× for reads
" NOTE: caching only activates when the cached prefix meets the model's
" minimum token threshold (typically 1024–4096 tokens depending on model).
" NOTE: The plugin sends: system prompt -> buffer contents -> message history.
"       - The system prompt is very stable - it'll cache on the first call and
"       hit every subsequent call in the session. This is always a win.
"       - The buffer contents are prepended to the system prompt as one block.
"       If you edit a file between messages, that block changes and busts the
"       cache for everything downstream.
"       - The message history grows with every turn. The plugin puts
"       cache_control on the last user message, which means the cache point
"       moves forward with each exchange - the whole prior conversation gets
"       cached and the model only pays full price for the new message.
" The API only allows 4 cache breakpoints per request total. We're already
" using one on the last user message (conversation history). So you have 3 left
" to distribute across system prompt + buffers. If you have more than 3 files
" open, you'd need to group the least-edited ones together into a single block
" without a breakpoint, and put breakpoints only on the last 3 or so. The
" system prompt would share a breakpoint with the oldest files.
let g:claude_caching = 0
" When enabled, Claude dynamically decides when and how much to use extended
" thinking based on task complexity.
" Note: switching thinking on/off invalidates message-level cache breakpoints;
" system prompt and tool definition caches remain unaffected.
let g:claude_thinking = 0
" Effort level for adaptive thinking.
"   "low"    - fast, minimal thinking; good for simple/chat tasks
"   "medium" - balanced speed, cost, and quality; Anthropic's recommended
"              default for agentic/coding workflows
"   "high"   - deep reasoning; the API default
"   "xhigh"  - between high and max
"   "max"    - maximum reasoning depth
let g:claude_thinking_effort = 'low'
"   "summarized" - default; returns a condensed summary of Claude's reasoning.
"                  You are billed for full thinking tokens, not summary tokens.
"   "omitted"    - no thinking text returned.
let g:claude_thinking_display = 'summarized'
"------------------------------------------------------------------------------


" NOTE: Also supports interacting with Qwen (local and free AI)!!!
" 1) Install ollama
" curl -fsSL https://ollama.com/install.sh | sh
" 2) Download and run the desired model with ollama (ex: qwen3:8b)
" ollama run qwen3:8b
"------------------------------------------------------------------------------
let g:ollama_base_url = 'http://localhost:11434'
" Increase or decrease ollama context number of tokens limit.
" NOTE: These values actually affect how long a response will take...
" let g:ollama_num_ctx = 2048
let g:ollama_num_ctx = 4096
" let g:ollama_num_ctx = 8192
" let g:ollama_num_ctx = 32768
" let g:ollama_num_ctx = 262144
"------------------------------------------------------------------------------


" Select the model to use. By default this is set to claude-sonnet-4-6
"------------------------------------------------------------------------------
" let g:ai_model = 'claude-sonnet-5'
let g:ai_model = 'claude-sonnet-4-6'
" let g:ai_model = 'claude-opus-4-8'
" let g:ai_model = 'claude-haiku-4-5'
" let g:ai_model = 'claude-fable-5'
" let g:ai_model = 'gemini-2.5-flash-lite'
" let g:ai_model = 'gemini-2.5-flash'
" let g:ai_model = 'gemini-3.1-flash-lite-preview'
" let g:ai_model = 'gpt-5.4-mini'
" let g:ai_model = 'gpt-5.4'
" let g:ai_model = 'gpt-5.5'
" let g:ai_model = 'qwen2.5-coder:32b'
" let g:ai_model = 'qwen3:8b'
" let g:ai_model = 'qwen3-coder:30b'
"------------------------------------------------------------------------------
"==============================================================================


"------------------------------------------------------------------------------
" 2. Functions
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Function: CommonSettings()
" Description: These options and commands set the font, the background, the
"              colorscheme, the dimensions of the Vim window, and the mappings.
"------------------------------------------------------------------------------
function! CommonSettings()
   let g:EnteredCommonSetting = 1

   "---------------------------------------------------------------------------
   " Enable syntax highlighting
   "---------------------------------------------------------------------------
   if g:select_custom_syntax <= 3
      " syntax on
      syntax enable
   endif

   "---------------------------------------------------------------------------
   " NOTE: Need to set colorscheme after syntax on or highlight groups defined
   "       before 'syntax on' may be partially reset.
   " Load colorscheme before checking file size in the MainFunction augroup to
   " avoid a white flash when first opening new files.
   "---------------------------------------------------------------------------
   call LoadColorscheme()


   "---------------------------------------------------------------------------
   " Set the font and set the dimensions of the Vim window
   "---------------------------------------------------------------------------
   if has("gui_running")
      " Selects between windows and linux OS
      " NOTE: use ":set guifont=(tab)" to cycle through the list of fonts.
      if g:using_windows
         if !has('nvim')
            set guifont=Consolas:h13.5:cANSI
         else " For NeoVim
            set guifont=Consolas:h13.5:cANSI
         endif
         set lines=46          " Height
         set columns=140       " Width

      else " For Linux
         " Select btw font styles
         if g:font_style == 0
            if !has('nvim')
               set guifont=Monospace\ 14
               " winpos 1000 0         " Open GVim in top right by default
            else " for NeoVim
               set guifont=Monospace:h14
            endif
            set lines=47          " Height
            set columns=130       " Width
         else
            if !has('nvim')
               set guifont=Monospace\ 20
               " winpos 1000 0         " Open GVim in top right by default
            else " For NeoVim
               set guifont=Monospace:h20
            endif
            set lines=30          " Height
            set columns=115       " Width
         endif
      endif
   endif

   " Display line numbers on the left.
   set number

   "---------------------------------------------------------------------------
   " Load all Mappings
   "---------------------------------------------------------------------------
   call LoadMappings()

endfunction


"------------------------------------------------------------------------------
" Function: LoadColorscheme()
" Description: Loads the selected colorscheme.
"------------------------------------------------------------------------------
function! LoadColorscheme()
   if g:select_custom_syntax > 1 && filereadable(expand($vim_folder_path . "/colors/ddd_black.vim"))
      " The custom colorschemes are in .vim/colors/
      colorscheme ddd_black
      " colorscheme ddd_darkgrey
      " colorscheme ddd_darkgrey2
      " colorscheme ddd_navy
      " colorscheme ddd_darkgreen
      " colorscheme ddd_black_grey
      " colorscheme ddd_black_pink
      " colorscheme ddd_black_fuchsia
      " colorscheme ddd_black_navy
      " colorscheme ddd_black_chocolate
      " colorscheme ddd_black_darkgreen
      " colorscheme ddd_black_teal

      " colorscheme ddd_white
      " colorscheme ddd_lightgrey
      " colorscheme ddd_mocca
      " colorscheme ddd_palegreen
      " colorscheme ddd_aqua
      " colorscheme ddd_lightpink
   else
      " Use one of the default colorschemes
      colorscheme pablo
   endif
endfunction


"------------------------------------------------------------------------------
" Function: DefaultSettings()
" Description: Loads the default settings, mappings and syntax files
"------------------------------------------------------------------------------
function! DefaultSettings()
   let g:EnteredDefaultSetting = 1

   "---------------------------------------------------------------------------
   " Set 'nocompatible' to ward off unexpected things that your distro might
   " have made, as well as sanely reset options when re-sourcing .vimrc.
   set nocompatible

   " Attempt to determine the type of a file based on its name and possibly
   " its contents.  Use this to allow intelligent auto-indenting for each
   " filetype, and for plugins that are filetype specific.
   filetype indent plugin on

   " Enable title if titlestring is set
   set title
   " Show only filename in the titlebar
   " set titlestring=%t
   " Show relative path
   " set titlestring=%f
   " Show filename + modified flag
   if &titlestring ==# ''
      set titlestring=%t\ %m
   endif

   "---------------------------------------------------------------------------
   " Allows you to switch from an unsaved buffer without saving it first.
   " Also allows you to keep an undo history for multiple files.
   " Vim will complain if you try to quit without saving, and swap files
   " will keep you safe if your computer crashes.
   set hidden

   " Command-line completion when pressing tab to autocomplete.
   set wildmenu
   set wildmode=full
   " set wildmode=longest,full

   " Show partial commands in the last line of the screen.
   set showcmd

   " Highlight searches.
   set hlsearch

   " Highlight searches as you type.
   set incsearch

   "---------------------------------------------------------------------------
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
   " but this also make Vim indent c style with { parenthesis }.
   " See |C-indenting|.
   " NOTE: Changing this may affect multiline abbreviations...
   " Set based on filetype? -> some of my .vim files will override this...
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

   " statusline: sets the text in the status line bar under the file.
   " statusline refreshes on cursor movement, mode changes (insert → normal, etc.)
   " buffer changes (edits, saves), window focus changes, any command execution.
   " %n: buffer number, %f: file path, %t: file name only %h: help buffer
   " flag, %=: creates sections %m: modified flag," \ : add space, %p: line
   " percentage, %r: display read only [RO], %v display current column number,
   " %l: display current line number, %L: display total line numbers.
   set statusline=%f%m%r
   " set statusline+=\ \ \ %{g:status_line_var}
   " set statusline+=\ \ \ %{SynGroup()}
   set statusline+=\ \ \ %{SynStackGroup()}
   " set statusline+=%=%p%%\ %l/%L:%v\ %t
   set statusline+=%=\ %l/%L:%v\ %p%%

   " The update time for cursor hold
   " set updatetime=500
   set updatetime=200

   " Turn on blinking cursor in NeoVim
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
   set mouse=a
   set mousemodel=popup

   " Yank/copy to clipboard like in windows.
   " set clipboard^=unnamedplus "append += does not word if an item has
   " exclude, but prepend ^= will work.
   set clipboard=unnamedplus

   " Hide mouse when typing - hidden by default.
   " set mousehide
   " set nomousehide

   " Set the command window height (where commands such as / and : are typed).
   set cmdheight=1

   " lastline: When included, as much as possible of the last line
   " in a window will be displayed. When not included, a last line
   " that doesn't fit is replaced with "@" lines.
   set display=lastline

   " If set, then line numbers above or below are numbered relatively to the
   " current line ...,3,2,1 for lines above and 1,2,3,... for lines below
   " instead of their actual line number.
   " set relativenumber

   " Quickly time out on keycodes, but never time out on mappings.
   set notimeout ttimeout ttimeoutlen=100

   " If this is here, will not auto-comment by default. This may get overriden
   " by filetype plugins therefore using an autogroup instead.
   " set formatoptions-=cro
   augroup format_options
      autocmd!
      autocmd FileType * setlocal formatoptions-=cro
   augroup END

   "---------------------------------------------------------------------------
   " Use 3 spaces instead of tabs. Converts tab to spaces.
   set expandtab
   " Automatically indent after new line ex if inside function.
   set shiftwidth=3
   " How many spaces a tab is worth.
   set tabstop=3

   " Indents word-wrapped lines as much as the 'parent' line.
   set breakindent
   set breakindentopt=min:40
   " set breakindentopt=shift:2,min:40

   " Turn on line-wrapping (text loops around if not enough space).
   set wrap
   " Vim will wrap lines at white spaces if possible.
   set linebreak

   " Automatically enter a new line after X characters (0 means never).
   set textwidth=0

   " In GVim, 'guioptions' controls whether various GUI widgets are shown.
   " Below means left/bottom scroll bar disabled, right scroll bar enabled.
   " Default: aegimrLtT
   set guioptions=aegimrtT
   " Remove the toolbar menu (icon bar) in GVim.
   " set guioptions-=T

   " Will highlight spelling mistakes in all file types if set
   " I set this in txt.vim as I don't want it enabled in most file types.
   " set nospell
   " set spell spelllang=en_us
   " Ignore uppercase of first word.
   " set spellcapcheck=

   " When you turn on spell checking, tell Vim to not check the spelling of
   " text that is not explicitly covered by a syntax item.
   " syntax spell notoplevel

   " Prevents the cursor from going within the top or bottom x lines of the
   " screen and will readjust the screen to show a min of x lines below or
   " above the cursor.
   set scrolloff=2

   " Automatically reloads file if it was changed in another window.
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
      " set foldignore=
      " Don't fold by default.
      set nofoldenable
      " set foldlevel=1
   endif

   " Enable delcombine to remove combining characters (like U+0336 aka
   " strikethrough) on their own without deleting the underlying character.
   set delcombine

   " Add the abbreviation list to the thesaurus to look them up as you type
   " with <c-x><c-t> or <c-n> or <c-p>.
   if filereadable(expand($vim_folder_path . "/abbrevlist.vim"))
      set thesaurus+=$vim_folder_path/abbrevlist.vim
   endif

   " When this option is set, the screen will not be redrawn while executing
   " macros, registers and other commands that have not been typed. Speeds
   " up macros significantly!!!
   " WARNING: Messes with some mappings like ones that rely on the linux
   " selection buffer to copy and paste contents! But there are workarounds.
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
   " set complete=.,w,b,u,t,i,s
   set complete+=s
   " Use the autocomplete menu even if there is only one match.
   set completeopt=menu,preview,menuone

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

   " Maximum column per line before disabling syntax highlighting.
   if g:performance_mode > 0
      set synmaxcol=1000
   else
      set maxmempattern=5000
   endif

   " Disable modelines to avoid potential security issues...
   set nomodeline

   " Remove the dashes "----------..." from the gvimdiff filler lines.
   set fillchars+=diff:\ " Fill with space instead

   "---------------------------------------------------------------------------
   " Some non GUI settings
   "---------------------------------------------------------------------------
   if !has("gui_running")
      " Changes cursor shape in visual/insert mode.
      let &t_SI = "\e[6 q"
      let &t_SR = "\e[4 q"
      let &t_EI = "\e[2 q"

      " Enable true color support
      if has('termguicolors') && $COLORTERM =~# 'truecolor\|24bit'
        set termguicolors
      endif
      " set t_Co=256
   endif


   "---------------------------------------------------------------------------
   " Load autocorrect files
   "---------------------------------------------------------------------------
   if !exists("g:AutocorrectLoaded") && g:use_autocorrect
      if filereadable(expand($vim_folder_path . "/autocorrect/autocorrect3.vim"))
         source $vim_folder_path/autocorrect/autocorrect3.vim
      endif
      if filereadable(expand($vim_folder_path . "/autocorrect/wordlist.vim"))
         source $vim_folder_path/autocorrect/wordlist.vim
      endif
      let g:AutocorrectLoaded=1
   endif


   "---------------------------------------------------------------------------
   "---------------------------------------------------------------------------
   "---------------------------------------------------------------------------
   " Colors and Syntax Highlighting
   "---------------------------------------------------------------------------
   " NOTE: This file is responsible for loading additional custom syntax
   " highlighting groups based on the file extension whenever
   " g:select_custom_syntax >= 2.
   "---------------------------------------------------------------------------
   if !exists("b:custom_syntax_loaded")
      source $vim_folder_path/syntax/custom_syntax.vim
   end
   "---------------------------------------------------------------------------
   "---------------------------------------------------------------------------
   "---------------------------------------------------------------------------


   "---------------------------------------------------------------------------
   " Always load file at last known cursor position
   "---------------------------------------------------------------------------
   augroup RestoreCursor
      autocmd!
      if g:performance_mode <= 1 && g:using_encryption == 0
         autocmd BufReadPost *
            \ let g:line = line("'\"")
            \ | if g:line >= 1
            \      && g:line <= line("$") && &filetype !~# 'commit'
            \      && index(['xxd', 'gitrebase', 'tutor', 'svn', 'netrw', 'diff', 'fugitive', 'oil'], &filetype) == -1
            \      && expand("%") !~# '\(svn-commit\|/tmp/\|fugitive://\)'
            \ |    execute "normal! g`\""
            \ |    if len(getbufinfo({'buflisted': 1})) == 1
            \ |       execute "redraw!"
            \ |    endif
            \ | endif
      endif
   augroup END

   "---------------------------------------------------------------------------
   " Change cursor color in insert mode.
   "---------------------------------------------------------------------------
   " augroup CursorInsert
   "    autocmd!
   "    autocmd InsertEnter * highlight Cursor guibg=grey50
   "    autocmd InsertLeave * highlight Cursor guibg=white
   " augroup END

   "---------------------------------------------------------------------------
   " Automatically Resize splits whenever a new split is opened.
   "---------------------------------------------------------------------------
   augroup AutoResizeSplits
      autocmd!
      " WinEnter will prevent keeping 2 splits equal length for comparison.
      " autocmd WinEnter * wincmd _ | exe "wincmd |"
      autocmd WinNew * if &buftype == '' | wincmd _ | exe "wincmd |" | endif
   augroup END

   "---------------------------------------------------------------------------
   " Set VimDiff to wrap by default.
   "---------------------------------------------------------------------------
   augroup VimDiff
      autocmd!
      autocmd VimEnter * call IfDiff()
   augroup END

endfunction

function! IfDiff()
   if &diff
      windo set wrap
      set columns=9999
      wincmd =
   endif
endfunction

"------------------------------------------------------------------------------
" Function: LoadMappings()
" Description: Loads all mappings
"------------------------------------------------------------------------------
" remap vs noremap:
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
"------------------------------------------------------------------------------
function! LoadMappings()

   "---------------------------------------------------------------------------
   " Make Vim similar to windows (save, copy, paste, select, ...)
   "---------------------------------------------------------------------------

   " Update jump list with m' on cut, copy and paste (you can use <c-o>
   " and <c-i> to jump to past locations). NOTE: GVim requires an extra
   " <c-o> to do the first jump but NeoVim does not seem to require it...
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

   " diff obtain entire file
   nnoremap dO :%diffget<cr>

   " Paste last selected without using mouse.
   cnoremap <a-p>   <middlemouse>
   nnoremap <a-p>   a<middlemouse><esc>

   " Select all in file.
   nnoremap <a-a> ggVG
   vnoremap <a-a> <esc>ggVG

   " Use CTRL-S for saving, also in Insert mode.
   nnoremap <silent> <c-s> :update<cr>
   " vnoremap <silent> <c-s> <esc>:update<cr>
   vnoremap <silent> <c-s> <cmd>update<cr>
   " inoremap <silent> <c-s> <esc>:update<cr>gi
   inoremap <silent> <c-s> <cmd>update<cr>

   " Map backspace to delete like in windows.
   nnoremap <bs> i<bs><right><esc>
   vnoremap <bs> <del>
   nnoremap <del> i<del><right><esc>

   " Set and unset line wrap.
   nnoremap <silent><a-q> :set wrap!<cr>

   " Will pop up a menu if mousemodel=popup.
   nnoremap <leader>zm <rightmouse>


   "---------------------------------------------------------------------------
   " Tab, enter, whitespace mappings
   "---------------------------------------------------------------------------

   " Insert newline with enter without entering insert mode.
   nnoremap <expr> <cr> index(['quickfix','help','terminal'], &buftype) >= 0 ? "\<cr>" : "o\<esc>"
   nnoremap <s-cr> O<esc>
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
      vnoremap <expr> <tab> mode() ==# "v" ? "<c-v><s-i><tab>" : "<s-i><tab>"
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


   "---------------------------------------------------------------------------
   " Movement related mappings
   "---------------------------------------------------------------------------

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

   " Add insert mode A I movements
   inoremap <c-1> <esc><s-a>
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
   else " For qwerty

   endif

   " Uppercase / capitalize / lowercase case of word.
   if g:keyboard_layout == "colemak-dh"
      nnoremap <c-u> viwU
      nnoremap <c-l> viwu
   else " For qwerty

   endif
   " Toggle / uppercase / capitalize / lowercase word under cursor.
   nnoremap <c-`> viw~

   " Append next line to end of current line.
   " See help :join   - J without g will insert up to 2 spaces (variable).
   nnoremap <a-j> <down>0i<space><esc>kg<s-j>
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


   "---------------------------------------------------------------------------
   " Autocorrect related mappings
   "---------------------------------------------------------------------------

   " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
   if g:keyboard_layout == "colemak-dh"
      " Go to next/prev spell error.
      nnoremap gH [s
      nnoremap g> ]s

      " Fix next/prev spell error.
      noremap gh [sz=1<cr><cr>
      noremap g. ]sz=1<cr><cr>

      " Open a spelling suggestion drop down
      noremap zh [sEa<c-x>s
      noremap z. ]sEa<c-x>s
   else " For qwerty
      " Go to next/prev spell error.
      nnoremap gH [s
      nnoremap gL ]s

      " Fix next/prev spell error.
      noremap gh [sz=1<cr><cr>
      noremap gl ]sz=1<cr><cr>

      " Open a spelling suggestion drop down
      noremap zl [sEa<c-x>s
      noremap zh ]sEa<c-x>s
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

   "---------------------------------------------------------------------------
   " Search related mappings
   "---------------------------------------------------------------------------

   " Search for item under cursor with mouse.
   " "*y will add selection to the linux selection buffer (needed here
   "     because I have lazyredraw set).
   " NOTE: On Linux, the "*y command yanks text to the selection register
   "       (for middle-click paste), while the "+y command yanks text to the
   "       clipboard register (for standard CTRL+V paste).
   nnoremap <c-leftmouse>  <leftmouse>viw"*yk$/\V\c<middlemouse><cr>
   nnoremap <c-rightmouse> <leftmouse>viw"*yk$/\V\c\<<middlemouse>\><cr>
   nnoremap <s-leftmouse>  <leftmouse>viw"*yk$/<up>\\|<middlemouse><cr>
   nnoremap <s-rightmouse> <leftmouse>viw"*yk$/<up>\\|\<<middlemouse>\><cr>

   " Invert the lazyredraw setting.
   nnoremap <leader>@ :set invlazyredraw<cr>:echo "lazyredraw ="&lazyredraw<cr>
   nnoremap <leader>2 :set invlazyredraw<cr>:echo "lazyredraw ="&lazyredraw<cr>

   " `< will go to the start of the previous visual selection.
   " /<up> will start search then pick previous search.
   " <a-backspace> will go to previous char even if on previous line.
   if g:using_windows
      " Search for characters being selected (same as <c-/>).
      vnoremap / "+y`<<a-backspace>/\V\c<middlemouse><cr>

      " Search for characters being selected.
      vnoremap <c-/> "+y`<<a-backspace>/\V\c<middlemouse><cr>
      vnoremap <c-8> "+y`<<a-backspace>/\V\c\<<middlemouse>\><cr>

      " Add another word to the existing search!
      vnoremap ? "+y`<<a-backspace>/<up>\\|<middlemouse><cr>
      vnoremap * "+y`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

      " Search for word under the cursor.
      nnoremap <c-/> viw"+y<a-backspace>/\V\c<middlemouse><cr>
      nnoremap <c-8> viw"+y<a-backspace>/\V\c\<<middlemouse>\><cr>

      " Add another word to the existing search!
      " NOTE: "?" was used to search backwards but I can just use <s-n>.
      nnoremap ? viw"+y`<<a-backspace>/<up>\\|<middlemouse><cr>
      nnoremap * viw"+y`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

   else " For Linux
      " Search for characters being selected.
      vnoremap /     <esc>`<<a-backspace>/\V\c<middlemouse><cr>
      vnoremap <c-/> <esc>`<<a-backspace>/\V\c<middlemouse><cr>
      vnoremap <c-8> <esc>`<<a-backspace>/\V\c\<<middlemouse>\><cr>

      " Add another word to the existing search!
      vnoremap ? <esc>`<<a-backspace>/<up>\\|<middlemouse><cr>
      vnoremap * <esc>`<<a-backspace>/<up>\\|\<<middlemouse>\><cr>

      " Search for word under the cursor.
      nnoremap <c-/> viw"*y<a-backspace>/\V\c<middlemouse><cr>
      nnoremap <c-8> viw"*y<a-backspace>/\V\c\<<middlemouse>\><cr>

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
   nnoremap <leader>rn viw"*y:.,$s/\C<middlemouse>/<middlemouse><space><bs>/gc\|1,''-&&
   vnoremap <leader>rn :<bs><bs><bs><bs><bs>.,$s/\C<middlemouse>/<middlemouse>/gc\|1,''-&&
   " Replace next word exact match.
   nnoremap <leader>re viw"*y:.,$s/\C\<<middlemouse>\>/<middlemouse><space><bs>/gc\|1,''-&&
   vnoremap <leader>re :<bs><bs><bs><bs><bs>.,$s/\C\<<middlemouse>\>/<middlemouse>/gc\|1,''-&&
   " Replace ALL words.
   nnoremap <leader>ra m'viw"*y:%s/\C<middlemouse>/<middlemouse>/g<left><left><space><bs>
   vnoremap <leader>ra <esc>m'gv:<bs><bs><bs><bs><bs>%s/\C<middlemouse>/<middlemouse>/g<left><left><space><bs>
   " Replace ALL words exact match.
   nnoremap <leader>rr m'viw"*y:%s/\C\<<middlemouse>\>/<middlemouse>/g<left><left><space><bs>
   vnoremap <leader>rr <esc>m'gv:<bs><bs><bs><bs><bs>%s/\C\<<middlemouse>\>/<middlemouse>/g<left><left><space><bs>


   " Replace all c style /*multi-line*/ comments with single-line //comments.
   noremap <leader>r/ m':%s/\/\*/\/\//g<cr>:%s/ *\*\///g<cr>:noh<cr><c-o><c-o>


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
   nnoremap <silent> <c-n> :noh<cr>


   "---------------------------------------------------------------------------
   " Switching/recentering window positioning mappings.
   "---------------------------------------------------------------------------

   " Faster map to quit all files in window.
   nnoremap <leader>zz :qa<cr>

   " Select between settings for "colemak-dh" vs "qwerty" keyboard layout.
   if g:keyboard_layout == "colemak-dh"
      " Move btw split screens. The $/0 combo helps Vim to go to the
      " last horizontal split when switching between vertical splits.
      nnoremap <c-,>    $<c-w>j<c-w><bar><c-w>_0zz
      nnoremap <c-e>    $<c-w>k<c-w><bar><c-w>_0zz
      " NOTE" \<lt> maps to <
      nnoremap <silent> <c-.> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>

      " Terminal mode: Exit terminal mode first, then move between splits
      tnoremap <c-,>    <c-\><c-n>$<c-w>j<c-w><bar><c-w>_
      tnoremap <c-e>    <c-\><c-n>$<c-w>k<c-w><bar><c-w>_
      tnoremap <silent> <c-.> <c-\><c-n>:exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_"<cr>
      tnoremap <silent> <c-h> <c-\><c-n>:exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_"<cr>

      " move to another split but don't resize
      nnoremap <a-,>    $<c-w>j
      nnoremap <a-e>    $<c-w>k
      nnoremap <silent> <a-.> :exe "normal! \<lt>c-w>\<lt>c-w>"<cr>
      nnoremap <silent> <a-h> :exe "normal! \<lt>c-w>\<lt>s-w>"<cr>
   else " For qwerty
      " Move btw split screens.
      nnoremap <c-j> $<c-w>j<c-w><bar><c-w>_0zz
      nnoremap <c-k> $<c-w>k<c-w><bar><c-w>_0zz
      " NOTE" \<lt> maps to <
      nnoremap <silent> <c-l> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
      nnoremap <silent> <c-h> :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>

      " Terminal mode: Exit terminal mode first, then move between splits
      tnoremap <c-j>    <c-\><c-n>$<c-w>j<c-w><bar><c-w>_
      tnoremap <c-k>    <c-\><c-n>$<c-w>k<c-w><bar><c-w>_
      tnoremap <silent> <c-l> <c-\><c-n>:exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_"<cr>
      tnoremap <silent> <c-h> <c-\><c-n>:exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_"<cr>

      " move to another split but don't resize
      nnoremap <a-j> $<c-w>j
      nnoremap <a-k> $<c-w>k
      nnoremap <silent> <a-l> :exe "normal! \<lt>c-w>\<lt>c-w>"<cr>
      nnoremap <silent> <a-h> :exe "normal! \<lt>c-w>\<lt>s-w>"<cr>
   endif
   " Same "move btw split screens" as above but using the arrow keys.
   nnoremap <c-down> $<c-w>j<c-w><bar><c-w>_0zz
   nnoremap <c-up>   $<c-w>k<c-w><bar><c-w>_0zz
   nnoremap <silent> <c-right> :exe "normal! \<lt>c-w>\<lt>c-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
   nnoremap <silent> <c-left>  :exe "normal! \<lt>c-w>\<lt>s-w>\<lt>c-w>\<lt>bar>\<lt>c-w>_zz"<cr>
   nnoremap <a-down> $<c-w>j
   nnoremap <a-up>   $<c-w>k
   nnoremap <silent> <a-right> :exe "normal! \<lt>c-w>\<lt>c-w>"<cr>
   nnoremap <silent> <a-left>  :exe "normal! \<lt>c-w>\<lt>s-w>"<cr>

   " In multi-split windows, will full-size current file.
   nnoremap <c-space> <c-w><bar><c-w>_zz
   " Will set all horizontal or vertical splits the same size.
   nnoremap <leader>\| <c-w>=<c-w>_
   nnoremap <leader>_ <c-w>=<c-w>\|

   " Move window to a new position.
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

   " Key mappings for termdebug debugger
   " See plugin in $VIMRUNTIME/pack/dist/opt/termdebug/plugin/termdebug.vim
   nnoremap <leader>dd :packadd termdebug<cr>:Termdebug
   nnoremap <leader>dr :Run<cr>
   nnoremap <leader>dc :Continue<cr>
   nnoremap <leader>db :Break<cr>
   nnoremap <leader>dl :Clear<cr>
   nnoremap <leader>de :Evaluate<cr>
   nnoremap <leader>ds :Step<cr>
   nnoremap <leader>do :Over<cr>
   nnoremap <leader>df :Finish<cr>
   nnoremap <leader>dp :Stop<cr>
   nnoremap <leader>dq :Gdb<cr>iquit<cr>
   " NOTE: you can change the color of breakpoints with:
   " highlight debugBreakpoint guibg=green guifg=white
   " highlight debugBreakpointDisabled guibg=blue guifg=white

   " Zoom in/out.
   nnoremap <c-middlemouse> :LargerFont<cr>
   nnoremap <s-middlemouse> :SmallerFont<cr>
   nnoremap <leader>zi :LargerFont<cr>
   nnoremap <leader>zo :SmallerFont<cr>


   "---------------------------------------------------------------------------
   " Useful scripts mappings
   "---------------------------------------------------------------------------

   " Commenting blocks of code.
   " <c-b> moves to the beginning of the line in command line mode.
   " <c-e> moves to the end       of the line in command line mode.
   " <c-r> This is the insert mode command to insert the contents of a
   "       register.
   " =     This specifies the expression register.
   " _o_   in visual mode will start from first non white space on first and
   "       last line.
   vnoremap <silent> <expr> gc mode() ==# "v" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : mode() ==# "V" ? "<c-v>_o_<s-i><c-r>=b:comment_leader<cr> <esc>" : "_o_<s-i><c-r>=b:comment_leader<cr> <esc>"
   vnoremap <silent> <expr> gs mode() ==# "v" ? "<c-v>_o_f <del>" : mode() ==# "V" ? "<c-v>_o_f <del>" : "_o_f <del>"
   " Puts comment just before first non-whitespace.
   nnoremap <silent> <expr> gc "_i<c-r>=b:comment_leader<cr> <esc>"
   nnoremap <silent> <expr> gs "_vf <del>"

   " Adds the comment ~~ (similar to //) that will highlight the line as a
   " gray strikethrough if strikethrough.vim is loaded. Also works on ranges
   " in the same line by adding a second pair of ~~.
   nnoremap gr _i~~ <esc>
   vnoremap gr <esc>`<i~~<esc>`>lla~~<esc>
   " Remove 2 sets of ~~ starting from current line.
   nnoremap <leader>gu 0/\~\~<cr>xxnxx:noh<cr>

   " Load help for word under cursor.
   " <c-r><c-w> pastes word under cursor into command line!
   nnoremap <leader>fh :help <c-r><c-w><cr><c-w>_:setlocal nospell<cr>


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
   " \u tells Vim to uppercase the following character in the substitution
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
   nnoremap <leader>fc m':%s/\(^[-"' /\\]*\\|[.?!] \+\)[a-z]/\U&/ge<cr>:%s/\(^[-"' /\\]*\\|[.?!] \+\)a\ze [a-z][a-z]/\U&/ge<cr>:%s/^[ (-]*[a-z]\ze[a-z]/\U&/ge<cr>:%s/^\s*[0123456789]*)\s*[a-z]\ze[a-z]/\U&/ge<cr>:noh<cr><c-o><c-o><c-o>

   " Capitalize first letter of every Word on the current line (Title Case).
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
   " Every | gets it's own column in visual mode.
   vnoremap <leader>f\| :!column -t -s '\|' -o '\|'<cr>
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


   " NOTE: Execute shell script on current/selected line and print/replace
   "       over the lines.
   nnoremap <leader>fp :.!sh<cr>
   vnoremap <leader>fp :.!sh<cr>
   " NOTE: Execute shell script on current/selected line and print inside
   "       the Vim output.
   nnoremap <leader>fl :.w !sh<cr>
   vnoremap <leader>fl :.w !sh<cr>
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
   nnoremap <leader>j1 17%
   nnoremap <leader>j2 33%
   nnoremap <leader>j3 50%
   nnoremap <leader>j4 67%
   nnoremap <leader>j5 83%

   " Enable disable spell checking.
   " NOTE: adding & at the end of a set option in Vim, resets the setting to
   "       it's default value! -> set spellcapcheck&
   nnoremap <leader>sn  :setlocal nospell<cr>

   nnoremap <leader>sc :source ~/.vim/after/syntax/shared/spell.vim<cr>:syntax spell toplevel<cr>
   nnoremap <leader>sd :source ~/.vim/after/syntax/shared/spell.vim<cr>:syntax spell notoplevel<cr>

   nnoremap <leader>sz :source ~/.vim/after/syntax/shared/spell.vim<cr>:setlocal spellcapcheck&<cr>:syntax spell toplevel<cr>
   nnoremap <leader>sx :source ~/.vim/after/syntax/shared/spell.vim<cr>:setlocal spellcapcheck&<cr>:syntax spell notoplevel<cr>

   nnoremap <leader>ss :source ~/.vim/after/syntax/shared/spell.vim<cr>:setlocal spelllang+=linuxfull,math,programming<cr>:syntax spell toplevel<cr>
   nnoremap <leader>st :source ~/.vim/after/syntax/shared/spell.vim<cr>:setlocal spelllang+=linuxfull,math,programming<cr>:syntax spell notoplevel<cr>



   " Fix window after opening a split screen.
   nnoremap <leader>sp  :sp<cr><c-w><bar><c-w>_
   nnoremap <leader>vsp :vsp<cr><c-w><bar><c-w>_
   " Opposite of sp and vsp.
 " nnoremap <leader>sd  :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
   nnoremap <leader>sb  :set<space>splitbelow<cr>:sp<cr><c-w><bar><c-w>_:set<space>nosplitbelow<cr>
   nnoremap <leader>rsp :set<space>splitright<cr>:vsp<cr><c-w><bar><c-w>_:set<space>nosplitright<cr>
   " topleft botright
   nnoremap <leader>tsp :topleft<space>split<cr><c-w><bar><c-w>_
   nnoremap <leader>bsp :botright<space>split<cr><c-w><bar><c-w>_


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


endfunction



"------------------------------------------------------------------------------
" Function: AdjustFontSize(amount)
" Description: Zooms in or zooms out a specific amount.
"------------------------------------------------------------------------------
" Functions for the zoom in/out.
function! AdjustFontSize(amount)
   if !has("gui_running") | return | endif
   let l:font = &guifont
   if l:font =~ ':h[0-9]\+$'
      let l:newsize = str2nr(matchstr(l:font, ':h\zs[0-9]\+')) + a:amount
      let &guifont = substitute(l:font, ':h[0-9]\+', ':h' . l:newsize, '')
   elseif l:font =~ ' [0-9]\+$'
      let l:newsize = str2nr(matchstr(l:font, ' \zs[0-9]\+$')) + a:amount
      let &guifont = substitute(l:font, ' [0-9]\+$', ' ' . l:newsize, '')
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


"------------------------------------------------------------------------------
" Function: Eatchar()
" Description: Use to consume the space typed after an abbreviation:
"              Add  <c-r>=Eatchar('\s')<cr>  at end of abbreviation.
"------------------------------------------------------------------------------
" See :helpgrep Eatchar
"------------------------------------------------------------------------------
function! Eatchar(pat)
   let c = nr2char(getchar(0))
   return (c =~ a:pat) ? '' : c
endfun


"------------------------------------------------------------------------------
" Function: SynGroup()
" Description: This will display the name of the syntax group that is being
"              applied under the cursor. Helps you debug which syntax group is
"              giving you issues.
"------------------------------------------------------------------------------
function! SynGroup()
   " synID({lnum}, {col}, {trans})
   " l:synID gives you the syntax group's number under the cursor.
   " When {trans} is set to 0, the syntax group's number is returned, even if
   " transparent. When {trans} is 1, any transparent groups are reduced to the
   " underlying syntax group.
   let l:synID = synID(line('.'), col('.'), 0)
   " let l:transID = synID(line('.'), col('.'), 1)
   " if l:transFlag is 1, the syntax group under the cursor is transparent.
   let l:transFlag = (l:synID != 0 && l:synID == synIDtrans(l:synID)) ? 1 : 0
   " Returns the names of the syntax and highlight groups under the cursor, and
   " also prints 1 if the syntax group under the cursor is transparent.
   " synIDtrans() follows the syntax links to get the highlight group number.
   " Then synIDattr() returns the group name associated with the numbers.
   return synIDattr(l:synID, 'name') . ' ' . synIDattr(synIDtrans(l:synID), 'name') . ' ' . l:transFlag
endfunction
" Similar to SynGroup() but returns all syntax group names under the cursor.
function! SynStackGroup()
   " synstack() return a list of all the syntax group numbers under the cursor.
   let l:stack = synstack(line('.'), col('.'))
   return join(map(l:stack, 'synIDattr(v:val, "name")'), ' ') . ' ' . synIDattr(synIDtrans(synID(line('.'), col('.'), 0)), "name")
endfunction

"------------------------------------------------------------------------------
" Function: s:visual_hold_reset()
" Description: Hack fix for Vim/NeoVim on my linux not copying selections to
"              the linux selection buffer even though I have clipboard utility
"              installed and loaded...
"
"              Below works to solve this problem in Vim/NeoVim and even works
"              in Windows.
"
"              Sometimes you have to give it a second to grab the text...
"
"              NOTE: Also works in Windows to copy selections...
"
"              When the cursor moves, first stop any previous timers, then
"              start a new timer and after 50ms copy the visual selection to
"              the clipboard but only do this once per selection.
"------------------------------------------------------------------------------
function! s:visual_hold_reset()
   if g:visual_timer != -1
      call timer_stop(g:visual_timer)
      let g:visual_timer = -1
   endif
   let l:mode = mode()
   if (l:mode ==# 'v' || l:mode ==# 'V' || l:mode ==# "\<C-V>") && g:visual_copied == 0
      let g:visual_timer = timer_start(50, {-> execute('normal! "*ygv')})
      let g:visual_copied = 1
   else
      let g:visual_timer = -1
      let g:visual_copied = 0
   endif
endfunction

let g:hack_copy_selection=1
if (!has("gui_running") || has('nvim') || g:using_windows) && g:hack_copy_selection
   let g:visual_copied = 0
   let g:visual_timer = -1
   augroup CopyOnVisualHold
      autocmd!
      autocmd CursorMoved * call s:visual_hold_reset()
   augroup END
endif


"------------------------------------------------------------------------------
" Function: LargeFileSettings()
" Description: Load large files faster by not using default settings or syntax.
"------------------------------------------------------------------------------
function! LargeFileSettings()
   let g:EnteredLargeFile = 1
   " Disable swap files
   set noswapfile
   " No syntax highlighting etc.
   setlocal eventignore+=FileType
   " Save memory when other file is viewed.
   setlocal bufhidden=unload
   " Is read-only (write with :w new_filename).
   " setlocal buftype=nowrite
   " No undo possible.
   setlocal undolevels=-1
   " Disable modelines to avoid potential security issues...
   set nomodeline
   " Display message.
   augroup LargeFileMsg
      autocmd!
      autocmd VimEnter *  echom "The file is larger than " . (g:LargeFile / 1024 / 1024) . " MB, and most options are disabled (see LargeFileSettings() in .vimrc for details)."
   augroup END
endfunction


"------------------------------------------------------------------------------
" 3. Main Code
"------------------------------------------------------------------------------

"------------------------------------------------------------------------------
" Augroup: MainFunction
" Description: This is basically the equivalent of main() in C. MainFunction()
"              loads everything else in this file. First loads CommonSettings()
"              then checks the file size, and if less than g:LargeFile, load
"              DefaultSettings() otherwise load LargeFileSettings().
"------------------------------------------------------------------------------
augroup MainFunction

   autocmd!

   " Set common setings for Large and Default files. Set the font, the
   " colorscheme and the dimensions of the Vim window.
   if !exists("g:EnteredCommonSetting")
      call CommonSettings()
   endif

   " Set max file size for AI API
   " autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f >= g:MaxAIAPIFile | let g:claude_disable = 1 | endif

   " Decide whether to call DefaultSettings() or LargeFileSettings() based on the
   " file size.
   autocmd BufReadPre * let f=getfsize(expand("<afile>")) |
      \ if f >= g:LargeFile || f == -2 | call LargeFileSettings() | let g:claude_disable = 1 |
      \ else | call DefaultSettings() | endif

   " This gets called if the file is empty and loads DefaultSettings()
   autocmd VimEnter * if !exists("g:EnteredDefaultSetting") && !exists("g:EnteredLargeFile") |
      \ call DefaultSettings() | endif
augroup END

