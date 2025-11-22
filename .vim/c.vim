
" syn match CommentColor        "\<malloc\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<calloc\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<realloc\>"   contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<free\>"      contains=@NoSpell contained containedin=CommentColor

" syn match CommentColor        "\<signed\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<unsigned\>"  contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<static\>"    contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "\<uintptr_t\>" contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<uint64_t\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<uint32_t\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<uint16_t\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<uint8_t\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<int64_t\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<int32_t\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<int16_t\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<int8_t\>"    contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "\<codeseg\>"   contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<void\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<goto\>"      contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<break\>"     contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<switch\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<extern\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<defined\>"   contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<define\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<short\>"     contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<long\>"      contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<char\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<bool\>"      contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<bit\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<int\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<bit_t\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<uint32_t\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<float\>"     contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<double\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<volatile\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<const\>"     contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "\<sizeof\>"    contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "\<fortran\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<asm\>"       contains=@NoSpell contained containedin=CommentColor

" syn match CommentColor        "\<pointer\>"   contains=@NoSpell contained containedin=CommentColor

" syn match CommentColor        "\<array\>"     contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<union\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<structs\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<struct\>"    contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<structure\>" contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<enum\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<typedef\>"   contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "__[0-9A-Z_]\+" contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "__[0-9a-z_]\+" contains=@NoSpell contained containedin=CommentColor



"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
" List of Standard C Library Functions
" https://www.ibm.com/docs/en/i/7.5.0?topic=extensions-standard-c-library-functions-table-by-name
syn match CommentColor        "\<abort\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<abs\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<acos\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<asctime\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<asctime_r\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<asin\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<assert\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atan\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atan2\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atexit\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atof\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atoi\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<atol\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<bsearch\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<btowc\>"           contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<calloc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<catclose\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<catgets\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<catopen\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ceil\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<clearerr\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<clock\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<cos\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<cosh\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ctime\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ctime64\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ctime_r\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ctime64_r\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<difftime\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<difftime64\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<div\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<erf\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<erfc\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<exit\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<exp\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fabs\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fclose\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fdopen\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<feof\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ferror\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fflush\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fgetc\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fgetpos\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fgets\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fgetwc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fgetws\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fileno\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<floor\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fmod\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fopen\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fprintf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fputc\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fputs\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fputwc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fputws\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fread\>"           contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<free\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<freopen\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<frexp\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fscanf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fseek\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fsetpos\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ftell\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fwide\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fwprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fwrite\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<fwscanf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gamma\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<getc\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<getchar\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<getenv\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gets\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<getwc\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<getwchar\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gmtime\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gmtime64\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gmtime_r\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<gmtime64_r\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<hypot\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isalnum\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isalpha\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isascii\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isblank\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iscntrl\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isdigit\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isgraph\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<islower\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isprint\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ispunct\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isspace\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isupper\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswalnum\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswalpha\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswblank\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswcntrl\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswctype\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswdigit\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswgraph\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswlower\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswprint\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswpunct\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswspace\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswupper\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<iswxdigit\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<isxdigit\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<j0\>"              contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<j1\>"              contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<jn\>"              contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<labs\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ldexp\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ldiv\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<localeconv\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<localtime\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<localtime64\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<localtime_r\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<localtime64_r\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<log\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<log10\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<longjmp\>"         contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<malloc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mblen\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbrlen\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbrtowc\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbsinit\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbsrtowcs\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbstowcs\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mbtowc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<memchr\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<memcmp\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<memcpy\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<memmove\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<memset\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mktime\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<mktime64\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<modf\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<nextafter\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<nextafterl\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<nexttoward\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<nexttowardl\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<nl_langinfo\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<perror\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<pow\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<printf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<putc\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<putchar\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<putenv\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<puts\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<putwc\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<putwchar\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<qsort\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantexpd32\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantexpd64\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantexpd128\>"    contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantized32\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantized64\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<quantized128\>"    contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<samequantumd32\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<samequantumd64\>"  contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<samequantumd128\>" contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<raise\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<rand\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<rand_r\>"          contains=@NoSpell contained containedin=CommentColor
" syn match CommentColor        "\<realloc\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<regcomp\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<regerror\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<regexec\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<regfree\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<remove\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<rename\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<rewind\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<scanf\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<setbuf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<setjmp\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<setlocale\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<setvbuf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<signal\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<sin\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<sinh\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<snprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<sprintf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<sqrt\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<srand\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<sscanf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcasecmp\>"      contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcat\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strchr\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcmp\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcoll\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcpy\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strcspn\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strerror\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strfmon\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strftime\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strlen\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strncasecmp\>"     contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strncat\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strncmp\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strncpy\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strpbrk\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strptime\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strrchr\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strspn\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strstr\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtod\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtod32\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtod64\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtod128\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtof\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtok\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtok_r\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtol\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtold\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strtoul\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<strxfrm\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<swprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<swscanf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<system\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<tan\>"             contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<tanh\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<time\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<time64\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<tmpfile\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<tmpnam\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<toascii\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<tolower\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<toupper\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<towctrans\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<towlower\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<towupper\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ungetc\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<ungetwc\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<va_arg\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<va_copy\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<va_end\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<va_start\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vfprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vfscanf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vfwprintf\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vfwscanf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vprintf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vscanf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vsprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vsnprintf\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vsscanf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vswprintf\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vswscanf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vwprintf\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<vwscanf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcrtomb\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcscat\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcschr\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcscmp\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcscoll\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcscpy\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcscspn\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsftime\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcslen\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcslocaleconv\>"   contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsncat\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsncmp\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsncpy\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcspbrk\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsptime\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsrchr\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsrtombs\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsspn\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsstr\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstod\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstod32\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstod64\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstod128\>"       contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstof\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstok\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstol\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstold\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstombs\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcstoul\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcsxfrm\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wctob\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wctomb\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wctrans\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wctype\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wcwidth\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wmemchr\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wmemcmp\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wmemcpy\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wmemmove\>"        contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wmemset\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wprintf\>"         contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<wscanf\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<y0\>"              contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<y1\>"              contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<yn\>"              contains=@NoSpell contained containedin=CommentColor


syn match CommentColor        "\<argc\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<argv\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<stdin\>"           contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<stdout\>"          contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<stderr\>"          contains=@NoSpell contained containedin=CommentColor

syn match CommentColor        "\<read\>"            contains=@NoSpell contained containedin=CommentColor
syn match CommentColor        "\<write\>"           contains=@NoSpell contained containedin=CommentColor
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------


"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------


syn match FluoGreenColorb     "\<signed\>"    contains=@NoSpell
syn match FluoGreenColorb     "\<unsigned\>"  contains=@NoSpell

