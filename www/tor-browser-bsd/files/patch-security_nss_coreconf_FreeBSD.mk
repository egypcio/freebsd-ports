--- security/nss/coreconf/FreeBSD.mk.orig	2019-01-02 13:50:39 UTC
+++ security/nss/coreconf/FreeBSD.mk
@@ -5,10 +5,10 @@
 
 include $(CORE_DEPTH)/coreconf/UNIX.mk
 
-DEFAULT_COMPILER	= gcc
-CC			= gcc
-CCC			= g++
-RANLIB			= ranlib
+DEFAULT_COMPILER	= gcc8
+CC			= gcc8
+CCC			= g++8
+RANLIB			= gcc-ranlib8
 
 CPU_ARCH		= $(OS_TEST)
 ifeq ($(CPU_ARCH),i386)
