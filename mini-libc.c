typedef __PTRDIFF_TYPE__ ssize_t;
typedef __WINT_TYPE__ wint_t;
typedef __UINT32_TYPE__ uint32_t;
typedef __UINT64_TYPE__ uint64_t;
typedef __INT64_TYPE__ int64_t;
typedef __INT8_TYPE__ int8_t;
typedef __INT16_TYPE__ int16_t;
typedef __INT32_TYPE__ int32_t;
typedef __INTMAX_TYPE__ intmax_t;
typedef __UINTMAX_TYPE__ uintmax_t;
typedef __UINTPTR_TYPE__ uintptr_t;
typedef __UINT8_TYPE__ uint8_t;
typedef __UINT16_TYPE__ uint16_t;
typedef __UINT_LEAST16_TYPE__ uint_least16_t;
typedef __UINT_FAST16_TYPE__ uint_fast16_t;
typedef __UINT_LEAST32_TYPE__ uint_least32_t;
typedef __UINT_FAST32_TYPE__ uint_fast32_t;
typedef __UINT_LEAST64_TYPE__ uint_least64_t;
typedef __UINT_FAST64_TYPE__ uint_fast64_t;
typedef int           word_t     __attribute__ ((mode (__word__)));
#define UINT8_MAX __UINT8_MAX__
#define UINT16_MAX __UINT16_MAX__
#define UINT64_MAX __UINT64_MAX__
#define UINT32_MAX __UINT32_MAX__
#define SIZE_MAX __SIZE_MAX__
#define FLT_MAX __FLT_MAX__
#define DBL_MAX __DBL_MAX__
#define LDBL_MAX __LDBL_MAX__

#define isnan __builtin_isnan
#define signbit __builtin_signbit

#define true 1
#define false 0

typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;
typedef struct { long long quot, rem; } lldiv_t;
typedef struct { intmax_t quot, rem; } imaxdiv_t;

typedef          int QItype     __attribute__ ((mode (QI)));
typedef unsigned int UQItype    __attribute__ ((mode (QI)));
typedef          int HItype     __attribute__ ((mode (HI)));
typedef unsigned int UHItype    __attribute__ ((mode (HI)));
/* These typedefs are usually forbidden on dsp's with UNITS_PER_WORD 1.  */
typedef          int SItype     __attribute__ ((mode (SI)));
typedef unsigned int USItype    __attribute__ ((mode (SI)));
#if __SIZEOF_LONG_LONG__ > 4
/* These typedefs are usually forbidden on archs with UNITS_PER_WORD 2.  */
typedef          int DItype     __attribute__ ((mode (DI)));
typedef unsigned int UDItype    __attribute__ ((mode (DI)));
#if defined(__SIZEOF_INT128__)
#define CRT_HAS_128BIT
/* These typedefs are usually forbidden on archs with UNITS_PER_WORD 4.  */
typedef          int TItype     __attribute__ ((mode (TI)));
typedef unsigned int UTItype    __attribute__ ((mode (TI)));
#endif
#endif

typedef int cmp_return_type __attribute__((mode (__libgcc_cmp_return__)));
typedef int shift_count_type __attribute__((mode (__libgcc_shift_count__)));

typedef int64_t di_int;
typedef uint64_t du_int;

typedef int32_t si_int;
typedef uint32_t su_int;

// Clang and GCC provide built-in endianness definitions.
#if __BYTE_ORDER__ == __ORDER_BIG_ENDIAN__
#define _YUGA_LITTLE_ENDIAN 0
#define _YUGA_BIG_ENDIAN 1
#elif __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
#define _YUGA_LITTLE_ENDIAN 1
#define _YUGA_BIG_ENDIAN 0
#else
#error lol
#endif // __BYTE_ORDER__


typedef union {
  di_int all;
  struct {
#if _YUGA_LITTLE_ENDIAN
    su_int low;
    si_int high;
#else
    si_int high;
    su_int low;
#endif // _YUGA_LITTLE_ENDIAN
  } s;
} dwords;

typedef union {
  du_int all;
  struct {
#if _YUGA_LITTLE_ENDIAN
    su_int low;
    su_int high;
#else
    su_int high;
    su_int low;
#endif // _YUGA_LITTLE_ENDIAN
  } s;
} udwords;

#define COMPILER_RT_ABI

#include <stddef.h>
#include <limits.h>

#ifdef CRT_HAS_128BIT
typedef int ti_int __attribute__((mode(TI)));
typedef unsigned tu_int __attribute__((mode(TI)));

typedef union {
  ti_int all;
  struct {
#if _YUGA_LITTLE_ENDIAN
    du_int low;
    di_int high;
#else
    di_int high;
    du_int low;
#endif // _YUGA_LITTLE_ENDIAN
  } s;
} twords;

typedef union {
  tu_int all;
  struct {
#if _YUGA_LITTLE_ENDIAN
    du_int low;
    du_int high;
#else
    du_int high;
    du_int low;
#endif // _YUGA_LITTLE_ENDIAN
  } s;
} utwords;

ti_int make_ti(di_int h, di_int l) {
  twords r;
  r.s.high = (du_int)h;
  r.s.low = (du_int)l;
  return r.all;
}

tu_int make_tu(du_int h, du_int l) {
  utwords r;
  r.s.high = h;
  r.s.low = l;
  return r.all;
}

#endif // CRT_HAS_128BIT


// (most from musl, some from gnulib, some from libiberty, some from 4.4BSD, some from compiler-rt, some from libgcc)

void *
memmove (void *dest0, void const *source0, size_t length)
{
  char *dest = dest0;
  char const *source = source0;
  if (source < dest)
    /* Moving from low mem to hi mem; start at end.  */
    for (source += length, dest += length; length; --length)
      *--dest = *--source;
  else if (source != dest)
    {
      /* Moving from hi mem to low mem; start at beginning.  */
      for (; length; --length)
        *dest++ = *source++;
    }
  return dest0;
}


void *memccpy(void *restrict dest, const void *restrict src, int c, size_t n)
{
    unsigned char *d = dest;
    const unsigned char *s = src;

    c = (unsigned char)c;
    for (; n && (*d=*s)!=c; n--, s++, d++);
    if (n) return d+1;
    return 0;
}

void *memchr(const void *src, int c, size_t n)
{
    const unsigned char *s = src;
    c = (unsigned char)c;
    for (; n && *s != c; s++, n--);
    return n ? (void *)s : 0;
}

int memcmp(const void *vl, const void *vr, size_t n)
{
    const unsigned char *l=vl, *r=vr;
    for (; n && *l == *r; n--, l++, r++);
    return n ? *l-*r : 0;
}

#ifndef __BPF__

void *memcpy(void *restrict dest, const void *restrict src, size_t n)
{
    unsigned char *d = dest;
    const unsigned char *s = src;

    for (; n; n--) *d++ = *s++;
    return dest;
}

#endif

void *memrchr(const void *m, int c, size_t n)
{
    const unsigned char *s = m;
    c = (unsigned char)c;
    while (n--) if (s[n]==c) return (void *)(s+n);
    return 0;
}

#ifndef __BPF__

void *memset(void *dest, int c, size_t n)
{
    unsigned char *s = dest;
    size_t k;

    /* Pure C fallback with no aliasing violations. */
    for (; n; n--, s++) *s = c;

    return dest;
}

#endif