syn match FluoGreenColorb     "\<auto\>"      contains=@NoSpell
syn match FluoGreenColorb     "\<static\>"    contains=@NoSpell
syn match FluoGreenColorb     "\<extern\>"    contains=@NoSpell
syn match FluoGreenColorb     "\<external\>"  contains=@NoSpell
syn match FluoGreenColorb     "\<internal\>"  contains=@NoSpell
syn match FluoGreenColorb     "\<global\>"    contains=@NoSpell
syn match FluoGreenColorb     "\<local\>"     contains=@NoSpell
syn match FluoGreenColorb     "\<automatic\>" contains=@NoSpell
syn match FluoGreenColorb     "\<register\>"  contains=@NoSpell


syn match YellowColorb        "\<codeseg\>"   contains=@NoSpell
syn match YellowColorb        "\<void\>"      contains=@NoSpell

syn match YellowColorb        "\<break\>"     contains=@NoSpell
syn match YellowColorb        "\<continue\>"  contains=@NoSpell
syn match YellowColorb        "\<switch\>"    contains=@NoSpell
syn match YellowColorb        "\<goto\>"      contains=@NoSpell

syn match YellowColorb        "\<uintptr_t\>" contains=@NoSpell
syn match YellowColorb        "\<uint64_t\>"  contains=@NoSpell
syn match YellowColorb        "\<uint32_t\>"  contains=@NoSpell
syn match YellowColorb        "\<uint16_t\>"  contains=@NoSpell
syn match YellowColorb        "\<uint8_t\>"   contains=@NoSpell
syn match YellowColorb        "\<int64_t\>"   contains=@NoSpell
syn match YellowColorb        "\<int32_t\>"   contains=@NoSpell
syn match YellowColorb        "\<int16_t\>"   contains=@NoSpell
syn match YellowColorb        "\<int8_t\>"    contains=@NoSpell

syn match YellowColorb        "\<size_t\>"    contains=@NoSpell

syn match YellowColorb        "\<short\>"     contains=@NoSpell
syn match YellowColorb        "\<long\>"      contains=@NoSpell
syn match YellowColorb        "\<char\>"      contains=@NoSpell
syn match YellowColorb        "\<bool\>"      contains=@NoSpell
" syn match YellowColorb        "\<bit\>"       contains=@NoSpell
syn match YellowColorb        "\<int\>"       contains=@NoSpell
syn match YellowColorb        "\<bit_t\>"     contains=@NoSpell
syn match YellowColorb        "\<float\>"     contains=@NoSpell
syn match YellowColorb        "\<double\>"    contains=@NoSpell

syn match GreenColorb         "\<volatile\>"  contains=@NoSpell
syn match GreenColorb         "\<const\>"     contains=@NoSpell

" The sizeof operator in C is a compile-time unary operator used to determine the size, in bytes, of a data type or a variable. It returns an unsigned integral value, typically of type size_t, which represents the amount of memory allocated for its operand.
syn match YellowColorb        "\<sizeof\>"    contains=@NoSpell

syn match GreenColorb         "\<fortran\>"   contains=@NoSpell
syn match GreenColorb         "\<asm\>"       contains=@NoSpell

