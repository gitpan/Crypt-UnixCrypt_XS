#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include <./fcrypt/fcrypt.h>

MODULE = Crypt::UnixCrypt_XS		PACKAGE = Crypt::UnixCrypt_XS		
char *
crypt( buf, salt )
  const char *buf
  const char *salt
  CODE:
    char b[14];
    des_fcrypt(buf, salt, b);
    RETVAL = b;
  OUTPUT:
    RETVAL
