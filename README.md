# vimrc

Contains all my vimrc settings.

## Features

- Works in GVim, Vim and NeoVim
- Supports both Windows and Linux OS
- Includes AI Integration with Pasky's plugin for using Anthropic's Claude AI via an API (Default is Claude Sonnet 4.6 but also Supports Claude Opus 4.6 and the latest 4.7 (should support future versions as well...)) (Now also works with OpenAI/ChatGPT, Google's Gemini and Qwen with Ollama!!!)
- Uses my own custom colorscheme where the user has full control over all the colors. Multiple custom colorschemes are available.
- Supports different syntax configurations, can select between Vim's default syntax matching or add some of my custom syntax matching on top of the default Vim syntax matching (default)
- Support for both Colemak-DH and QWERTY keyboard layouts
- Includes performance optimization features and multiple performance modes
- Can emulate clipboard utility and copying selections if not supported by default in Vim/NeoVim or even in Windows
- Includes custom mappings and abbreviations
- Contains font and GUI customizations
- Improved search and replace usability with mappings
- Contains autocorrect and spell checking support
- Displays the name of the syntax group being applied under the cursor to make debugging syntax groups significantly easier

## .vim/ Folder Contents
```
├── abbrevlist.vim          # Abbreviations list for thesaurus lookup
├── abbrev.vim              # Common abbreviations and shortcuts
├── all_colors.vim          # Shows all the available colors in Vim, useful for picking colors
├── asm.vim                 # Assembly custom syntax highlighting
├── bash.vim                # Bash/shell custom syntax highlighting
├── c.vim                   # C/C++ custom syntax highlighting
├── colors/...              # Contains the custom colorschemes
├── java.vim                # Java custom syntax highlighting
├── lean.vim                # Lean math prover custom syntax highlighting
├── math.vim                # Math custom syntax highlighting and abbreviations
├── math_mappings.vim       # Math/Unicode mappings from VSCode/Lean
├── md.vim                  # Markdown custom syntax highlighting
├── more_colors.vim         # Adds additional highlighting groups and colors
├── netrw.vim               # File browser custom syntax highlighting
├── pack/pasky/start/...    # Contains the files for Pasky's plugin for using Anthropic's Claude AI via an API
├── pl.vim                  # Perl custom syntax highlighting
├── py.vim                  # Python custom syntax highlighting
├── regex.vim               # Regular expression custom syntax highlighting
├── spell.vim               # Spell checking configurations
├── strikethrough.vim       # Text strikethrough effects
├── sv.vim                  # SystemVerilog custom syntax highlighting
├── svn.vim                 # SVN custom syntax highlighting
├── syntax/...              # Responsible for loading the custom syntax highlighting groups based on file extension
├── syntax_library.vim      # Contains a library of syntax highlighting functions for use in all filetypes
├── tcl.vim                 # TCL custom syntax highlighting
├── txt.vim                 # Plain text custom syntax highlighting
├── unicode.vim             # Unicode support and abbreviations
└── vim.vim                 # Vim custom syntax highlighting
```

## Getting Started

To use, first install GVim, Vim or NeoVim on Linux or Windows (GVim being my main editor), and then place the .vim files in the appropriate location.
- For Linux, place the .vimrc file and the .vim/ folder in ~/ (aka $HOME/ or /home/username/) then open any file with GVim and the settings should all be loaded.
- For Windows, place the .vimrc file and the .vim/ folder under C:\Users\username\ (but rename the .vim folder to vimfiles in Windows) then open any file with GVim and the settings should all be loaded.


## NeoVim

NeoVim uses different configuration directories than Vim. You can get all the vimrc settings to work in NeoVim by 1) placing the files in the proper NeoVim directories and loading the Vim settings through the init.lua file or option 2) by linking NeoVim to Vim's .vimrc and .vim/ in Linux.


### Option 2) Linking NeoVim to Vim

Option 2) Linking NeoVim to Vim, can depend on the specific locations that NeoVim uses in your OS. Below is what works for me in Ubuntu/Mint Linux.

Link Vim's .vimrc and .vim/ files in NeoVim.
```
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/.vim ~/.config/nvim/.vim
```

Link the custom colorschemes in NeoVim.
```
ln -s ~/.vim/colors ~/.config/nvim/colors
```

Link Vim's spell checking folder in NeoVim.
```
ln -s ~/.vim/spell ~/.config/nvim/spell
```

Link Pasky's plugin for using Anthropic's Claude AI in NeoVim.
```
ln -s ~/.vim/pack ~/.config/nvim/pack
```

Now when I open a file with NeoVim, it gets the same settings as when I load the file with GVim.


## Pasky's Plugin for using Anthropic's Claude AI

