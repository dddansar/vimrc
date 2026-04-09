# vimrc

Contains all my vimrc settings.

## Features

- Works in GVim, Vim and NeoVim.
- Supports both Windows and Linux OS
- Includes AI Integration with a Claude API Plugin
- Uses a custom colorscheme where the user has full control over all the colors
- Supports different syntax configuration, can select between Vim's default syntax matching or use a custom syntax highlighting for 20+ file types (default)
- Support for both Colemak-DH and QWERTY keyboard layouts
- Includes performance optimization features, multiple performance modes and large file handling
- Can emulate clipboard utility and copying selections if not supported by default in Vim/NeoVim or even in Windows
- Enables Lazy redraw for improved macro execution speed
- Includes custom mappings and abbreviations
- Contains Font and GUI customizations
- Improved search and replace usability with mappings
- Contains autocorrect support
- Displays the name of the syntax group being applied under the cursor to make debugging easier

## NeoVim

You can get all the vimrc settings to work in Neovim by linking NeoVim to Vim's .vimrc and .vim/ in linux!

Link the .vimrc file in NeoVim.
```
ln -s ~/.vimrc ~/.config/nvim/init.vim
```
Link the .vim/ folder in NeoVim.
```
ln -s ~/.vim ~/.config/nvim/.vim
```
Link the spell checking folder in NeoVim.
```
ln -s ~/.vim/spell ~/.config/nvim/spell
```
Link the custom colorscheme in NeoVim.
```
ln -s ~/.vim/colors ~/.config/nvim/colors
```
Link the Pasky plugin to use Claude's API in NeoVim.
```
ln -s ~/.vim/pack ~/.config/nvim/pack
```

## .vim/ Folder Contents
```
├── abbrevlist.vim          # Abbreviations list for thesaurus lookup
├── abbrev.vim              # Common abbreviations and shortcuts
├── all_colors.vim          # Shows all the available colors in Vim, useful for picking colors
├── all_post.vim            # Applies global custom syntax highlighting after all the respective file settings have been applied
├── all_pre.vim             # Applies global custom syntax highlighting before all the respective file settings have been applied
├── asm.vim                 # Assembly custom syntax highlighting
├── bash.vim                # Bash/shell custom syntax highlighting
├── c.vim                   # C/C++ custom syntax highlighting
├── colors.vim              # Adds additional highlighting groups used throughout the .vim files
├── colors/                 # Contains the custom colorscheme
├── java.vim                # Java custom syntax highlighting
├── latex.vim               # LaTeX custom syntax highlighting
├── lean.vim                # Lean custom syntax highlighting
├── log.vim                 # Log file custom syntax highlighting
├── math.vim                # Math custom syntax highlighting and abbreviations
├── math_mappings.vim       # Math/Unicode mappings from VSCode/Lean
├── netrw.vim               # File browser custom syntax highlighting
├── pack/pasky/start/       # Contains the files for Pasky's Claude API Plugin
├── pl.vim                  # Perl custom syntax highlighting
├── py.vim                  # Python custom syntax highlighting
├── rainbow_parenthesis.vim # Highlights each matching set of parenthesis in different colors
├── regex.vim               # Regular expression custom syntax highlighting
├── spell.vim               # Spell checking configurations
├── strikethrough.vim       # Text strikethrough effects
├── sv.vim                  # SystemVerilog custom syntax highlighting
├── svn.vim                 # SVN custom syntax highlighting
├── syntax/                 # Responsible for loading the custom syntax highlighting groups based on file extension
├── tcl.vim                 # TCL custom syntax highlighting
├── txt.vim                 # Plain text custom syntax highlighting
├── unicode.vim             # Unicode support and abbreviations
├── vhdl.vim                # VHDL custom syntax highlighting
└── vim.vim                 # Vim custom syntax highlighting
```

## Getting Started

To use, first install GVim/Vim/NeoVim on linux or windows, and then place the .vim files in the appropriate location.
- For linux, place the .vimrc file and the .vim/ folder in ~/ (aka $HOME/ or /home/username/) then open any file with GVim in and the settings should all be loaded.
- For Windows, place the .vimrc file and the .vim/ folder under C:\Users\username\ then open any file with GVim and the settings should all be loaded.

See notes above to link the vimrc and vim/ files for Neovim.