char *stpcpy(char *restrict d, const char *restrict s)
{
    for (; (*d=*s); s++, d++);

    return d;
}

char *strchrnul(const char *s, int c)
{
    c = (unsigned char)c;

    for (; *s && *(unsigned char *)s != c; s++);
    return (char *)s;
}

char *
strchr (register const char *s, int c)
{
  do {
    if (*s == c)
      {
        return (char*)s;
      }
  } while (*s++);
  return (0);
}

int strcmp(const char *l, const char *r)
{
    for (; *l==*r && *l; l++, r++);
    return *(unsigned char *)l - *(unsigned char *)r;
}

size_t strlen(const char *s)
{
    const char *a = s;
    for (; *s; s++);
    return s-a;
}

int strncmp(const char *_l, const char *_r, size_t n)
{
    const unsigned char *l=(void *)_l, *r=(void *)_r;
    if (!n--) return 0;
    for (; *l && *r && n && *l == *r ; l++, r++, n--);
    return *l - *r;
}

void swab(const void *restrict _src, void *restrict _dest, ssize_t n)
{
    const char *src = _src;
    char *dest = _dest;
    for (; n>1; n-=2) {
        dest[0] = src[1];
        dest[1] = src[0];
        dest += 2;
        src += 2;
    }
}

int isalpha(int c)
{
    return ((unsigned)c|32)-'a' < 26;
}

int isascii(int c)
{
    return !(c&~0x7f);
}

int isblank(int c)
{
    return (c == ' ' || c == '\t');
}

int iscntrl(int c)
{
    return (unsigned)c < 0x20 || c == 0x7f;
}

int isdigit(int c)
{
    return (unsigned)c-'0' < 10;
}

int isgraph(int c)
{
    return (unsigned)c-0x21 < 0x5e;
}

int islower(int c)
{
    return (unsigned)c-'a' < 26;
}

int isprint(int c)
{
    return (unsigned)c-0x20 < 0x5f;
}

int isspace(int c)
{
    return c == ' ' || (unsigned)c-'\t' < 5;
}

int isupper(int c)
{
    return (unsigned)c-'A' < 26;
}

#ifndef __mips16

int iswcntrl(wint_t wc)
{
    return (unsigned)wc < 32
        || (unsigned)(wc-0x7f) < 33
        || (unsigned)(wc-0x2028) < 2
        || (unsigned)(wc-0xfff9) < 3;
}

#endif

int iswdigit(wint_t wc)
{
    return (unsigned)wc-'0' < 10;
}

#ifndef __mips16

/* Consider all legal codepoints as printable except for:
 * - C0 and C1 control characters
 * - U+2028 and U+2029 (line/para break)
 * - U+FFF9 through U+FFFB (interlinear annotation controls)
 * The following code is optimized heavily to make hot paths for the
 * expected printable characters. */
int iswprint(wint_t wc)
{
    if (wc < 0xffU)
        return (wc+1 & 0x7f) >= 0x21;
    if (wc < 0x2028U || wc-0x202aU < 0xd800-0x202a || wc-0xe000U < 0xfff9-0xe000)
        return 1;
    if (wc-0xfffcU > 0x10ffff-0xfffc || (wc&0xfffe)==0xfffe)
        return 0;
    return 1;
}

#endif

int iswxdigit(wint_t wc)
{
    return (unsigned)(wc-'0') < 10 || (unsigned)((wc|32)-'a') < 6;
}

/* nonsense function that should NEVER be used! */
int toascii(int c)
{
    return c & 0x7f;
}

double fdim(double x, double y)
{
    if (isnan(x))
        return x;
    if (isnan(y))
        return y;
    return x > y ? x - y : 0;
}

float fdimf(float x, float y)
{
    if (isnan(x))
        return x;
    if (isnan(y))
        return y;
    return x > y ? x - y : 0;
}

double fmax(double x, double y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeros, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? y : x;
    return x < y ? y : x;
}

float fmaxf(float x, float y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeroes, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? y : x;
    return x < y ? y : x;
}

long double fmaxl(long double x, long double y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeros, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? y : x;
    return x < y ? y : x;
}

double fmin(double x, double y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeros, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? x : y;
    return x < y ? x : y;
}

float fminf(float x, float y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeros, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? x : y;
    return x < y ? x : y;
}

long double fminl(long double x, long double y)
{
    if (isnan(x))
        return y;
    if (isnan(y))
        return x;
    /* handle signed zeros, see C99 Annex F.9.9.2 */
    if (signbit(x) != signbit(y))
        return signbit(x) ? x : y;
    return x < y ? x : y;
}

static const char digits[] =
    "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

char *l64a(long x0)
{
    static char s[7];
    char *p;
    uint32_t x = x0;
    for (p=s; x; p++, x>>=6)
        *p = digits[x&63];
    *p = 0;
    return s;
}

static uint64_t seed;

void srand(unsigned s)
{
    seed = s-1;
}

int rand(void)
{
    seed = 6364136223846793005ULL*seed + 1;
    return seed>>33;
}

struct node {
    struct node *next;
    struct node *prev;
};

void insque(void *element, void *pred)
{
    struct node *e = element;
    struct node *p = pred;

    if (!p) {
        e->next = e->prev = 0;
        return;
    }
    e->next = p->next;
    e->prev = p;
    p->next = e;
    if (e->next)
        e->next->prev = e;
}

void remque(void *element)
{
    struct node *e = element;

    if (e->next)
        e->next->prev = e->prev;
    if (e->prev)
        e->prev->next = e->next;
}

#ifndef __BPF__

void *lsearch(const void *key, void *base, size_t *nelp, size_t width,
    int (*compar)(const void *, const void *))
{
    char (*p)[width] = base;
    size_t n = *nelp;
    size_t i;

    for (i = 0; i < n; i++)
        if (compar(key, p[i]) == 0)
            return p[i];
    *nelp = n+1;
    return memcpy(p[n], key, width);
}

void *lfind(const void *key, const void *base, size_t *nelp,
    size_t width, int (*compar)(const void *, const void *))
{
    char (*p)[width] = (void *)base;
    size_t n = *nelp;
    size_t i;

    for (i = 0; i < n; i++)
        if (compar(key, p[i]) == 0)
            return p[i];
    return 0;
}

#endif

int abs(int a)
{
    return a>0 ? a : -a;
}

int atoi(const char *s)
{
    int n=0, neg=0;
    while (isspace(*s)) s++;
    switch (*s) {
    case '-': neg=1;
    case '+': s++;
    }
    /* Compute n as a negative number to avoid overflow on INT_MIN */
    while (isdigit(*s))
        n = 10*n - (*s++ - '0');
    return neg ? n : -n;
}

long atol(const char *s)
{
    long n=0;
    int neg=0;
    while (isspace(*s)) s++;
    switch (*s) {
    case '-': neg=1;
    case '+': s++;
    }
    /* Compute n as a negative number to avoid overflow on LONG_MIN */
    while (isdigit(*s))
        n = 10*n - (*s++ - '0');
    return neg ? n : -n;
}

long long atoll(const char *s)
{
    long long n=0;
    int neg=0;
    while (isspace(*s)) s++;
    switch (*s) {
    case '-': neg=1;
    case '+': s++;
    }
    /* Compute n as a negative number to avoid overflow on LLONG_MIN */
    while (isdigit(*s))
        n = 10*n - (*s++ - '0');
    return neg ? n : -n;
}

#ifndef __BPF__

