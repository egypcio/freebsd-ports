--- wml_test/t/11-wmk.t.orig
+++ wml_test/t/11-wmk.t
@@ -37,6 +37,8 @@
 bar
 EOT_IN
 
+sleep 1;
+
 $rc = `$wmk a.wml 2>&1`;
 print ($rc eq "$ENV{WML} -n -q -W \"1,-N\" -o a.html a.wml\n" ? "ok\n" : "not ok\n");
 $rc = &TEST::system("cmp $tmpfile1 a.html");
