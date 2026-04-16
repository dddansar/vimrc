"==============================================================================
" File: c.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all c files.
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
if exists("b:c_loaded")
  finish
endif
let g:c_loaded = 1


"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------

hi  link  CKeywordJump  Statement
syn match CKeywordJump  "\<break\>"     contains=@NoSpell
syn match CKeywordJump  "\<continue\>"  contains=@NoSpell
syn match CKeywordJump  "\<goto\>"      contains=@NoSpell
syn match CKeywordJump  "\<return\>"    contains=@NoSpell

hi  link  CKeyword1     Type
syn match CKeyword1     "\<signed\>"    contains=@NoSpell
syn match CKeyword1     "\<unsigned\>"  contains=@NoSpell

syn match CKeyword1     "\<auto\>"      contains=@NoSpell
syn match CKeyword1     "\<static\>"    contains=@NoSpell
syn match CKeyword1     "\<extern\>"    contains=@NoSpell
syn match CKeyword1     "\<external\>"  contains=@NoSpell
syn match CKeyword1     "\<internal\>"  contains=@NoSpell
syn match CKeyword1     "\<global\>"    contains=@NoSpell
syn match CKeyword1     "\<local\>"     contains=@NoSpell
syn match CKeyword1     "\<automatic\>" contains=@NoSpell
syn match CKeyword1     "\<register\>"  contains=@NoSpell

hi  link  CKeyword2     Type
syn match CKeyword2     "\<codeseg\>"   contains=@NoSpell
syn match CKeyword2     "\<void\>"      contains=@NoSpell

syn match CKeyword2     "\<uintptr_t\>" contains=@NoSpell
syn match CKeyword2     "\<uint64_t\>"  contains=@NoSpell
syn match CKeyword2     "\<uint32_t\>"  contains=@NoSpell
syn match CKeyword2     "\<uint16_t\>"  contains=@NoSpell
syn match CKeyword2     "\<uint8_t\>"   contains=@NoSpell
syn match CKeyword2     "\<int64_t\>"   contains=@NoSpell
syn match CKeyword2     "\<int32_t\>"   contains=@NoSpell
syn match CKeyword2     "\<int16_t\>"   contains=@NoSpell
syn match CKeyword2     "\<int8_t\>"    contains=@NoSpell

syn match CKeyword2     "\<size_t\>"    contains=@NoSpell

syn match CKeyword2     "\<short\>"     contains=@NoSpell
syn match CKeyword2     "\<long\>"      contains=@NoSpell
syn match CKeyword2     "\<char\>"      contains=@NoSpell
syn match CKeyword2     "\<bool\>"      contains=@NoSpell
syn match CKeyword2     "\<int\>"       contains=@NoSpell
syn match CKeyword2     "\<bit_t\>"     contains=@NoSpell
syn match CKeyword2     "\<float\>"     contains=@NoSpell
syn match CKeyword2     "\<double\>"    contains=@NoSpell

syn match CKeyword2     "\<volatile\>"  contains=@NoSpell
syn match CKeyword2     "\<const\>"     contains=@NoSpell

