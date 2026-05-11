"==============================================================================
" File: netrw.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for the file explorer
"              in vim (using the built-in netrw plugin in vim).
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


" Exit if the file was already loaded
if exists("b:netrw_loaded")
  finish
endif
let g:netrw_loaded = 1

syn clear

if !exists("g:syntax_library_loaded")
   so $vim_folder_path/syntax_library.vim
endif
" all capital words like README or LICENCE (without the extension)
call AllCaps()


" Files starting with .
hi  link     NetrwHiddenFile     LineNr
syn match    NetrwHiddenFile     "\s\.[a-zA-Z0-9_-][a-zA-Z0-9_. -]*\>"

" Paths/folders
hi  link     NetrwPaths1   Underlined
syn match    NetrwPaths1   "\<[a-zA-Z0-9_.\-][a-zA-Z0-9._ -]\+/" contains=@NoSpell

hi  link     NetrwHiddenFolder   Tag
syn match    NetrwHiddenFolder   "\s\.[a-zA-Z0-9_-][a-zA-Z0-9_. -]*\/"


" Microsoft Office (Open XML & Legacy Formats):
"     Word: .docx (Document), .docm (Macro-enabled), .doc (Legacy 97-2003),
"           .dotx (Template), .rtf (Rich Text Format)
"     Excel: .xlsx (Spreadsheet), .xlsm (Macro-enabled), .xlsb (Binary),
"            .xls (Legacy), .xltx (Template), .csv
"     PowerPoint: .pptx (Presentation), .pptm (Macro-enabled), .ppt (Legacy),
"                 .ppsx (Slide Show), .potx (Template)
"     Outlook: .pst (Personal Storage Table), .ost (Offline Storage),
"              .msg (Item), .oft (Template)
"     Access: .accdb (Database), .accde (Executable)
"     OneNote: .one, .onetoc2
"     Publisher: .pub
"     Visio: .vsdx (Drawing), .vsdm (Macro-enabled), .vssx (Stencil)

hi  link     NetrwDocs   Debug
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(doc\|docx\|docm\|dotx\|xls\|xlsx\|xlsm\|xlsb\|xltx\|ppt\|msg\|one\|vsd\|vsdx\|vsdm\|pdf\|pub\)\>"


" Windows & System Files:
"     Executables/System: .exe (Application), .dll (Library), .msi (Installer
"                         Package), .sys (System file)
"     Batch/Scripts: .bat (Batch file), .ps1 (PowerShell script),
"                    .vbs (VBScript)
"     Configuration/Log: .ini (Initialization), .log, .cfg
"     Disk Images: .iso, .img, .vhd (Virtual Hard Disk)

hi  link     NetrwExe   Statement
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(exe\|dll\|msi\|sys\|bat\|cmd\|deb\|rpm\|iso\|img\)\>"


" Common Video File Extensions:
"     MP4 (.mp4, .m4v, .m4p): The most common format, widely supported, used
"         for web and mobile.
"     MOV (.mov, .qt): Apple QuickTime format, often used for high-quality
"         video editing.
"     AVI (.avi): Older Microsoft format, high compatibility but often larger
"         file sizes.
"     MKV (.mkv): Matroska multimedia container, supports multiple
"         audio/subtitle tracks.
"     WMV (.wmv, .asf): Windows Media Video format.
"     WebM (.webm, .ogv): Open format designed for the web, often paired
"         with HTML5.
"     FLV/F4V (.flv, .f4v): Adobe Flash video, used for streaming.
"     3GP/3G2 (.3gp, .3g2): Used in older mobile phones.

" Common Audio File Extensions:
"     MP3 (.mp3): The standard format for compressed, portable audio.
"     WAV (.wav, .wave): Uncompressed, high-quality audio standard for Windows.
"     AAC/M4A (.m4a, .aac): Advanced Audio Coding, better quality than MP3 at
"         similar sizes.
"     FLAC (.flac): Free Lossless Audio Codec, offers high quality with
"         compression.
"     Ogg/Vorbis (.ogg, .oga): Open-source, compressed audio.
"     AIFF (.aiff, .aif): Apple's uncompressed, high-quality format.
"     WMA (.wma): Windows Media Audio.
"     DSD (.dsd): Direct Stream Digital.

" Other Specialized Formats:
"     MPEG (.mpg, .mpeg, .mpe): Legacy video formats.
"     DVF/MSV (.dvf, .msv): Sony proprietary voice files.
"     AMV (.amv): Compressed video for MP4 players.
"     IVF (.ivf): Indeo Video Technology.
"     MIDI (.mid, .midi): Musical Instrument Digital Interface.

