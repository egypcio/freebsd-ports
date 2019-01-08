--- regex2dfa/regex2dfa.go.orig 2018-11-21 12:08:21 UTC
+++ regex2dfa/regex2dfa.go
@@ -1,7 +1,7 @@
 package regex2dfa

 // #cgo CXXFLAGS: -std=c++11 -DMARIONETTE -I${SRCDIR}/../third_party/re2/ -I${SRCDIR}/../third_party/openfst/src/include/                                                                                                                    
-// #cgo LDFLAGS: -ldl ${SRCDIR}/../third_party/libs/libfst.a ${SRCDIR}/../third_party/libs/libfstscript.a ${SRCDIR}/../third_party/libs/libre2.a                                                                                             
+// #cgo LDFLAGS: -ldl ${SRCDIR}/../third_party/libs/libfst.a ${SRCDIR}/../third_party/libs/libfstscript.a /usr/local/lib/libre2.a                                                                                                            
 // #include <stdlib.h>
 // #include <stdint.h>
 // int _regex2dfa(const char* input_regex, uint32_t input_regex_len, char **out, size_t *sz);