syn match CKeyword3     "\<fortran\>"   contains=@NoSpell
syn match CKeyword3     "\<asm\>"       contains=@NoSpell

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
" List of Standard C Library Functions
hi  link  CKeyword4     Statement
" https://www.ibm.com/docs/en/i/7.5.0?topic=extensions-standard-c-library-functions-table-by-name
syn match CKeyword4     "\<abort\>"           contains=@NoSpell
syn match CKeyword4     "\<abs\>"             contains=@NoSpell
syn match CKeyword4     "\<acos\>"            contains=@NoSpell
syn match CKeyword4     "\<asctime\>"         contains=@NoSpell
syn match CKeyword4     "\<asctime_r\>"       contains=@NoSpell
syn match CKeyword4     "\<asin\>"            contains=@NoSpell
syn match CKeyword4     "\<assert\>"          contains=@NoSpell
syn match CKeyword4     "\<atan\>"            contains=@NoSpell
syn match CKeyword4     "\<atan2\>"           contains=@NoSpell
syn match CKeyword4     "\<atexit\>"          contains=@NoSpell
syn match CKeyword4     "\<atof\>"            contains=@NoSpell
syn match CKeyword4     "\<atoi\>"            contains=@NoSpell
syn match CKeyword4     "\<atol\>"            contains=@NoSpell
syn match CKeyword4     "\<bsearch\>"         contains=@NoSpell
syn match CKeyword4     "\<btowc\>"           contains=@NoSpell
syn match CKeyword4     "\<catclose\>"        contains=@NoSpell
syn match CKeyword4     "\<catgets\>"         contains=@NoSpell
syn match CKeyword4     "\<catopen\>"         contains=@NoSpell
syn match CKeyword4     "\<ceil\>"            contains=@NoSpell
syn match CKeyword4     "\<clearerr\>"        contains=@NoSpell
syn match CKeyword4     "\<clock\>"           contains=@NoSpell
syn match CKeyword4     "\<cos\>"             contains=@NoSpell
syn match CKeyword4     "\<cosh\>"            contains=@NoSpell
syn match CKeyword4     "\<ctime\>"           contains=@NoSpell
syn match CKeyword4     "\<ctime64\>"         contains=@NoSpell
syn match CKeyword4     "\<ctime_r\>"         contains=@NoSpell
syn match CKeyword4     "\<ctime64_r\>"       contains=@NoSpell
syn match CKeyword4     "\<difftime\>"        contains=@NoSpell
syn match CKeyword4     "\<difftime64\>"      contains=@NoSpell
syn match CKeyword4     "\<div\>"             contains=@NoSpell
syn match CKeyword4     "\<erf\>"             contains=@NoSpell
syn match CKeyword4     "\<erfc\>"            contains=@NoSpell
syn match CKeyword4     "\<exit\>"            contains=@NoSpell
syn match CKeyword4     "\<exp\>"             contains=@NoSpell
syn match CKeyword4     "\<fabs\>"            contains=@NoSpell
syn match CKeyword4     "\<fclose\>"          contains=@NoSpell
syn match CKeyword4     "\<fdopen\>"          contains=@NoSpell
syn match CKeyword4     "\<feof\>"            contains=@NoSpell
syn match CKeyword4     "\<ferror\>"          contains=@NoSpell
syn match CKeyword4     "\<fflush\>"          contains=@NoSpell
syn match CKeyword4     "\<fgetc\>"           contains=@NoSpell
syn match CKeyword4     "\<fgetpos\>"         contains=@NoSpell
syn match CKeyword4     "\<fgets\>"           contains=@NoSpell
syn match CKeyword4     "\<fgetwc\>"          contains=@NoSpell
syn match CKeyword4     "\<fgetws\>"          contains=@NoSpell
syn match CKeyword4     "\<fileno\>"          contains=@NoSpell
syn match CKeyword4     "\<floor\>"           contains=@NoSpell
syn match CKeyword4     "\<fmod\>"            contains=@NoSpell
syn match CKeyword4     "\<fopen\>"           contains=@NoSpell
syn match CKeyword4     "\<fprintf\>"         contains=@NoSpell
syn match CKeyword4     "\<fputc\>"           contains=@NoSpell
syn match CKeyword4     "\<fputs\>"           contains=@NoSpell
syn match CKeyword4     "\<fputwc\>"          contains=@NoSpell
syn match CKeyword4     "\<fputws\>"          contains=@NoSpell
syn match CKeyword4     "\<fread\>"           contains=@NoSpell
syn match CKeyword4     "\<freopen\>"         contains=@NoSpell
syn match CKeyword4     "\<frexp\>"           contains=@NoSpell
syn match CKeyword4     "\<fscanf\>"          contains=@NoSpell
syn match CKeyword4     "\<fseek\>"           contains=@NoSpell
syn match CKeyword4     "\<fsetpos\>"         contains=@NoSpell
syn match CKeyword4     "\<ftell\>"           contains=@NoSpell
syn match CKeyword4     "\<fwide\>"           contains=@NoSpell
syn match CKeyword4     "\<fwprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<fwrite\>"          contains=@NoSpell
syn match CKeyword4     "\<fwscanf\>"         contains=@NoSpell
syn match CKeyword4     "\<gamma\>"           contains=@NoSpell
syn match CKeyword4     "\<getc\>"            contains=@NoSpell
syn match CKeyword4     "\<getchar\>"         contains=@NoSpell
syn match CKeyword4     "\<getenv\>"          contains=@NoSpell
syn match CKeyword4     "\<gets\>"            contains=@NoSpell
syn match CKeyword4     "\<getwc\>"           contains=@NoSpell
syn match CKeyword4     "\<getwchar\>"        contains=@NoSpell
syn match CKeyword4     "\<gmtime\>"          contains=@NoSpell
syn match CKeyword4     "\<gmtime64\>"        contains=@NoSpell
syn match CKeyword4     "\<gmtime_r\>"        contains=@NoSpell
syn match CKeyword4     "\<gmtime64_r\>"      contains=@NoSpell
syn match CKeyword4     "\<hypot\>"           contains=@NoSpell
syn match CKeyword4     "\<isalnum\>"         contains=@NoSpell
syn match CKeyword4     "\<isalpha\>"         contains=@NoSpell
syn match CKeyword4     "\<isascii\>"         contains=@NoSpell
syn match CKeyword4     "\<isblank\>"         contains=@NoSpell
syn match CKeyword4     "\<iscntrl\>"         contains=@NoSpell
syn match CKeyword4     "\<isdigit\>"         contains=@NoSpell
syn match CKeyword4     "\<isgraph\>"         contains=@NoSpell
syn match CKeyword4     "\<islower\>"         contains=@NoSpell
syn match CKeyword4     "\<isprint\>"         contains=@NoSpell
syn match CKeyword4     "\<ispunct\>"         contains=@NoSpell
syn match CKeyword4     "\<isspace\>"         contains=@NoSpell
syn match CKeyword4     "\<isupper\>"         contains=@NoSpell
syn match CKeyword4     "\<iswalnum\>"        contains=@NoSpell
syn match CKeyword4     "\<iswalpha\>"        contains=@NoSpell
syn match CKeyword4     "\<iswblank\>"        contains=@NoSpell
syn match CKeyword4     "\<iswcntrl\>"        contains=@NoSpell
syn match CKeyword4     "\<iswctype\>"        contains=@NoSpell
syn match CKeyword4     "\<iswdigit\>"        contains=@NoSpell
syn match CKeyword4     "\<iswgraph\>"        contains=@NoSpell
syn match CKeyword4     "\<iswlower\>"        contains=@NoSpell
syn match CKeyword4     "\<iswprint\>"        contains=@NoSpell
syn match CKeyword4     "\<iswpunct\>"        contains=@NoSpell
syn match CKeyword4     "\<iswspace\>"        contains=@NoSpell
syn match CKeyword4     "\<iswupper\>"        contains=@NoSpell
syn match CKeyword4     "\<iswxdigit\>"       contains=@NoSpell
syn match CKeyword4     "\<isxdigit\>"        contains=@NoSpell
syn match CKeyword4     "\<j0\>"              contains=@NoSpell
syn match CKeyword4     "\<j1\>"              contains=@NoSpell
syn match CKeyword4     "\<jn\>"              contains=@NoSpell
syn match CKeyword4     "\<labs\>"            contains=@NoSpell
syn match CKeyword4     "\<ldexp\>"           contains=@NoSpell
syn match CKeyword4     "\<ldiv\>"            contains=@NoSpell
syn match CKeyword4     "\<localeconv\>"      contains=@NoSpell
syn match CKeyword4     "\<localtime\>"       contains=@NoSpell
syn match CKeyword4     "\<localtime64\>"     contains=@NoSpell
syn match CKeyword4     "\<localtime_r\>"     contains=@NoSpell
syn match CKeyword4     "\<localtime64_r\>"   contains=@NoSpell
syn match CKeyword4     "\<log\>"             contains=@NoSpell
syn match CKeyword4     "\<log10\>"           contains=@NoSpell
syn match CKeyword4     "\<longjmp\>"         contains=@NoSpell
syn match CKeyword4     "\<mblen\>"           contains=@NoSpell
syn match CKeyword4     "\<mbrlen\>"          contains=@NoSpell
syn match CKeyword4     "\<mbrtowc\>"         contains=@NoSpell
syn match CKeyword4     "\<mbsinit\>"         contains=@NoSpell
syn match CKeyword4     "\<mbsrtowcs\>"       contains=@NoSpell
syn match CKeyword4     "\<mbstowcs\>"        contains=@NoSpell
syn match CKeyword4     "\<mbtowc\>"          contains=@NoSpell
syn match CKeyword4     "\<memchr\>"          contains=@NoSpell
syn match CKeyword4     "\<memcmp\>"          contains=@NoSpell
syn match CKeyword4     "\<memcpy\>"          contains=@NoSpell
syn match CKeyword4     "\<memmove\>"         contains=@NoSpell
syn match CKeyword4     "\<memset\>"          contains=@NoSpell
syn match CKeyword4     "\<mktime\>"          contains=@NoSpell
syn match CKeyword4     "\<mktime64\>"        contains=@NoSpell
syn match CKeyword4     "\<modf\>"            contains=@NoSpell
syn match CKeyword4     "\<nextafter\>"       contains=@NoSpell
syn match CKeyword4     "\<nextafterl\>"      contains=@NoSpell
syn match CKeyword4     "\<nexttoward\>"      contains=@NoSpell
syn match CKeyword4     "\<nexttowardl\>"     contains=@NoSpell
syn match CKeyword4     "\<nl_langinfo\>"     contains=@NoSpell
syn match CKeyword4     "\<perror\>"          contains=@NoSpell
syn match CKeyword4     "\<pow\>"             contains=@NoSpell
syn match CKeyword4     "\<printf\>"          contains=@NoSpell
syn match CKeyword4     "\<putc\>"            contains=@NoSpell
syn match CKeyword4     "\<putchar\>"         contains=@NoSpell
syn match CKeyword4     "\<putenv\>"          contains=@NoSpell
syn match CKeyword4     "\<puts\>"            contains=@NoSpell
syn match CKeyword4     "\<putwc\>"           contains=@NoSpell
syn match CKeyword4     "\<putwchar\>"        contains=@NoSpell
syn match CKeyword4     "\<qsort\>"           contains=@NoSpell
syn match CKeyword4     "\<quantexpd32\>"     contains=@NoSpell
syn match CKeyword4     "\<quantexpd64\>"     contains=@NoSpell
syn match CKeyword4     "\<quantexpd128\>"    contains=@NoSpell
syn match CKeyword4     "\<quantized32\>"     contains=@NoSpell
syn match CKeyword4     "\<quantized64\>"     contains=@NoSpell
syn match CKeyword4     "\<quantized128\>"    contains=@NoSpell
syn match CKeyword4     "\<samequantumd32\>"  contains=@NoSpell
syn match CKeyword4     "\<samequantumd64\>"  contains=@NoSpell
syn match CKeyword4     "\<samequantumd128\>" contains=@NoSpell
syn match CKeyword4     "\<raise\>"           contains=@NoSpell
syn match CKeyword4     "\<rand\>"            contains=@NoSpell
syn match CKeyword4     "\<rand_r\>"          contains=@NoSpell
syn match CKeyword4     "\<regcomp\>"         contains=@NoSpell
syn match CKeyword4     "\<regerror\>"        contains=@NoSpell
syn match CKeyword4     "\<regexec\>"         contains=@NoSpell
syn match CKeyword4     "\<regfree\>"         contains=@NoSpell
syn match CKeyword4     "\<remove\>"          contains=@NoSpell
syn match CKeyword4     "\<rename\>"          contains=@NoSpell
syn match CKeyword4     "\<rewind\>"          contains=@NoSpell
syn match CKeyword4     "\<scanf\>"           contains=@NoSpell
syn match CKeyword4     "\<setbuf\>"          contains=@NoSpell
syn match CKeyword4     "\<setjmp\>"          contains=@NoSpell
syn match CKeyword4     "\<setlocale\>"       contains=@NoSpell
syn match CKeyword4     "\<setvbuf\>"         contains=@NoSpell
syn match CKeyword4     "\<signal\>"          contains=@NoSpell
syn match CKeyword4     "\<sin\>"             contains=@NoSpell
syn match CKeyword4     "\<sinh\>"            contains=@NoSpell
syn match CKeyword4     "\<snprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<sprintf\>"         contains=@NoSpell
syn match CKeyword4     "\<sqrt\>"            contains=@NoSpell
syn match CKeyword4     "\<srand\>"           contains=@NoSpell
syn match CKeyword4     "\<sscanf\>"          contains=@NoSpell
syn match CKeyword4     "\<strcasecmp\>"      contains=@NoSpell
syn match CKeyword4     "\<strcat\>"          contains=@NoSpell
syn match CKeyword4     "\<strchr\>"          contains=@NoSpell
syn match CKeyword4     "\<strcmp\>"          contains=@NoSpell
syn match CKeyword4     "\<strcoll\>"         contains=@NoSpell
syn match CKeyword4     "\<strcpy\>"          contains=@NoSpell
syn match CKeyword4     "\<strcspn\>"         contains=@NoSpell
syn match CKeyword4     "\<strerror\>"        contains=@NoSpell
syn match CKeyword4     "\<strfmon\>"         contains=@NoSpell
syn match CKeyword4     "\<strftime\>"        contains=@NoSpell
syn match CKeyword4     "\<strlen\>"          contains=@NoSpell
syn match CKeyword4     "\<strncasecmp\>"     contains=@NoSpell
syn match CKeyword4     "\<strncat\>"         contains=@NoSpell
syn match CKeyword4     "\<strncmp\>"         contains=@NoSpell
syn match CKeyword4     "\<strncpy\>"         contains=@NoSpell
syn match CKeyword4     "\<strpbrk\>"         contains=@NoSpell
syn match CKeyword4     "\<strptime\>"        contains=@NoSpell
syn match CKeyword4     "\<strrchr\>"         contains=@NoSpell
syn match CKeyword4     "\<strspn\>"          contains=@NoSpell
syn match CKeyword4     "\<strstr\>"          contains=@NoSpell
syn match CKeyword4     "\<strtod\>"          contains=@NoSpell
syn match CKeyword4     "\<strtod32\>"        contains=@NoSpell
syn match CKeyword4     "\<strtod64\>"        contains=@NoSpell
syn match CKeyword4     "\<strtod128\>"       contains=@NoSpell
syn match CKeyword4     "\<strtof\>"          contains=@NoSpell
syn match CKeyword4     "\<strtok\>"          contains=@NoSpell
syn match CKeyword4     "\<strtok_r\>"        contains=@NoSpell
syn match CKeyword4     "\<strtol\>"          contains=@NoSpell
syn match CKeyword4     "\<strtold\>"         contains=@NoSpell
syn match CKeyword4     "\<strtoul\>"         contains=@NoSpell
syn match CKeyword4     "\<strxfrm\>"         contains=@NoSpell
syn match CKeyword4     "\<swprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<swscanf\>"         contains=@NoSpell
syn match CKeyword4     "\<system\>"          contains=@NoSpell
syn match CKeyword4     "\<tan\>"             contains=@NoSpell
syn match CKeyword4     "\<tanh\>"            contains=@NoSpell
syn match CKeyword4     "\<time\>"            contains=@NoSpell
syn match CKeyword4     "\<time64\>"          contains=@NoSpell
syn match CKeyword4     "\<tmpfile\>"         contains=@NoSpell
syn match CKeyword4     "\<tmpnam\>"          contains=@NoSpell
syn match CKeyword4     "\<toascii\>"         contains=@NoSpell
syn match CKeyword4     "\<tolower\>"         contains=@NoSpell
syn match CKeyword4     "\<toupper\>"         contains=@NoSpell
syn match CKeyword4     "\<towctrans\>"       contains=@NoSpell
syn match CKeyword4     "\<towlower\>"        contains=@NoSpell
syn match CKeyword4     "\<towupper\>"        contains=@NoSpell
syn match CKeyword4     "\<ungetc\>"          contains=@NoSpell
syn match CKeyword4     "\<ungetwc\>"         contains=@NoSpell
syn match CKeyword4     "\<va_arg\>"          contains=@NoSpell
syn match CKeyword4     "\<va_copy\>"         contains=@NoSpell
syn match CKeyword4     "\<va_end\>"          contains=@NoSpell
syn match CKeyword4     "\<va_start\>"        contains=@NoSpell
syn match CKeyword4     "\<vfprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<vfscanf\>"         contains=@NoSpell
syn match CKeyword4     "\<vfwprintf\>"       contains=@NoSpell
syn match CKeyword4     "\<vfwscanf\>"        contains=@NoSpell
syn match CKeyword4     "\<vprintf\>"         contains=@NoSpell
syn match CKeyword4     "\<vscanf\>"          contains=@NoSpell
syn match CKeyword4     "\<vsprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<vsnprintf\>"       contains=@NoSpell
syn match CKeyword4     "\<vsscanf\>"         contains=@NoSpell
syn match CKeyword4     "\<vswprintf\>"       contains=@NoSpell
syn match CKeyword4     "\<vswscanf\>"        contains=@NoSpell
syn match CKeyword4     "\<vwprintf\>"        contains=@NoSpell
syn match CKeyword4     "\<vwscanf\>"         contains=@NoSpell
syn match CKeyword4     "\<wcrtomb\>"         contains=@NoSpell
syn match CKeyword4     "\<wcscat\>"          contains=@NoSpell
syn match CKeyword4     "\<wcschr\>"          contains=@NoSpell
syn match CKeyword4     "\<wcscmp\>"          contains=@NoSpell
syn match CKeyword4     "\<wcscoll\>"         contains=@NoSpell
syn match CKeyword4     "\<wcscpy\>"          contains=@NoSpell
syn match CKeyword4     "\<wcscspn\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsftime\>"        contains=@NoSpell
syn match CKeyword4     "\<wcslen\>"          contains=@NoSpell
syn match CKeyword4     "\<wcslocaleconv\>"   contains=@NoSpell
syn match CKeyword4     "\<wcsncat\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsncmp\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsncpy\>"         contains=@NoSpell
syn match CKeyword4     "\<wcspbrk\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsptime\>"        contains=@NoSpell
syn match CKeyword4     "\<wcsrchr\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsrtombs\>"       contains=@NoSpell
syn match CKeyword4     "\<wcsspn\>"          contains=@NoSpell
syn match CKeyword4     "\<wcsstr\>"          contains=@NoSpell
syn match CKeyword4     "\<wcstod\>"          contains=@NoSpell
syn match CKeyword4     "\<wcstod32\>"        contains=@NoSpell
syn match CKeyword4     "\<wcstod64\>"        contains=@NoSpell
syn match CKeyword4     "\<wcstod128\>"       contains=@NoSpell
syn match CKeyword4     "\<wcstof\>"          contains=@NoSpell
syn match CKeyword4     "\<wcstok\>"          contains=@NoSpell
syn match CKeyword4     "\<wcstol\>"          contains=@NoSpell
syn match CKeyword4     "\<wcstold\>"         contains=@NoSpell
syn match CKeyword4     "\<wcstombs\>"        contains=@NoSpell
syn match CKeyword4     "\<wcstoul\>"         contains=@NoSpell
syn match CKeyword4     "\<wcsxfrm\>"         contains=@NoSpell
syn match CKeyword4     "\<wctob\>"           contains=@NoSpell
syn match CKeyword4     "\<wctomb\>"          contains=@NoSpell
syn match CKeyword4     "\<wctrans\>"         contains=@NoSpell
syn match CKeyword4     "\<wctype\>"          contains=@NoSpell
syn match CKeyword4     "\<wcwidth\>"         contains=@NoSpell
syn match CKeyword4     "\<wmemchr\>"         contains=@NoSpell
syn match CKeyword4     "\<wmemcmp\>"         contains=@NoSpell
syn match CKeyword4     "\<wmemcpy\>"         contains=@NoSpell
syn match CKeyword4     "\<wmemmove\>"        contains=@NoSpell
syn match CKeyword4     "\<wmemset\>"         contains=@NoSpell
syn match CKeyword4     "\<wprintf\>"         contains=@NoSpell
syn match CKeyword4     "\<wscanf\>"          contains=@NoSpell
syn match CKeyword4     "\<y0\>"              contains=@NoSpell
syn match CKeyword4     "\<y1\>"              contains=@NoSpell
syn match CKeyword4     "\<yn\>"              contains=@NoSpell