void *bsearch(const void *key, const void *base, size_t nel, size_t width, int (*cmp)(const void *, const void *))
{
    void *try;
    int sign;
    while (nel > 0) {
        try = (char *)base + width*(nel/2);
        sign = cmp(key, try);
        if (sign < 0) {
            nel /= 2;
        } else if (sign > 0) {
            base = (char *)try + width;
            nel -= nel/2+1;
        } else {
            return try;
        }
    }
    return NULL;
}


/*
 * Perform a binary search.
 *
 * The code below is a bit sneaky.  After a comparison fails, we
 * divide the work in half by moving either left or right. If lim
 * is odd, moving left simply involves halving lim: e.g., when lim
 * is 5 we look at item 2, so we change lim to 2 so that we will
 * look at items 0 & 1.  If lim is even, the same applies.  If lim
 * is odd, moving right again involes halving lim, this time moving
 * the base up one item past p: e.g., when lim is 5 we change base
 * to item 3 and make lim 2 so that we will look at items 3 and 4.
 * If lim is even, however, we have to shrink it by one before
 * halving: e.g., when lim is 4, we still looked at item 2, so we
 * have to make lim 3, then halve, obtaining 1, so that we will only
 * look at item 3.
 */
void *
bsearch_r (const void *key, const void *base0,
           size_t nmemb, size_t size,
           int (*compar)(const void *, const void *, void *),
           void *arg)
{
        const char *base = (const char *) base0;
        int lim, cmp;
        const void *p;

        for (lim = nmemb; lim != 0; lim >>= 1) {
                p = base + (lim >> 1) * size;
                cmp = (*compar)(key, p, arg);
                if (cmp == 0)
                        return (void *)p;
                if (cmp > 0) {  /* key > p: move right */
                        base = (const char *)p + size;
                        lim--;
                } /* else move left */
        }
        return (NULL);
}

#endif

div_t div(int num, int den)
{
    return (div_t){ num/den, num%den };
}

intmax_t imaxabs(intmax_t a)
{
    return a>0 ? a : -a;
}

imaxdiv_t imaxdiv(intmax_t num, intmax_t den)
{
    return (imaxdiv_t){ num/den, num%den };
}

long labs(long a)
{
    return a>0 ? a : -a;
}

ldiv_t ldiv(long num, long den)
{
    return (ldiv_t){ num/den, num%den };
}

long long llabs(long long a)
{
    return a>0 ? a : -a;
}

lldiv_t lldiv(long long num, long long den)
{
    return (lldiv_t){ num/den, num%den };
}

wchar_t *wcschr(const wchar_t *s, wchar_t c)
{
    for (; *s && *s != c; s++);
    return *s ? (wchar_t *)s : 0;
}

int wcscmp(const wchar_t *l, const wchar_t *r)
{
    for (; *l==*r && *l && *r; l++, r++);
    return *l < *r ? -1 : *l > *r;
}

wchar_t *wcscpy(wchar_t *restrict d, const wchar_t *restrict s)
{
    wchar_t *a = d;
    while ((*d++ = *s++));
    return a;
}

size_t wcslen(const wchar_t *s)
{
    const wchar_t *a;
    for (a=s; *s; s++);
    return s-a;
}

int wcsncmp(const wchar_t *l, const wchar_t *r, size_t n)
{
    for (; n && *l==*r && *l && *r; n--, l++, r++);
    return n ? (*l < *r ? -1 : *l > *r) : 0;
}

wchar_t *wmemchr(const wchar_t *s, wchar_t c, size_t n)
{
    for (; n && *s != c; n--, s++);
    return n ? (wchar_t *)s : 0;
}

int wmemcmp(const wchar_t *l, const wchar_t *r, size_t n)
{
    for (; n && *l==*r; n--, l++, r++);
    return n ? (*l < *r ? -1 : *l > *r) : 0;
}

#ifndef __BPF__

wchar_t *wmemcpy(wchar_t *restrict d, const wchar_t *restrict s, size_t n)
{
    wchar_t *a = d;
    while (n--) *d++ = *s++;
    return a;
}

#endif

wchar_t *wmemmove(wchar_t *d, const wchar_t *s, size_t n)
{
    wchar_t *d0 = d;
    if (d == s) return d;
    if ((uintptr_t)d-(uintptr_t)s < n * sizeof *d)
        while (n--) d[n] = s[n];
    else
        while (n--) *d++ = *s++;
    return d0;
}

wchar_t *wmemset(wchar_t *d, wchar_t c, size_t n)
{
    wchar_t *ret = d;
    while (n--) *d++ = c;
    return ret;
}

void
bcopy (void const *source0, void *dest0, size_t length)
{
  char const *source = source0;
  char *dest = dest0;
  if (source < dest)
    /* Moving from low mem to hi mem; start at end.  */
    for (source += length, dest += length; length; --length)
      *--dest = *--source;
  else if (source != dest)
    /* Moving from hi mem to low mem; start at beginning.  */
    for (; length; --length)
      *dest++ = *source++;
}

uint64_t
rotl64 (uint64_t x, int n)
{
  return ((x << n) | (x >> (64 - n))) & UINT64_MAX;
}

/* Given an unsigned 64-bit argument X, return the value corresponding
   to rotating the bits N steps to the right.  N must be between 1 to
   63 inclusive.*/
uint64_t
rotr64 (uint64_t x, int n)
{
  return ((x >> n) | (x << (64 - n))) & UINT64_MAX;
}

/* Given an unsigned 32-bit argument X, return the value corresponding
   to rotating the bits N steps to the left.  N must be between 1 and
   31 inclusive. */
uint32_t
rotl32 (uint32_t x, int n)
{
  return ((x << n) | (x >> (32 - n))) & UINT32_MAX;
}

/* Given an unsigned 32-bit argument X, return the value corresponding
   to rotating the bits N steps to the right.  N must be between 1 to
   31 inclusive.*/
uint32_t
rotr32 (uint32_t x, int n)
{
  return ((x >> n) | (x << (32 - n))) & UINT32_MAX;
}

/* Given a size_t argument X, return the value corresponding
   to rotating the bits N steps to the left.  N must be between 1 and
   (CHAR_BIT * sizeof (size_t) - 1) inclusive.  */
size_t
rotl_sz (size_t x, int n)
{
  return ((x << n) | (x >> ((CHAR_BIT * sizeof x) - n))) & SIZE_MAX;
}

/* Given a size_t argument X, return the value corresponding
   to rotating the bits N steps to the right.  N must be between 1 to
   (CHAR_BIT * sizeof (size_t) - 1) inclusive.  */
size_t
rotr_sz (size_t x, int n)
{
  return ((x >> n) | (x << ((CHAR_BIT * sizeof x) - n))) & SIZE_MAX;
}

/* Given an unsigned 16-bit argument X, return the value corresponding
   to rotating the bits N steps to the left.  N must be between 1 to
   15 inclusive, but on most relevant targets N can also be 0 and 16
   because 'int' is at least 32 bits and the arguments must widen
   before shifting. */
uint16_t
rotl16 (uint16_t x, int n)
{
  return (((unsigned int) x << n) | ((unsigned int) x >> (16 - n)))
         & UINT16_MAX;
}

/* Given an unsigned 16-bit argument X, return the value corresponding
   to rotating the bits N steps to the right.  N must be in 1 to 15
   inclusive, but on most relevant targets N can also be 0 and 16
   because 'int' is at least 32 bits and the arguments must widen
   before shifting. */
