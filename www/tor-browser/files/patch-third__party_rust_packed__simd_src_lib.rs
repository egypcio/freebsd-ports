--- third_party/rust/packed_simd/src/lib.rs.orig	2021-11-01 15:27:03 UTC
+++ third_party/rust/packed_simd/src/lib.rs
@@ -199,7 +199,7 @@
 //!   Numeric casts are not very "precise": sometimes lossy, sometimes value
 //!   preserving, etc.
 
-#![cfg_attr(use_const_generics, feature(const_generics))]
+#![cfg_attr(use_const_generics, feature(adt_const_params))]
 #![cfg_attr(use_const_generics, allow(incomplete_features, clippy::from_over_into))]
 #![feature(
     repr_simd,