syn match CKeyword4     "\<assert.h\>"        contains=@NoSpell
syn match CKeyword4     "\<complex.h\>"       contains=@NoSpell
syn match CKeyword4     "\<ctype.h\>"         contains=@NoSpell
syn match CKeyword4     "\<errno.h\>"         contains=@NoSpell
syn match CKeyword4     "\<fenv.h\>"          contains=@NoSpell
syn match CKeyword4     "\<float.h\>"         contains=@NoSpell
syn match CKeyword4     "\<inttypes.h\>"      contains=@NoSpell
syn match CKeyword4     "\<iso646.h\>"        contains=@NoSpell
syn match CKeyword4     "\<limits.h\>"        contains=@NoSpell
syn match CKeyword4     "\<locale.h\>"        contains=@NoSpell
syn match CKeyword4     "\<math.h\>"          contains=@NoSpell
syn match CKeyword4     "\<setjmp.h\>"        contains=@NoSpell
syn match CKeyword4     "\<signal.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdalign.h\>"      contains=@NoSpell
syn match CKeyword4     "\<stdarg.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdatomic.h\>"     contains=@NoSpell
syn match CKeyword4     "\<stdbit.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdbool.h\>"       contains=@NoSpell
syn match CKeyword4     "\<stddef.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdint.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdio.h\>"         contains=@NoSpell
syn match CKeyword4     "\<stdlib.h\>"        contains=@NoSpell
syn match CKeyword4     "\<stdnoreturn.h\>"   contains=@NoSpell
syn match CKeyword4     "\<string.h\>"        contains=@NoSpell
syn match CKeyword4     "\<tgmath.h\>"        contains=@NoSpell
syn match CKeyword4     "\<threads.h\>"       contains=@NoSpell
syn match CKeyword4     "\<time.h\>"          contains=@NoSpell
syn match CKeyword4     "\<uchar.h\>"         contains=@NoSpell
syn match CKeyword4     "\<wchar.h\>"         contains=@NoSpell
syn match CKeyword4     "\<wctype.h\>"        contains=@NoSpell