uint16_t
rotr16 (uint16_t x, int n)
{
  return (((unsigned int) x >> n) | ((unsigned int) x << (16 - n)))
         & UINT16_MAX;
}

/* Given an unsigned 8-bit argument X, return the value corresponding
   to rotating the bits N steps to the left.  N must be between 1 to 7
   inclusive, but on most relevant targets N can also be 0 and 8
   because 'int' is at least 32 bits and the arguments must widen
   before shifting. */
uint8_t
rotl8 (uint8_t x, int n)
{
  return (((unsigned int) x << n) | ((unsigned int) x >> (8 - n))) & UINT8_MAX;
}

/* Given an unsigned 8-bit argument X, return the value corresponding
   to rotating the bits N steps to the right.  N must be in 1 to 7
   inclusive, but on most relevant targets N can also be 0 and 8
   because 'int' is at least 32 bits and the arguments must widen
   before shifting. */
uint8_t
rotr8 (uint8_t x, int n)
{
  return (((unsigned int) x >> n) | ((unsigned int) x << (8 - n))) & UINT8_MAX;
}

/* Given an unsigned 16-bit argument X, return the value corresponding to
   X with reversed byte order.  */
uint_least16_t
bswap_16 (uint_least16_t x)
{
  uint_fast16_t mask = 0xff;
  return (  (x & mask << 8 * 1) >> 8 * 1
          | (x & mask << 8 * 0) << 8 * 1);
}

/* Given an unsigned 32-bit argument X, return the value corresponding to
   X with reversed byte order.  */
uint_least32_t
bswap_32 (uint_least32_t x)
{
  uint_fast32_t mask = 0xff;
  return (  (x & mask << 8 * 3) >> 8 * 3
          | (x & mask << 8 * 2) >> 8 * 1
          | (x & mask << 8 * 1) << 8 * 1
          | (x & mask << 8 * 0) << 8 * 3);
}

/* Given an unsigned 64-bit argument X, return the value corresponding to
   X with reversed byte order.  */
uint_least64_t
bswap_64 (uint_least64_t x)
{
  uint_fast64_t mask = 0xff;
  return (  (x & mask << 8 * 7) >> 8 * 7
          | (x & mask << 8 * 6) >> 8 * 5
          | (x & mask << 8 * 5) >> 8 * 3
          | (x & mask << 8 * 4) >> 8 * 1
          | (x & mask << 8 * 3) << 8 * 1
          | (x & mask << 8 * 2) << 8 * 3
          | (x & mask << 8 * 1) << 8 * 5
          | (x & mask << 8 * 0) << 8 * 7);
}

int ffs(int i)
{
    unsigned int j;
    for (j = 0; j < CHAR_BIT * sizeof i; j++)
	if (i & (1U << j))
	    return j + 1;
    return 0;
}

int
libiberty_ffs (register int valu)
{
  register int bit;

  if (valu == 0)
    return 0;

  for (bit = 1; !(valu & 1); bit++)
        valu >>= 1;

  return bit;
}


int
gl_isinff (float x)
{
  return x < -FLT_MAX || x > FLT_MAX;
}

int
gl_isinfd (double x)
{
  return x < -DBL_MAX || x > DBL_MAX;
}

int
gl_isinfl (long double x)
{
  return x < -LDBL_MAX || x > LDBL_MAX;
}

void
_Qp_itoq (long double *result, int a)
{
  /* Convert from 'int' to 'double', then from 'double' to 'long double'.  */
  *result = (double) a;
}

#ifndef __TMS320C6X__

float
ldexpf (float x, int exponent)
{
  if (!(isnan (x) || x + x == x))
    {
      float factor = exponent < 0 ? 0.5f : 2.0f;

      while (true)
        {
          if (exponent % 2 != 0)
            x *= factor;
          exponent /= 2;
          if (exponent == 0)
            break;
          factor = factor * factor;
        }
    }
  return x;
}

double
ldexp (double x, int exponent)
{
  if (!(isnan (x) || x + x == x))
    {
      double factor = exponent < 0 ? 0.5 : 2.0;

      while (true)
        {
          if (exponent % 2 != 0)
            x *= factor;
          exponent /= 2;
          if (exponent == 0)
            break;
          factor = factor * factor;
        }
    }
  return x;
}

long double
ldexpl (long double x, int exponent)
{
  if (!(isnan (x) || x + x == x))
    {
      long double factor = exponent < 0 ? 0.5L : 2.0L;

      while (true)
        {
          if (exponent % 2 != 0)
            x *= factor;
          exponent /= 2;
          if (exponent == 0)
            break;
          factor = factor * factor;
        }
    }

  return x;
}

#endif

void *
memxor (void *restrict dest, const void *restrict src, size_t n)
{
  char const *s = src;
  char *d = dest;

  for (; n > 0; n--)
    *d++ ^= *s++;

  return dest;
}

char *
strncat (char *dest, const char *src, size_t n)
{
  char *destptr = dest + strlen (dest);

  for (; n > 0 && (*destptr = *src) != '\0'; src++, destptr++, n--)
    ;
  if (n == 0)
    *destptr = '\0';
  return dest;
}

/* Find the length of S, but scan at most MAXLEN bytes.
   S must be a string if it starts with fewer than MAXLEN initialized bytes.
   If no '\0' terminator is found in that many bytes, return MAXLEN.  */

size_t
strnlen (const char *s, size_t maxlen)
{
  /* Do not use memchr, because on some platforms memchr has
     undefined behavior if MAXLEN exceeds the number of bytes in S.  */
  size_t i;
  for (i = 0; i < maxlen && s[i]; i++)
    continue;
  return i;
}

/* Find the first occurrence in S of any character in ACCEPT.  */
char *
strpbrk (const char *s, const char *accept)
{
  while (*s != '\0')
    {
      const char *a = accept;
      while (*a != '\0')
        if (*a++ == *s)
          return (char *) s;
      ++s;
    }

  return NULL;
}

char *
strrchr (register const char *s, int c)
{
  char *rtnval = 0;

  do {
    if (*s == c)
      rtnval = (char*) s;
  } while (*s++);
  return (rtnval);
}

char *
strstr (const char *s1, const char *s2)
{
  const char *p = s1;
  const size_t len = strlen (s2);

  if (!len)
      return (char *)s1;

  for (; (p = strchr (p, *s2)) != 0; p++)
    {
      if (strncmp (p, s2, len) == 0)
        return (char *)p;
    }
  return (0);
}

double
copysign (double x, double y)
{
  if ((x < 0 && y > 0) || (x > 0 && y < 0))
    return -x;
  return x;
}

/* Return the first occurrence of NEEDLE in HAYSTACK.  */
void *
memmem (const void *haystack, size_t haystack_len, const void *needle,
        size_t needle_len)
{
  const char *begin;
  const char *const last_possible
    = (const char *) haystack + haystack_len - needle_len;

  if (needle_len == 0)
    /* The first occurrence of the empty string is deemed to occur at
       the beginning of the string.  */
    return (void *) haystack;

  /* Sanity check, otherwise the loop might search through the whole
     memory.  */
  if (__builtin_expect (haystack_len < needle_len, 0))
    return NULL;

  for (begin = (const char *) haystack; begin <= last_possible; ++begin)
    if (begin[0] == ((const char *) needle)[0] &&
        !memcmp ((const void *) &begin[1],
                 (const void *) ((const char *) needle + 1),
                 needle_len - 1))
      return (void *) begin;

  return NULL;
}

