/*
 * hpwd.h
 *
 * Header file for Dec HPWD has password encryption algorithm
 * HPWD written by Shawn A. Clifford		(sysop@robot.nuceng.ufl.edu)
 * This file adapted by Mike McCauley (mikem@open.com.au)
 *
 */

/*
 *	Fixed-Length Descriptor:
 */

#ifndef VMS
struct	dsc$descriptor_s
{
	unsigned short	dsc$w_length;	/* length of data item in bytes */
	unsigned char	dsc$b_dtype;	/* data type code */
	unsigned char	dsc$b_class;	/* descriptor class code */
	char		*dsc$a_pointer;	/* address of first byte of data */
					/* storage */
};
#define __DESCRIP_LOADED 1
#endif

typedef struct dsc$descriptor_s string;
#define SET_DESC(desc,s,len) {desc.dsc$w_length=len;desc.dsc$b_dtype=0;desc.dsc$b_class=0;desc.dsc$a_pointer=s;}

/* Returns either SS$_NORMAL (1) or SS$_ABORT (44) */
int lgi_hpwd(
	string *output_hash,
	string *password,
	unsigned char encrypt,
	unsigned short salt,
	string *username);

/* Encryption method codes */
/* Changed from the original UAI$.... for compatibility with Perl constants */
#define UAI_C_AD_II   0	     /* AUTODIN-II 32 bit crc code NOT SUPPORTED      */
#define UAI_C_PURDY   1	     /* Purdy polynomial over salted input */
#define UAI_C_PURDY_V 2	     /* Purdy polynomial + variable length username */
#define UAI_C_PURDY_S 3      /* PURDY_V + additional bit rotation */

/* This is the Macro that Shawn uses in hpwd.c to control endianness */
#ifndef  IS_BIG_ENDIAN
#if PERL_BYTEORDER==4321
#define  IS_BIG_ENDIAN  1
#else
#define  IS_BIG_ENDIAN  0
#endif
#endif


