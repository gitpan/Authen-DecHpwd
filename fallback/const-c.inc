#define PERL_constant_NOTFOUND	1
#define PERL_constant_NOTDEF	2
#define PERL_constant_ISIV	3
#define PERL_constant_ISNO	4
#define PERL_constant_ISNV	5
#define PERL_constant_ISPV	6
#define PERL_constant_ISPVN	7
#define PERL_constant_ISSV	8
#define PERL_constant_ISUNDEF	9
#define PERL_constant_ISUV	10
#define PERL_constant_ISYES	11

#ifndef NVTYPE
typedef double NV; /* 5.6 and later define NVTYPE, and typedef NV to it.  */
#endif
#ifndef aTHX_
#define aTHX_ /* 5.6 or later define this for threading support.  */
#endif
#ifndef pTHX_
#define pTHX_ /* 5.6 or later define this for threading support.  */
#endif

static int
constant (pTHX_ const char *name, STRLEN len, IV *iv_return) {
  /* Initially switch on the length of the name.  */
  /* When generated this function returned values for the list of names given
     in this section of perl code.  Rather than manually editing these functions
     to add or remove constants, which would result in this comment and section
     of code becoming inaccurate, we recommend that you edit this section of
     code, and use it to regenerate a new set of constant functions which you
     then use to replace the originals.

     Regenerate these constant functions by feeding this entire source file to
     perl -x

#!/usr/bin/perl -w
use ExtUtils::Constant qw (constant_types C_constant XS_constant);

my $types = {map {($_, 1)} qw(IV)};
my @names = (qw(UAI_C_AD_II UAI_C_PURDY UAI_C_PURDY_S UAI_C_PURDY_V
	       __DESCRIP_LOADED));

print constant_types(); # macro defs
foreach (C_constant ("Authen::DecHpwd", 'constant', 'IV', $types, undef, 3, @names) ) {
    print $_, "\n"; # C constant subs
}
print "#### XS Section:\n";
print XS_constant ("Authen::DecHpwd", $types);
__END__
   */

  switch (len) {
  case 11:
    /* Names all of length 11.  */
    /* UAI_C_AD_II UAI_C_PURDY */
    /* Offset 9 gives the best switch position.  */
    switch (name[9]) {
    case 'D':
      if (memEQ(name, "UAI_C_PURDY", 11)) {
      /*                        ^        */
#ifdef UAI_C_PURDY
        *iv_return = UAI_C_PURDY;
        return PERL_constant_ISIV;
#else
        return PERL_constant_NOTDEF;
#endif
      }
      break;
    case 'I':
      if (memEQ(name, "UAI_C_AD_II", 11)) {
      /*                        ^        */
#ifdef UAI_C_AD_II
        *iv_return = UAI_C_AD_II;
        return PERL_constant_ISIV;
#else
        return PERL_constant_NOTDEF;
#endif
      }
      break;
    }
    break;
  case 13:
    /* Names all of length 13.  */
    /* UAI_C_PURDY_S UAI_C_PURDY_V */
    /* Offset 12 gives the best switch position.  */
    switch (name[12]) {
    case 'S':
      if (memEQ(name, "UAI_C_PURDY_S", 13)) {
      /*                           ^       */
#ifdef UAI_C_PURDY_S
        *iv_return = UAI_C_PURDY_S;
        return PERL_constant_ISIV;
#else
        return PERL_constant_NOTDEF;
#endif
      }
      break;
    case 'V':
      if (memEQ(name, "UAI_C_PURDY_V", 13)) {
      /*                           ^       */
#ifdef UAI_C_PURDY_V
        *iv_return = UAI_C_PURDY_V;
        return PERL_constant_ISIV;
#else
        return PERL_constant_NOTDEF;
#endif
      }
      break;
    }
    break;
  case 16:
    if (memEQ(name, "__DESCRIP_LOADED", 16)) {
#ifdef __DESCRIP_LOADED
      *iv_return = __DESCRIP_LOADED;
      return PERL_constant_ISIV;
#else
      return PERL_constant_NOTDEF;
#endif
    }
    break;
  }
  return PERL_constant_NOTFOUND;
}