syn match CKeyword4     "\<sizeof\>"          contains=@NoSpell


" Highlight some critical functions that require extra care.
hi  link  CKeyword5     WarningMsg
syn match CKeyword5    "\<malloc\>"           contains=@NoSpell
syn match CKeyword5    "\<calloc\>"           contains=@NoSpell
syn match CKeyword5    "\<realloc\>"          contains=@NoSpell
syn match CKeyword5    "\<aligned_alloc\>"    contains=@NoSpell
syn match CKeyword5    "\<free\>"             contains=@NoSpell

syn match CKeyword5    "\<fopen\>"            contains=@NoSpell
syn match CKeyword5    "\<fclose\>"           contains=@NoSpell

syn match CKeyword5    "\<va_start\>"         contains=@NoSpell
syn match CKeyword5    "\<va_end\>"           contains=@NoSpell


hi  link  CKeyword6     Statement
syn match CKeyword6     "\<stdin\>"           contains=@NoSpell
syn match CKeyword6     "\<stdout\>"          contains=@NoSpell
syn match CKeyword6     "\<stderr\>"          contains=@NoSpell

syn match CKeyword6     "\<read\>"            contains=@NoSpell
syn match CKeyword6     "\<write\>"           contains=@NoSpell

" Other time functions/structs not listed above.
syn match CKeyword6     "\<clock_gettime\>"   contains=@NoSpell
syn match CKeyword6     "\<timespec\>"        contains=@NoSpell
syn match CKeyword6     "\<tv_sec\>"          contains=@NoSpell
syn match CKeyword6     "\<tv_nsec\>"         contains=@NoSpell
syn match CKeyword6     "\<lock_getres\>"     contains=@NoSpell
syn match CKeyword6     "\<lock_settime\>"    contains=@NoSpell
syn match CKeyword6     "\<etdate\>"          contains=@NoSpell
syn match CKeyword6     "\<anosleep\>"        contains=@NoSpell
syn match CKeyword6     "\<imer_create\>"     contains=@NoSpell
syn match CKeyword6     "\<imer_delete\>"     contains=@NoSpell
syn match CKeyword6     "\<imer_gettime\>"    contains=@NoSpell
syn match CKeyword6     "\<imer_getoverrun\>" contains=@NoSpell
syn match CKeyword6     "\<imer_settime\>"    contains=@NoSpell
syn match CKeyword6     "\<zset\>"            contains=@NoSpell
syn match CKeyword6     "\<time_t\>"          contains=@NoSpell