#ifndef __BPF__

void *
mempcpy (void *dst, const void *src, size_t len)
{
  return (char *) memcpy (dst, src, len) + len;
}

#endif

#ifndef __TMS320C6X__

double
frexp(double x, int *i)
{
    int neg;
    int j;
    j = 0;
    neg = 0;
    if(x<0){
        x = -x;
        neg = 1;
        }
    if(x>=1.0)
        while(x>=1.0){
            j = j+1;
            x = x/2;
            }
    else if(x<0.5 && x != 0.0)
        while(x<0.5){
            j = j-1;
            x = 2*x;
            }
    *i = j;
    if(neg) x = -x;
    return(x);
    }

#endif

/* Generic multiplication procedure. No mpy operation involved.  */
int64_t
__muldi3 (int64_t a, int64_t b)
{
  int64_t res = 0;
  uint64_t cnt = a;

  while (cnt)
    {
      if (cnt & 1)
        res += b;
      b <<= 1;
      cnt >>= 1;
    }
  return res;
}

/* Unsigned 32bit integer division/modulus.  */
uint32_t
udivmodsi4 (uint32_t num, uint32_t den, word_t modwanted)
{
  uint32_t bit = 1;
  uint32_t res = 0;

  while (den < num && bit && !(den & (1L << 31)))
    {
      den <<= 1;
      bit <<= 1;
    }
  while (bit)
    {
      if (num >= den)
        {
          num -= den;
          res |= bit;
        }
      bit >>= 1;
      den >>= 1;
    }
  if (modwanted)
    return num;
  return res;
}

int
__clrsbqi2 (char x)
{
  int ret;

  if (x < 0)
    x = ~x;

  if (x == 0)
    return 8 * sizeof (x) -1;

  ret = __builtin_clz (x << 8);
  return ret - 1;
}

int
__clrsbdi2 (long long x)
{
  int ret;

  if (x < 0LL)
    x = ~x;

  if (x == 0LL)
    return 8 * sizeof (x) -1;

  ret = __builtin_clzll ((unsigned long long) x);
  return ret - 1;
}

unsigned int
__mulsi3 (unsigned int a, unsigned int b)
{
  unsigned int r = 0;

  while (a)
    {
      if (a & 1)
        r += b;
      a >>= 1;
      b <<= 1;
    }
  return r;
}

void
__cmovd (long long *dest, const long long *src, unsigned len)
{
  unsigned i;
  unsigned num = len >> 3;
  unsigned xlen = len & ~7;
  char *dest_byte = (char *)dest;
  const char *src_byte = (const char *)src;

  if (dest_byte < src_byte || dest_byte > src_byte+len)
    {
      for (i = 0; i < num; i++)
        dest[i] = src[i];

      while (len > xlen)
        {
          dest_byte[xlen] = src_byte[xlen];
          xlen++;
        }
    }
  else
    {
      while (len-- > 0)
        dest_byte[len] = src_byte[len];
    }
}

void
__cmovh (short *dest, const short *src, unsigned len)
{
  unsigned i;
  unsigned num = len >> 1;
  char *dest_byte = (char *)dest;
  const char *src_byte = (const char *)src;

  if (dest_byte < src_byte || dest_byte > src_byte+len)
    {
      for (i = 0; i < num; i++)
        dest[i] = src[i];

      if ((len & 1) != 0)
        dest_byte[len-1] = src_byte[len-1];
    }
  else
    {
      while (len-- > 0)
        dest_byte[len] = src_byte[len];
    }
}

void
__cmovw (int *dest, const int *src, unsigned len)
{
  unsigned i;
  unsigned num = len >> 2;
  unsigned xlen = len & ~3;
  char *dest_byte = (char *)dest;
  const char *src_byte = (const char *)src;

  if (dest_byte < src_byte || dest_byte > src_byte+len)
    {
      for (i = 0; i < num; i++)
        dest[i] = src[i];

      while (len > xlen)
        {
          dest_byte[xlen] = src_byte[xlen];
          xlen++;
        }
    }
  else
    {
      while (len-- > 0)
        dest_byte[len] = src_byte[len];
    }
}

int __modi (int a, int b)
{
  return a % b;
}

double __uitod (unsigned int a)
{
  return a;
}

float __uitof (unsigned int a)
{
  return a;
}

double __ulltod (unsigned long long a)
{
  return a;
}

float __ulltof (unsigned long long a)
{
  return a;
}

unsigned int __umodi (unsigned int a, unsigned int b)
{
  return a % b;
}

int
__clzhi2 (unsigned short x)
{
  int i;
  for (i = 0; i < 16; i++)
    if (x & ((unsigned short) 1 << (15 - i)))
      break;
  return i;
}

int
__ctzhi2 (unsigned short x)
{
  int i;
  for (i = 0; i < 16; i++)
    if (x & ((unsigned short) 1 << i))
      break;
  return i;
}

long
__fixunssfsi (float a)
{
  if (a >= (float) 32768L)
    return (long) (a - 32768L) + 32768L;
  return (long) a;
}

int
__parityhi2 (unsigned short x)
{
  int i;
  int count = 0;
  for (i = 0; i < 16; i++)
    if (x & ((unsigned short) 1 << i))
      count++;
  return count & 1;
}

int
__popcounthi2 (unsigned short x)
{
  int i;
  int count = 0;
  for (i = 0; i < 16; i++)
    if (x & ((unsigned short) 1 << i))
      count++;
  return count;
}

typedef unsigned int USItype            __attribute__ ((mode (SI)));

USItype
__mulsi3_iq2000 (USItype a, USItype b)
{
  USItype c = 0;

  while (a != 0)
    {
      if (a & 1)
        c += b;
      a >>= 1;
      b <<= 1;
    }

  return c;
}

USItype
__mulsi3_lm32 (USItype a, USItype b)
{
  USItype result;

  result = 0;

  if (a == 0)
    return 0;

  while (b != 0)
    {
      if (b & 1)
        result += a;
      a <<= 1;
      b >>= 1;
    }

  return result;
}

USItype
__udivmodsi4 (USItype num, USItype den, int modwanted)
{
  USItype bit = 1;
  USItype res = 0;

  while (den < num && bit && !(den & (1L << 31)))
    {
      den <<= 1;
      bit <<= 1;
    }
  while (bit)
    {
      if (num >= den)
        {
          num -= den;
          res |= bit;
        }
      bit >>= 1;
      den >>= 1;
    }
  if (modwanted)
    return num;
  return res;
}


int
__mspabi_cmpf (float x, float y)
{
  if (x < y)
    return -1;
  if (x > y)
    return 1;
  return 0;
}

int
__mspabi_cmpd (double x, double y)
{
  if (x < y)
    return -1;
  if (x > y)
    return 1;
  return 0;
}


/* The 16-bit multiply library needs a software version of SI->DI widening
   multiplication.  */

signed long long
__mspabi_mpysll (signed long a, signed long b)
{
  return (signed long long) a * (signed long long) b;
}

unsigned long long
__mspabi_mpyull (unsigned long a, unsigned long b)
{
  return (unsigned long long) a * (unsigned long long) b;
}