"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
" List of Standard C Library Functions
" https://www.ibm.com/docs/en/i/7.5.0?topic=extensions-standard-c-library-functions-table-by-name
syn match YellowColorb        "\<abort\>"           contains=@NoSpell
syn match YellowColorb        "\<abs\>"             contains=@NoSpell
syn match YellowColorb        "\<acos\>"            contains=@NoSpell
syn match YellowColorb        "\<asctime\>"         contains=@NoSpell
syn match YellowColorb        "\<asctime_r\>"       contains=@NoSpell
syn match YellowColorb        "\<asin\>"            contains=@NoSpell
syn match YellowColorb        "\<assert\>"          contains=@NoSpell
syn match YellowColorb        "\<atan\>"            contains=@NoSpell
syn match YellowColorb        "\<atan2\>"           contains=@NoSpell
syn match YellowColorb        "\<atexit\>"          contains=@NoSpell
syn match YellowColorb        "\<atof\>"            contains=@NoSpell
syn match YellowColorb        "\<atoi\>"            contains=@NoSpell
syn match YellowColorb        "\<atol\>"            contains=@NoSpell
syn match YellowColorb        "\<bsearch\>"         contains=@NoSpell
syn match YellowColorb        "\<btowc\>"           contains=@NoSpell
" syn match YellowColorb        "\<calloc\>"          contains=@NoSpell
syn match YellowColorb        "\<catclose\>"        contains=@NoSpell
syn match YellowColorb        "\<catgets\>"         contains=@NoSpell
syn match YellowColorb        "\<catopen\>"         contains=@NoSpell
syn match YellowColorb        "\<ceil\>"            contains=@NoSpell
syn match YellowColorb        "\<clearerr\>"        contains=@NoSpell
syn match YellowColorb        "\<clock\>"           contains=@NoSpell
syn match YellowColorb        "\<cos\>"             contains=@NoSpell
syn match YellowColorb        "\<cosh\>"            contains=@NoSpell
syn match YellowColorb        "\<ctime\>"           contains=@NoSpell
syn match YellowColorb        "\<ctime64\>"         contains=@NoSpell
syn match YellowColorb        "\<ctime_r\>"         contains=@NoSpell
syn match YellowColorb        "\<ctime64_r\>"       contains=@NoSpell
syn match YellowColorb        "\<difftime\>"        contains=@NoSpell
syn match YellowColorb        "\<difftime64\>"      contains=@NoSpell
syn match YellowColorb        "\<div\>"             contains=@NoSpell
syn match YellowColorb        "\<erf\>"             contains=@NoSpell
syn match YellowColorb        "\<erfc\>"            contains=@NoSpell
syn match YellowColorb        "\<exit\>"            contains=@NoSpell
syn match YellowColorb        "\<exp\>"             contains=@NoSpell
syn match YellowColorb        "\<fabs\>"            contains=@NoSpell
syn match YellowColorb        "\<fclose\>"          contains=@NoSpell
syn match YellowColorb        "\<fdopen\>"          contains=@NoSpell
syn match YellowColorb        "\<feof\>"            contains=@NoSpell
syn match YellowColorb        "\<ferror\>"          contains=@NoSpell
syn match YellowColorb        "\<fflush\>"          contains=@NoSpell
syn match YellowColorb        "\<fgetc\>"           contains=@NoSpell
syn match YellowColorb        "\<fgetpos\>"         contains=@NoSpell
syn match YellowColorb        "\<fgets\>"           contains=@NoSpell
syn match YellowColorb        "\<fgetwc\>"          contains=@NoSpell
syn match YellowColorb        "\<fgetws\>"          contains=@NoSpell
syn match YellowColorb        "\<fileno\>"          contains=@NoSpell
syn match YellowColorb        "\<floor\>"           contains=@NoSpell
syn match YellowColorb        "\<fmod\>"            contains=@NoSpell
syn match YellowColorb        "\<fopen\>"           contains=@NoSpell
syn match YellowColorb        "\<fprintf\>"         contains=@NoSpell
syn match YellowColorb        "\<fputc\>"           contains=@NoSpell
syn match YellowColorb        "\<fputs\>"           contains=@NoSpell
syn match YellowColorb        "\<fputwc\>"          contains=@NoSpell
syn match YellowColorb        "\<fputws\>"          contains=@NoSpell
syn match YellowColorb        "\<fread\>"           contains=@NoSpell
" syn match YellowColorb        "\<free\>"            contains=@NoSpell
syn match YellowColorb        "\<freopen\>"         contains=@NoSpell
syn match YellowColorb        "\<frexp\>"           contains=@NoSpell
syn match YellowColorb        "\<fscanf\>"          contains=@NoSpell
syn match YellowColorb        "\<fseek\>"           contains=@NoSpell
syn match YellowColorb        "\<fsetpos\>"         contains=@NoSpell
syn match YellowColorb        "\<ftell\>"           contains=@NoSpell
syn match YellowColorb        "\<fwide\>"           contains=@NoSpell
syn match YellowColorb        "\<fwprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<fwrite\>"          contains=@NoSpell
syn match YellowColorb        "\<fwscanf\>"         contains=@NoSpell
syn match YellowColorb        "\<gamma\>"           contains=@NoSpell
syn match YellowColorb        "\<getc\>"            contains=@NoSpell
syn match YellowColorb        "\<getchar\>"         contains=@NoSpell
syn match YellowColorb        "\<getenv\>"          contains=@NoSpell
syn match YellowColorb        "\<gets\>"            contains=@NoSpell
syn match YellowColorb        "\<getwc\>"           contains=@NoSpell
syn match YellowColorb        "\<getwchar\>"        contains=@NoSpell
syn match YellowColorb        "\<gmtime\>"          contains=@NoSpell
syn match YellowColorb        "\<gmtime64\>"        contains=@NoSpell
syn match YellowColorb        "\<gmtime_r\>"        contains=@NoSpell
syn match YellowColorb        "\<gmtime64_r\>"      contains=@NoSpell
syn match YellowColorb        "\<hypot\>"           contains=@NoSpell
syn match YellowColorb        "\<isalnum\>"         contains=@NoSpell
syn match YellowColorb        "\<isalpha\>"         contains=@NoSpell
syn match YellowColorb        "\<isascii\>"         contains=@NoSpell
syn match YellowColorb        "\<isblank\>"         contains=@NoSpell
syn match YellowColorb        "\<iscntrl\>"         contains=@NoSpell
syn match YellowColorb        "\<isdigit\>"         contains=@NoSpell
syn match YellowColorb        "\<isgraph\>"         contains=@NoSpell
syn match YellowColorb        "\<islower\>"         contains=@NoSpell
syn match YellowColorb        "\<isprint\>"         contains=@NoSpell
syn match YellowColorb        "\<ispunct\>"         contains=@NoSpell
syn match YellowColorb        "\<isspace\>"         contains=@NoSpell
syn match YellowColorb        "\<isupper\>"         contains=@NoSpell
syn match YellowColorb        "\<iswalnum\>"        contains=@NoSpell
syn match YellowColorb        "\<iswalpha\>"        contains=@NoSpell
syn match YellowColorb        "\<iswblank\>"        contains=@NoSpell
syn match YellowColorb        "\<iswcntrl\>"        contains=@NoSpell
syn match YellowColorb        "\<iswctype\>"        contains=@NoSpell
syn match YellowColorb        "\<iswdigit\>"        contains=@NoSpell
syn match YellowColorb        "\<iswgraph\>"        contains=@NoSpell
syn match YellowColorb        "\<iswlower\>"        contains=@NoSpell
syn match YellowColorb        "\<iswprint\>"        contains=@NoSpell
syn match YellowColorb        "\<iswpunct\>"        contains=@NoSpell
syn match YellowColorb        "\<iswspace\>"        contains=@NoSpell
syn match YellowColorb        "\<iswupper\>"        contains=@NoSpell
syn match YellowColorb        "\<iswxdigit\>"       contains=@NoSpell
syn match YellowColorb        "\<isxdigit\>"        contains=@NoSpell
syn match YellowColorb        "\<j0\>"              contains=@NoSpell
syn match YellowColorb        "\<j1\>"              contains=@NoSpell
syn match YellowColorb        "\<jn\>"              contains=@NoSpell
syn match YellowColorb        "\<labs\>"            contains=@NoSpell
syn match YellowColorb        "\<ldexp\>"           contains=@NoSpell
syn match YellowColorb        "\<ldiv\>"            contains=@NoSpell
syn match YellowColorb        "\<localeconv\>"      contains=@NoSpell
syn match YellowColorb        "\<localtime\>"       contains=@NoSpell
syn match YellowColorb        "\<localtime64\>"     contains=@NoSpell
syn match YellowColorb        "\<localtime_r\>"     contains=@NoSpell
syn match YellowColorb        "\<localtime64_r\>"   contains=@NoSpell
syn match YellowColorb        "\<log\>"             contains=@NoSpell
syn match YellowColorb        "\<log10\>"           contains=@NoSpell
syn match YellowColorb        "\<longjmp\>"         contains=@NoSpell
" syn match YellowColorb        "\<malloc\>"          contains=@NoSpell
syn match YellowColorb        "\<mblen\>"           contains=@NoSpell
syn match YellowColorb        "\<mbrlen\>"          contains=@NoSpell
syn match YellowColorb        "\<mbrtowc\>"         contains=@NoSpell
syn match YellowColorb        "\<mbsinit\>"         contains=@NoSpell
syn match YellowColorb        "\<mbsrtowcs\>"       contains=@NoSpell
syn match YellowColorb        "\<mbstowcs\>"        contains=@NoSpell
syn match YellowColorb        "\<mbtowc\>"          contains=@NoSpell
syn match YellowColorb        "\<memchr\>"          contains=@NoSpell
syn match YellowColorb        "\<memcmp\>"          contains=@NoSpell
syn match YellowColorb        "\<memcpy\>"          contains=@NoSpell
syn match YellowColorb        "\<memmove\>"         contains=@NoSpell
syn match YellowColorb        "\<memset\>"          contains=@NoSpell
syn match YellowColorb        "\<mktime\>"          contains=@NoSpell
syn match YellowColorb        "\<mktime64\>"        contains=@NoSpell
syn match YellowColorb        "\<modf\>"            contains=@NoSpell
syn match YellowColorb        "\<nextafter\>"       contains=@NoSpell
syn match YellowColorb        "\<nextafterl\>"      contains=@NoSpell
syn match YellowColorb        "\<nexttoward\>"      contains=@NoSpell
syn match YellowColorb        "\<nexttowardl\>"     contains=@NoSpell
syn match YellowColorb        "\<nl_langinfo\>"     contains=@NoSpell
syn match YellowColorb        "\<perror\>"          contains=@NoSpell
syn match YellowColorb        "\<pow\>"             contains=@NoSpell
syn match YellowColorb        "\<printf\>"          contains=@NoSpell
syn match YellowColorb        "\<putc\>"            contains=@NoSpell
syn match YellowColorb        "\<putchar\>"         contains=@NoSpell
syn match YellowColorb        "\<putenv\>"          contains=@NoSpell
syn match YellowColorb        "\<puts\>"            contains=@NoSpell
syn match YellowColorb        "\<putwc\>"           contains=@NoSpell
syn match YellowColorb        "\<putwchar\>"        contains=@NoSpell
syn match YellowColorb        "\<qsort\>"           contains=@NoSpell
syn match YellowColorb        "\<quantexpd32\>"     contains=@NoSpell
syn match YellowColorb        "\<quantexpd64\>"     contains=@NoSpell
syn match YellowColorb        "\<quantexpd128\>"    contains=@NoSpell
syn match YellowColorb        "\<quantized32\>"     contains=@NoSpell
syn match YellowColorb        "\<quantized64\>"     contains=@NoSpell
syn match YellowColorb        "\<quantized128\>"    contains=@NoSpell
syn match YellowColorb        "\<samequantumd32\>"  contains=@NoSpell
syn match YellowColorb        "\<samequantumd64\>"  contains=@NoSpell
syn match YellowColorb        "\<samequantumd128\>" contains=@NoSpell
syn match YellowColorb        "\<raise\>"           contains=@NoSpell
syn match YellowColorb        "\<rand\>"            contains=@NoSpell
syn match YellowColorb        "\<rand_r\>"          contains=@NoSpell
" syn match YellowColorb        "\<realloc\>"         contains=@NoSpell
syn match YellowColorb        "\<regcomp\>"         contains=@NoSpell
syn match YellowColorb        "\<regerror\>"        contains=@NoSpell
syn match YellowColorb        "\<regexec\>"         contains=@NoSpell
syn match YellowColorb        "\<regfree\>"         contains=@NoSpell
syn match YellowColorb        "\<remove\>"          contains=@NoSpell
syn match YellowColorb        "\<rename\>"          contains=@NoSpell
syn match YellowColorb        "\<rewind\>"          contains=@NoSpell
syn match YellowColorb        "\<scanf\>"           contains=@NoSpell
syn match YellowColorb        "\<setbuf\>"          contains=@NoSpell
syn match YellowColorb        "\<setjmp\>"          contains=@NoSpell
syn match YellowColorb        "\<setlocale\>"       contains=@NoSpell
syn match YellowColorb        "\<setvbuf\>"         contains=@NoSpell
syn match YellowColorb        "\<signal\>"          contains=@NoSpell
syn match YellowColorb        "\<sin\>"             contains=@NoSpell
syn match YellowColorb        "\<sinh\>"            contains=@NoSpell
syn match YellowColorb        "\<snprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<sprintf\>"         contains=@NoSpell
syn match YellowColorb        "\<sqrt\>"            contains=@NoSpell
syn match YellowColorb        "\<srand\>"           contains=@NoSpell
syn match YellowColorb        "\<sscanf\>"          contains=@NoSpell
syn match YellowColorb        "\<strcasecmp\>"      contains=@NoSpell
syn match YellowColorb        "\<strcat\>"          contains=@NoSpell
syn match YellowColorb        "\<strchr\>"          contains=@NoSpell
syn match YellowColorb        "\<strcmp\>"          contains=@NoSpell
syn match YellowColorb        "\<strcoll\>"         contains=@NoSpell
syn match YellowColorb        "\<strcpy\>"          contains=@NoSpell
syn match YellowColorb        "\<strcspn\>"         contains=@NoSpell
syn match YellowColorb        "\<strerror\>"        contains=@NoSpell
syn match YellowColorb        "\<strfmon\>"         contains=@NoSpell
syn match YellowColorb        "\<strftime\>"        contains=@NoSpell
syn match YellowColorb        "\<strlen\>"          contains=@NoSpell
syn match YellowColorb        "\<strncasecmp\>"     contains=@NoSpell
syn match YellowColorb        "\<strncat\>"         contains=@NoSpell
syn match YellowColorb        "\<strncmp\>"         contains=@NoSpell
syn match YellowColorb        "\<strncpy\>"         contains=@NoSpell
syn match YellowColorb        "\<strpbrk\>"         contains=@NoSpell
syn match YellowColorb        "\<strptime\>"        contains=@NoSpell
syn match YellowColorb        "\<strrchr\>"         contains=@NoSpell
syn match YellowColorb        "\<strspn\>"          contains=@NoSpell
syn match YellowColorb        "\<strstr\>"          contains=@NoSpell
syn match YellowColorb        "\<strtod\>"          contains=@NoSpell
syn match YellowColorb        "\<strtod32\>"        contains=@NoSpell
syn match YellowColorb        "\<strtod64\>"        contains=@NoSpell
syn match YellowColorb        "\<strtod128\>"       contains=@NoSpell
syn match YellowColorb        "\<strtof\>"          contains=@NoSpell
syn match YellowColorb        "\<strtok\>"          contains=@NoSpell
syn match YellowColorb        "\<strtok_r\>"        contains=@NoSpell
syn match YellowColorb        "\<strtol\>"          contains=@NoSpell
syn match YellowColorb        "\<strtold\>"         contains=@NoSpell
syn match YellowColorb        "\<strtoul\>"         contains=@NoSpell
syn match YellowColorb        "\<strxfrm\>"         contains=@NoSpell
syn match YellowColorb        "\<swprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<swscanf\>"         contains=@NoSpell
syn match YellowColorb        "\<system\>"          contains=@NoSpell
syn match YellowColorb        "\<tan\>"             contains=@NoSpell
syn match YellowColorb        "\<tanh\>"            contains=@NoSpell
syn match YellowColorb        "\<time\>"            contains=@NoSpell
syn match YellowColorb        "\<time64\>"          contains=@NoSpell
syn match YellowColorb        "\<tmpfile\>"         contains=@NoSpell
syn match YellowColorb        "\<tmpnam\>"          contains=@NoSpell
syn match YellowColorb        "\<toascii\>"         contains=@NoSpell
syn match YellowColorb        "\<tolower\>"         contains=@NoSpell
syn match YellowColorb        "\<toupper\>"         contains=@NoSpell
syn match YellowColorb        "\<towctrans\>"       contains=@NoSpell
syn match YellowColorb        "\<towlower\>"        contains=@NoSpell
syn match YellowColorb        "\<towupper\>"        contains=@NoSpell
syn match YellowColorb        "\<ungetc\>"          contains=@NoSpell
syn match YellowColorb        "\<ungetwc\>"         contains=@NoSpell
syn match YellowColorb        "\<va_arg\>"          contains=@NoSpell
syn match YellowColorb        "\<va_copy\>"         contains=@NoSpell
syn match YellowColorb        "\<va_end\>"          contains=@NoSpell
syn match YellowColorb        "\<va_start\>"        contains=@NoSpell
syn match YellowColorb        "\<vfprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<vfscanf\>"         contains=@NoSpell
syn match YellowColorb        "\<vfwprintf\>"       contains=@NoSpell
syn match YellowColorb        "\<vfwscanf\>"        contains=@NoSpell
syn match YellowColorb        "\<vprintf\>"         contains=@NoSpell
syn match YellowColorb        "\<vscanf\>"          contains=@NoSpell
syn match YellowColorb        "\<vsprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<vsnprintf\>"       contains=@NoSpell
syn match YellowColorb        "\<vsscanf\>"         contains=@NoSpell
syn match YellowColorb        "\<vswprintf\>"       contains=@NoSpell
syn match YellowColorb        "\<vswscanf\>"        contains=@NoSpell
syn match YellowColorb        "\<vwprintf\>"        contains=@NoSpell
syn match YellowColorb        "\<vwscanf\>"         contains=@NoSpell
syn match YellowColorb        "\<wcrtomb\>"         contains=@NoSpell
syn match YellowColorb        "\<wcscat\>"          contains=@NoSpell
syn match YellowColorb        "\<wcschr\>"          contains=@NoSpell
syn match YellowColorb        "\<wcscmp\>"          contains=@NoSpell
syn match YellowColorb        "\<wcscoll\>"         contains=@NoSpell
syn match YellowColorb        "\<wcscpy\>"          contains=@NoSpell
syn match YellowColorb        "\<wcscspn\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsftime\>"        contains=@NoSpell
syn match YellowColorb        "\<wcslen\>"          contains=@NoSpell
syn match YellowColorb        "\<wcslocaleconv\>"   contains=@NoSpell
syn match YellowColorb        "\<wcsncat\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsncmp\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsncpy\>"         contains=@NoSpell
syn match YellowColorb        "\<wcspbrk\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsptime\>"        contains=@NoSpell
syn match YellowColorb        "\<wcsrchr\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsrtombs\>"       contains=@NoSpell
syn match YellowColorb        "\<wcsspn\>"          contains=@NoSpell
syn match YellowColorb        "\<wcsstr\>"          contains=@NoSpell
syn match YellowColorb        "\<wcstod\>"          contains=@NoSpell
syn match YellowColorb        "\<wcstod32\>"        contains=@NoSpell
syn match YellowColorb        "\<wcstod64\>"        contains=@NoSpell
syn match YellowColorb        "\<wcstod128\>"       contains=@NoSpell
syn match YellowColorb        "\<wcstof\>"          contains=@NoSpell
syn match YellowColorb        "\<wcstok\>"          contains=@NoSpell
syn match YellowColorb        "\<wcstol\>"          contains=@NoSpell
syn match YellowColorb        "\<wcstold\>"         contains=@NoSpell
syn match YellowColorb        "\<wcstombs\>"        contains=@NoSpell
syn match YellowColorb        "\<wcstoul\>"         contains=@NoSpell
syn match YellowColorb        "\<wcsxfrm\>"         contains=@NoSpell
syn match YellowColorb        "\<wctob\>"           contains=@NoSpell
syn match YellowColorb        "\<wctomb\>"          contains=@NoSpell
syn match YellowColorb        "\<wctrans\>"         contains=@NoSpell
syn match YellowColorb        "\<wctype\>"          contains=@NoSpell
syn match YellowColorb        "\<wcwidth\>"         contains=@NoSpell
syn match YellowColorb        "\<wmemchr\>"         contains=@NoSpell
syn match YellowColorb        "\<wmemcmp\>"         contains=@NoSpell
syn match YellowColorb        "\<wmemcpy\>"         contains=@NoSpell
syn match YellowColorb        "\<wmemmove\>"        contains=@NoSpell
syn match YellowColorb        "\<wmemset\>"         contains=@NoSpell
syn match YellowColorb        "\<wprintf\>"         contains=@NoSpell
syn match YellowColorb        "\<wscanf\>"          contains=@NoSpell
syn match YellowColorb        "\<y0\>"              contains=@NoSpell
syn match YellowColorb        "\<y1\>"              contains=@NoSpell
syn match YellowColorb        "\<yn\>"              contains=@NoSpell

