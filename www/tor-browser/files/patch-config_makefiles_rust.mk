--- config/makefiles/rust.mk.orig	2020-09-01 13:46:40 UTC
+++ config/makefiles/rust.mk
@@ -46,8 +46,12 @@ endif
 cargo_rustc_flags = $(CARGO_RUSTCFLAGS)
 ifndef DEVELOPER_OPTIONS
 ifndef MOZ_DEBUG_RUST
+#
+### https://bugzilla.mozilla.org/show_bug.cgi?id=1640982
+#
 # Enable link-time optimization for release builds.
-cargo_rustc_flags += -C lto
+# cargo_rustc_flags += -C lto
+#
 endif
 endif
 
