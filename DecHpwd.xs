#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include <hpwd.h>

#include "const-c.inc"

MODULE = Authen::DecHpwd		PACKAGE = Authen::DecHpwd		

INCLUDE: const-xs.inc

char*
lgi_hpwd(username, password, encrypt, salt)
	char* username
	char* password
	unsigned char encrypt
	unsigned short salt
    PPCODE:
	char                    obuf[8]; /* Output buffer */
	struct dsc$descriptor_s outdsc = {sizeof(obuf),0,0,obuf};
	struct dsc$descriptor_s pwddsc;
	struct dsc$descriptor_s usrdsc;
	STRLEN                  slen;
	char                    *s;
	int                     result;

	s = SvPV(ST(0), slen);
	SET_DESC(usrdsc, s, slen);
	s = SvPV(ST(1), slen);
	SET_DESC(pwddsc, s, slen);

	memset (obuf, 0, sizeof(obuf));
	result = lgi_hpwd(&outdsc, &pwddsc, encrypt, salt, &usrdsc);
	if (result == 1)
	{
		ST(0) = sv_newmortal();
		sv_setpvn(ST(0), outdsc.dsc$a_pointer, outdsc.dsc$w_length);
		XSRETURN(1);
	}
	else
	{
		XSRETURN_UNDEF;
	}

	