hi  link  CKeyword7     Structure
syn match CKeyword7     "\<typedef\>"   contains=@NoSpell
syn match CKeyword7     "\<union\>"           contains=@NoSpell
syn match CKeyword7     "\<struct\>"          contains=@NoSpell
syn match CKeyword7     "\<enum\>"            contains=@NoSpell

"------------------------------------------------------------------------------
"------------------------------------------------------------------------------
" C++ keywords
hi  link  CppKeyword1 Statement
syn match CppKeyword1 "\<\%(class\|private\|protected\|public\|virtual\|friend\|this\|inline\)\>" contains=@NoSpell
syn match CppKeyword1 "\<\%(template\|typename\)\>" contains=@NoSpell
syn match CppKeyword1 "\<\%(new\|delete\)\>" contains=@NoSpell
syn match CppKeyword1 "\<\%(try\|catch\|throw\)\>" contains=@NoSpell
syn match CppKeyword1 "\<\%(namespace\|using\)\>" contains=@NoSpell

hi  link  CppKeyword2 Type
syn match CppKeyword2 "\<\%(static_cast\|dynamic_cast\|const_cast\|reinterpret_cast\)\>" contains=@NoSpell
syn match CppKeyword2 "\<\%(bool\|true\|false\|nullptr\|mutable\|explicit\|operator\|typeid\|typename\|thread_local\|alignas\|alignof\|constexpr\|noexcept\)\>" contains=@NoSpell