hi  link     NetrwVidAud   Type
syn match    NetrwVidAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(mp4\|m4v\|m4p\|mov\|qt\|avi\|mkv\|wmv\|asf\|webm\|ogv\|flv\|f4v\|3gp\|3g2\|mp3\|wav\|wave\|m4a\|aac\|flac\|ogg\|oga\|aiff\|aif\|wma\|dsd\|mpg\|mpeg\|mpe\|dvf\|msv\|amv\|ivf\|mid\|midi\)\>"


" Common Raster Image Formats (Pixels):
"     .jpg / .jpeg (Joint Photographic Experts Group): Standard for photos,
"      lossy compression.
"     .png (Portable Network Graphics): Supports transparency and lossless
"      compression.
"     .gif (Graphics Interchange Format): Supports animation and 256 colors.
"     .webp (WebP): Modern format providing superior lossy/lossless compression
"      for web.
"     .tiff / .tif (Tagged Image File Format): High-quality, lossless, used
"      for printing.
"     .bmp (Bitmap): Uncompressed format, usually large file size.
"     .heic / .heif (High Efficiency Image Container): Modern format used by
"      Apple for high quality at smaller sizes.
"     .avif (AV1 Image File Format): Advanced, high-compression format.
"     .jxl (JPEG XL): Modern, high-efficiency image format.

" Vector Image Formats (Paths):
"     .svg (Scalable Vector Graphics): XML-based vector format for web.
"     .ai (Adobe Illustrator): Native Adobe vector file.
"     .eps (Encapsulated PostScript): Vector format for printing.
"     .pdf (Portable Document Format): Can contain both vector and raster data.

" Legacy/Less Common Formats:
"     .jfif (JPEG File Interchange Format).
"     .pjp / .pjpeg (Progressive JPEG).
"     .wmf / .emf (Windows Metafile).
"     .ppm / .pgm / .pbm / .pnm (Portable Anymap).

hi  link     NetrwImg   Conditional
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(jpg\|jpeg\|png\|gif\|webp\|tiff\|tif\|bmp\|heic\|heif\|avif\|jxl\|svg\|ai\|eps\|pdf\|jxl\|pjp\|wmf\|emf\|ppm\|pgm\)\>"


" Key Archive and Compression Formats:
"     .zip: The most common, universally supported format.
"     .zipx: Used by WinZip for advanced, higher-ratio compression.
"     .7z: 7-Zip’s native format, known for high compression ratios and strong
"      encryption.
"     .rar: WinRAR’s archive format, frequently used for large files.
"     .tar / .tar.gz / .tgz: Common on Unix/Linux systems for archiving and
"      compressing files.
"     .gz / .z: GNU gzip format, standard on Linux.
"     .bz2: BZip2 compressed file format.

hi  link     NetrwCompress   Constant
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(zip\|zipx\|7z\|rar\|tar\|tar.gz\|tgz\|gz\|z\|bz2\)\>"


" Programming languages:
hi  link     NetrwPrgm1   Define
syn match    NetrwPrgm1   "\s\.bash[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\>"
syn match    NetrwPrgm1   "\<bash[a-zA-Z0-9_-][a-zA-Z0-9_ -]\+\>"
syn match    NetrwPrgm1   "\s\.cshrc[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\>"
syn match    NetrwPrgm1   "\s\.aliases\>"
syn match    NetrwPrgm1   "\s\.vimrc[a-zA-Z0-9._-]*\>\(\/\)\@!"
syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(sh\|csh\|ps1\|reg\|REG\|vim\|tex\|lean\)\>"

hi  link     NetrwPrgm2   Function
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(vhd\|vhdl\|psl\|sv\|svh\|sv.bak\|vt\|vb\|v\|vlib\|vh\|objdump\|asm\|masm\|s\|c\|cpp\|java\|pl\|pm\|py\|tcl\|f\|pl\|pm\)\>"

" header files
hi  link     NetrwPrgm5   Structure
syn match    NetrwPrgm5   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(h\|hpp\|hh\|hxx\|inl\|tcc\|tpp\|inc\|mac\)\>"

" Text files
hi  link     NetrwText   Number
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.\%(txt\|rtf\|md\|rcf\|csv\|uni\|xml\|sql\|ini\|cfg\|conf\|json\|html\php\|log\|log.[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\)\>"


hi  link     NetrwExec   NonText
syn match    NetrwExec   "*"

" Links
hi  link     NetrwLinks   Question
syn match    NetrwLinks   ".*--> .*"