syn match YellowColorb        "\<assert.h\>"        contains=@NoSpell
syn match YellowColorb        "\<complex.h\>"       contains=@NoSpell
syn match YellowColorb        "\<ctype.h\>"         contains=@NoSpell
syn match YellowColorb        "\<errno.h\>"         contains=@NoSpell
syn match YellowColorb        "\<fenv.h\>"          contains=@NoSpell
syn match YellowColorb        "\<float.h\>"         contains=@NoSpell
syn match YellowColorb        "\<inttypes.h\>"      contains=@NoSpell
syn match YellowColorb        "\<iso646.h\>"        contains=@NoSpell
syn match YellowColorb        "\<limits.h\>"        contains=@NoSpell
syn match YellowColorb        "\<locale.h\>"        contains=@NoSpell
syn match YellowColorb        "\<math.h\>"          contains=@NoSpell
syn match YellowColorb        "\<setjmp.h\>"        contains=@NoSpell
syn match YellowColorb        "\<signal.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdalign.h\>"      contains=@NoSpell
syn match YellowColorb        "\<stdarg.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdatomic.h\>"     contains=@NoSpell
syn match YellowColorb        "\<stdbit.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdbool.h\>"       contains=@NoSpell
syn match YellowColorb        "\<stddef.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdint.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdio.h\>"         contains=@NoSpell
syn match YellowColorb        "\<stdlib.h\>"        contains=@NoSpell
syn match YellowColorb        "\<stdnoreturn.h\>"   contains=@NoSpell
syn match YellowColorb        "\<string.h\>"        contains=@NoSpell
syn match YellowColorb        "\<tgmath.h\>"        contains=@NoSpell
syn match YellowColorb        "\<threads.h\>"       contains=@NoSpell
syn match YellowColorb        "\<time.h\>"          contains=@NoSpell
syn match YellowColorb        "\<uchar.h\>"         contains=@NoSpell
syn match YellowColorb        "\<wchar.h\>"         contains=@NoSpell
syn match YellowColorb        "\<wctype.h\>"        contains=@NoSpell