int
__mulhi3 (int x, int y)
{
  char bit;
  int neg = 0;
  int rv = 0;

  if (y < 0)
    {
      y = - y;
      neg = 1;
    }

  for (bit = 0; y && bit < sizeof (y) * 8; bit ++)
    {
      if (y & 1)
        rv += x;
      x <<= 1;
      y >>= 1;
    }

  return neg ? - rv : rv;
}

long
__divsi3 (long a, long b)
{
  int neg = 0;
  long res;

  if (a < 0)
    {
      a = -a;
      neg = !neg;
    }

  if (b < 0)
    {
      b = -b;
      neg = !neg;
    }

  res = __udivmodsi4 (a, b, 0);

  if (neg)
    res = -res;

  return res;
}

long
__modsi3 (long a, long b)
{
  int neg = 0;
  long res;

  if (a < 0)
    {
      a = -a;
      neg = 1;
    }

  if (b < 0)
    b = -b;

  res = __udivmodsi4 (a, b, 1);

  if (neg)
    res = -res;

  return res;
}

unsigned short
__udivmodhi4(unsigned short num, unsigned short den, int modwanted)
{
  unsigned short bit = 1;
  unsigned short res = 0;

  while (den < num && bit && !(den & (1U<<15)))
    {
      den <<=1;
      bit <<=1;
    }
  while (bit)
    {
      if (num >= den)
        {
          num -= den;
          res |= bit;
        }
      bit >>=1;
      den >>=1;
    }
  if (modwanted) return num;
  return res;
}

unsigned long
__udivmodsi4_libgcc(unsigned long num, unsigned long den, int modwanted)
{
  unsigned long bit = 1;
  unsigned long res = 0;

  while (den < num && bit && !(den & (1L<<31)))
    {
      den <<=1;
      bit <<=1;
    }
  while (bit)
    {
      if (num >= den)
        {
          num -= den;
          res |= bit;
        }
      bit >>=1;
      den >>=1;
    }
  if (modwanted) return num;
  return res;
}

di_int __ashldi3(di_int a, int b) {
  const int bits_in_word = (int)(sizeof(si_int) * CHAR_BIT);
  dwords input;
  dwords result;
  input.all = a;
  if (b & bits_in_word) /* bits_in_word <= b < bits_in_dword */ {
    result.s.low = 0;
    result.s.high = input.s.low << (b - bits_in_word);
  } else /* 0 <= b < bits_in_word */ {
    if (b == 0)
      return a;
    result.s.low = input.s.low << b;
    result.s.high =
        ((su_int)input.s.high << b) | (input.s.low >> (bits_in_word - b));
  }
  return result.all;
}

#ifdef CRT_HAS_128BIT

// Returns: a << b

// Precondition:  0 <= b < bits_in_tword

ti_int __ashlti3(ti_int a, int b) {
  const int bits_in_dword = (int)(sizeof(di_int) * CHAR_BIT);
  twords input;
  twords result;
  input.all = a;
  if (b & bits_in_dword) /* bits_in_dword <= b < bits_in_tword */ {
    result.s.low = 0;
    result.s.high = input.s.low << (b - bits_in_dword);
  } else /* 0 <= b < bits_in_dword */ {
    if (b == 0)
      return a;
    result.s.low = input.s.low << b;
    result.s.high =
        ((du_int)input.s.high << b) | (input.s.low >> (bits_in_dword - b));
  }
  return result.all;
}

#endif // CRT_HAS_128BIT

di_int __ashrdi3(di_int a, int b) {
  const int bits_in_word = (int)(sizeof(si_int) * CHAR_BIT);
  dwords input;
  dwords result;
  input.all = a;
  if (b & bits_in_word) /* bits_in_word <= b < bits_in_dword */ {
    // result.s.high = input.s.high < 0 ? -1 : 0
    result.s.high = input.s.high >> (bits_in_word - 1);
    result.s.low = input.s.high >> (b - bits_in_word);
  } else /* 0 <= b < bits_in_word */ {
    if (b == 0)
      return a;
    result.s.high = input.s.high >> b;
    result.s.low =
        ((su_int)input.s.high << (bits_in_word - b)) | (input.s.low >> b);
  }
  return result.all;
}

#ifdef CRT_HAS_128BIT

// Returns: arithmetic a >> b

// Precondition:  0 <= b < bits_in_tword