I was able to get Pasky's Claude AI API working in GVim, Vim and NeoVim on my Ubuntu/Mint Linux OS and I also got it working on my Windows OS using GVim (I have not tried NeoVim on Windows). The plugin works with the latest versions of Claude Sonnet and Opus (Once a new version comes out simply update the "g:claude_model" variable).

To get the Claude API to work, follow these steps:
1) Download the Pasky Plugin and place in you .vim folder
    A) I made modifications to Pasky's Claude API plugin that you can find in:
    .vim/pack/pasky/start/claude.vim/plugin/claude.vim
    OR
    B) You can download Pasky's Original Claude API plugin from:
    https://github.com/pasky/claude.vim
    and add it to your .vim/pack/pasky/start/claude.vim/
2) To confirm the plugin works for you, open a new vim window (ideally with an empty or a small file just to test it out), press <leader>cc to open a Claude prompt, type your question or command in the prompt, press ctrl-] to send you question or command, and Claude should start replying in the prompt window.
If you don't have an API key yet, you should get an error stating: "message":"x-api-key header is required"
3) Get an API key from https://platform.claude.com
4) Add the API key in g:claude_api_key in your .vimrc file:
```
let g:claude_api_key='add_api_key_here'
```
5) Try step 2 again and hopefully it works for you now.

NOTE: I made some modifications to Pasky's plugins (the May 2025 version) to address some issues I was having, to add my own improvements to the plugin, to make the chat experience better suit my personal preferences, to not use the claude\_\*\_prompt.md files (I prefer default prompts), to add additional comments.

Here is a list of changes that I made with help from the Claude AI:
- Fixed the error "executing job failed: Argument list too long".
- Allow the context window to increase from 200k to 1m. See g:claude_use_1m_context (default set to 200k).
- Updated the claude_model version to use Claude Sonnet 4.6.
- Asked Claude to add a lot of comments.
- Disabled automatic chat folding. See g:claude_enable_folding.
- Print the token usage and cost in the chat after each answer.
- Fix for the printed token usage as it was not always accurate.
- Modified the system prompt to only have the "You:" line. See g:claude_default_system_prompt.
- Increased 'max_tokens' to allow Claude AI to give longer responses before cutting off. See g:claude_max_tokens.
- Add fix for elinks "Update your browser Your browser isn't supported anymore".
- Set g:claude_map_cancel_response = "<c-c>" and have it only affect the Claude chat window.
- Added settings to disable tool and web usage by default. I prefer to keep everything in the chat window, to not let Claude directly edit my files and to keep costs down by not opening large files/websites. Set g:claude_disable_tool_use=0 if you want to enable them.
- Removed automatic indentation in Claude's responses. See g:claude_no_indent.
- Cleared the claude\_\*\_prompt.md files to use Claude's default prompt settings.
- Print g:claude_model instead of printing "Claude:"
- Fix for "invalid_request_error" "messages: text content blocks must be non-empty"
- Fix for buffers getting resent during tool usage causing significant increase in usage cost.
- Added batch mode option where response is delayed but cost is 50% discounted.
- Added support for qwen (a locally running AI)
- Added support for OpenAI/ChatGPT and Gemini AI!


## Custom Colorscheme

The Vim files contains it's own independent custom colorscheme file found in .vim/colors/. The colorschemes are written in a clear, easy to understand and easy to modify format.

The colorschemes are independent from the rest of the files and settings. If you want to enable the custom colorscheme without bringing in any of the other files, simply add a colors/ folder in the appropriate location (usually in your .vim/ path), copy over the colorscheme files into the colors/ folder, and then load the colorscheme into your .vimrc file.

You can do so by adding the following line to your .vimrc file:

```
colorscheme ddd_black
```

If you are using NeoVim instead of Vim/GVim, then add the ddd_black.vim file to the equivalent path (~/.config/nvim/colors/ in Linux) and add one of the following to your init.lua file:

```
vim.cmd.colorscheme("ddd_black")
vim.cmd("colorscheme ddd_black")
vim.cmd[[colorscheme ddd_black]]
```

Make sure you don't have any other colorschemes enabled overriding the custom colorscheme.

### Comparison with/without my custom syntax matching.

Both images below use my ddd_black.vim file. The image on the left shows the default syntax matching and the image on the right adds my custom syntax matching on top.

Left  image: With g:select_custom_syntax = 1
Right image: With g:select_custom_syntax = 2

For vim files:

![Alt Text](https://raw.githubusercontent.com/dddansar/vimrc/assets/vimrc_example.png)

For C files:

![Alt Text](https://raw.githubusercontent.com/dddansar/vimrc/assets/c_example.png)

### More Colorschemes

For a complete list of other colorschemes I have available, check out:
https://github.com/dddansar/colorschemes

