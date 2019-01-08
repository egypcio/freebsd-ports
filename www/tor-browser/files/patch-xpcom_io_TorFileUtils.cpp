--- xpcom/io/TorFileUtils.cpp.orig	2019-01-02 14:54:21 UTC
+++ xpcom/io/TorFileUtils.cpp
@@ -20,8 +20,17 @@ TorBrowser_GetUserDataDir(nsIFile *aExeFile, nsIFile**
   NS_ENSURE_ARG_POINTER(aFile);
   nsCOMPtr<nsIFile> tbDataDir;
 
-#ifdef TOR_BROWSER_DATA_OUTSIDE_APP_DIR
-  nsAutoCString tbDataLeafName(NS_LITERAL_CSTRING("TorBrowser-Data"));
+#if defined(TOR_BROWSER_DATA_IN_HOME_DIR)
+  const char *homeDir = getenv("HOME");
+  if (!homeDir || !*homeDir)
+    return NS_ERROR_FAILURE;
+  nsresult rv = NS_NewNativeLocalFile(nsDependentCString(homeDir), true,
+                                      getter_AddRefs(tbDataDir));
+  NS_ENSURE_SUCCESS(rv, rv);
+  nsAutoCString leafSubdir(NS_LITERAL_CSTRING("TorBrowser-Data"));
+  rv = tbDataDir->AppendNative(leafSubdir);
+  NS_ENSURE_SUCCESS(rv, rv);
+#elif defined(TOR_BROWSER_DATA_OUTSIDE_APP_DIR)  nsAutoCString tbDataLeafName(NS_LITERAL_CSTRING("TorBrowser-Data"));
   nsCOMPtr<nsIFile> appRootDir;
   nsresult rv = GetAppRootDir(aExeFile, getter_AddRefs(appRootDir));
   NS_ENSURE_SUCCESS(rv, rv);
