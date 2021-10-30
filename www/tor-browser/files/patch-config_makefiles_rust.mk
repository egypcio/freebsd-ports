--- config/makefiles/rust.mk.orig	2021-10-30 18:14:10 UTC
+++ config/makefiles/rust.mk
@@ -61,7 +61,7 @@ ifndef MOZ_DEBUG_RUST
 # Enable link-time optimization for release builds, but not when linking
 # gkrust_gtest.
 ifeq (,$(findstring gkrust_gtest,$(RUST_LIBRARY_FILE)))
-cargo_rustc_flags += -Clto
+### cargo_rustc_flags += -Clto	# www/firefox-esr, bug1640982
 endif
 # Versions of rust >= 1.45 need -Cembed-bitcode=yes for all crates when
 # using -Clto.