" highlight some critical functions that require care
syn case ignore
syn match BoldAndUnderlineRed    "\<malloc\>"         contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<calloc\>"         contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<realloc\>"        contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<aligned_alloc\>"  contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<free\>"           contains=@NoSpell containedin=CommentColor

syn match BoldAndUnderlineRed    "\<fopen\>"          contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<fclose\>"         contains=@NoSpell containedin=CommentColor

syn match BoldAndUnderlineRed    "\<va_start\>"       contains=@NoSpell containedin=CommentColor
syn match BoldAndUnderlineRed    "\<va_end\>"         contains=@NoSpell containedin=CommentColor
syn case match

" syn match Error               "\<malloc\>"    contains=@NoSpell containedin=CommentColor
" syn match Error               "\<calloc\>"    contains=@NoSpell containedin=CommentColor
" syn match Error               "\<realloc\>"   contains=@NoSpell containedin=CommentColor
" syn match Error               "\<free\>"      contains=@NoSpell containedin=CommentColor
"
" syn match Error               "\<fopen\>"     contains=@NoSpell containedin=CommentColor
" syn match Error               "\<fclose\>"    contains=@NoSpell containedin=CommentColor
"
" syn match Error               "\<va_start\>"  contains=@NoSpell containedin=CommentColor
" syn match Error               "\<va_end\>"    contains=@NoSpell containedin=CommentColor

