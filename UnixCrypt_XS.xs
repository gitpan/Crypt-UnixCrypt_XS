#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <./fcrypt/fcrypt.h>

MODULE = Crypt::UnixCrypt_XS		PACKAGE = Crypt::UnixCrypt_XS		

char *
crypt( password, salt )
  SV *password
  SV *salt
  CODE:
    size_t passwordlen, saltlen;
    const char *passwordstr, *saltstr;
    char outbuf[21];
    passwordstr = SvPV(password, passwordlen);
    saltstr = SvPV(salt, saltlen);
    des_fcrypt(passwordstr, passwordlen, saltstr, saltlen, outbuf);
    RETVAL = outbuf;
  OUTPUT:
    RETVAL

SV *
crypt_rounds( password, nrounds, saltnum, in_block )
  SV *password
  unsigned long nrounds
  unsigned long saltnum
  SV *in_block
  CODE:
    size_t passwordlen, blocklen;
    const char *passwordstr, *blockstr;
    des_cblock key, block;
    blockstr = SvPV(in_block, blocklen);
    if(blocklen != 8)
      croak("data block must be eight bytes long");
    memcpy(block, blockstr, 8);
    passwordstr = SvPV(password, passwordlen);
    trad_password_to_key(key, passwordstr, passwordlen);
    crypt_rounds(key, nrounds, saltnum, block);
    RETVAL = newSVpvn(block, 8);
  OUTPUT:
    RETVAL

SV *
fold_password( password )
  SV *password
  CODE:
    size_t passwordlen;
    const char *passwordstr;
    des_cblock key;
    int i;
    passwordstr = SvPV(password, passwordlen);
    ext_password_to_key(key, passwordstr, passwordlen);
    for(i=0; i<8; i++)
      key[i] = (key[i] & 0xfe) >> 1;
    RETVAL = newSVpvn(key, 8);
  OUTPUT:
    RETVAL

SV *
base64_to_block( base64 )
  SV *base64
  CODE:
    size_t base64len;
    const char *base64str;
    des_cblock block;
    base64str = SvPV(base64, base64len);
    if(base64len != 11)
      croak("data block in base 64 must be eleven characters long");
    base64_to_block(block, base64str);
    RETVAL = newSVpvn(block, 8);
  OUTPUT:
    RETVAL

char *
block_to_base64( in_block )
  SV *in_block
  CODE:
    size_t blocklen;
    const char *blockstr;
    des_cblock block;
    char base64[12];
    blockstr = SvPV(in_block, blocklen);
    if(blocklen != 8)
      croak("data block must be eight bytes long");
    memcpy(block, blockstr, 8);
    block_to_base64(block, base64);
    RETVAL = base64;
  OUTPUT:
    RETVAL

unsigned long
base64_to_int24( base64 )
  SV *base64
  CODE:
    size_t base64len;
    const char *base64str;
    des_cblock block;
    base64str = SvPV(base64, base64len);
    if(base64len != 4)
      croak("24-bit integer in base 64 must be four characters long");
    RETVAL = base64_to_int24(base64str);
  OUTPUT:
    RETVAL

char *
int24_to_base64( val )
  unsigned long val;
  CODE:
    char base64[5];
    int24_to_base64(val, base64);
    RETVAL = base64;
  OUTPUT:
    RETVAL

unsigned long
base64_to_int12( base64 )
  SV *base64
  CODE:
    size_t base64len;
    const char *base64str;
    des_cblock block;
    base64str = SvPV(base64, base64len);
    if(base64len != 2)
      croak("12-bit integer in base 64 must be two characters long");
    RETVAL = base64_to_int12(base64str);
  OUTPUT:
    RETVAL

char *
int12_to_base64( val )
  unsigned long val;
  CODE:
    char base64[3];
    int12_to_base64(val, base64);
    RETVAL = base64;
  OUTPUT:
    RETVAL
