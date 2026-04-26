"==============================================================================
" File: c.vim
"------------------------------------------------------------------------------
" Description: This file adds custom syntax highlighting and abbreviations
"              for all c files.
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


hi  link  CKeywords     Statement
syn keyword CKeywords abort abs acos asctime asctime_r asin assert atan atan2 atexit atof atoi atol bsearch btowc catclose catgets catopen ceil clock cos cosh ctime ctime64 ctime_r ctime64_r difftime difftime64 div erf erfc exit exp fabs floor fmod frexp gamma getc getchar getenv gets getwc getwchar gmtime gmtime64 gmtime_r gmtime64_r hypot isalnum isalpha isascii isblank iscntrl isdigit isgraph islower isprint ispunct isspace isupper iswalnum iswalpha iswblank iswcntrl iswctype iswdigit iswgraph iswlower iswprint iswpunct iswspace iswupper iswxdigit isxdigit j0 j1 jn labs ldexp ldiv localeconv localtime localtime64 localtime_r localtime64_r log log10 longjmp mblen mbrlen mbrtowc mbsinit mbsrtowcs mbstowcs mbtowc mktime mktime64 modf nextafter nextafterl
syn keyword CKeywords nexttoward nexttowardl nl_langinfo pow stdin stdout stderr printf putc putchar putenv puts putwc putwchar qsort quantexpd32 quantexpd64 quantexpd128 quantized32 quantized64 quantized128 samequantumd32 samequantumd64 samequantumd128 raise rand rand_r regcomp regerror regexec regfree scanf setjmp setlocale signal sin sinh snprintf sprintf sqrt srand sscanf strcasecmp strcat strchr strcmp strcoll strcpy strcspn strerror strfmon strftime strlen strncasecmp strncat strncmp strncpy strpbrk strptime strrchr strspn strstr strtod strtod32 strtod64 strtod128 strtof strtok strtok_r strtol strtold strtoul strxfrm swprintf swscanf system tan tanh time time64 toascii tolower toupper towctrans towlower towupper vprintf vscanf vsprintf vsnprintf vsscanf vswprintf vswscanf vwprintf vwscanf wcrtomb wcscat wcschr wcscmp wcscoll wcscpy wcscspn wcsftime wcslen wcslocaleconv wcsncat wcsncmp wcsncpy wcspbrk wcsptime wcsrchr wcsrtombs wcsspn wcsstr wcstod wcstod32 wcstod64 wcstod128 wcstof wcstok wcstol wcstold wcstombs wcstoul wcsxfrm wctob wctomb wctrans wctype wcwidth wprintf wscanf y0 y1 yn
syn keyword CKeywords     clock_gettime timespec tv_sec tv_nsec lock_getres lock_settime setdate nanosleep timer_create timer_delete timer_gettime timer_getoverrun timer_settime zset

hi  link    CKeywords2  Type
syn keyword CKeywords2  sizeof alignof

" Memory
hi  link    CMemory     WarningMsg
syn keyword CMemory     memchr memcmp memcpy memmove memset wmemchr wmemcmp wmemcpy wmemmove wmemset

hi  link    CAlloc      WarningMsg
syn keyword CAlloc      malloc calloc realloc aligned_alloc free va_arg va_copy va_end va_start

" file handling
hi  link    CFileHandl  Operator
syn keyword CFileHandl  fopen fclose freopen fdopen tmpfile tmpnam remove rename fread fgetc fgets fgetwc fgetws fscanf fwscanf fwrite fputc fputs fputwc fputws fprintf fwprintf fseek ftell rewind fgetpos fsetpos feof ferror clearerr fileno fflush fwide setbuf setvbuf perror ungetc ungetwc vfprintf vfscanf vfwprintf vfwscanf

hi  link    CMain       Statement
syn keyword CMain       main

hi  link    CArg        Debug
syn keyword CArg        argc argv

" C++
hi  link    CppKeyword  Type
syn keyword CppKeyword  static_cast dynamic_cast const_cast reinterpret_cast CppKeyword2 Type nullptr

hi  link    CppStd      Statement
syn match   CppStd      "\<\%(std::\)\?\%(cout\|cin\)\>"
syn match   CppStd      "\<\%(std::\)\?\%(string\|vector\|map\|variant\|optional\|string_view\)\>"
syn match   CppStd      "::"


call AllOperators()
call AllShiftOp()
call AllEqualities()
call AllParenBr()
call AllArrows()
call AllSeparators()