syn match YellowColorb        "\<stdin\>"           contains=@NoSpell
syn match YellowColorb        "\<stdout\>"          contains=@NoSpell
syn match YellowColorb        "\<stderr\>"          contains=@NoSpell

syn match YellowColorb        "\<read\>"            contains=@NoSpell
syn match YellowColorb        "\<write\>"           contains=@NoSpell

" other time functions/structs not listed above
syn match YellowColorb        "\<clock_gettime\>"   contains=@NoSpell
syn match YellowColorb        "\<timespec\>"        contains=@NoSpell " struct timespec
syn match YellowColorb        "\<tv_sec\>"          contains=@NoSpell "    time_t
syn match YellowColorb        "\<tv_nsec\>"         contains=@NoSpell "    int
syn match YellowColorb        "\<lock_getres\>"     contains=@NoSpell
syn match YellowColorb        "\<lock_settime\>"    contains=@NoSpell
syn match YellowColorb        "\<etdate\>"          contains=@NoSpell
syn match YellowColorb        "\<anosleep\>"        contains=@NoSpell
syn match YellowColorb        "\<imer_create\>"     contains=@NoSpell
syn match YellowColorb        "\<imer_delete\>"     contains=@NoSpell
syn match YellowColorb        "\<imer_gettime\>"    contains=@NoSpell
syn match YellowColorb        "\<imer_getoverrun\>" contains=@NoSpell
syn match YellowColorb        "\<imer_settime\>"    contains=@NoSpell
syn match YellowColorb        "\<zset\>"            contains=@NoSpell
syn match YellowColorb        "\<time_t\>"          contains=@NoSpell

""-------------------------------------------------------------------------------------------------------------
""-------------------------------------------------------------------------------------------------------------

"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------
" match pointers and arrays (and dimension size if 2 or more)

" A pointer is a variable that contains the address of a variable.
" A pointer is a group of cells (often two or four) that can hold an address.
" A typical machine has an array of consecutively numbered or addressed memory cells that may be manipulated individually or in contiguous groups.
" Pointers and arrays are closely related

" NOTE: p = &c; assigns the address of c to the pointer variable p.
" The unary operator & gives the address of an object. The & operator only applies to objects in memory: variables and array elements. It cannot be applied to expressions, constants, or register variables.

" NOTE: y = *p; * accesses the object at the address stored in the pointer. aka y = *&c = c.
" The unary operator * is the indirection or dereferencing operator. when applied to a pointer, it accesses the object the pointer points to.

" int *ip; is intended as a mnemonic; it says that the expression *ip is an int.
" placing the asterisk adjacent to the variable name (e.g., int *ptr;) is generally recommended in C. This is because when declaring multiple variables on a single line, the * explicitly indicates which variable is a pointer. int *p, q; declares p as a pointer to an integer and q as a regular integer, not a pointer.

" The unary operators * and & bind more tightly than arithmetic operators such as + but not more tightly than unary operators ++
"    y = *ip + 1
"    ++*ip
"    (*ip)++ // The parentheses are necessary; because unary operators associate right to left.

" since pointers are variables, they can be used without dereferencing. For example, if iq is another pointer to int,
"    iq = ip;

" NOTE: C passes arguments to functions by value, and so do not alter the original variable. The way to obtain the desired effect is for the calling program to pass pointers to the values to be changed:
" v_swap(&a, &b); // even though the input is a pointer, the function takes in an address to a variables and assigns that to a pointer.
" &a is a pointer to a. the address of a variable is a pointer to that variable...

" NOTE: The declaration int a_i_a[10]; defines an array of size 10, ie a block of 10 consecutive objects named a_i_a[0], ..., a_i_a[9].
" p_i_a = &a_i_a[0]; sets p_i_a to point to element zero of a_i_a; that is, p_i_a contains the address of a_i_a[0].
" p_i_a+i points i elements after p_i_a, and p_i_a-i points i elements before, and *(p_i_a+i) refers to the contents of a_i_a[i].

" NOTE: Since the name of an array is a synonym for the location of the initial element, the assignment
"    p_i_a=&a_i_a[0] can also be written as
"    p_i_a = a_i_a;
" A reference to a_i_a[i] can also be written as
"    *(a_i_a+i). // == *(p_i_a+i)
" NOTE: In evaluating a_i_a[i], C converts it to *(a_i_a+i) immediately; the two forms are equivalent.
" Applying the operator & to both parts of this equivalence, it follows that
"    a_i_a+i == &a_i_a[i] == p_i_a+i
" As the other side of this coin, if p_i_a is a pointer, expressions might use it with a subscript;
"    p_i_a[i] == *(p_i_a+i).
" In short, an array-and-index expression is equivalent to one written as a pointer and offset.
" There is one difference between an array name and a pointer that must be kept in mind. A pointer is a variable, so p_i_a=a_i_a and p_i_a++ are legal. But an array name is not a variable; constructions like a_i_a=p_i_a and a_i_a++ are illegal.
" NOTE: When an array name is passed to a function, what is passed is the location of the initial element and so an array name parameter is a pointer, that is, a variable containing an address.
"    int strlen(char a_c_s[]); ==
"    int strlen(char *p_c_s);
" Since p_c_s is a pointer, incrementing it is perfectly legal; p_c_s++ has no effect on the character string in the function that called strlen, but merely increments strlen's private copy of the pointer. That means that calls like below all work.
"    i_strlen("hello, world"); /* string constant */
"    i_strlen(a_c_s);          /* char a_c_s[100]; */
"    i_strlen(p_c_s);          /* char *p_c_s; */ // NOTE: the original pointer still points to the same element after the function!
" As formal parameters in a function definition,
"    char a_c_s[];
"    char *p_c_s;
" are equivalent; NOTE: we prefer the latter because it says more explicitly that the variable is a pointer.
" NOTE: When an array name is passed to a function, the function can at its convenience believe that it has been handed either an array or a pointer, and manipulate it accordingly. It can even use both notations if it seems appropriate and clear.