syn match CppKeyword2 "\<\%(Type\)\>" contains=@NoSpell

hi  link  CppKeyword3 Statement
syn match CppKeyword3 "\<\%(std::\)\?\%(cout\|cin\)\>" contains=@NoSpell
syn match CppKeyword3 "\<\%(std::\)\?\%(string\|vector\|map\|variant\|optional\|string_view\)\>" contains=@NoSpell
syn match CppKeyword3 "::" contains=@NoSpell
"------------------------------------------------------------------------------
"------------------------------------------------------------------------------



" Mix of my custom syntax and default vim settings.
if g:select_custom_syntax == 2
   " Operators
   hi  link    CSpChars6    Operator
   syn match   CSpChars6    "\%(\/\)\@<!\*\%(\/\)\@!"
   syn match   CSpChars6    "[*]"
   syn match   CSpChars6    "[+]"
   syn match   CSpChars6    "[%^]"
   syn match   CSpChars6    "[&|]"
   syn match   CSpChars6    "[~]"
   syn match   CSpChars6    "-"

   hi  link    CSpTBr       Define
   syn match   CSpTBr       "[><]"

   hi  link    CSpChars9    Exception
   syn match   CSpChars9    "[!]"
endif


hi  link  CUnderUpper     SpecialChar
syn match CUnderUpper     "__[0-9A-Z_]\+"    contains=@NoSpell
hi  link  CUnderLower     SpecialChar
syn match CUnderLower     "__[0-9a-z_]\+"    contains=@NoSpell



