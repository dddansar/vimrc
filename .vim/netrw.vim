"==============================================================================
" File: netrw.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting for the file explorer
"              in vim (using the built-in netrw plugin in vim).
"              Gets loaded by .vimrc in the file explorer with a vim GUI.
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
if exists("b:netrw_loaded")
  finish
endif
let g:netrw_loaded = 1


" Color for no extension.
hi  link     NetrwHidden   AllFilesMidGrey
syn match    NetrwHidden   "\(\/\|\w\)\@<!\.[a-zA-Z0-9_-][a-zA-Z0-9_ -]*\>\(\/\|.\)\@!"


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

hi  link     NetrwDocs   AllFilesSystemColor4
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.doc\>\(\\\)\@!"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.docx\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.docm\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.dotx\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xls\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xlsx\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xlsm\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xlsb\>"

syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xltx\>"

syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ppt\>"

syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.msg\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.one\>"

syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vsd\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vsdx\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vsdm\>"

syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pdf\>"
syn match    NetrwDocs   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pub\>"


" Windows & System Files:
"     Executables/System: .exe (Application), .dll (Library), .msi (Installer
"                         Package), .sys (System file)
"     Batch/Scripts: .bat (Batch file), .ps1 (PowerShell script),
"                    .vbs (VBScript)
"     Configuration/Log: .ini (Initialization), .log, .cfg
"     Disk Images: .iso, .img, .vhd (Virtual Hard Disk)

hi  link     NetrwExe   AllFilesSystemColor
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.exe\>"
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.dll\>"
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.msi\>"
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.sys\>"

syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.bat\>"
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.cmd\>"

syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.deb\>"
syn match    NetrwExe   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.rpm\>"

hi  link     NetrwOther   AllFilesSystemColor
syn match    NetrwOther   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.iso\>"
syn match    NetrwOther   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.img\>"


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

hi  link     NetrwVid   AllFilesSystemColor2
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mp4"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.m4v\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.m4p\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mov\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.qt\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.avi\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mkv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.wmv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.asf\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.webm\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ogv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.flv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.f4v\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.3gp\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.3g2"

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

hi  link     NetrwAud   AllFilesSystemColor2
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mp3"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.wav\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.wave\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.m4a\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.aac\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.flac\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ogg\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.oga\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.aiff\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.aif\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.wma\>"
syn match    NetrwAud   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.dsd\>"


" Other Specialized Formats:
"     MPEG (.mpg, .mpeg, .mpe): Legacy video formats.
"     DVF/MSV (.dvf, .msv): Sony proprietary voice files.
"     AMV (.amv): Compressed video for MP4 players.
"     IVF (.ivf): Indeo Video Technology.
"     MIDI (.mid, .midi): Musical Instrument Digital Interface.

syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mpg\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mpeg\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mpe\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.dvf\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.msv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.amv\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ivf\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.mid\>"
syn match    NetrwVid   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.midi\>"


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

hi  link     NetrwImg   AllFilesSystemColor3
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.jpg\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.jpeg\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.png\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.gif\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.webp\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tiff\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tif\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.bmp\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.heic\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.heif\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.avif\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.jxl\>"


" Vector Image Formats (Paths):
"     .svg (Scalable Vector Graphics): XML-based vector format for web.
"     .ai (Adobe Illustrator): Native Adobe vector file.
"     .eps (Encapsulated PostScript): Vector format for printing.
"     .pdf (Portable Document Format): Can contain both vector and raster data.

syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.svg\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ai\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.eps\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pdf\>"

" Legacy/Less Common Formats:
"     .jfif (JPEG File Interchange Format).
"     .pjp / .pjpeg (Progressive JPEG).
"     .wmf / .emf (Windows Metafile).
"     .ppm / .pgm / .pbm / .pnm (Portable Anymap).

syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.jxl\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pjp\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.wmf\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.emf\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ppm\>"
syn match    NetrwImg   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pgm\>"

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

hi  link     NetrwCompress   AllFilesVarColor
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.zip\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.zipx\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.7z\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.rar\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tar\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tar.gz\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tgz\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.gz\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.z\>"
syn match    NetrwCompress   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.bz2\>"


" Programming languages:
hi  link     NetrwPrgm1   AllFilesCBrColor
syn match    NetrwPrgm1   "\.bash[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\>"
syn match    NetrwPrgm1   "\<bash[a-zA-Z0-9_-][a-zA-Z0-9_ -]\+\>"
syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.sh\>"
syn match    NetrwPrgm1   "\.cshrc[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\>"
syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.csh\>"
syn match    NetrwPrgm1   "\.aliases\>"
syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ps1"

syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.reg"
syn match    NetrwPrgm1   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.REG"

hi  link     NetrwPrgm2   AllFilesFuncColor
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vhd\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vhdl\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.psl\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.sv\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.svh\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.sv.bak\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vt\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vb\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.v\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vlib\>"
syn match    NetrwPrgm2   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vh\>"

hi  link     NetrwPrgm3   AllFilesFuncColor
syn match    NetrwPrgm3   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.objdump\>"
syn match    NetrwPrgm3   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.asm\>"
syn match    NetrwPrgm3   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.masm\>"
syn match    NetrwPrgm3   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.s\>"

hi  link     NetrwPrgm4   AllFilesFuncColor
syn match    NetrwPrgm4   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.c\>"
syn match    NetrwPrgm4   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.cpp\>"

hi  link     NetrwPrgm5   AllFilesPathsColor2
syn match    NetrwPrgm5   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.h\>"
syn match    NetrwPrgm5   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.hpp\>"

hi  link     NetrwPrgm6   AllFilesFuncColor
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.java\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pl\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pm\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.py\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tcl\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.f\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pl\>"
syn match    NetrwPrgm6   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.pm\>"

hi  link     NetrwPrgm7   AllFilesNumColor
syn match    NetrwPrgm7   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.tex\>"
syn match    NetrwPrgm7   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.lean\>"
syn match    NetrwPrgm7   ".vimrc[a-zA-Z0-9._-]*\>\(\/\)\@!"
syn match    NetrwPrgm7   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.vim\>"

" Text files
hi  link     NetrwText   AllFilesNumColor

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.rtf\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.log\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.log.[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\>"
syn match    NetrwText   "\<transcript\>"

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.rcf\>"

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.csv\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.uni\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.xml\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.sql\>"

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.ini\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.cfg\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.conf\>"

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.json\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.html\>"
syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.php\>"

syn match    NetrwText   "\<[a-zA-Z0-9._-][a-zA-Z0-9._ -]*\.txt\>"

" Paths/folders
hi  link     NetrwPaths1   AllFilesPathsColor
syn match    NetrwPaths1   "\%([a-zA-Z0-9_.\-]\|\\ \)\+/" contains=@NoSpell

hi  link     NetrwPaths2   AllFilesPathsColor
syn match    NetrwPaths2   "\.\%([a-zA-Z0-9_.\-]\|\\ \)\+/" contains=@NoSpell

hi  link     NetrwExec   AllFilesSpecialColorB
syn match    NetrwExec   "*"


hi  link     NetrwLinks   AllFilesArrowsColor
syn match    NetrwLinks   ".*--> .*"