" it is possible to pass part of an array to a function. For example, if a_i_a is an array,
"    f(&a_i_a[2])
"    f(a_i_a+2)
" both pass to the function f the address of the subarray that starts at a_i_a[2]. Within f, the parameter declaration can read
"    f(int arr[]) { ... }
"    f(int *arr) { ... }

" If one is sure that the elements exist, it is also possible to index backwards in an array; p[-1], p[-2], and so on are syntactically legal, and refer to the elements that immediately precede p[0]. Of course, it is illegal to refer to objects that are not within the array bounds.

" NOTE: C guarantees that 0 is never a valid address for data, so a return value of 0 can be used to signal an abnormal event.
" NOTE: Pointers and integers are not interchangeable. Zero is the sole exception: the constant zero may be assigned to a pointer, and a pointer may be compared with the constant zero. The symbolic constant NULL is often used in place of zero, as a mnemonic to indicate more clearly that this is a special value for a pointer.

" pointers may be compared under certain circumstances. If p and q point to members of the same array, then relations like ==, !=, <, >=, etc., work properly.
" p < q is undefined for comparisons with pointers that do not point to members of the same array. (There is one exception: the address of the first element past the end of an array can be used in pointer arithmetic.)
" p + n is scaled according to the size/type of the object p points to. If it points to an int of four bytes, n will be scaled by four.
" if p and q point to elements of the same array, and p<q, then q-p+1 is the number of elements from p to q inclusive.
" NOTE: if the number of characters in the string is too large for an int, the header <stddef.h> defines a type ptrdiff_t that is large enough to hold the signed difference of two pointer values.
" The result of pointer subtraction is an integer type, specifically ptrdiff_t, which represents the signed difference between the two pointer positions in terms of the number of elements of the pointed-to type.

"    printf("hello, world\n");
" printf receives a pointer to the character array, in this case, a 'string constant'.
" NOTE: There is an important difference between these definitions:
"    char amessage[] = "now is the time"; // an array
"    char *pmessage = "now is the time"; // a pointer
" amessage is an array, just big enough to hold the sequence of characters and '\0'. Individual characters within the array may be changed but amessage will always refer to the same storage. On the other hand, pmessage is a pointer, pointing to a 'string constant'; the pointer may be modified to point elsewhere, but the result is undefined if you try to modify the string contents.

"    while ((*p_c_s++ = *p_c_t++) != '\0') // same as while ((p_c_s[i] = p_c_t[i]) != '\0'); i++; // same as while (*p_c_s++ = *p_c_t++)
" The value of *p_c_t++ is the character that p_c_t pointed to before p_c_t was incremented; the postfix ++ doesn't change p_c_t until after this character has been fetched.
" NOTE: 0, '\0', and NULL all have the same value of 0.

" NOTE: the pair of expressions are the standard idiom for pushing and popping a stack;
"    *p++ = ga_d_val; // push ga_d_val onto stack
"    ga_d_val = *--p; // pop top of stack into ga_d_val

" VINOTE VITODO: Two lines can be compared by passing their pointers. When two out-of-order lines have to be exchanged, the pointers in the pointer array are exchanged, not the text lines themselves.

" NOTE: TODO: C provides rectangular multi-dimensional arrays, although in practice they are much less used than arrays of pointers.

" char *ap_c_month_name[] = {    ==                      // is this an ap_ or an pa_ ?
" char *ap_c_month_name[13] = {                          // it is an array of pointers!!! here, there are 13 pointers,
"    "Illegal month and add more words here why not...", // each point to the beginning of a new month (string constants)
"    "January", "February", "March",                     // NOTE: this is more efficient spacewise than a 2D array[13][50]!!
"    "April", "May", "June",
"    "July", "August", "September",
"    "October", "November", "December"
" };

" the type void * (pointer to void) is the proper type for a generic pointer
" (const void *self)
" TODO NOTE: void *: This is a generic pointer type. A void * pointer can point to any type of data, but it cannot be dereferenced directly without first casting it to a specific data type (e.g., (int *)self, (char *)self). This allows functions to accept pointers to various data types without needing to know the specific type at compile time.
" self: This is the name of the pointer variable. It's a common convention, especially in object-oriented style programming emulated in C, to name a pointer to the "object" itself as self or this.







" override FileNames to allow it to contain pointers and arrays...
syn match    FileNames          "\<[a-zA-Z0-9\-_]*\.[a-zA-Z0-9\.\-_]\+\>"  contains=@NoSpell,Peach3Colorb,OrangeColorb

" syn match RedOrangeColorb     "\<pointer\>"       contains=@NoSpell
" syn case ignore
" pointers
syn match Peach3Colorb     "\(\<\|\.\)\@<=self\>"                contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?p_\w\+\>"        contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?pp_\w\+\>"       contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?pf_\w\+\>"       contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?fp_\w\+\>"       contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?pt_\w\+\>"       contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?ap_\w\+\>"       contains=@NoSpell
syn match Peach3Colorb     "\(\<\|\.\)\@<=s\?g\?pa_\w\+\>"       contains=@NoSpell " technically just a pointer, but good to distinguish anyways

" match pointers
"syn match   Orange2bg        "\([a-zA-Z0-9_)&] *\)\@<!&\( *[a-zA-Z0-9_]\+\>\)\@="   contains=@NoSpell
"syn match   RedOrangebg      "\([a-zA-Z0-9_)] *\)\@<!\*\( *[a-zA-Z0-9_]\+\>\)\@="   contains=@NoSpell
"syn match   Orange2bg     "\(\(\<char\>\|\<int\>\|\<float\>\|\<double\>\|\<bool\>\|\<signed\>\|\<unsigned\>\|\<short\>\|\<long\>\|\<union\>\|\<struct\>\|\<enum\>\|\<void\>\|\<return\>\|\<&\>\) *\)\@<=&\( *[a-zA-Z0-9_]\+\>\)\@=" contains=@NoSpell
"syn match   RedOrangebg     "\(\(\<char\>\|\<int\>\|\<float\>\|\<double\>\|\<bool\>\|\<signed\>\|\<unsigned\>\|\<short\>\|\<long\>\|\<union\>\|\<struct\>\|\<enum\>\|\<void\>\|\<return\>\) *\)\@<=\*\( *[a-zA-Z0-9_]\+\>\)\@=" contains=@NoSpell
"syn match   Orange2bg        "\(\(\<void\>\|\<typedef\>\) *\)\@<=&\( *[a-zA-Z0-9_]\+\>\)\@="     contains=@NoSpell
"syn match   RedOrangebg      "\(\(\<void\>\|\<typedef\>\).*\)\@<=\*\( *[a-zA-Z0-9_]\+\>\)\@="    contains=@NoSpell
"syn match   RedOrangebg      "\*\*\+"   contains=@NoSpell