hi  link  CMain    Statement
syn match CMain    "\<main\>"            contains=@NoSpell

hi  link  CArg    Debug
syn match CArg    "\<argc\>"            contains=@NoSpell
syn match CArg    "\<argv\>"            contains=@NoSpell


"------------------------------------------------------------------------------
"                                  C abbreviations
"------------------------------------------------------------------------------

inorea _cfunch    //-----------------------------------------------------------------------------<cr>
            \// Function: <cr>
            \// Description: <cr>
            \//-----------------------------------------------------------------------------<c-r>=Eatchar('\s')<cr>
inorea _cfunc0    //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfuncvv   //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(void) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cfunc     //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfuncv    //------------------------------------------------------------------------------<cr>
            \// Function: v_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \void v_fname(int a, int b) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cfunci0   //------------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int i_fname(void) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cfunci    //------------------------------------------------------------------------------<cr>
            \// Function: i_fname<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int i_fname(int a, int b) {<cr>
            \ <bs><cr>
            \return i_fname;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cmain    //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(void) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cmainarg //------------------------------------------------------------------------------<cr>
            \// Function: main<cr>
            \// Description:<cr>
            \//------------------------------------------------------------------------------<cr>
            \int main(int argc, char *argv[]) {<cr>
            \ <bs><cr>
            \return 0;<cr>
            \<bs><bs><bs>}<up><up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>


" Function declarations
inorea _cfdec0   void v_fname(void);<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfdec    void v_fname(int a, int b);<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfdeci0  int i_fname(void);<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfdeci   int i_fname(int a, int b);<left><right><c-r>=Eatchar('\s')<cr>

inorea _cincl    #include <stdio.h><left><right><c-r>=Eatchar('\s')<cr>
inorea _cdefi    #define DEFINEVAR VARVAL<left><right><c-r>=Eatchar('\s')<cr>

