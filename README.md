# vimrc
My vimrc settings for GVim

- Windows and Linux compatibility
- Support for both Colemak-DH and QWERTY keyboard layouts
- Custom syntax highlighting for 20+ file types
- Performance optimization features, multiple performance modes and large file handling
- Lazy redraw for improved macro execution speed
- Custom mappings and abbreviations
- AI Integration with Claude API
- Font and GUI customizations
- Search and replace functionality
- Advanced autocorrect support

.vim/
```
├── abbrevlist.vim          # Abbreviations list for thesaurus lookup
├── abbrev.vim              # Text abbreviations and shortcuts
├── all_post.vim            # Global post-processing syntax highlighting
├── all_pre.vim             # Global pre-processing syntax highlighting
├── asm.vim                 # Assembly syntax highlighting
├── bash.vim                # Bash/shell syntax highlighting
├── c.vim                   # C/C++ syntax highlighting
├── colors.vim              # Colors the highlighting groups names
├── csv.vim                 # CSV syntax highlighting
├── highlightings.vim       # Responsible for all the highlighting groups
├── java.vim                # Java syntax highlighting
├── latex.vim               # LaTeX syntax highlighting
├── lean.vim                # Lean syntax highlighting
├── linux.vim               # Linux commands syntax highlighting
├── log.vim                 # Log file syntax highlighting
├── math.vim                # Mathematical syntax highlighting and abbreviations
├── math_mappings.vim       # Math/Unicode mappings from VSCode/Lean
├── netrw.vim               # File browser syntax highlighting
├── pl.vim                  # Perl syntax highlighting
├── py.vim                  # Python syntax highlighting
├── rainbow_parenthesis.vim # Highlights each matching set of parenthesis in different colors
├── rcf.vim                 # RCF syntax highlighting
├── regex.vim               # Regular expression syntax highlighting
├── spell.vim               # Spell checking configuration
├── strikethrough.vim       # Text strikethrough effects
├── sv.vim                  # SystemVerilog syntax highlighting
├── tcl.vim                 # TCL syntax highlighting
├── txt.vim                 # Plain text syntax highlighting
├── unicode.vim             # Unicode support and abbreviations
├── vhdl.vim                # VHDL syntax highlighting
└── vim.vim                 # Vim syntax highlighting
```

To use, first install GVim on linux or windows, and then place the .vim files in the appropriate location.
- For linux, place the .vimrc file and the .vim/ folder in ~/ (aka $HOME/ or /home/username/), and that's it, open any file with "gvim filename" in a terminal and the settings should all be loaded.
- For Windows, place the .vimrc file and the .vim/ folder under C:\Users\username\ and that's it, open any file with GVim and the settings should all be loaded.