COMPILER_RT_ABI ti_int __ashrti3(ti_int a, int b) {
  const int bits_in_dword = (int)(sizeof(di_int) * CHAR_BIT);
  twords input;
  twords result;
  input.all = a;
  if (b & bits_in_dword) /* bits_in_dword <= b < bits_in_tword */ {
    // result.s.high = input.s.high < 0 ? -1 : 0
    result.s.high = input.s.high >> (bits_in_dword - 1);
    result.s.low = input.s.high >> (b - bits_in_dword);
  } else /* 0 <= b < bits_in_dword */ {
    if (b == 0)
      return a;
    result.s.high = input.s.high >> b;
    result.s.low =
        ((du_int)input.s.high << (bits_in_dword - b)) | (input.s.low >> b);
  }
  return result.all;
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI uint64_t __bswapdi2(uint64_t u) {
  return (
      (((u)&0xff00000000000000ULL) >> 56) |
      (((u)&0x00ff000000000000ULL) >> 40) |
      (((u)&0x0000ff0000000000ULL) >> 24) |
      (((u)&0x000000ff00000000ULL) >> 8)  |
      (((u)&0x00000000ff000000ULL) << 8)  |
      (((u)&0x0000000000ff0000ULL) << 24) |
      (((u)&0x000000000000ff00ULL) << 40) |
      (((u)&0x00000000000000ffULL) << 56));
}

COMPILER_RT_ABI uint32_t __bswapsi2(uint32_t u) {
  return ((((u)&0xff000000) >> 24) |
          (((u)&0x00ff0000) >> 8)  |
          (((u)&0x0000ff00) << 8)  |
          (((u)&0x000000ff) << 24));
}


COMPILER_RT_ABI int __clzsi2(si_int a) {
  su_int x = (su_int)a;
  si_int t = ((x & 0xFFFF0000) == 0) << 4; // if (x is small) t = 16 else 0
  x >>= 16 - t;                            // x = [0 - 0xFFFF]
  su_int r = t;                            // r = [0, 16]
  // return r + clz(x)
  t = ((x & 0xFF00) == 0) << 3;
  x >>= 8 - t; // x = [0 - 0xFF]
  r += t;      // r = [0, 8, 16, 24]
  // return r + clz(x)
  t = ((x & 0xF0) == 0) << 2;
  x >>= 4 - t; // x = [0 - 0xF]
  r += t;      // r = [0, 4, 8, 12, 16, 20, 24, 28]
  // return r + clz(x)
  t = ((x & 0xC) == 0) << 1;
  x >>= 2 - t; // x = [0 - 3]
  r += t;      // r = [0 - 30] and is even
  // return r + clz(x)
  //     switch (x)
  //     {
  //     case 0:
  //         return r + 2;
  //     case 1:
  //         return r + 1;
  //     case 2:
  //     case 3:
  //         return r;
  //     }
  return r + ((2 - x) & -((x & 2) == 0));
}

#ifdef CRT_HAS_128BIT

// Returns: the number of leading 0-bits

// Precondition: a != 0

COMPILER_RT_ABI int __clzti2(ti_int a) {
  twords x;
  x.all = a;
  const di_int f = -(x.s.high == 0);
  return __builtin_clzll((x.s.high & ~f) | (x.s.low & f)) +
         ((si_int)f & ((si_int)(sizeof(di_int) * CHAR_BIT)));
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI si_int __cmpdi2(di_int a, di_int b) {
  dwords x;
  x.all = a;
  dwords y;
  y.all = b;
  if (x.s.high < y.s.high)
    return 0;
  if (x.s.high > y.s.high)
    return 2;
  if (x.s.low < y.s.low)
    return 0;
  if (x.s.low > y.s.low)
    return 2;
  return 1;
}

// Returns: if (a <  b) returns -1
//           if (a == b) returns  0
//           if (a >  b) returns  1
COMPILER_RT_ABI si_int __aeabi_lcmp(di_int a, di_int b) {
  return __cmpdi2(a, b) - 1;
}

#ifdef CRT_HAS_128BIT

// Returns:  if (a <  b) returns 0
//           if (a == b) returns 1
//           if (a >  b) returns 2

COMPILER_RT_ABI si_int __cmpti2(ti_int a, ti_int b) {
  twords x;
  x.all = a;
  twords y;
  y.all = b;
  if (x.s.high < y.s.high)
    return 0;
  if (x.s.high > y.s.high)
    return 2;
  if (x.s.low < y.s.low)
    return 0;
  if (x.s.low > y.s.low)
    return 2;
  return 1;
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI int __ctzsi2(si_int a) {
  su_int x = (su_int)a;
  si_int t = ((x & 0x0000FFFF) == 0)
             << 4; // if (x has no small bits) t = 16 else 0
  x >>= t;         // x = [0 - 0xFFFF] + higher garbage bits
  su_int r = t;    // r = [0, 16]
  // return r + ctz(x)
  t = ((x & 0x00FF) == 0) << 3;
  x >>= t; // x = [0 - 0xFF] + higher garbage bits
  r += t;  // r = [0, 8, 16, 24]
  // return r + ctz(x)
  t = ((x & 0x0F) == 0) << 2;
  x >>= t; // x = [0 - 0xF] + higher garbage bits
  r += t;  // r = [0, 4, 8, 12, 16, 20, 24, 28]
  // return r + ctz(x)
  t = ((x & 0x3) == 0) << 1;
  x >>= t;
  x &= 3; // x = [0 - 3]
  r += t; // r = [0 - 30] and is even
  // return r + ctz(x)

  //  The branch-less return statement below is equivalent
  //  to the following switch statement:
  //     switch (x)
  //    {
  //     case 0:
  //         return r + 2;
  //     case 2:
  //         return r + 1;
  //     case 1:
  //     case 3:
  //         return r;
  //     }
  return r + ((2 - (x >> 1)) & -((x & 1) == 0));
}

#ifdef CRT_HAS_128BIT

// Returns: the number of trailing 0-bits

// Precondition: a != 0

COMPILER_RT_ABI int __ctzti2(ti_int a) {
  twords x;
  x.all = a;
  const di_int f = -(x.s.low == 0);
  return __builtin_ctzll((x.s.high & f) | (x.s.low & ~f)) +
         ((si_int)f & ((si_int)(sizeof(di_int) * CHAR_BIT)));
}

#endif // CRT_HAS_128BIT

#ifdef CRT_HAS_128BIT

// Returns: the index of the least significant 1-bit in a, or
// the value zero if a is zero. The least significant bit is index one.

COMPILER_RT_ABI int __ffsti2(ti_int a) {
  twords x;
  x.all = a;
  if (x.s.low == 0) {
    if (x.s.high == 0)
      return 0;
    return __builtin_ctzll(x.s.high) + (1 + sizeof(di_int) * CHAR_BIT);
  }
  return __builtin_ctzll(x.s.low) + 1;
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI di_int __lshrdi3(di_int a, int b) {
  const int bits_in_word = (int)(sizeof(si_int) * CHAR_BIT);
  udwords input;
  udwords result;
  input.all = a;
  if (b & bits_in_word) /* bits_in_word <= b < bits_in_dword */ {
    result.s.high = 0;
    result.s.low = input.s.high >> (b - bits_in_word);
  } else /* 0 <= b < bits_in_word */ {
    if (b == 0)
      return a;
    result.s.high = input.s.high >> b;
    result.s.low = (input.s.high << (bits_in_word - b)) | (input.s.low >> b);
  }
  return result.all;
}

#ifdef CRT_HAS_128BIT

// Returns: logical a >> b

// Precondition:  0 <= b < bits_in_tword

COMPILER_RT_ABI ti_int __lshrti3(ti_int a, int b) {
  const int bits_in_dword = (int)(sizeof(di_int) * CHAR_BIT);
  utwords input;
  utwords result;
  input.all = a;
  if (b & bits_in_dword) /* bits_in_dword <= b < bits_in_tword */ {
    result.s.high = 0;
    result.s.low = input.s.high >> (b - bits_in_dword);
  } else /* 0 <= b < bits_in_dword */ {
    if (b == 0)
      return a;
    result.s.high = input.s.high >> b;
    result.s.low = (input.s.high << (bits_in_dword - b)) | (input.s.low >> b);
  }
  return result.all;
}

#endif // CRT_HAS_128BIT


di_int __muldsi3(su_int a, su_int b) {
  dwords r;
  const int bits_in_word_2 = (int)(sizeof(si_int) * CHAR_BIT) / 2;
  const su_int lower_mask = (su_int)~0 >> bits_in_word_2;
  r.s.low = (a & lower_mask) * (b & lower_mask);
  su_int t = r.s.low >> bits_in_word_2;
  r.s.low &= lower_mask;
  t += (a >> bits_in_word_2) * (b & lower_mask);
  r.s.low += (t & lower_mask) << bits_in_word_2;
  r.s.high = t >> bits_in_word_2;
  t = r.s.low >> bits_in_word_2;
  r.s.low &= lower_mask;
  t += (b >> bits_in_word_2) * (a & lower_mask);
  r.s.low += (t & lower_mask) << bits_in_word_2;
  r.s.high += t >> bits_in_word_2;
  r.s.high += (a >> bits_in_word_2) * (b >> bits_in_word_2);
  return r.all;
}

// Returns: a * b

COMPILER_RT_ABI di_int __muldi3_compiler_rt(di_int a, di_int b) {
  dwords x;
  x.all = a;
  dwords y;
  y.all = b;
  dwords r;
  r.all = __muldsi3(x.s.low, y.s.low);
  r.s.high += x.s.high * y.s.low + x.s.low * y.s.high;
  return r.all;
}

#ifdef CRT_HAS_128BIT

ti_int __mulddi3(du_int a, du_int b) {
  twords r;
  const int bits_in_dword_2 = (int)(sizeof(di_int) * CHAR_BIT) / 2;
  const du_int lower_mask = (du_int)~0 >> bits_in_dword_2;
  r.s.low = (a & lower_mask) * (b & lower_mask);
  du_int t = r.s.low >> bits_in_dword_2;
  r.s.low &= lower_mask;
  t += (a >> bits_in_dword_2) * (b & lower_mask);
  r.s.low += (t & lower_mask) << bits_in_dword_2;
  r.s.high = t >> bits_in_dword_2;
  t = r.s.low >> bits_in_dword_2;
  r.s.low &= lower_mask;
  t += (b >> bits_in_dword_2) * (a & lower_mask);
  r.s.low += (t & lower_mask) << bits_in_dword_2;
  r.s.high += t >> bits_in_dword_2;
  r.s.high += (a >> bits_in_dword_2) * (b >> bits_in_dword_2);
  return r.all;
}

// Returns: a * b

COMPILER_RT_ABI ti_int __multi3(ti_int a, ti_int b) {
  twords x;
  x.all = a;
  twords y;
  y.all = b;
  twords r;
  r.all = __mulddi3(x.s.low, y.s.low);
  r.s.high += x.s.high * y.s.low + x.s.low * y.s.high;
  return r.all;
}

#endif

COMPILER_RT_ABI di_int __negdi2(di_int a) {
  // Note: this routine is here for API compatibility; any sane compiler
  // should expand it inline.
  return -(du_int)a;
}

#ifdef CRT_HAS_128BIT

COMPILER_RT_ABI ti_int __negti2(ti_int a) {
  // Note: this routine is here for API compatibility; any sane compiler
  // should expand it inline.
  return -(tu_int)a;
}

#endif

COMPILER_RT_ABI int __paritydi2(di_int a) {
  dwords x;
  x.all = a;
  su_int x2 = x.s.high ^ x.s.low;
  x2 ^= x2 >> 16;
  x2 ^= x2 >> 8;
  x2 ^= x2 >> 4;
  return (0x6996 >> (x2 & 0xF)) & 1;
}

#ifdef CRT_HAS_128BIT

// Returns: 1 if number of bits is odd else returns 0

COMPILER_RT_ABI int __parityti2(ti_int a) {
  twords x;
  dwords x2;
  x.all = a;
  x2.all = x.s.high ^ x.s.low;
  su_int x3 = x2.s.high ^ x2.s.low;
  x3 ^= x3 >> 16;
  x3 ^= x3 >> 8;
  x3 ^= x3 >> 4;
  return (0x6996 >> (x3 & 0xF)) & 1;
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI int __paritysi2(si_int a) {
  su_int x = (su_int)a;
  x ^= x >> 16;
  x ^= x >> 8;
  x ^= x >> 4;
  return (0x6996 >> (x & 0xF)) & 1;
}

COMPILER_RT_ABI int __popcountdi2(di_int a) {
  du_int x2 = (du_int)a;
  x2 = x2 - ((x2 >> 1) & 0x5555555555555555uLL);
  // Every 2 bits holds the sum of every pair of bits (32)
  x2 = ((x2 >> 2) & 0x3333333333333333uLL) + (x2 & 0x3333333333333333uLL);
  // Every 4 bits holds the sum of every 4-set of bits (3 significant bits) (16)
  x2 = (x2 + (x2 >> 4)) & 0x0F0F0F0F0F0F0F0FuLL;
  // Every 8 bits holds the sum of every 8-set of bits (4 significant bits) (8)
  su_int x = (su_int)(x2 + (x2 >> 32));
  // The lower 32 bits hold four 16 bit sums (5 significant bits).
  //   Upper 32 bits are garbage
  x = x + (x >> 16);
  // The lower 16 bits hold two 32 bit sums (6 significant bits).
  //   Upper 16 bits are garbage
  return (x + (x >> 8)) & 0x0000007F; // (7 significant bits)
}

COMPILER_RT_ABI int __popcountsi2(si_int a) {
  su_int x = (su_int)a;
  x = x - ((x >> 1) & 0x55555555);
  // Every 2 bits holds the sum of every pair of bits
  x = ((x >> 2) & 0x33333333) + (x & 0x33333333);
  // Every 4 bits holds the sum of every 4-set of bits (3 significant bits)
  x = (x + (x >> 4)) & 0x0F0F0F0F;
  // Every 8 bits holds the sum of every 8-set of bits (4 significant bits)
  x = (x + (x >> 16));
  // The lower 16 bits hold two 8 bit sums (5 significant bits).
  //    Upper 16 bits are garbage
  return (x + (x >> 8)) & 0x0000003F; // (6 significant bits)
}

#ifdef CRT_HAS_128BIT

// Returns: count of 1 bits

COMPILER_RT_ABI int __popcountti2(ti_int a) {
  tu_int x3 = (tu_int)a;
  x3 = x3 - ((x3 >> 1) &
             (((tu_int)0x5555555555555555uLL << 64) | 0x5555555555555555uLL));
  // Every 2 bits holds the sum of every pair of bits (64)
  x3 = ((x3 >> 2) &
        (((tu_int)0x3333333333333333uLL << 64) | 0x3333333333333333uLL)) +
       (x3 & (((tu_int)0x3333333333333333uLL << 64) | 0x3333333333333333uLL));
  // Every 4 bits holds the sum of every 4-set of bits (3 significant bits) (32)
  x3 = (x3 + (x3 >> 4)) &
       (((tu_int)0x0F0F0F0F0F0F0F0FuLL << 64) | 0x0F0F0F0F0F0F0F0FuLL);
  // Every 8 bits holds the sum of every 8-set of bits (4 significant bits) (16)
  du_int x2 = (du_int)(x3 + (x3 >> 64));
  // Every 8 bits holds the sum of every 8-set of bits (5 significant bits) (8)
  su_int x = (su_int)(x2 + (x2 >> 32));
  // Every 8 bits holds the sum of every 8-set of bits (6 significant bits) (4)
  x = x + (x >> 16);
  // Every 8 bits holds the sum of every 8-set of bits (7 significant bits) (2)
  //
  // Upper 16 bits are garbage
  return (x + (x >> 8)) & 0xFF; // (8 significant bits)
}

#endif // CRT_HAS_128BIT

COMPILER_RT_ABI double __powidf2(double a, int b) {
  const int recip = b < 0;
  double r = 1;
  while (1) {
    if (b & 1)
      r *= a;
    b /= 2;
    if (b == 0)
      break;
    a *= a;
  }
  return recip ? 1 / r : r;
}

COMPILER_RT_ABI float __powisf2(float a, int b) {
  const int recip = b < 0;
  float r = 1;
  while (1) {
    if (b & 1)
      r *= a;
    b /= 2;
    if (b == 0)
      break;
    a *= a;
  }
  return recip ? 1 / r : r;
}

COMPILER_RT_ABI si_int __ucmpdi2(du_int a, du_int b) {
  udwords x;
  x.all = a;
  udwords y;
  y.all = b;
  if (x.s.high < y.s.high)
    return 0;
  if (x.s.high > y.s.high)
    return 2;
  if (x.s.low < y.s.low)
    return 0;
  if (x.s.low > y.s.low)
    return 2;
  return 1;
}

// Returns: if (a <  b) returns -1
//           if (a == b) returns  0
//           if (a >  b) returns  1
COMPILER_RT_ABI si_int __aeabi_ulcmp(di_int a, di_int b) {
  return __ucmpdi2(a, b) - 1;
}

#ifdef CRT_HAS_128BIT

// Returns:  if (a <  b) returns 0
//           if (a == b) returns 1
//           if (a >  b) returns 2

COMPILER_RT_ABI si_int __ucmpti2(tu_int a, tu_int b) {
  utwords x;
  x.all = a;
  utwords y;
  y.all = b;
  if (x.s.high < y.s.high)
    return 0;
  if (x.s.high > y.s.high)
    return 2;
  if (x.s.low < y.s.low)
    return 0;
  if (x.s.low > y.s.low)
    return 2;
  return 1;
}

#endif // CRT_HAS_128BIT