inorea _ctype typedef struct s_struct_name {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea _ctype2 typedef struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea _ctype3 typedef struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea _cstruct  struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea _cstruct2  struct s_sname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea _cstruct3  struct {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} s_sname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea _cunion  union u_uname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea _cunion2  union u_uname {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} u_uname_var;<left><right><c-r>=Eatchar('\s')<cr>
inorea _cunion3  union {<cr>
            \int a;<cr>
            \int b;<cr>
            \<bs><bs><bs>} u_uname_var;<left><right><c-r>=Eatchar('\s')<cr>

inorea _cifdef #ifdef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cifndef  #ifndef DEFINEVAR<cr>
            \    <bs><cr>
            \#endif<up><esc>$a<left><right><c-r>=Eatchar('\s')<cr>
inorea _carray   int a_i_aname[] = {0, 1, 2, 3};<left><right><c-r>=Eatchar('\s')<cr>
inorea _carray2  int a_i_aname[][] = {{00, 01, 02, 03},<cr>
            \                   {10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>
inorea _carray3   int a_i_aname[][][] = {{{00, 01, 02, 03},<cr>
            \                      {10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>},<cr>
            \                    {{00, 01, 02, 03},<cr>
            \<bs><bs>{10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>},<cr>
            \{{00, 01, 02, 03},<cr>
            \<bs><bs>{10, 11, 12, 13},<cr>
            \{20, 21, 22, 23}<cr>
            \<bs>}<cr>
            \<bs>};<left><right><c-r>=Eatchar('\s')<cr>

inorea _cinf     printf("\n");<esc>bb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea _cinfo    printf(" = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea _cprintf  printf(" = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea _centr    printf("Entering \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cexit    printf("Exiting \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cerro    printf("ERROR: \n");<esc>bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cerror   printf("ERROR: = %d\n", );<esc>bbbbbbb<left>i<left><right><c-r>=Eatchar('\s')<cr>
inorea _cerr     fprintf(stderr, "ERROR: \n");<cr>
            \exit(1);<esc>k$bbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cerr2    fprintf(stderr, "ERROR: %s\n", msg);<cr>
            \exit(1);<esc>k$bb<left><right><c-r>=Eatchar('\s')<cr>
inorea _cstderr  fprintf(stderr, "ERROR: %s\n", strerror(errno));<esc>bbbbbbbbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfperr   if (fp == NULL) {<cr>
            \fprintf(stderr, "File error: %s\n", strerror(errno));<cr>
            \exit(EXIT_FAILURE);<cr>
            \<bs><bs><bs>}<left><right><c-r>=Eatchar('\s')<cr>

inorea _cif      if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cifel    if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cifelif  if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cifelifel if () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else if() {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} else {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cfor     for (int i=0; i<; i++) {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left><left><left><left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _cwhile   while () {<cr>
            \ <bs><cr>
            \<bs><bs><bs>}<up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cdo do {<cr>
            \ <bs><cr>
            \<bs><bs><bs>} while ();<esc>$<left><left>a<left><right><c-r>=Eatchar('\s')<cr>
inorea _ccase    switch () {<cr>
            \case 0:<cr>
            \break;<cr>
            \<bs><bs><bs>case 1:<cr>
            \break;<cr>
            \<bs><bs><bs>default:<cr>
            \break;<cr>
            \<bs><bs><bs><bs><bs><bs>}<up><up><up><up><up><up><up><esc>$<left><left><left>a<left><right><c-r>=Eatchar('\s')<cr>

inorea _cfree free(p_ptr);<cr>
            \p_ptr = NULL;<esc>kkbbi<left><right><c-r>=Eatchar('\s')<cr>
inorea _cmalloc p_ptr = malloc(num * sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<esc>k_<left><right><c-r>=Eatchar('\s')<cr>
inorea _cmalloc2 p_c_ptr = malloc(num * sizeof(*p_c_ptr));<cr>
            \if (p_c_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after malloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_c_ptr[num-1] = '\0';<esc>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea _cmall    <esc>:normal  acmalloc<cr>jo <bs><esc>:normal acfree<cr>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea _ccalloc p_ptr = calloc(num, sizeof(*p_ptr));<cr>
            \if (p_ptr == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after calloc!!!\n");
            \ exit(1);
            \}<esc>k_<left><right><c-r>=Eatchar('\s')<cr>
inorea _crealloc p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = NULL;<esc>kk_<left><right><c-r>=Eatchar('\s')<cr>
inorea _crealloc2 p_cp_to = realloc(p_cp_from, new_num * sizeof(*p_cp_from));<cr>
            \if (p_cp_to == NULL) {
            \fprintf(stderr, "ERROR: NULL Pointer after realloc!!!\n");
            \ exit(1);
            \}<cr>
            \p_cp_from = p_cp_to;<cr>
            \p_cp_to = NULL;<esc>kkk_<left><right><c-r>=Eatchar('\s')<cr>
"------------------------------------------------------------------------------