" arrays
syn match OrangeColorb       "\(\<\|\.\)\@<=s\?g\?a_\w\+\>"        contains=@NoSpell
syn match OrangeColorb       "\(\<\|\.\)\@<=s\?g\?at_\w\+\>"       contains=@NoSpell
" syn case match
"-------------------------------------------------------------------------------------------------------------
"-------------------------------------------------------------------------------------------------------------

syn match LightOrangeColorb  "\<array\>"        contains=@NoSpell
syn match LightOrangeColorb  "\<union\>"        contains=@NoSpell
syn match LightOrangeColorb  "\<struct\>"       contains=@NoSpell
syn match LightOrangeColorb  "\<structs\>"      contains=@NoSpell
syn match LightOrangeColorb  "\<structure\>"    contains=@NoSpell
syn match LightOrangeColorb  "\<structures\>"   contains=@NoSpell
syn match LightOrangeColorb  "\<enum\>"         contains=@NoSpell
syn match LightOrangeColorb  "\<typedef\>"      contains=@NoSpell

syn match BlueColor          "__[0-9A-Z_]\+"    contains=@NoSpell
syn match TealColor          "__[0-9a-z_]\+"    contains=@NoSpell

" match %abc if found in quotes or comments (but not in plain)
syn match BlueColor          "%[0-9a-zA-Z]\+"   contained containedin=CommentColor,QuotesDouble contains=@NoSpell

" give error if opening { is first character on a new line (except if closing } is also on the same line)
" syn match Error              "^ *{\(.*}\)\@!"   contains=@NoSpell


" give error if else is not preceded by } on the same line
" syn match Error              "/}\n *else/" contains=@NoSpell
" syn match Error              "\(}\n\)\@<= *else" contains=@NoSpell
" syn match Error              "} *\n *else" contains=@NoSpell
" syn match Error              "\(}.*\)\@<!\<else\>" contains=@NoSpell

" give error if * for pointers is touching the data type
" syn match Error              "\(void\|int\|char\|double\|float\)\*" contains=@NoSpell

" give error if if/else/else if is not followed by {
" syn match Error              "\<\(if\|else\)\>\(.*{\)\@!"   contains=@NoSpell
" give error if keywords not followed by opening brackets {
" syn match Error              "\<\(if\|else\|for\|while\|switch\|do\)\>\(.*{\|.*\\\s*$\)\@!" contains=@NoSpell
" continue match on next line!!!!!
syn match Error              "\<\(if\|else\s*if\|for\|while\|switch\)\>\(\(.*\\\s*\n\)*.*)\(\n\|\s\)*{\)\@!" contains=@NoSpell
syn match Error              "\<\(else\|do\)\>\(\s*if\|\(\(\n\|\s\)*\){\)\@!" contains=@NoSpell
" ignore special case of while in do {...} while ()
syn match DarkGreen2Colorb   "\(}.*\)\@<=\<while\>" contains=@NoSpell

" give error if \ is ending char in a comment
" syn match Error              "\\\( *$\)\@=" contains=@NoSpell containedin=CommentColor
syn match Error              "\(\/\/.*\)\@<=\\\( *$\)\@=" contains=@NoSpell containedin=CommentColor

" mark as as error *p[], should be (*p)[] (you have a pointer to an array, and you want the value being referenced by that array at one of the indexes) (or unlikely *(p[]) (you have an array of pointers, and you want the value being referenced in one of the pointers in the array) but you need to clarify)!!
syn match Error     "\(*\)\@<=\<\w\+\>\(\[\)\@="        contains=@NoSpell
" argv is the most famous case!!
syn match YellowColorb        "\<argc\>"            contains=@NoSpell
syn match YellowColorb        "\<argv\>"            contains=@NoSpell

" give warning if assigning a string constant as it cannot be later modified!
" syn match Orange2bg  "\(*.*\)\@<=\<\w\+\>\(\W*=\W*\"\)\@="        contains=@NoSpell " what if there are words in between for whatever reason?
syn match Orange2bg  "\(*.*\)\@<=\<\w\+\>\(.*alloc\)\@!\(.*=.*\"\)\@="        contains=@NoSpell

" give error when casting malloc/memory allocations (not needed and can cause errors)
" syn match Error   "\((\(\s\|\*\)*\)\@<=\<\w\+\>\(\s*)\s*\(m\|re\|c\)alloc\)\@="
syn match Error   "(\((\|\w\|\s\|\*\|)\)\+)\(\s*\(m\|re\|c\)alloc\)\@=" containedin=CommentColor

" give error if malloc not followed by sizeof()
" GOOD: p_v_temp = realloc(*pp_v_in1, i_num_elements_1 * i_sizeof_data_type_1);
" GOOD: p_i_temp =  malloc( *p_i_in1, i_num_elements_1 * sizeof(*pp_i_in1));
syn match Error   "\(\s*\(m\|re\|c\)alloc\s*\)\@<=(\(.*sizeof.*\)\@!.*)"

" give error if malloc followed by sizeof() is followed by a hard type
" NOTE: .\{-} means non greedy version of .*
syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(\s*\(int\|char\|bool\|long\|short\|float\|double\)\s\{-})"
syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(\s*\(struct\|union\|enum\).\{-})"
" caps
syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(\s*\(\<[A-Z0-9]\+\>\).\{-})"
" stdio.h int*_t and uint*_t
syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(\s*u\?int\w\{-}_t\s\{-})"

" give error if you alloc using sizeof(void pointer) (void pointer is always of size 1!!)
" syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(\(\*\|\s\)*.\?.\?p_v_.\{-})"
" syn match Error   "\(\s*\(m\|re\|c\)alloc\s*.*\<sizeof\>\s*\)\@<=(.\{-}_v_.\{-})"
" give error if you using sizeof(void pointer) (void pointer is always of size 1!!)
syn match Error   "\(\<sizeof\>\s*\)\@<=(.\{-}_v_.\{-})"

" give error if using sizeof(pointer), should be sizeof(*pointer)
syn match Error   "\(\<sizeof\>\s*(\)\@<=\s*\(g\|p\|f\|s\)*pa\?_.\{-})"


" static keyword should never be defined/declared in the header file. When a static variable is defined in a header file, a new instance of the variable is created for each file that includes the header file!!! This can lead to errors as this behavior is most likely not expected!!! You can't declare a static variable without defining it as well (this is because the storage class modifiers static and extern are mutually exclusive). If n source files include the same header file with the static variable x definition than n different copies of the variable x will be created, each bound to the scope of the corresponding source file.
" similarly a static function is a function whose scope is limited to the source file in which it is defined. This means that the function cannot be accessed from other .c files. defining a static function in a header file will cause every file that includes the header to have a local copy of the function.
au  BufNewFile,BufRead *.hpp,*.h syn match ErrorMsg "\<static\>" contains=@NoSpell


