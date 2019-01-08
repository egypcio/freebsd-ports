--- fte/dfa.go.orig     2018-11-21 11:37:41 UTC
+++ fte/dfa.go
@@ -1,7 +1,7 @@
 package fte

 // #cgo CXXFLAGS: -std=c++11
-// #cgo LDFLAGS: -ldl ${SRCDIR}/../third_party/libs/libgmp.a
+// #cgo LDFLAGS: -ldl /usr/local/lib/libgmp.a
 // #include <stdlib.h>
 // #include <stdint.h>
 // void* _dfa_new(char *tbl, const uint32_t max_len);

