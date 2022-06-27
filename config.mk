# Generated config based on /home/dipj/nlx/iproute2/include
# user can control verbosity similar to kernel builds (e.g., V=1)
ifeq ("$(origin V)", "command line")
  VERBOSE = $(V)
endif
ifndef VERBOSE
  VERBOSE = 0
endif
ifeq ($(VERBOSE),1)
  Q =
else
  Q = @
endif

ifeq ($(VERBOSE), 0)
    QUIET_CC       = @echo '    CC       '$@;
    QUIET_AR       = @echo '    AR       '$@;
    QUIET_LINK     = @echo '    LINK     '$@;
    QUIET_YACC     = @echo '    YACC     '$@;
    QUIET_LEX      = @echo '    LEX      '$@;
endif
PKG_CONFIG:=pkg-config
AR:=ar
CC:=gcc
YACC:=bison
TC_CONFIG_NO_XT:=y
IP_CONFIG_SETNS:=y
CFLAGS += -DHAVE_SETNS
HAVE_LIBBPF:=y
CFLAGS += -DHAVE_LIBBPF  -I/home/dipj/nlx/iproute2/libbpf/src/build/usr/include
CFLAGS += -DLIBBPF_VERSION=\"0.4.0\"
LDLIBS +=  /home/dipj/nlx/iproute2/libbpf/src/build/usr/lib64/libbpf.a -lz -lelf
HAVE_LIBBPF_SECTION_NAME:=y
CFLAGS += -DHAVE_LIBBPF_SECTION_NAME 
HAVE_ELF:=y
CFLAGS += -DHAVE_ELF
LDLIBS +=  -lelf
CFLAGS += -DHAVE_LIBBSD
LDLIBS += -lbsd

%.o: %.c
	$(QUIET_CC)$(CC) $(CFLAGS) $(EXTRA_CFLAGS) $(CPPFLAGS) -c -o $@ $<
