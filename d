[1mdiff --git a/.project b/.project[m
[1mindex 5dac9f9..38f99a7 100644[m
[1m--- a/.project[m
[1m+++ b/.project[m
[36m@@ -1,6 +1,6 @@[m
 <?xml version="1.0" encoding="UTF-8"?>[m
 <projectDescription>[m
[31m-	<name>transitTalker</name>[m
[32m+[m	[32m<name>ttfinal</name>[m[41m[m
 	<comment></comment>[m
 	<projects>[m
 	</projects>[m
[1mdiff --git a/.settings/org.eclipse.jdt.core.prefs b/.settings/org.eclipse.jdt.core.prefs[m
[1mindex da5d060..48ab4c6 100644[m
[1m--- a/.settings/org.eclipse.jdt.core.prefs[m
[1m+++ b/.settings/org.eclipse.jdt.core.prefs[m
[36m@@ -1,4 +1,4 @@[m
 eclipse.preferences.version=1[m
[31m-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.5[m
[31m-org.eclipse.jdt.core.compiler.compliance=1.5[m
[31m-org.eclipse.jdt.core.compiler.source=1.5[m
[32m+[m[32morg.eclipse.jdt.core.compiler.codegen.targetPlatform=1.6[m[41m[m
[32m+[m[32morg.eclipse.jdt.core.compiler.compliance=1.6[m[41m[m
[32m+[m[32morg.eclipse.jdt.core.compiler.source=1.6[m[41m[m
[1mdiff --git a/AndroidManifest.xml b/AndroidManifest.xml[m
[1mindex 6773e9e..1c8bdba 100644[m
[1m--- a/AndroidManifest.xml[m
[1m+++ b/AndroidManifest.xml[m
[36m@@ -1,29 +1,27 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
 <manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
     package="com.example.transittalker"[m
     android:versionCode="1"[m
     android:versionName="1.0" >[m
 [m
     <uses-sdk[m
[31m-        android:minSdkVersion="10"[m
[31m-        android:targetSdkVersion="15" />[m
[31m-    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>[m
[31m-    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>[m
[31m-    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>[m
[32m+[m[32m        android:minSdkVersion="8"[m
[32m+[m[32m        android:targetSdkVersion="10" />[m
     <uses-permission android:name="android.permission.INTERNET"/>[m
[32m+[m[32m    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>[m
[32m+[m[32m    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>[m
 [m
     <application[m
[32m+[m[32m        android:allowBackup="true"[m
         android:icon="@drawable/ic_launcher"[m
         android:label="@string/app_name"[m
[31m-        android:theme="@style/AppTheme"[m
[31m-        android:allowBackup="true" >[m
[32m+[m[32m        android:theme="@style/AppTheme" >[m
         <activity[m
[31m-            android:name=".main"[m
[31m-            android:label="@string/title_activity_main" [m
[31m-            android:configChanges="keyboardHidden|orientation"[m
[31m-            >[m
[32m+[m[32m            android:name="com.example.transittalker.Mainspace"[m
[32m+[m[32m            android:label="@string/app_name"[m
[32m+[m[32m            android:screenOrientation="landscape" >[m
             <intent-filter>[m
                 <action android:name="android.intent.action.MAIN" />[m
[31m-[m
                 <category android:name="android.intent.category.LAUNCHER" />[m
             </intent-filter>[m
         </activity>[m
[1mdiff --git a/bin/AndroidManifest.xml b/bin/AndroidManifest.xml[m
[1mindex 6773e9e..1c8bdba 100644[m
[1m--- a/bin/AndroidManifest.xml[m
[1m+++ b/bin/AndroidManifest.xml[m
[36m@@ -1,29 +1,27 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
 <manifest xmlns:android="http://schemas.android.com/apk/res/android"[m
     package="com.example.transittalker"[m
     android:versionCode="1"[m
     android:versionName="1.0" >[m
 [m
     <uses-sdk[m
[31m-        android:minSdkVersion="10"[m
[31m-        android:targetSdkVersion="15" />[m
[31m-    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>[m
[31m-    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>[m
[31m-    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>[m
[32m+[m[32m        android:minSdkVersion="8"[m
[32m+[m[32m        android:targetSdkVersion="10" />[m
     <uses-permission android:name="android.permission.INTERNET"/>[m
[32m+[m[32m    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>[m
[32m+[m[32m    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>[m
 [m
     <application[m
[32m+[m[32m        android:allowBackup="true"[m
         android:icon="@drawable/ic_launcher"[m
         android:label="@string/app_name"[m
[31m-        android:theme="@style/AppTheme"[m
[31m-        android:allowBackup="true" >[m
[32m+[m[32m        android:theme="@style/AppTheme" >[m
         <activity[m
[31m-            android:name=".main"[m
[31m-            android:label="@string/title_activity_main" [m
[31m-            android:configChanges="keyboardHidden|orientation"[m
[31m-            >[m
[32m+[m[32m            android:name="com.example.transittalker.Mainspace"[m
[32m+[m[32m            android:label="@string/app_name"[m
[32m+[m[32m            android:screenOrientation="landscape" >[m
             <intent-filter>[m
                 <action android:name="android.intent.action.MAIN" />[m
[31m-[m
                 <category android:name="android.intent.category.LAUNCHER" />[m
             </intent-filter>[m
         </activity>[m
[1mdiff --git a/bin/classes.dex b/bin/classes.dex[m
[1mindex 03ef092..8e03828 100644[m
Binary files a/bin/classes.dex and b/bin/classes.dex differ
[1mdiff --git a/bin/classes/com/example/transittalker/BuildConfig.class b/bin/classes/com/example/transittalker/BuildConfig.class[m
[1mindex 4e28d9e..3bf076b 100644[m
Binary files a/bin/classes/com/example/transittalker/BuildConfig.class and b/bin/classes/com/example/transittalker/BuildConfig.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/Client.class b/bin/classes/com/example/transittalker/Client.class[m
[1mindex 1ef502b..e9d058d 100644[m
Binary files a/bin/classes/com/example/transittalker/Client.class and b/bin/classes/com/example/transittalker/Client.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/FileIO.class b/bin/classes/com/example/transittalker/FileIO.class[m
[1mindex 2a4ada9..95977ac 100644[m
Binary files a/bin/classes/com/example/transittalker/FileIO.class and b/bin/classes/com/example/transittalker/FileIO.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$attr.class b/bin/classes/com/example/transittalker/R$attr.class[m
[1mindex db963a8..133715d 100644[m
Binary files a/bin/classes/com/example/transittalker/R$attr.class and b/bin/classes/com/example/transittalker/R$attr.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$drawable.class b/bin/classes/com/example/transittalker/R$drawable.class[m
[1mindex b2cc0a3..545e36a 100644[m
Binary files a/bin/classes/com/example/transittalker/R$drawable.class and b/bin/classes/com/example/transittalker/R$drawable.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$id.class b/bin/classes/com/example/transittalker/R$id.class[m
[1mindex fff0665..79aaa25 100644[m
Binary files a/bin/classes/com/example/transittalker/R$id.class and b/bin/classes/com/example/transittalker/R$id.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$layout.class b/bin/classes/com/example/transittalker/R$layout.class[m
[1mindex a7c5dd1..b47f367 100644[m
Binary files a/bin/classes/com/example/transittalker/R$layout.class and b/bin/classes/com/example/transittalker/R$layout.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$menu.class b/bin/classes/com/example/transittalker/R$menu.class[m
[1mindex 95d3bdd..73bf64e 100644[m
Binary files a/bin/classes/com/example/transittalker/R$menu.class and b/bin/classes/com/example/transittalker/R$menu.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$raw.class b/bin/classes/com/example/transittalker/R$raw.class[m
[1mindex 409951f..d9c5bab 100644[m
Binary files a/bin/classes/com/example/transittalker/R$raw.class and b/bin/classes/com/example/transittalker/R$raw.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$string.class b/bin/classes/com/example/transittalker/R$string.class[m
[1mindex 9fa3218..f82c82c 100644[m
Binary files a/bin/classes/com/example/transittalker/R$string.class and b/bin/classes/com/example/transittalker/R$string.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R$style.class b/bin/classes/com/example/transittalker/R$style.class[m
[1mindex e51b94c..f3bcf03 100644[m
Binary files a/bin/classes/com/example/transittalker/R$style.class and b/bin/classes/com/example/transittalker/R$style.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/R.class b/bin/classes/com/example/transittalker/R.class[m
[1mindex b8232b6..06be5ed 100644[m
Binary files a/bin/classes/com/example/transittalker/R.class and b/bin/classes/com/example/transittalker/R.class differ
[1mdiff --git a/bin/classes/com/example/transittalker/TransitMain$loadData.class b/bin/classes/com/example/transittalker/TransitMain$loadData.class[m
[1mdeleted file mode 100644[m
[1mindex 97fa7c3..0000000[m
Binary files a/bin/classes/com/example/transittalker/TransitMain$loadData.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/TransitMain.class b/bin/classes/com/example/transittalker/TransitMain.class[m
[1mdeleted file mode 100644[m
[1mindex 3d93518..0000000[m
Binary files a/bin/classes/com/example/transittalker/TransitMain.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/busStop.class b/bin/classes/com/example/transittalker/busStop.class[m
[1mdeleted file mode 100644[m
[1mindex d400d86..0000000[m
Binary files a/bin/classes/com/example/transittalker/busStop.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/main$1.class b/bin/classes/com/example/transittalker/main$1.class[m
[1mdeleted file mode 100644[m
[1mindex 2efffeb..0000000[m
Binary files a/bin/classes/com/example/transittalker/main$1.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/main$2.class b/bin/classes/com/example/transittalker/main$2.class[m
[1mdeleted file mode 100644[m
[1mindex e8b6b9f..0000000[m
Binary files a/bin/classes/com/example/transittalker/main$2.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/main.class b/bin/classes/com/example/transittalker/main.class[m
[1mdeleted file mode 100644[m
[1mindex fb0e9c7..0000000[m
Binary files a/bin/classes/com/example/transittalker/main.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/parseXML.class b/bin/classes/com/example/transittalker/parseXML.class[m
[1mdeleted file mode 100644[m
[1mindex 0d89ba2..0000000[m
Binary files a/bin/classes/com/example/transittalker/parseXML.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/path.class b/bin/classes/com/example/transittalker/path.class[m
[1mdeleted file mode 100644[m
[1mindex 570a10d..0000000[m
Binary files a/bin/classes/com/example/transittalker/path.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/prCode.class b/bin/classes/com/example/transittalker/prCode.class[m
[1mdeleted file mode 100644[m
[1mindex 2d6775e..0000000[m
Binary files a/bin/classes/com/example/transittalker/prCode.class and /dev/null differ
[1mdiff --git a/bin/classes/com/example/transittalker/struct.class b/bin/classes/com/example/transittalker/struct.class[m
[1mdeleted file mode 100644[m
[1mindex afd53f9..0000000[m
Binary files a/bin/classes/com/example/transittalker/struct.class and /dev/null differ
[1mdiff --git a/bin/dexedLibs/android-support-v4-891b1e9e64afdcb9465ae64d23965c58.jar b/bin/dexedLibs/android-support-v4-891b1e9e64afdcb9465ae64d23965c58.jar[m
[1mdeleted file mode 100644[m
[1mindex 05adb73..0000000[m
Binary files a/bin/dexedLibs/android-support-v4-891b1e9e64afdcb9465ae64d23965c58.jar and /dev/null differ
[1mdiff --git a/bin/dexedLibs/annotations-6f06387c56547c5e1f6b9d009355e7aa.jar b/bin/dexedLibs/annotations-6f06387c56547c5e1f6b9d009355e7aa.jar[m
[1mindex 05b999c..a48544e 100644[m
Binary files a/bin/dexedLibs/annotations-6f06387c56547c5e1f6b9d009355e7aa.jar and b/bin/dexedLibs/annotations-6f06387c56547c5e1f6b9d009355e7aa.jar differ
[1mdiff --git a/bin/res/drawable-hdpi/ic_launcher.png b/bin/res/drawable-hdpi/ic_launcher.png[m
[1mindex a52fbbb..efa7c5f 100644[m
Binary files a/bin/res/drawable-hdpi/ic_launcher.png and b/bin/res/drawable-hdpi/ic_launcher.png differ
[1mdiff --git a/bin/res/drawable-ldpi/ic_launcher.png b/bin/res/drawable-ldpi/ic_launcher.png[m
[1mdeleted file mode 100644[m
[1mindex f528774..0000000[m
Binary files a/bin/res/drawable-ldpi/ic_launcher.png and /dev/null differ
[1mdiff --git a/bin/res/drawable-mdpi/ic_action_search.png b/bin/res/drawable-mdpi/ic_action_search.png[m
[1mdeleted file mode 100644[m
[1mindex ce9399c..0000000[m
Binary files a/bin/res/drawable-mdpi/ic_action_search.png and /dev/null differ
[1mdiff --git a/bin/res/drawable-mdpi/ic_launcher.png b/bin/res/drawable-mdpi/ic_launcher.png[m
[1mindex c20744d..ec27f2e 100644[m
Binary files a/bin/res/drawable-mdpi/ic_launcher.png and b/bin/res/drawable-mdpi/ic_launcher.png differ
[1mdiff --git a/bin/res/drawable-xhdpi/ic_action_search.png b/bin/res/drawable-xhdpi/ic_action_search.png[m
[1mdeleted file mode 100644[m
[1mindex b2d7b2d..0000000[m
Binary files a/bin/res/drawable-xhdpi/ic_action_search.png and /dev/null differ
[1mdiff --git a/bin/res/drawable-xhdpi/ic_launcher.png b/bin/res/drawable-xhdpi/ic_launcher.png[m
[1mindex 2dbe40a..92fc57d 100644[m
Binary files a/bin/res/drawable-xhdpi/ic_launcher.png and b/bin/res/drawable-xhdpi/ic_launcher.png differ
[1mdiff --git a/bin/resources.ap_ b/bin/resources.ap_[m
[1mindex 22e77e1..8838480 100644[m
Binary files a/bin/resources.ap_ and b/bin/resources.ap_ differ
[1mdiff --git a/bin/transitTalker.apk b/bin/transitTalker.apk[m
[1mdeleted file mode 100644[m
[1mindex a39ca43..0000000[m
Binary files a/bin/transitTalker.apk and /dev/null differ
[1mdiff --git a/gen/com/example/transittalker/R.java b/gen/com/example/transittalker/R.java[m
[1mindex 3f7c849..9b3e3b3 100644[m
[1m--- a/gen/com/example/transittalker/R.java[m
[1m+++ b/gen/com/example/transittalker/R.java[m
[36m@@ -10,6 +10,16 @@[m [mpackage com.example.transittalker;[m
 public final class R {[m
     public static final class attr {[m
     }[m
[32m+[m[32m    public static final class dimen {[m
[32m+[m[32m        /**  Default screen margins, per the Android Design guidelines.[m[41m [m
[32m+[m
[32m+[m[32m         Customize dimensions originally defined in res/values/dimens.xml (such as[m
[32m+[m[32m         screen margins) for sw720dp devices (e.g. 10" tablets) in landscape here.[m
[32m+[m[41m    [m
[32m+[m[32m         */[m
[32m+[m[32m        public static final int activity_horizontal_margin=0x7f050000;[m
[32m+[m[32m        public static final int activity_vertical_margin=0x7f050001;[m
[32m+[m[32m    }[m
     public static final class drawable {[m
         public static final int bkspbutton=0x7f020000;[m
         public static final int geofence=0x7f020001;[m
[36m@@ -23,57 +33,77 @@[m [mpublic final class R {[m
         public static final int setbutton=0x7f020009;[m
     }[m
     public static final class id {[m
[31m-        public static final int buttonClear=0x7f08000b;[m
[31m-        public static final int buttonSet=0x7f08000c;[m
[31m-        public static final int display=0x7f080001;[m
[31m-        public static final int displayBOTTOM=0x7f080004;[m
[31m-        public static final int displayMID=0x7f080002;[m
[31m-        public static final int displayTOP=0x7f080003;[m
[31m-        public static final int display_status=0x7f080007;[m
[31m-        public static final int fence=0x7f080008;[m
[31m-        public static final int gesturearea=0x7f080000;[m
[31m-        public static final int leftArrow=0x7f080006;[m
[31m-        public static final int menu_settings=0x7f08000d;[m
[31m-        public static final int pr=0x7f08000a;[m
[31m-        public static final int rightArrow=0x7f080005;[m
[31m-        public static final int search=0x7f080009;[m
[32m+[m[32m        public static final int action_settings=0x7f090017;[m
[32m+[m[32m        public static final int button0=0x7f09000b;[m
[32m+[m[32m        public static final int button1=0x7f09000c;[m
[32m+[m[32m        public static final int button2=0x7f09000d;[m
[32m+[m[32m        public static final int button3=0x7f09000e;[m
[32m+[m[32m        public static final int button4=0x7f09000f;[m
[32m+[m[32m        public static final int button5=0x7f090011;[m
[32m+[m[32m        public static final int button6=0x7f090012;[m
[32m+[m[32m        public static final int button7=0x7f090013;[m
[32m+[m[32m        public static final int button8=0x7f090014;[m
[32m+[m[32m        public static final int button9=0x7f090015;[m
[32m+[m[32m        public static final int buttonClear=0x7f090010;[m
[32m+[m[32m        public static final int buttonSet=0x7f090016;[m
[32m+[m[32m        public static final int buttons=0x7f09000a;[m
[32m+[m[32m        public static final int display=0x7f090001;[m
[32m+[m[32m        public static final int displayBOTTOM=0x7f090004;[m
[32m+[m[32m        public static final int displayMID=0x7f090002;[m
[32m+[m[32m        public static final int displayTOP=0x7f090003;[m
[32m+[m[32m        public static final int fence=0x7f090007;[m
[32m+[m[32m        public static final int gesturearea=0x7f090000;[m
[32m+[m[32m        public static final int leftArrow=0x7f090008;[m
[32m+[m[32m        public static final int pr=0x7f090005;[m
[32m+[m[32m        public static final int rightArrow=0x7f090009;[m
[32m+[m[32m        public static final int search=0x7f090006;[m
     }[m
     public static final class layout {[m
[31m-        public static final int main=0x7f030000;[m
[32m+[m[32m        public static final int uiface=0x7f030000;[m
     }[m
     public static final class menu {[m
[31m-        public static final int main=0x7f070000;[m
[32m+[m[32m        public static final int mainspace=0x7f080000;[m
     }[m
     public static final class raw {[m
[31m-        public static final int english=0x7f040000;[m
[31m-        public static final int gestures=0x7f040001;[m
[31m-        public static final int moo=0x7f040002;[m
[31m-        public static final int route_manifest=0x7f040003;[m
[31m-        public static final int sup=0x7f040004;[m
[32m+[m[32m        public static final int gestures=0x7f040000;[m
[32m+[m[32m        public static final int route_manifest=0x7f040001;[m
     }[m
     public static final class string {[m
[31m-        public static final int BKSP=0x7f05000e;[m
[31m-        public static final int SET=0x7f05000f;[m
[31m-        public static final int TaLkEr=0x7f050011;[m
[31m-        public static final int app_name=0x7f050000;[m
[31m-        public static final int eight=0x7f05000c;[m
[31m-        public static final int five=0x7f050009;[m
[31m-        public static final int four=0x7f050008;[m
[31m-        public static final int hello_world=0x7f050001;[m
[31m-        public static final int image=0x7f050012;[m
[31m-        public static final int menu_settings=0x7f050002;[m
[31m-        public static final int nine=0x7f05000d;[m
[31m-        public static final int one=0x7f050005;[m
[31m-        public static final int prmsgs=0x7f050013;[m
[31m-        public static final int seven=0x7f05000b;[m
[31m-        public static final int six=0x7f05000a;[m
[31m-        public static final int tRaNsIt=0x7f050010;[m
[31m-        public static final int three=0x7f050007;[m
[31m-        public static final int title_activity_main=0x7f050003;[m
[31m-        public static final int two=0x7f050006;[m
[31m-        public static final int zero=0x7f050004;[m
[32m+[m[32m        public static final int BKSP=0x7f06000d;[m
[32m+[m[32m        public static final int SET=0x7f06000e;[m
[32m+[m[32m        public static final int TaLkEr=0x7f060010;[m
[32m+[m[32m        public static final int action_settings=0x7f060001;[m
[32m+[m[32m        public static final int app_name=0x7f060000;[m
[32m+[m[32m        public static final int eight=0x7f06000b;[m
[32m+[m[32m        public static final int five=0x7f060008;[m
[32m+[m[32m        public static final int four=0x7f060007;[m
[32m+[m[32m        public static final int hello_world=0x7f060002;[m
[32m+[m[32m        public static final int image=0x7f060011;[m
[32m+[m[32m        public static final int nine=0x7f06000c;[m
[32m+[m[32m        public static final int one=0x7f060004;[m
[32m+[m[32m        public static final int prmsgs=0x7f060012;[m
[32m+[m[32m        public static final int seven=0x7f06000a;[m
[32m+[m[32m        public static final int six=0x7f060009;[m
[32m+[m[32m        public static final int tRaNsIt=0x7f06000f;[m
[32m+[m[32m        public static final int three=0x7f060006;[m
[32m+[m[32m        public static final int two=0x7f060005;[m
[32m+[m[32m        public static final int zero=0x7f060003;[m
     }[m
     public static final class style {[m
[31m-        public static final int AppTheme=0x7f060000;[m
[32m+[m[32m        /**[m[41m [m
[32m+[m[32m        Base application theme, dependent on API level. This theme is replaced[m
[32m+[m[32m        by AppBaseTheme from res/values-vXX/styles.xml on newer devices.[m
[32m+[m[41m    [m
[32m+[m
[32m+[m[32m            Theme customizations available in newer API levels can go in[m
[32m+[m[32m            res/values-vXX/styles.xml, while customizations related to[m
[32m+[m[32m            backward-compatibility can go here.[m
[32m+[m[41m        [m
[32m+[m[32m         */[m
[32m+[m[32m        public static final int AppBaseTheme=0x7f070000;[m
[32m+[m[32m        /**  Application theme.[m[41m [m
[32m+[m[32m All customizations that are NOT specific to a particular API-level can go here.[m[41m [m
[32m+[m[32m         */[m
[32m+[m[32m        public static final int AppTheme=0x7f070001;[m
     }[m
 }[m
[1mdiff --git a/ic_launcher-web.png b/ic_launcher-web.png[m
[1mindex 7421c20..a18cbb4 100644[m
Binary files a/ic_launcher-web.png and b/ic_launcher-web.png differ
[1mdiff --git a/libs/android-support-v4.jar b/libs/android-support-v4.jar[m
[1mindex feaf44f..65ebaf8 100644[m
Binary files a/libs/android-support-v4.jar and b/libs/android-support-v4.jar differ
[1mdiff --git a/res/drawable-hdpi/ic_launcher.png b/res/drawable-hdpi/ic_launcher.png[m
[1mindex f4b41cf..288b665 100644[m
Binary files a/res/drawable-hdpi/ic_launcher.png and b/res/drawable-hdpi/ic_launcher.png differ
[1mdiff --git a/res/drawable-ldpi/ic_launcher.png b/res/drawable-ldpi/ic_launcher.png[m
[1mdeleted file mode 100644[m
[1mindex 8ff7e7e..0000000[m
Binary files a/res/drawable-ldpi/ic_launcher.png and /dev/null differ
[1mdiff --git a/res/drawable-mdpi/ic_action_search.png b/res/drawable-mdpi/ic_action_search.png[m
[1mdeleted file mode 100644[m
[1mindex 134d549..0000000[m
Binary files a/res/drawable-mdpi/ic_action_search.png and /dev/null differ
[1mdiff --git a/res/drawable-mdpi/ic_launcher.png b/res/drawable-mdpi/ic_launcher.png[m
[1mindex eb60870..6ae570b 100644[m
Binary files a/res/drawable-mdpi/ic_launcher.png and b/res/drawable-mdpi/ic_launcher.png differ
[1mdiff --git a/res/drawable-xhdpi/ic_action_search.png b/res/drawable-xhdpi/ic_action_search.png[m
[1mdeleted file mode 100644[m
[1mindex d699c6b..0000000[m
Binary files a/res/drawable-xhdpi/ic_action_search.png and /dev/null differ
[1mdiff --git a/res/drawable-xhdpi/ic_launcher.png b/res/drawable-xhdpi/ic_launcher.png[m
[1mindex 26e8aa8..d4fb7cd 100644[m
Binary files a/res/drawable-xhdpi/ic_launcher.png and b/res/drawable-xhdpi/ic_launcher.png differ
[1mdiff --git a/res/layout/main.xml b/res/layout/main.xml[m
[1mdeleted file mode 100644[m
[1mindex b9c5d9d..0000000[m
[1m--- a/res/layout/main.xml[m
[1m+++ /dev/null[m
[36m@@ -1,148 +0,0 @@[m
[31m-<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"[m
[31m-    android:layout_width="fill_parent"[m
[31m-    android:layout_height="fill_parent"[m
[31m-    android:orientation="horizontal" >[m
[31m-[m
[31m-    <android.gesture.GestureOverlayView[m
[31m-        android:id="@+id/gesturearea"[m
[31m-        android:layout_width="match_parent"[m
[31m-        android:layout_height="match_parent" >[m
[31m-[m
[31m-        <LinearLayout[m
[31m-            android:layout_width="match_parent"[m
[31m-            android:layout_height="match_parent"[m
[31m-            android:baselineAligned="false"[m
[31m-            android:orientation="horizontal"[m
[31m-            android:weightSum="1" >[m
[31m-[m
[31m-            <LinearLayout[m
[31m-                android:layout_width="fill_parent"[m
[31m-                android:layout_height="match_parent"[m
[31m-                android:layout_weight=".10"[m
[31m-                android:orientation="vertical"[m
[31m-                android:weightSum="1" >[m
[31m-[m
[31m-                <RelativeLayout[m
[31m-                    android:id="@+id/display"[m
[31m-                    android:layout_width="match_parent"[m
[31m-                    android:layout_height="fill_parent"[m
[31m-                    android:layout_weight=".25"[m
[31m-                    android:orientation="vertical" >[m
[31m-                    		        [m
[31m-					<TextView[m
[31m-			            android:id="@+id/displayMID"[m
[31m-			            android:layout_width="wrap_content"[m
[31m-			            android:layout_height="wrap_content"[m
[31m-			            android:layout_centerHorizontal="true"[m
[31m-			            android:layout_centerVertical="true"[m
[31m-			            android:gravity="center"[m
[31m-			            android:orientation="vertical"[m
[31m-			            android:text="@string/prmsgs"[m
[31m-			            android:textAppearance="?android:attr/textAppearanceLarge" />[m
[31m-	[m
[31m-			        <TextView[m
[31m-			            android:id="@+id/displayTOP"[m
[31m-			            android:layout_width="wrap_content"[m
[31m-			            android:layout_height="wrap_content"[m
[31m-			            android:layout_above="@+id/displayMID"[m
[31m-			            android:layout_centerHorizontal="true"[m
[31m-			            android:gravity="center"[m
[31m-			            android:orientation="vertical"[m
[31m-			            android:text="@string/tRaNsIt"[m
[31m-			            android:textAppearance="?android:attr/textAppearanceLarge" />[m
[31m-	[m
[31m-			        <TextView[m
[31m-			            android:id="@+id/displayBOTTOM"[m
[31m-			            android:layout_width="wrap_content"[m
[31m-			            android:layout_height="wrap_content"[m
[31m-			            android:layout_below="@+id/displayMID"[m
[31m-			            android:layout_centerHorizontal="true"[m
[31m-			            android:gravity="center"[m
[31m-			            android:orientation="vertical"[m
[31m-			            android:text="@string/TaLkEr"[m
[31m-			            android:textAppearance="?android:attr/textAppearanceLarge" />[m
[31m-[m
[31m-			        <ImageView[m
[31m-			            android:id="@+id/rightArrow"[m
[31m-			            android:layout_width="50dp"[m
[31m-			            android:layout_height="50dp"[m
[31m-			            android:layout_alignParentRight="true"[m
[31m-			            android:layout_centerVertical="true"[m
[31m-			            android:contentDescription="@string/image"[m
[31m-			            android:src="@drawable/rightarrow" />[m
[31m-[m
[31m-			        <ImageView[m
[31m-			            android:id="@+id/leftArrow"[m
[31m-			            android:layout_width="50dp"[m
[31m-			            android:layout_height="50dp"[m
[31m-			            android:layout_alignParentLeft="true"[m
[31m-			            android:layout_alignTop="@+id/rightArrow"[m
[31m-			            android:contentDescription="@string/image"[m
[31m-			            android:src="@drawable/leftarrow" />[m
[31m-			        [m
[31m-                </RelativeLayout>[m
[31m-[m
[31m-                <RelativeLayout[m
[31m-                    android:id="@+id/display_status"[m
[31m-                    android:layout_width="match_parent"[m
[31m-                    android:layout_height="fill_parent"[m
[31m-                    android:layout_weight=".75"[m
[31m-                    android:orientation="horizontal" >[m
[31m-[m
[31m-		        <ImageView[m
[31m-		            android:id="@+id/fence"[m
[31m-		            android:layout_width="wrap_content"[m
[31m-		            android:layout_height="wrap_content"[m
[31m-		            android:layout_centerVertical="true"[m
[31m-		            android:layout_toRightOf="@+id/search"[m
[31m-		            android:contentDescription="@string/image"[m
[31m-		            android:src="@drawable/geofence" />[m
[31m-[m
[31m-		        <ImageView[m
[31m-		            android:id="@+id/search"[m
[31m-		            android:layout_width="wrap_content"[m
[31m-		            android:layout_height="wrap_content"[m
[31m-		            android:layout_centerHorizontal="true"[m
[31m-		            android:layout_centerVertical="true"[m
[31m-		            android:contentDescription="@string/image"[m
[31m-		            android:src="@drawable/searching" />[m
[31m-[m
[31m-		        <ImageView[m
[31m-		            android:id="@+id/pr"[m
[31m-		            android:layout_width="wrap_content"[m
[31m-		            android:layout_height="wrap_content"[m
[31m-		            android:layout_centerVertical="true"[m
[31m-		            android:layout_toLeftOf="@+id/search"[m
[31m-		            android:contentDescription="@string/image"[m
[31m-		            android:src="@drawable/prcode" />[m
[31m-[m
[31m-                </RelativeLayout>[m
[31m-            </LinearLayout>[m
[31m-[m
[31m-            <LinearLayout[m
[31m-                android:layout_width="fill_parent"[m
[31m-                android:layout_height="match_parent"[m
[31m-                android:layout_weight=".90"[m
[31m-                android:orientation="vertical"[m
[31m-                android:weightSum="2" >[m
[31m-[m
[31m-                <ImageButton[m
[31m-                    android:id="@+id/buttonClear"[m
[31m-                    android:layout_width="fill_parent"[m
[31m-                    android:layout_height="fill_parent"[m
[31m-                    android:layout_weight="1"[m
[31m-                    android:scaleType="center"[m
[31m-                    android:src="@drawable/prbutton" />[m
[31m-[m
[31m-                <ImageButton[m
[31m-                    android:id="@+id/buttonSet"[m
[31m-                    android:layout_width="fill_parent"[m
[31m-                    android:layout_height="fill_parent"[m
[31m-                    android:layout_weight="1"[m
[31m-                    android:src="@drawable/setbutton" />[m
[31m-[m
[31m-            </LinearLayout>[m
[31m-        </LinearLayout>[m
[31m-    </android.gesture.GestureOverlayView>[m
[31m-[m
[31m-</LinearLayout>[m
\ No newline at end of file[m
[1mdiff --git a/res/menu/main.xml b/res/menu/main.xml[m
[1mdeleted file mode 100644[m
[1mindex 44a11e7..0000000[m
[1m--- a/res/menu/main.xml[m
[1m+++ /dev/null[m
[36m@@ -1,5 +0,0 @@[m
[31m-<menu xmlns:android="http://schemas.android.com/apk/res/android">[m
[31m-    <item android:id="@+id/menu_settings"[m
[31m-        android:title="@string/menu_settings"[m
[31m-        android:orderInCategory="100" />[m
[31m-</menu>[m
[1mdiff --git a/res/raw/english b/res/raw/english[m
[1mdeleted file mode 100644[m
[1mindex 741893b..0000000[m
Binary files a/res/raw/english and /dev/null differ
[1mdiff --git a/res/raw/gestures b/res/raw/gestures[m
[1mindex 4a5a965..5cf3947 100644[m
Binary files a/res/raw/gestures and b/res/raw/gestures differ
[1mdiff --git a/res/raw/moo.mp3 b/res/raw/moo.mp3[m
[1mdeleted file mode 100644[m
[1mindex f62821f..0000000[m
Binary files a/res/raw/moo.mp3 and /dev/null differ
[1mdiff --git a/res/raw/sup.xml b/res/raw/sup.xml[m
[1mdeleted file mode 100644[m
[1mindex 1dd2325..0000000[m
[1m--- a/res/raw/sup.xml[m
[1m+++ /dev/null[m
[36m@@ -1,4953 +0,0 @@[m
[31m-<body date="21.02.2013" time="20:00:50.915">[m
[31m- <route name="" say="" code="1" dest="Not In Service">[m
[31m-  <path/>[m
[31m- </route>[m
[31m- <route name="A" say="A line, Amtrak, fifth street, Alhambra, U C Davis Silo" code="10" dest="to/from Silo">[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <stop lat="38.53919" title="Hutchison Dr &amp; Art Building " lon="-121.7483699" dir="EB"/>[m
[31m-  <stop lat="38.54003" title="Hutchison Dr &amp; A St " lon="-121.74605" dir="EB"/>[m
[31m-  <stop lat="38.54266" title="2nd St &amp; B St " lon="-121.7439099" dir="EB"/>[m
[31m-  <stop lat="38.54314" title="2nd St &amp; E St " lon="-121.7411799" dir="EB"/>[m
[31m-  <stop lat="38.5439899" title="H St &amp; Amtrak Station " lon="-121.73802" dir="NB"/>[m
[31m-  <stop lat="38.5456399" title="3rd St &amp; K St " lon="-121.7345" dir="EB"/>[m
[31m-  <stop lat="38.54784" title="L St &amp; 4th St " lon="-121.73412" dir="NB"/>[m
[31m-  <stop lat="38.54874" title="5th St &amp; Pole Line Rd " lon="-121.72565" dir="EB"/>[m
[31m-  <stop lat="38.5517799" title="5th St &amp; Cantrill  " lon="-121.71904" dir="EB"/>[m
[31m-  <stop lat="38.5526799" title="5th St &amp; Pena Dr " lon="-121.71538" dir="EB"/>[m
[31m-  <stop lat="38.55342" title="5th St &amp; Spafford St " lon="-121.71244" dir="EB"/>[m
[31m-  <stop lat="38.55466" title="5th St &amp; Arroyo Ave " lon="-121.7090799" dir="EB"/>[m
[31m-  <stop lat="38.55781" title="Alhambra Dr &amp; 5th St " lon="-121.7043" dir="EB"/>[m
[31m-  <stop lat="38.55786" title="Alhambra Dr &amp; Arroyo Ave " lon="-121.69946" dir="EB"/>[m
[31m-  <stop lat="38.5585499" title="Alhambra Dr &amp; Mace Blvd " lon="-121.69697" dir="EB"/>[m
[31m-  <stop lat="38.5577499" title="Mace Blvd &amp; 2nd St " lon="-121.6942999" dir="SB"/>[m
[31m-  <stop lat="38.55077" title="Chiles Rd &amp; Mace Blvd " lon="-121.6934799" dir="EB"/>[m
[31m-  <stop lat="38.5508799" title="El Cemonte Ave &amp; Glide Dr " lon="-121.69103" dir="SB"/>[m
[31m-  <stop lat="38.5489599" title="Cowell Blvd &amp; El Cemonte Ave " lon="-121.69009" dir="WB"/>[m
[31m-  <stop lat="38.5488399" title="Cowell Blvd &amp; Mace Blvd " lon="-121.6925799" dir="WB"/>[m
[31m-  <stop lat="38.54928" title="Mace Blvd &amp; Cowell Blvd " lon="-121.69425" dir="NB"/>[m
[31m-  <stop lat="38.55625" title="Mace Blvd &amp; 2nd St " lon="-121.69395" dir="NB"/>[m
[31m-  <stop lat="38.5587299" title="Alhambra Dr &amp; Mace Blvd " lon="-121.69722" dir="WB"/>[m
[31m-  <stop lat="38.5580799" title="Alhambra Dr &amp; Caceres Ct " lon="-121.7012599" dir="WB"/>[m
[31m-  <stop lat="38.55739" title="5th St &amp; Alhambra Dr " lon="-121.7052499" dir="SB"/>[m
[31m-  <stop lat="38.55483" title="5th St &amp; Pelz Bike Path Tunnel " lon="-121.7093199" dir="WB"/>[m
[31m-  <stop lat="38.5534899" title="5th St &amp; San Sebastian St " lon="-121.7129099" dir="WB"/>[m
[31m-  <stop lat="38.5526299" title="5th St &amp; San Rafael St " lon="-121.7165099" dir="WB"/>[m
[31m-  <stop lat="38.5515299" title="5th St &amp; Cantrill " lon="-121.72136" dir="WB"/>[m
[31m-  <stop lat="38.5490399" title="5th St &amp; Pole Line Rd " lon="-121.7255299" dir="WB"/>[m
[31m-  <stop lat="38.5488299" title="5th St &amp; Pole Line Rd " lon="-121.7277699" dir="WB"/>[m
[31m-  <stop lat="38.5488999" title="5th St &amp; Davis PW Corp Yard " lon="-121.7308" dir="WB"/>[m
[31m-  <stop lat="38.54774" title="L St &amp; 425 " lon="-121.73434" dir="SB"/>[m
[31m-  <stop lat="38.5457499" title="3rd St &amp; K St " lon="-121.7350899" dir="WB"/>[m
[31m-  <stop lat="38.5439399" title="H St Alley &amp; 2nd St " lon="-121.73824" dir="SB"/>[m
[31m-  <stop lat="38.5433299" title="2nd St &amp; E St " lon="-121.74093" dir="WB"/>[m
[31m-  <stop lat="38.5419099" title="C St &amp; 1st St " lon="-121.7430899" dir="SB"/>[m
[31m-  <stop lat="38.5404899" title="A St &amp; Hutchison " lon="-121.7460099" dir="SB"/>[m
[31m-  <stop lat="38.5391799" title="Hutchison &amp; Shields Library " lon="-121.74999" dir="WB"/>[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54399" lon="-121.73802"/>[m
[31m-   <point lat="38.5443799" lon="-121.7382"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54522" lon="-121.73755"/>[m
[31m-   <point lat="38.54564" lon="-121.7345"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54784" lon="-121.73412"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54868" lon="-121.72808"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54874" lon="-121.72565"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.55142" lon="-121.72128"/>[m
[31m-   <point lat="38.5585499" lon="-121.69697"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.54394" lon="-121.73824"/>[m
[31m-   <point lat="38.5437" lon="-121.73835"/>[m
[31m-   <point lat="38.5436" lon="-121.73889"/>[m
[31m-   <point lat="38.54333" lon="-121.74093"/>[m
[31m-   <point lat="38.54285" lon="-121.74326"/>[m
[31m-   <point lat="38.54191" lon="-121.74309"/>[m
[31m-   <point lat="38.5415599" lon="-121.74289"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54049" lon="-121.74601"/>[m
[31m-   <point lat="38.54014" lon="-121.74579"/>[m
[31m-   <point lat="38.5400599" lon="-121.74616"/>[m
[31m-   <point lat="38.5398" lon="-121.7465"/>[m
[31m-   <point lat="38.53944" lon="-121.7477"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53918" lon="-121.74999"/>[m
[31m-   <point lat="38.53907" lon="-121.75201"/>[m
[31m-   <point lat="38.53908" lon="-121.753"/>[m
[31m-   <point lat="38.53917" lon="-121.75307"/>[m
[31m-   <point lat="38.53929" lon="-121.75332"/>[m
[31m-   <point lat="38.53928" lon="-121.75356"/>[m
[31m-   <point lat="38.53933" lon="-121.75368"/>[m
[31m-   <point lat="38.53922" lon="-121.75368"/>[m
[31m-   <point lat="38.5391" lon="-121.75373"/>[m
[31m-   <point lat="38.53908" lon="-121.753"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53919" lon="-121.74837"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.53944" lon="-121.7477"/>[m
[31m-   <point lat="38.5398" lon="-121.7465"/>[m
[31m-   <point lat="38.5400599" lon="-121.74616"/>[m
[31m-   <point lat="38.54003" lon="-121.74605"/>[m
[31m-   <point lat="38.54014" lon="-121.74579"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54267" lon="-121.74435"/>[m
[31m-   <point lat="38.54266" lon="-121.74391"/>[m
[31m-   <point lat="38.54314" lon="-121.74118"/>[m
[31m-   <point lat="38.5437" lon="-121.73835"/>[m
[31m-   <point lat="38.54393" lon="-121.73817"/>[m
[31m-   <point lat="38.54399" lon="-121.73802"/>[m
[31m-   <point lat="38.5443799" lon="-121.7382"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54522" lon="-121.73755"/>[m
[31m-   <point lat="38.54564" lon="-121.7345"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54487" lon="-121.73342"/>[m
[31m-   <point lat="38.54487" lon="-121.7331"/>[m
[31m-   <point lat="38.54659" lon="-121.72577"/>[m
[31m-   <point lat="38.5479399" lon="-121.72002"/>[m
[31m-   <point lat="38.54812" lon="-121.72011"/>[m
[31m-   <point lat="38.54837" lon="-121.72019"/>[m
[31m-   <point lat="38.54849" lon="-121.72019"/>[m
[31m-   <point lat="38.5486999" lon="-121.72017"/>[m
[31m-   <point lat="38.54958" lon="-121.71998"/>[m
[31m-   <point lat="38.5510499" lon="-121.71998"/>[m
[31m-   <point lat="38.55166" lon="-121.72009"/>[m
[31m-   <point lat="38.55154" lon="-121.72068"/>[m
[31m-   <point lat="38.55873" lon="-121.69722"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55801" lon="-121.69939"/>[m
[31m-   <point lat="38.5580799" lon="-121.70126"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55739" lon="-121.70525"/>[m
[31m-   <point lat="38.55684" lon="-121.70525"/>[m
[31m-   <point lat="38.55655" lon="-121.70537"/>[m
[31m-   <point lat="38.55629" lon="-121.70553"/>[m
[31m-   <point lat="38.55571" lon="-121.70603"/>[m
[31m-   <point lat="38.5556" lon="-121.70616"/>[m
[31m-   <point lat="38.55548" lon="-121.70633"/>[m
[31m-   <point lat="38.55537" lon="-121.70651"/>[m
[31m-   <point lat="38.5552" lon="-121.70684"/>[m
[31m-   <point lat="38.5551" lon="-121.70708"/>[m
[31m-   <point lat="38.55494" lon="-121.70763"/>[m
[31m-   <point lat="38.55483" lon="-121.70839"/>[m
[31m-   <point lat="38.55483" lon="-121.70932"/>[m
[31m-   <point lat="38.55463" lon="-121.71004"/>[m
[31m-   <point lat="38.55457" lon="-121.71031"/>[m
[31m-   <point lat="38.55439" lon="-121.71082"/>[m
[31m-   <point lat="38.55427" lon="-121.71109"/>[m
[31m-   <point lat="38.55382" lon="-121.71184"/>[m
[31m-   <point lat="38.55369" lon="-121.7121"/>[m
[31m-   <point lat="38.55355" lon="-121.71247"/>[m
[31m-   <point lat="38.55345" lon="-121.7127"/>[m
[31m-   <point lat="38.5534899" lon="-121.71291"/>[m
[31m-   <point lat="38.55337" lon="-121.71294"/>[m
[31m-   <point lat="38.55334" lon="-121.71307"/>[m
[31m-   <point lat="38.55299" lon="-121.71457"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55263" lon="-121.71651"/>[m
[31m-   <point lat="38.55228" lon="-121.71752"/>[m
[31m-   <point lat="38.55153" lon="-121.72136"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54904" lon="-121.72553"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.54883" lon="-121.72777"/>[m
[31m-   <point lat="38.54868" lon="-121.72906"/>[m
[31m-   <point lat="38.5486999" lon="-121.72981"/>[m
[31m-   <point lat="38.5489" lon="-121.7308"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.54774" lon="-121.73434"/>[m
[31m-   <point lat="38.54714" lon="-121.73407"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54569" lon="-121.7348"/>[m
[31m-   <point lat="38.54575" lon="-121.73509"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54484" lon="-121.73825"/>[m
[31m-   <point lat="38.54393" lon="-121.73817"/>[m
[31m-   <point lat="38.55178" lon="-121.71904"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55268" lon="-121.71538"/>[m
[31m-   <point lat="38.5533" lon="-121.7132"/>[m
[31m-   <point lat="38.55334" lon="-121.71307"/>[m
[31m-   <point lat="38.55337" lon="-121.71294"/>[m
[31m-   <point lat="38.55345" lon="-121.7127"/>[m
[31m-   <point lat="38.55342" lon="-121.71244"/>[m
[31m-   <point lat="38.55355" lon="-121.71247"/>[m
[31m-   <point lat="38.55369" lon="-121.7121"/>[m
[31m-   <point lat="38.55378" lon="-121.71191"/>[m
[31m-   <point lat="38.55437" lon="-121.71087"/>[m
[31m-   <point lat="38.55446" lon="-121.71067"/>[m
[31m-   <point lat="38.55455" lon="-121.71037"/>[m
[31m-   <point lat="38.55463" lon="-121.71004"/>[m
[31m-   <point lat="38.55465" lon="-121.70991"/>[m
[31m-   <point lat="38.55466" lon="-121.70908"/>[m
[31m-   <point lat="38.55483" lon="-121.70839"/>[m
[31m-   <point lat="38.55494" lon="-121.70763"/>[m
[31m-   <point lat="38.5551" lon="-121.70708"/>[m
[31m-   <point lat="38.5552" lon="-121.70684"/>[m
[31m-   <point lat="38.55537" lon="-121.70651"/>[m
[31m-   <point lat="38.55548" lon="-121.70633"/>[m
[31m-   <point lat="38.5556" lon="-121.70616"/>[m
[31m-   <point lat="38.55571" lon="-121.70603"/>[m
[31m-   <point lat="38.55629" lon="-121.70553"/>[m
[31m-   <point lat="38.55655" lon="-121.70537"/>[m
[31m-   <point lat="38.55684" lon="-121.70525"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55781" lon="-121.7043"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55797" lon="-121.70311"/>[m
[31m-   <point lat="38.55786" lon="-121.69946"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55088" lon="-121.69103"/>[m
[31m-   <point lat="38.55027" lon="-121.69028"/>[m
[31m-   <point lat="38.55002" lon="-121.69007"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54928" lon="-121.69425"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55387" lon="-121.6944"/>[m
[31m-   <point lat="38.55625" lon="-121.69395"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="A-LTD" say="A Limited Line, Amtrak, Cantrill, fifth street, U C Davis Silo" code="11" dest="to/from 5th/Cantrill/Silo">[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <stop lat="38.53919" title="Hutchison Dr &amp; Art Building " lon="-121.7483699" dir="EB"/>[m
[31m-  <stop lat="38.54003" title="Hutchison Dr &amp; A St " lon="-121.74605" dir="EB"/>[m
[31m-  <stop lat="38.54266" title="2nd St &amp; B St " lon="-121.7439099" dir="EB"/>[m
[31m-  <stop lat="38.54314" title="2nd St &amp; E St " lon="-121.7411799" dir="EB"/>[m
[31m-  <stop lat="38.5439899" title="H St &amp; Amtrak Station " lon="-121.73802" dir="NB"/>[m
[31m-  <stop lat="38.5456399" title="3rd St &amp; K St " lon="-121.7345" dir="EB"/>[m
[31m-  <stop lat="38.5515299" title="5th St &amp; Cantrill " lon="-121.72136" dir="WB"/>[m
[31m-  <stop lat="38.5490399" title="5th St &amp; Pole Line Rd " lon="-121.7255299" dir="WB"/>[m
[31m-  <stop lat="38.5488299" title="5th St &amp; Pole Line Rd " lon="-121.7277699" dir="WB"/>[m
[31m-  <stop lat="38.5488999" title="5th St &amp; Davis PW Corp Yard " lon="-121.7308" dir="WB"/>[m
[31m-  <stop lat="38.54774" title="L St &amp; 425 " lon="-121.73434" dir="SB"/>[m
[31m-  <stop lat="38.5457499" title="3rd St &amp; K St " lon="-121.7350899" dir="WB"/>[m
[31m-  <stop lat="38.5439399" title="H St Alley &amp; 2nd St " lon="-121.73824" dir="SB"/>[m
[31m-  <stop lat="38.5433299" title="2nd St &amp; E St " lon="-121.74093" dir="WB"/>[m
[31m-  <stop lat="38.5419099" title="C St &amp; 1st St " lon="-121.7430899" dir="SB"/>[m
[31m-  <stop lat="38.5404899" title="A St &amp; Hutchison " lon="-121.7460099" dir="SB"/>[m
[31m-  <stop lat="38.5391799" title="Hutchison &amp; Shields Library " lon="-121.74999" dir="WB"/>[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54399" lon="-121.73802"/>[m
[31m-   <point lat="38.5443799" lon="-121.7382"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54522" lon="-121.73755"/>[m
[31m-   <point lat="38.54564" lon="-121.7345"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54784" lon="-121.73412"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54868" lon="-121.72808"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54874" lon="-121.72565"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.55142" lon="-121.72128"/>[m
[31m-   <point lat="38.5585499" lon="-121.69697"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.54394" lon="-121.73824"/>[m
[31m-   <point lat="38.5437" lon="-121.73835"/>[m
[31m-   <point lat="38.5436" lon="-121.73889"/>[m
[31m-   <point lat="38.54333" lon="-121.74093"/>[m
[31m-   <point lat="38.54285" lon="-121.74326"/>[m
[31m-   <point lat="38.54191" lon="-121.74309"/>[m
[31m-   <point lat="38.5415599" lon="-121.74289"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54049" lon="-121.74601"/>[m
[31m-   <point lat="38.54014" lon="-121.74579"/>[m
[31m-   <point lat="38.5400599" lon="-121.74616"/>[m
[31m-   <point lat="38.5398" lon="-121.7465"/>[m
[31m-   <point lat="38.53944" lon="-121.7477"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53918" lon="-121.74999"/>[m
[31m-   <point lat="38.53907" lon="-121.75201"/>[m
[31m-   <point lat="38.53908" lon="-121.753"/>[m
[31m-   <point lat="38.53917" lon="-121.75307"/>[m
[31m-   <point lat="38.53929" lon="-121.75332"/>[m
[31m-   <point lat="38.53928" lon="-121.75356"/>[m
[31m-   <point lat="38.53933" lon="-121.75368"/>[m
[31m-   <point lat="38.53922" lon="-121.75368"/>[m
[31m-   <point lat="38.5391" lon="-121.75373"/>[m
[31m-   <point lat="38.53908" lon="-121.753"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53919" lon="-121.74837"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.53944" lon="-121.7477"/>[m
[31m-   <point lat="38.5398" lon="-121.7465"/>[m
[31m-   <point lat="38.5400599" lon="-121.74616"/>[m
[31m-   <point lat="38.54003" lon="-121.74605"/>[m
[31m-   <point lat="38.54014" lon="-121.74579"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54267" lon="-121.74435"/>[m
[31m-   <point lat="38.54266" lon="-121.74391"/>[m
[31m-   <point lat="38.54314" lon="-121.74118"/>[m
[31m-   <point lat="38.5437" lon="-121.73835"/>[m
[31m-   <point lat="38.54393" lon="-121.73817"/>[m
[31m-   <point lat="38.54399" lon="-121.73802"/>[m
[31m-   <point lat="38.5443799" lon="-121.7382"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54522" lon="-121.73755"/>[m
[31m-   <point lat="38.54564" lon="-121.7345"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54487" lon="-121.73342"/>[m
[31m-   <point lat="38.54487" lon="-121.7331"/>[m
[31m-   <point lat="38.54659" lon="-121.72577"/>[m
[31m-   <point lat="38.5479399" lon="-121.72002"/>[m
[31m-   <point lat="38.54812" lon="-121.72011"/>[m
[31m-   <point lat="38.54837" lon="-121.72019"/>[m
[31m-   <point lat="38.54849" lon="-121.72019"/>[m
[31m-   <point lat="38.5486999" lon="-121.72017"/>[m
[31m-   <point lat="38.54958" lon="-121.71998"/>[m
[31m-   <point lat="38.5510499" lon="-121.71998"/>[m
[31m-   <point lat="38.55166" lon="-121.72009"/>[m
[31m-   <point lat="38.55154" lon="-121.72068"/>[m
[31m-   <point lat="38.55873" lon="-121.69722"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55801" lon="-121.69939"/>[m
[31m-   <point lat="38.5580799" lon="-121.70126"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55739" lon="-121.70525"/>[m
[31m-   <point lat="38.55684" lon="-121.70525"/>[m
[31m-   <point lat="38.55655" lon="-121.70537"/>[m
[31m-   <point lat="38.55629" lon="-121.70553"/>[m
[31m-   <point lat="38.55571" lon="-121.70603"/>[m
[31m-   <point lat="38.5556" lon="-121.70616"/>[m
[31m-   <point lat="38.55548" lon="-121.70633"/>[m
[31m-   <point lat="38.55537" lon="-121.70651"/>[m
[31m-   <point lat="38.5552" lon="-121.70684"/>[m
[31m-   <point lat="38.5551" lon="-121.70708"/>[m
[31m-   <point lat="38.55494" lon="-121.70763"/>[m
[31m-   <point lat="38.55483" lon="-121.70839"/>[m
[31m-   <point lat="38.55483" lon="-121.70932"/>[m
[31m-   <point lat="38.55463" lon="-121.71004"/>[m
[31m-   <point lat="38.55457" lon="-121.71031"/>[m
[31m-   <point lat="38.55439" lon="-121.71082"/>[m
[31m-   <point lat="38.55427" lon="-121.71109"/>[m
[31m-   <point lat="38.55382" lon="-121.71184"/>[m
[31m-   <point lat="38.55369" lon="-121.7121"/>[m
[31m-   <point lat="38.55355" lon="-121.71247"/>[m
[31m-   <point lat="38.55345" lon="-121.7127"/>[m
[31m-   <point lat="38.5534899" lon="-121.71291"/>[m
[31m-   <point lat="38.55337" lon="-121.71294"/>[m
[31m-   <point lat="38.55334" lon="-121.71307"/>[m
[31m-   <point lat="38.55299" lon="-121.71457"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55263" lon="-121.71651"/>[m
[31m-   <point lat="38.55228" lon="-121.71752"/>[m
[31m-   <point lat="38.55153" lon="-121.72136"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54904" lon="-121.72553"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.54883" lon="-121.72777"/>[m
[31m-   <point lat="38.54868" lon="-121.72906"/>[m
[31m-   <point lat="38.5486999" lon="-121.72981"/>[m
[31m-   <point lat="38.5489" lon="-121.7308"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.54774" lon="-121.73434"/>[m
[31m-   <point lat="38.54714" lon="-121.73407"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54569" lon="-121.7348"/>[m
[31m-   <point lat="38.54575" lon="-121.73509"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54484" lon="-121.73825"/>[m
[31m-   <point lat="38.54393" lon="-121.73817"/>[m
[31m-   <point lat="38.55178" lon="-121.71904"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55268" lon="-121.71538"/>[m
[31m-   <point lat="38.5533" lon="-121.7132"/>[m
[31m-   <point lat="38.55334" lon="-121.71307"/>[m
[31m-   <point lat="38.55337" lon="-121.71294"/>[m
[31m-   <point lat="38.55345" lon="-121.7127"/>[m
[31m-   <point lat="38.55342" lon="-121.71244"/>[m
[31m-   <point lat="38.55355" lon="-121.71247"/>[m
[31m-   <point lat="38.55369" lon="-121.7121"/>[m
[31m-   <point lat="38.55378" lon="-121.71191"/>[m
[31m-   <point lat="38.55437" lon="-121.71087"/>[m
[31m-   <point lat="38.55446" lon="-121.71067"/>[m
[31m-   <point lat="38.55455" lon="-121.71037"/>[m
[31m-   <point lat="38.55463" lon="-121.71004"/>[m
[31m-   <point lat="38.55465" lon="-121.70991"/>[m
[31m-   <point lat="38.55466" lon="-121.70908"/>[m
[31m-   <point lat="38.55483" lon="-121.70839"/>[m
[31m-   <point lat="38.55494" lon="-121.70763"/>[m
[31m-   <point lat="38.5551" lon="-121.70708"/>[m
[31m-   <point lat="38.5552" lon="-121.70684"/>[m
[31m-   <point lat="38.55537" lon="-121.70651"/>[m
[31m-   <point lat="38.55548" lon="-121.70633"/>[m
[31m-   <point lat="38.5556" lon="-121.70616"/>[m
[31m-   <point lat="38.55571" lon="-121.70603"/>[m
[31m-   <point lat="38.55629" lon="-121.70553"/>[m
[31m-   <point lat="38.55655" lon="-121.70537"/>[m
[31m-   <point lat="38.55684" lon="-121.70525"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55781" lon="-121.7043"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55797" lon="-121.70311"/>[m
[31m-   <point lat="38.55786" lon="-121.69946"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55088" lon="-121.69103"/>[m
[31m-   <point lat="38.55027" lon="-121.69028"/>[m
[31m-   <point lat="38.55002" lon="-121.69007"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54928" lon="-121.69425"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55387" lon="-121.6944"/>[m
[31m-   <point lat="38.55625" lon="-121.69395"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="B" say="B Line, Sycamore, Drake Drive, U C Davis Memorial Union" code="20" dest="to/from Memorial Union">[m
[31m-  <stop lat="38.5436099" title="Memorial Union (B Line) &amp; Howard Way " lon="-121.74972" dir="NB"/>[m
[31m-  <stop lat="38.5475099" title="Sycamore Ln &amp; University Mall " lon="-121.76167" dir="NB"/>[m
[31m-  <stop lat="38.55096" title="Sycamore Ln &amp; 8th St " lon="-121.7644" dir="NB"/>[m
[31m-  <stop lat="38.55348" title="Sycamore Ln &amp; Cornell Dr " lon="-121.76489" dir="NB"/>[m
[31m-  <stop lat="38.5549099" title="Sycamore Ln &amp; Bucknell Dr " lon="-121.76484" dir="NB"/>[m
[31m-  <stop lat="38.5564799" title="Sycamore Ln &amp; Villanova Dr " lon="-121.76481" dir="NB"/>[m
[31m-  <stop lat="38.5582399" title="Sycamore Ln &amp; Radcliffe Dr " lon="-121.76472" dir="NB"/>[m
[31m-  <stop lat="38.5592999" title="Radcliffe Dr &amp; Apple Ln " lon="-121.76048" dir="NB"/>[m
[31m-  <stop lat="38.5600899" title="Drake Dr &amp; Drake Dr  Apts " lon="-121.76124" dir="WB"/>[m
[31m-  <stop lat="38.5597799" title="Sycamore Ln &amp; Drake Dr " lon="-121.7639899" dir="SB"/>[m
[31m-  <stop lat="38.55849" title="Sycamore Ln &amp; Notre Dame Dr " lon="-121.7648199" dir="SB"/>[m
[31m-  <stop lat="38.5558399" title="Sycamore Ln &amp; Villanova Dr " lon="-121.76501" dir="SB"/>[m
[31m-  <stop lat="38.55294" title="Sycamore Ln &amp; Cornell Dr " lon="-121.7650999" dir="SB"/>[m
[31m-  <stop lat="38.5506099" title="Sycamore &amp; 8th " lon="-121.7642199" dir="SB"/>[m
[31m-  <stop lat="38.5473799" title="Sycamore Ln &amp; Wake Forest Dr " lon="-121.76198" dir="SB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.55584" lon="-121.76501"/>[m
[31m-   <point lat="38.55551" lon="-121.76492"/>[m
[31m-   <point lat="38.55294" lon="-121.7651"/>[m
[31m-   <point lat="38.5529" lon="-121.765"/>[m
[31m-   <point lat="38.55204" lon="-121.765"/>[m
[31m-   <point lat="38.5519" lon="-121.76502"/>[m
[31m-   <point lat="38.55154" lon="-121.76499"/>[m
[31m-   <point lat="38.5513199" lon="-121.76487"/>[m
[31m-   <point lat="38.55109" lon="-121.76471"/>[m
[31m-   <point lat="38.55075" lon="-121.76433"/>[m
[31m-   <point lat="38.55061" lon="-121.76422"/>[m
[31m-   <point lat="38.5503799" lon="-121.76385"/>[m
[31m-   <point lat="38.55006" lon="-121.76352"/>[m
[31m-   <point lat="38.54831" lon="-121.7622"/>[m
[31m-   <point lat="38.54805" lon="-121.76203"/>[m
[31m-   <point lat="38.54769" lon="-121.76186"/>[m
[31m-   <point lat="38.54759" lon="-121.76183"/>[m
[31m-   <point lat="38.5474" lon="-121.76179"/>[m
[31m-   <point lat="38.5473799" lon="-121.76198"/>[m
[31m-   <point lat="38.54701" lon="-121.76179"/>[m
[31m-   <point lat="38.54636" lon="-121.7618"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.54751" lon="-121.76167"/>[m
[31m-   <point lat="38.54769" lon="-121.76186"/>[m
[31m-   <point lat="38.54783" lon="-121.76191"/>[m
[31m-   <point lat="38.54818" lon="-121.76211"/>[m
[31m-   <point lat="38.55006" lon="-121.76352"/>[m
[31m-   <point lat="38.5503799" lon="-121.76385"/>[m
[31m-   <point lat="38.55075" lon="-121.76433"/>[m
[31m-   <point lat="38.55096" lon="-121.7644"/>[m
[31m-   <point lat="38.55109" lon="-121.76471"/>[m
[31m-   <point lat="38.5513199" lon="-121.76487"/>[m
[31m-   <point lat="38.55154" lon="-121.76499"/>[m
[31m-   <point lat="38.55181" lon="-121.76502"/>[m
[31m-   <point lat="38.5529" lon="-121.765"/>[m
[31m-   <point lat="38.55348" lon="-121.76489"/>[m
[31m-   <point lat="38.5547899" lon="-121.76494"/>[m
[31m-   <point lat="38.55491" lon="-121.76484"/>[m
[31m-   <point lat="38.55629" lon="-121.76488"/>[m
[31m-   <point lat="38.56009" lon="-121.76124"/>[m
[31m-   <point lat="38.56006" lon="-121.76383"/>[m
[31m-   <point lat="38.55978" lon="-121.76399"/>[m
[31m-   <point lat="38.55954" lon="-121.76388"/>[m
[31m-   <point lat="38.55944" lon="-121.76391"/>[m
[31m-   <point lat="38.55933" lon="-121.76396"/>[m
[31m-   <point lat="38.5586399" lon="-121.76465"/>[m
[31m-   <point lat="38.55849" lon="-121.76482"/>[m
[31m-   <point lat="38.5580799" lon="-121.76486"/>[m
[31m-   <point lat="38.5564899" lon="-121.7649"/>[m
[31m-   <point lat="38.55629" lon="-121.76488"/>[m
[31m-   <point lat="38.55648" lon="-121.76481"/>[m
[31m-   <point lat="38.5564899" lon="-121.7649"/>[m
[31m-   <point lat="38.5580799" lon="-121.76486"/>[m
[31m-   <point lat="38.55824" lon="-121.76472"/>[m
[31m-   <point lat="38.5586399" lon="-121.76465"/>[m
[31m-   <point lat="38.55861" lon="-121.76448"/>[m
[31m-   <point lat="38.55856" lon="-121.76431"/>[m
[31m-   <point lat="38.5585" lon="-121.76126"/>[m
[31m-   <point lat="38.5585" lon="-121.76114"/>[m
[31m-   <point lat="38.55848" lon="-121.76098"/>[m
[31m-   <point lat="38.55845" lon="-121.76083"/>[m
[31m-   <point lat="38.55844" lon="-121.7607"/>[m
[31m-   <point lat="38.55894" lon="-121.76056"/>[m
[31m-   <point lat="38.5593" lon="-121.76048"/>[m
[31m-   <point lat="38.55971" lon="-121.76054"/>[m
[31m-   <point lat="38.55988" lon="-121.76052"/>[m
[31m-   <point lat="38.55999" lon="-121.76058"/>[m
[31m-   <point lat="38.56001" lon="-121.7607"/>[m
[31m-   <point lat="38.54361" lon="-121.74972"/>[m
[31m-   <point lat="38.54401" lon="-121.74975"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54636" lon="-121.7618"/>[m
[31m-   <point lat="38.54711" lon="-121.76178"/>[m
[31m-   <point lat="38.54726" lon="-121.76178"/>[m
[31m-   <point lat="38.54745" lon="-121.7618"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="C" say="C Line, Sycamore, Wake Forest, U C Davis Silo" code="30" dest="to/from Silo">[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <stop lat="38.54402" title="La Rue Rd &amp; Orchard " lon="-121.7598299" dir="NB"/>[m
[31m-  <stop lat="38.5469099" title="Anderson Rd &amp; Russell Blvd " lon="-121.75857" dir="NB"/>[m
[31m-  <stop lat="38.5505799" title="8th St &amp; Sycamore Ln " lon="-121.76471" dir="WB"/>[m
[31m-  <stop lat="38.5486899" title="Wake Forest Dr &amp; 1440 (Castillian) " lon="-121.76658" dir="EB"/>[m
[31m-  <stop lat="38.54793" title="Wake Forest Dr &amp; Oxford Cir " lon="-121.7639399" dir="EB"/>[m
[31m-  <stop lat="38.5473799" title="Sycamore Ln &amp; Wake Forest Dr " lon="-121.76198" dir="SB"/>[m
[31m-  <stop lat="38.54251" title="La Rue Rd &amp; Orchard " lon="-121.7608899" dir="SB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.75577" dir="EB"/>[m
[31m-  <stop lat="38.5393499" title="Silo Terminal &amp; Center Island " lon="-121.75308" dir="EB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54869" lon="-121.76658"/>[m
[31m-   <point lat="38.5486099" lon="-121.76637"/>[m
[31m-   <point lat="38.54853" lon="-121.7662"/>[m
[31m-   <point lat="38.54835" lon="-121.76543"/>[m
[31m-   <point lat="38.54804" lon="-121.76431"/>[m
[31m-   <point lat="38.54801" lon="-121.76405"/>[m
[31m-   <point lat="38.54793" lon="-121.76394"/>[m
[31m-   <point lat="38.548" lon="-121.76361"/>[m
[31m-   <point lat="38.54808" lon="-121.76316"/>[m
[31m-   <point lat="38.54813" lon="-121.76299"/>[m
[31m-   <point lat="38.54817" lon="-121.76288"/>[m
[31m-   <point lat="38.54843" lon="-121.7623"/>[m
[31m-   <point lat="38.54831" lon="-121.7622"/>[m
[31m-   <point lat="38.54805" lon="-121.76203"/>[m
[31m-   <point lat="38.54769" lon="-121.76186"/>[m
[31m-   <point lat="38.54759" lon="-121.76183"/>[m
[31m-   <point lat="38.5474" lon="-121.76179"/>[m
[31m-   <point lat="38.5473799" lon="-121.76198"/>[m
[31m-   <point lat="38.54701" lon="-121.76179"/>[m
[31m-   <point lat="38.54636" lon="-121.7618"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54251" lon="-121.76089"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75342"/>[m
[31m-   <point lat="38.53922" lon="-121.75334"/>[m
[31m-   <point lat="38.53938" lon="-121.75324"/>[m
[31m-   <point lat="38.5469099" lon="-121.75857"/>[m
[31m-   <point lat="38.54792" lon="-121.75874"/>[m
[31m-   <point lat="38.55077" lon="-121.75867"/>[m
[31m-   <point lat="38.55084" lon="-121.75942"/>[m
[31m-   <point lat="38.55093" lon="-121.76006"/>[m
[31m-   <point lat="38.55111" lon="-121.76074"/>[m
[31m-   <point lat="38.55121" lon="-121.76141"/>[m
[31m-   <point lat="38.55122" lon="-121.76174"/>[m
[31m-   <point lat="38.55125" lon="-121.76208"/>[m
[31m-   <point lat="38.5512299" lon="-121.76251"/>[m
[31m-   <point lat="38.55119" lon="-121.76272"/>[m
[31m-   <point lat="38.55111" lon="-121.7634"/>[m
[31m-   <point lat="38.55101" lon="-121.7639"/>[m
[31m-   <point lat="38.55095" lon="-121.76407"/>[m
[31m-   <point lat="38.55087" lon="-121.76421"/>[m
[31m-   <point lat="38.55075" lon="-121.76433"/>[m
[31m-   <point lat="38.5505799" lon="-121.76471"/>[m
[31m-   <point lat="38.5501" lon="-121.76512"/>[m
[31m-   <point lat="38.55" lon="-121.76532"/>[m
[31m-   <point lat="38.54983" lon="-121.76591"/>[m
[31m-   <point lat="38.54978" lon="-121.76636"/>[m
[31m-   <point lat="38.54977" lon="-121.76664"/>[m
[31m-   <point lat="38.5497299" lon="-121.76675"/>[m
[31m-   <point lat="38.5496" lon="-121.76681"/>[m
[31m-   <point lat="38.54901" lon="-121.76672"/>[m
[31m-   <point lat="38.5489" lon="-121.76666"/>[m
[31m-   <point lat="38.54872" lon="-121.76652"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53908" lon="-121.75342"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54374" lon="-121.7602"/>[m
[31m-   <point lat="38.54402" lon="-121.75983"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="D" say="D Line, Lake Boulevard, Arlington, U C Davis Silo" code="40" dest="Night Service to/from Silo">[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <stop lat="38.5440199" title="La Rue Rd &amp; Orchard " lon="-121.75983" dir="NB"/>[m
[31m-  <stop lat="38.5464899" title="Russell Blvd &amp; Sycamore Ln " lon="-121.7635" dir="WB"/>[m
[31m-  <stop lat="38.54655" title="Russell Blvd &amp; Arthur St " lon="-121.77102" dir="WB"/>[m
[31m-  <stop lat="38.5467999" title="Russell Blvd &amp; Arlington Farms " lon="-121.78585" dir="WB"/>[m
[31m-  <stop lat="38.54895" title="Lake Blvd &amp; Portage Bay " lon="-121.78849" dir="NB"/>[m
[31m-  <stop lat="38.5504399" title="Lake Blvd &amp; Salem Ave " lon="-121.7873" dir="NB"/>[m
[31m-  <stop lat="38.5528099" title="Lake Blvd &amp; 1050 " lon="-121.7873499" dir="NB"/>[m
[31m-  <stop lat="38.5549699" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78691" dir="SB"/>[m
[31m-  <stop lat="38.55371" title="Arlington Blvd &amp; Cabot St " lon="-121.7848399" dir="SB"/>[m
[31m-  <stop lat="38.5534699" title="Arlington Blvd &amp; Shasta Dr " lon="-121.7813699" dir="SB"/>[m
[31m-  <stop lat="38.55028" title="Arlington Blvd &amp; Westernesse Rd " lon="-121.7792699" dir="SB"/>[m
[31m-  <stop lat="38.54877" title="Arlington Blvd &amp; Bucklebury Rd " lon="-121.7788" dir="SB"/>[m
[31m-  <stop lat="38.5462399" title="Russell Blvd &amp; Sycamore Ln " lon="-121.762" dir="EB"/>[m
[31m-  <stop lat="38.54251" title="La Rue Rd &amp; Orchard " lon="-121.7608899" dir="SB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.7557699" dir="EB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54624" lon="-121.762"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54251" lon="-121.76089"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.5392" lon="-121.75335"/>[m
[31m-   <point lat="38.53923" lon="-121.75312"/>[m
[31m-   <point lat="38.53922" lon="-121.75299"/>[m
[31m-   <point lat="38.53915" lon="-121.75292"/>[m
[31m-   <point lat="38.53908" lon="-121.75289"/>[m
[31m-   <point lat="38.53714" lon="-121.76506"/>[m
[31m-   <point lat="38.53686" lon="-121.76521"/>[m
[31m-   <point lat="38.5368" lon="-121.76571"/>[m
[31m-   <point lat="38.53693" lon="-121.76671"/>[m
[31m-   <point lat="38.53714" lon="-121.76723"/>[m
[31m-   <point lat="38.5373" lon="-121.76744"/>[m
[31m-   <point lat="38.53751" lon="-121.76766"/>[m
[31m-   <point lat="38.53768" lon="-121.7678"/>[m
[31m-   <point lat="38.53795" lon="-121.76796"/>[m
[31m-   <point lat="38.53882" lon="-121.76814"/>[m
[31m-   <point lat="38.54323" lon="-121.768"/>[m
[31m-   <point lat="38.54524" lon="-121.76767"/>[m
[31m-   <point lat="38.54639" lon="-121.76727"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54652" lon="-121.77546"/>[m
[31m-   <point lat="38.53737" lon="-121.76423"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.5392" lon="-121.75335"/>[m
[31m-   <point lat="38.53923" lon="-121.75312"/>[m
[31m-   <point lat="38.53922" lon="-121.75299"/>[m
[31m-   <point lat="38.53915" lon="-121.75292"/>[m
[31m-   <point lat="38.53908" lon="-121.75289"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53909" lon="-121.75314"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54374" lon="-121.7602"/>[m
[31m-   <point lat="38.54402" lon="-121.75983"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.5468" lon="-121.78585"/>[m
[31m-   <point lat="38.54671" lon="-121.78935"/>[m
[31m-   <point lat="38.54768" lon="-121.78931"/>[m
[31m-   <point lat="38.54797" lon="-121.78926"/>[m
[31m-   <point lat="38.5482299" lon="-121.78919"/>[m
[31m-   <point lat="38.5486" lon="-121.789"/>[m
[31m-   <point lat="38.54902" lon="-121.78868"/>[m
[31m-   <point lat="38.54895" lon="-121.78849"/>[m
[31m-   <point lat="38.54966" lon="-121.78801"/>[m
[31m-   <point lat="38.54992" lon="-121.78777"/>[m
[31m-   <point lat="38.5504" lon="-121.78746"/>[m
[31m-   <point lat="38.55044" lon="-121.7873"/>[m
[31m-   <point lat="38.55069" lon="-121.78736"/>[m
[31m-   <point lat="38.55102" lon="-121.7873"/>[m
[31m-   <point lat="38.5515" lon="-121.78726"/>[m
[31m-   <point lat="38.55169" lon="-121.78727"/>[m
[31m-   <point lat="38.55183" lon="-121.78731"/>[m
[31m-   <point lat="38.55281" lon="-121.78735"/>[m
[31m-   <point lat="38.55391" lon="-121.78771"/>[m
[31m-   <point lat="38.55489" lon="-121.78771"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54652" lon="-121.77546"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-   <point lat="38.54622" lon="-121.76939"/>[m
[31m-   <point lat="38.54555" lon="-121.7687"/>[m
[31m-   <point lat="38.54518" lon="-121.76849"/>[m
[31m-   <point lat="38.54434" lon="-121.76829"/>[m
[31m-   <point lat="38.54087" lon="-121.76843"/>[m
[31m-   <point lat="38.53934" lon="-121.76872"/>[m
[31m-   <point lat="38.539" lon="-121.76885"/>[m
[31m-   <point lat="38.53851" lon="-121.76924"/>[m
[31m-   <point lat="38.53737" lon="-121.76995"/>[m
[31m-   <point lat="38.53682" lon="-121.76998"/>[m
[31m-   <point lat="38.5368" lon="-121.76571"/>[m
[31m-   <point lat="38.53686" lon="-121.76521"/>[m
[31m-   <point lat="38.5371" lon="-121.76476"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53909" lon="-121.75314"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53884" lon="-121.76228"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.5371" lon="-121.76476"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="D" say="D Line, Lake Boulevard, Arlington, U C Davis Silo" code="40" dest="Day Service to/from Silo">[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <stop lat="38.5388399" title="Hutchison Dr &amp; Ext Center " lon="-121.7622799" dir="WB"/>[m
[31m-  <stop lat="38.5371399" title="Hutchison Dr &amp; Health Sci Dr " lon="-121.76506" dir="WB"/>[m
[31m-  <stop lat="38.54655" title="Russell Blvd &amp; Arthur St " lon="-121.77102" dir="WB"/>[m
[31m-  <stop lat="38.5467999" title="Russell Blvd &amp; Arlington Farms " lon="-121.78585" dir="WB"/>[m
[31m-  <stop lat="38.54895" title="Lake Blvd &amp; Portage Bay " lon="-121.78849" dir="NB"/>[m
[31m-  <stop lat="38.5504399" title="Lake Blvd &amp; Salem Ave " lon="-121.7873" dir="NB"/>[m
[31m-  <stop lat="38.5528099" title="Lake Blvd &amp; 1050 " lon="-121.7873499" dir="NB"/>[m
[31m-  <stop lat="38.5549699" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78691" dir="SB"/>[m
[31m-  <stop lat="38.55371" title="Arlington Blvd &amp; Cabot St " lon="-121.7848399" dir="SB"/>[m
[31m-  <stop lat="38.5534699" title="Arlington Blvd &amp; Shasta Dr " lon="-121.7813699" dir="SB"/>[m
[31m-  <stop lat="38.55028" title="Arlington Blvd &amp; Westernesse Rd " lon="-121.7792699" dir="SB"/>[m
[31m-  <stop lat="38.54877" title="Arlington Blvd &amp; Bucklebury Rd " lon="-121.7788" dir="SB"/>[m
[31m-  <stop lat="38.5373699" title="Hutchison Dr &amp; Health Sci Drive " lon="-121.76423" dir="EB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.7557699" dir="EB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54624" lon="-121.762"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54251" lon="-121.76089"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.5392" lon="-121.75335"/>[m
[31m-   <point lat="38.53923" lon="-121.75312"/>[m
[31m-   <point lat="38.53922" lon="-121.75299"/>[m
[31m-   <point lat="38.53915" lon="-121.75292"/>[m
[31m-   <point lat="38.53908" lon="-121.75289"/>[m
[31m-   <point lat="38.53714" lon="-121.76506"/>[m
[31m-   <point lat="38.53686" lon="-121.76521"/>[m
[31m-   <point lat="38.5368" lon="-121.76571"/>[m
[31m-   <point lat="38.53693" lon="-121.76671"/>[m
[31m-   <point lat="38.53714" lon="-121.76723"/>[m
[31m-   <point lat="38.5373" lon="-121.76744"/>[m
[31m-   <point lat="38.53751" lon="-121.76766"/>[m
[31m-   <point lat="38.53768" lon="-121.7678"/>[m
[31m-   <point lat="38.53795" lon="-121.76796"/>[m
[31m-   <point lat="38.53882" lon="-121.76814"/>[m
[31m-   <point lat="38.54323" lon="-121.768"/>[m
[31m-   <point lat="38.54524" lon="-121.76767"/>[m
[31m-   <point lat="38.54639" lon="-121.76727"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54652" lon="-121.77546"/>[m
[31m-   <point lat="38.53737" lon="-121.76423"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.5392" lon="-121.75335"/>[m
[31m-   <point lat="38.53923" lon="-121.75312"/>[m
[31m-   <point lat="38.53922" lon="-121.75299"/>[m
[31m-   <point lat="38.53915" lon="-121.75292"/>[m
[31m-   <point lat="38.53908" lon="-121.75289"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53909" lon="-121.75314"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54374" lon="-121.7602"/>[m
[31m-   <point lat="38.54402" lon="-121.75983"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.5468" lon="-121.78585"/>[m
[31m-   <point lat="38.54671" lon="-121.78935"/>[m
[31m-   <point lat="38.54768" lon="-121.78931"/>[m
[31m-   <point lat="38.54797" lon="-121.78926"/>[m
[31m-   <point lat="38.5482299" lon="-121.78919"/>[m
[31m-   <point lat="38.5486" lon="-121.789"/>[m
[31m-   <point lat="38.54902" lon="-121.78868"/>[m
[31m-   <point lat="38.54895" lon="-121.78849"/>[m
[31m-   <point lat="38.54966" lon="-121.78801"/>[m
[31m-   <point lat="38.54992" lon="-121.78777"/>[m
[31m-   <point lat="38.5504" lon="-121.78746"/>[m
[31m-   <point lat="38.55044" lon="-121.7873"/>[m
[31m-   <point lat="38.55069" lon="-121.78736"/>[m
[31m-   <point lat="38.55102" lon="-121.7873"/>[m
[31m-   <point lat="38.5515" lon="-121.78726"/>[m
[31m-   <point lat="38.55169" lon="-121.78727"/>[m
[31m-   <point lat="38.55183" lon="-121.78731"/>[m
[31m-   <point lat="38.55281" lon="-121.78735"/>[m
[31m-   <point lat="38.55391" lon="-121.78771"/>[m
[31m-   <point lat="38.55489" lon="-121.78771"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54652" lon="-121.77546"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-   <point lat="38.54622" lon="-121.76939"/>[m
[31m-   <point lat="38.54555" lon="-121.7687"/>[m
[31m-   <point lat="38.54518" lon="-121.76849"/>[m
[31m-   <point lat="38.54434" lon="-121.76829"/>[m
[31m-   <point lat="38.54087" lon="-121.76843"/>[m
[31m-   <point lat="38.53934" lon="-121.76872"/>[m
[31m-   <point lat="38.539" lon="-121.76885"/>[m
[31m-   <point lat="38.53851" lon="-121.76924"/>[m
[31m-   <point lat="38.53737" lon="-121.76995"/>[m
[31m-   <point lat="38.53682" lon="-121.76998"/>[m
[31m-   <point lat="38.5368" lon="-121.76571"/>[m
[31m-   <point lat="38.53686" lon="-121.76521"/>[m
[31m-   <point lat="38.5371" lon="-121.76476"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53909" lon="-121.75314"/>[m
[31m-   <point lat="38.53909" lon="-121.75351"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53884" lon="-121.76228"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.5371" lon="-121.76476"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="E" say="E Line, Downtown, F Street, J Street, U C Davis Memorial Union " code="50" dest="to/from Memorial Union">[m
[31m-  <stop lat="38.5437599" title="Memorial Union (E Line) &amp; Howard Way " lon="-121.74963" dir="NB"/>[m
[31m-  <stop lat="38.5450499" title="B St &amp; 4th St  " lon="-121.7451299" dir="SB"/>[m
[31m-  <stop lat="38.5441299" title="3rd St &amp; C St " lon="-121.74322" dir="EB"/>[m
[31m-  <stop lat="38.5445099" title="3rd St &amp; E St " lon="-121.74114" dir="EB"/>[m
[31m-  <stop lat="38.5462999" title="F St &amp; 4th St  " lon="-121.7406799" dir="NB"/>[m
[31m-  <stop lat="38.5475799" title="F St &amp; 5th Street  " lon="-121.7410499" dir="NB"/>[m
[31m-  <stop lat="38.5516099" title="F St &amp; 8th St " lon="-121.74199" dir="NB"/>[m
[31m-  <stop lat="38.5552599" title="F St &amp; 12th St " lon="-121.7426" dir="NB"/>[m
[31m-  <stop lat="38.5571899" title="F St &amp; 14th St " lon="-121.7433" dir="NB"/>[m
[31m-  <stop lat="38.5602299" title="F St &amp; Covell Blvd " lon="-121.74466" dir="NB"/>[m
[31m-  <stop lat="38.5591699" title="J St &amp; Menlo Dr " lon="-121.73908" dir="SB"/>[m
[31m-  <stop lat="38.55698" title="J St &amp; Drexel Dr " lon="-121.7407699" dir="SB"/>[m
[31m-  <stop lat="38.55437" title="J St &amp; Alice St " lon="-121.73991" dir="SB"/>[m
[31m-  <stop lat="38.5520399" title="J St &amp; 8th St " lon="-121.73881" dir="SB"/>[m
[31m-  <stop lat="38.5515899" title="8th St &amp; G St " lon="-121.74127" dir="WB"/>[m
[31m-  <stop lat="38.55092" title="F St &amp; 8th St  " lon="-121.7421499" dir="SB"/>[m
[31m-  <stop lat="38.5456899" title="F St &amp; 4th St  " lon="-121.7406999" dir="SB"/>[m
[31m-  <stop lat="38.5445499" title="3rd St &amp; E St " lon="-121.74169" dir="WB"/>[m
[31m-  <stop lat="38.5442099" title="3rd St &amp; C St " lon="-121.74391" dir="WB"/>[m
[31m-  <stop lat="38.5452799" title="B St &amp; 4th St " lon="-121.7449299" dir="NB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54376" lon="-121.74963"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.54395" lon="-121.75012"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54505" lon="-121.74513"/>[m
[31m-   <point lat="38.54395" lon="-121.74471"/>[m
[31m-   <point lat="38.54413" lon="-121.74322"/>[m
[31m-   <point lat="38.54455" lon="-121.74169"/>[m
[31m-   <point lat="38.54421" lon="-121.74391"/>[m
[31m-   <point lat="38.54395" lon="-121.74471"/>[m
[31m-   <point lat="38.54528" lon="-121.74493"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54623" lon="-121.74893"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75012"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.5435" lon="-121.74958"/>[m
[31m-   <point lat="38.56023" lon="-121.74466"/>[m
[31m-   <point lat="38.56075" lon="-121.74479"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56022" lon="-121.7386"/>[m
[31m-   <point lat="38.5598" lon="-121.73863"/>[m
[31m-   <point lat="38.5595799" lon="-121.7387"/>[m
[31m-   <point lat="38.55935" lon="-121.73885"/>[m
[31m-   <point lat="38.55918" lon="-121.73896"/>[m
[31m-   <point lat="38.54451" lon="-121.74114"/>[m
[31m-   <point lat="38.5447" lon="-121.74037"/>[m
[31m-   <point lat="38.5463" lon="-121.74068"/>[m
[31m-   <point lat="38.54758" lon="-121.74105"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.55074" lon="-121.74197"/>[m
[31m-   <point lat="38.55204" lon="-121.73881"/>[m
[31m-   <point lat="38.5518" lon="-121.73871"/>[m
[31m-   <point lat="38.55183" lon="-121.73936"/>[m
[31m-   <point lat="38.5518" lon="-121.73971"/>[m
[31m-   <point lat="38.55159" lon="-121.74127"/>[m
[31m-   <point lat="38.55139" lon="-121.74208"/>[m
[31m-   <point lat="38.55092" lon="-121.74215"/>[m
[31m-   <point lat="38.55074" lon="-121.74197"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.54569" lon="-121.7407"/>[m
[31m-   <point lat="38.5447" lon="-121.74037"/>[m
[31m-   <point lat="38.5516099" lon="-121.74199"/>[m
[31m-   <point lat="38.5550799" lon="-121.74271"/>[m
[31m-   <point lat="38.5552599" lon="-121.7426"/>[m
[31m-   <point lat="38.55708" lon="-121.74338"/>[m
[31m-   <point lat="38.55719" lon="-121.7433"/>[m
[31m-   <point lat="38.55798" lon="-121.74379"/>[m
[31m-   <point lat="38.55866" lon="-121.74432"/>[m
[31m-   <point lat="38.55909" lon="-121.7446"/>[m
[31m-   <point lat="38.55939" lon="-121.74472"/>[m
[31m-   <point lat="38.55964" lon="-121.74479"/>[m
[31m-   <point lat="38.55981" lon="-121.74479"/>[m
[31m-   <point lat="38.5601" lon="-121.74482"/>[m
[31m-   <point lat="38.55917" lon="-121.73908"/>[m
[31m-   <point lat="38.5589299" lon="-121.73923"/>[m
[31m-   <point lat="38.55834" lon="-121.74015"/>[m
[31m-   <point lat="38.55821" lon="-121.7403"/>[m
[31m-   <point lat="38.55794" lon="-121.74046"/>[m
[31m-   <point lat="38.55785" lon="-121.74052"/>[m
[31m-   <point lat="38.5576" lon="-121.74061"/>[m
[31m-   <point lat="38.55736" lon="-121.74065"/>[m
[31m-   <point lat="38.5572" lon="-121.74065"/>[m
[31m-   <point lat="38.55703" lon="-121.74064"/>[m
[31m-   <point lat="38.55698" lon="-121.74077"/>[m
[31m-   <point lat="38.55437" lon="-121.73991"/>[m
[31m-   <point lat="38.55317" lon="-121.73954"/>[m
[31m-   <point lat="38.553" lon="-121.73947"/>[m
[31m-   <point lat="38.55287" lon="-121.73939"/>[m
[31m-   <point lat="38.55267" lon="-121.73918"/>[m
[31m-   <point lat="38.5525499" lon="-121.73902"/>[m
[31m-   <point lat="38.55247" lon="-121.73893"/>[m
[31m-   <point lat="38.5522599" lon="-121.7388"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="F" say="F Line, Oak Avenue, East Alverado, Catalina Drive, U C Davis Memorial Union" code="60" dest="to/from Memorial Union">[m
[31m-  <stop lat="38.5436299" title="Memorial Union (F Line) &amp; Howard Way " lon="-121.74958" dir="NB"/>[m
[31m-  <stop lat="38.54664" title="Oak Ave &amp; Russell Blvd " lon="-121.7526499" dir="NB"/>[m
[31m-  <stop lat="38.55103" title="Oak Ave &amp; 8th St " lon="-121.75261" dir="NB"/>[m
[31m-  <stop lat="38.55334" title="Oak Ave &amp; Antioch Dr " lon="-121.75257" dir="NB"/>[m
[31m-  <stop lat="38.5559499" title="14th St &amp; Oak St " lon="-121.75252" dir="WB"/>[m
[31m-  <stop lat="38.5564099" title="Villanova Dr &amp; Reed Dr " lon="-121.7565599" dir="WB"/>[m
[31m-  <stop lat="38.5565699" title="Anderson Rd &amp; Villanova Dr " lon="-121.75842" dir="NB"/>[m
[31m-  <stop lat="38.5594499" title="Anderson Rd &amp; Hanover Dr " lon="-121.7584" dir="NB"/>[m
[31m-  <stop lat="38.5619699" title="Alvarado Ave &amp; Anderson " lon="-121.75699" dir="EB"/>[m
[31m-  <stop lat="38.5616" title="Alvarado Ave &amp; Del Rey Ct " lon="-121.75289" dir="EB"/>[m
[31m-  <stop lat="38.5621499" title="Catalina Dr &amp; Alvarado Ave " lon="-121.75029" dir="NB"/>[m
[31m-  <stop lat="38.5647099" title="Catalina Dr &amp; Cabrillo Ave " lon="-121.7527299" dir="NB"/>[m
[31m-  <stop lat="38.56694" title="Catalina Dr &amp; Grande Ave " lon="-121.75413" dir="NB"/>[m
[31m-  <stop lat="38.5681999" title="Catalina Dr &amp; Corona Dr " lon="-121.75712" dir="WB"/>[m
[31m-  <stop lat="38.56681" title="Anderson Rd &amp; Valencia Ave " lon="-121.7585399" dir="SB"/>[m
[31m-  <stop lat="38.5625999" title="Anderson Rd &amp; Alvarado Ave " lon="-121.75856" dir="SB"/>[m
[31m-  <stop lat="38.55906" title="Hanover Dr &amp; Anderson Rd " lon="-121.7579199" dir="EB"/>[m
[31m-  <stop lat="38.5595499" title="Hanover Dr &amp; Scripps " lon="-121.75617" dir="NB"/>[m
[31m-  <stop lat="38.5576999" title="Oak Ave &amp; Scripps  " lon="-121.7523499" dir="SB"/>[m
[31m-  <stop lat="38.5555599" title="Oak Ave &amp; 14th St " lon="-121.75242" dir="SB"/>[m
[31m-  <stop lat="38.55272" title="Oak Ave &amp; Antioch Dr " lon="-121.7527799" dir="SB"/>[m
[31m-  <stop lat="38.5504399" title="Oak Ave &amp; 8th St " lon="-121.75285" dir="SB"/>[m
[31m-  <stop lat="38.5464899" title="Oak Ave &amp; Russell Blvd " lon="-121.7529099" dir="SB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.56197" lon="-121.75699"/>[m
[31m-   <point lat="38.56208" lon="-121.75595"/>[m
[31m-   <point lat="38.56205" lon="-121.75575"/>[m
[31m-   <point lat="38.56198" lon="-121.75551"/>[m
[31m-   <point lat="38.5618" lon="-121.7551"/>[m
[31m-   <point lat="38.56175" lon="-121.75496"/>[m
[31m-   <point lat="38.56171" lon="-121.75481"/>[m
[31m-   <point lat="38.56168" lon="-121.75452"/>[m
[31m-   <point lat="38.5616" lon="-121.75289"/>[m
[31m-   <point lat="38.56166" lon="-121.75275"/>[m
[31m-   <point lat="38.56168" lon="-121.75235"/>[m
[31m-   <point lat="38.56174" lon="-121.75207"/>[m
[31m-   <point lat="38.56176" lon="-121.75191"/>[m
[31m-   <point lat="38.56177" lon="-121.7504"/>[m
[31m-   <point lat="38.56215" lon="-121.75029"/>[m
[31m-   <point lat="38.56251" lon="-121.75039"/>[m
[31m-   <point lat="38.56266" lon="-121.75041"/>[m
[31m-   <point lat="38.56311" lon="-121.75066"/>[m
[31m-   <point lat="38.56329" lon="-121.75082"/>[m
[31m-   <point lat="38.56354" lon="-121.75118"/>[m
[31m-   <point lat="38.56363" lon="-121.75143"/>[m
[31m-   <point lat="38.56385" lon="-121.75202"/>[m
[31m-   <point lat="38.56393" lon="-121.75217"/>[m
[31m-   <point lat="38.56402" lon="-121.7523"/>[m
[31m-   <point lat="38.56409" lon="-121.75244"/>[m
[31m-   <point lat="38.5643" lon="-121.7526"/>[m
[31m-   <point lat="38.56444" lon="-121.75266"/>[m
[31m-   <point lat="38.56471" lon="-121.75273"/>[m
[31m-   <point lat="38.56506" lon="-121.75308"/>[m
[31m-   <point lat="38.56694" lon="-121.75413"/>[m
[31m-   <point lat="38.56705" lon="-121.75432"/>[m
[31m-   <point lat="38.5676" lon="-121.75472"/>[m
[31m-   <point lat="38.5677" lon="-121.75482"/>[m
[31m-   <point lat="38.5679" lon="-121.75516"/>[m
[31m-   <point lat="38.568" lon="-121.75539"/>[m
[31m-   <point lat="38.56807" lon="-121.75587"/>[m
[31m-   <point lat="38.5682" lon="-121.75712"/>[m
[31m-   <point lat="38.56809" lon="-121.75837"/>[m
[31m-   <point lat="38.5668099" lon="-121.75854"/>[m
[31m-   <point lat="38.5626" lon="-121.75856"/>[m
[31m-   <point lat="38.55912" lon="-121.75852"/>[m
[31m-   <point lat="38.55912" lon="-121.75832"/>[m
[31m-   <point lat="38.55906" lon="-121.75792"/>[m
[31m-   <point lat="38.5591099" lon="-121.75786"/>[m
[31m-   <point lat="38.55909" lon="-121.75772"/>[m
[31m-   <point lat="38.55906" lon="-121.7576"/>[m
[31m-   <point lat="38.55896" lon="-121.75735"/>[m
[31m-   <point lat="38.55889" lon="-121.7571"/>[m
[31m-   <point lat="38.55887" lon="-121.75696"/>[m
[31m-   <point lat="38.55889" lon="-121.75682"/>[m
[31m-   <point lat="38.5589299" lon="-121.75668"/>[m
[31m-   <point lat="38.559" lon="-121.7565"/>[m
[31m-   <point lat="38.55926" lon="-121.75632"/>[m
[31m-   <point lat="38.55955" lon="-121.75617"/>[m
[31m-   <point lat="38.5598699" lon="-121.75627"/>[m
[31m-   <point lat="38.5608" lon="-121.75626"/>[m
[31m-   <point lat="38.56079" lon="-121.75225"/>[m
[31m-   <point lat="38.55831" lon="-121.75225"/>[m
[31m-   <point lat="38.55821" lon="-121.75226"/>[m
[31m-   <point lat="38.5576999" lon="-121.75235"/>[m
[31m-   <point lat="38.55698" lon="-121.75227"/>[m
[31m-   <point lat="38.54363" lon="-121.74958"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54622" lon="-121.75281"/>[m
[31m-   <point lat="38.5466399" lon="-121.75265"/>[m
[31m-   <point lat="38.55103" lon="-121.75261"/>[m
[31m-   <point lat="38.55289" lon="-121.75269"/>[m
[31m-   <point lat="38.55307" lon="-121.75267"/>[m
[31m-   <point lat="38.55334" lon="-121.75257"/>[m
[31m-   <point lat="38.55339" lon="-121.7527"/>[m
[31m-   <point lat="38.5537" lon="-121.75269"/>[m
[31m-   <point lat="38.55483" lon="-121.75237"/>[m
[31m-   <point lat="38.55523" lon="-121.7523"/>[m
[31m-   <point lat="38.55584" lon="-121.7523"/>[m
[31m-   <point lat="38.55945" lon="-121.7584"/>[m
[31m-   <point lat="38.5621" lon="-121.75848"/>[m
[31m-   <point lat="38.55595" lon="-121.75252"/>[m
[31m-   <point lat="38.55584" lon="-121.75328"/>[m
[31m-   <point lat="38.55575" lon="-121.75399"/>[m
[31m-   <point lat="38.55576" lon="-121.75416"/>[m
[31m-   <point lat="38.55582" lon="-121.75442"/>[m
[31m-   <point lat="38.55598" lon="-121.75461"/>[m
[31m-   <point lat="38.55623" lon="-121.75516"/>[m
[31m-   <point lat="38.55627" lon="-121.75536"/>[m
[31m-   <point lat="38.55629" lon="-121.75557"/>[m
[31m-   <point lat="38.55641" lon="-121.75656"/>[m
[31m-   <point lat="38.55628" lon="-121.75771"/>[m
[31m-   <point lat="38.55619" lon="-121.75819"/>[m
[31m-   <point lat="38.55619" lon="-121.7586"/>[m
[31m-   <point lat="38.55657" lon="-121.75842"/>[m
[31m-   <point lat="38.55717" lon="-121.75857"/>[m
[31m-   <point lat="38.55556" lon="-121.75242"/>[m
[31m-   <point lat="38.55523" lon="-121.7523"/>[m
[31m-   <point lat="38.55483" lon="-121.75237"/>[m
[31m-   <point lat="38.5539599" lon="-121.75263"/>[m
[31m-   <point lat="38.5537" lon="-121.75269"/>[m
[31m-   <point lat="38.55339" lon="-121.7527"/>[m
[31m-   <point lat="38.55307" lon="-121.75267"/>[m
[31m-   <point lat="38.55289" lon="-121.75269"/>[m
[31m-   <point lat="38.55272" lon="-121.75278"/>[m
[31m-   <point lat="38.55044" lon="-121.75285"/>[m
[31m-   <point lat="38.54649" lon="-121.75291"/>[m
[31m-   <point lat="38.54622" lon="-121.75281"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54343" lon="-121.74997"/>[m
[31m-   <point lat="38.5435" lon="-121.74959"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="G" say="G Line, Anderson, Alverado, North Sycamore, U C Davis Memorial Union" code="70" dest="to/from Memorial Union">[m
[31m-  <stop lat="38.5437499" title="Memorial Union (G Line) &amp; Howard Way " lon="-121.74975" dir="NB"/>[m
[31m-  <stop lat="38.5469099" title="Anderson Rd &amp; Russell Blvd " lon="-121.75857" dir="NB"/>[m
[31m-  <stop lat="38.5526699" title="Anderson Rd &amp; Amherst Dr " lon="-121.7585" dir="NB"/>[m
[31m-  <stop lat="38.55657" title="Anderson Rd &amp; Villanova Dr " lon="-121.7584199" dir="NB"/>[m
[31m-  <stop lat="38.5594499" title="Anderson Rd &amp; Hanover Dr " lon="-121.7584" dir="NB"/>[m
[31m-  <stop lat="38.5622099" title="Alvarado Ave &amp; Anderson " lon="-121.7593699" dir="WB"/>[m
[31m-  <stop lat="38.5620999" title="Alvarado Ave &amp; Sycamore " lon="-121.76325" dir="WB"/>[m
[31m-  <stop lat="38.5631399" title="Sycamore Ln &amp; Pepperwood Apts " lon="-121.76542" dir="NB"/>[m
[31m-  <stop lat="38.56445" title="Sycamore Ln &amp; Antelope " lon="-121.7656099" dir="NB"/>[m
[31m-  <stop lat="38.56631" title="Sycamore Ln &amp; Chaparral Apts " lon="-121.76556" dir="NB"/>[m
[31m-  <stop lat="38.5682499" title="North Sycamore Loop &amp;  " lon="-121.76699" dir="NB"/>[m
[31m-  <stop lat="38.5660299" title="Sycamore Ln &amp; Chaparral Apts " lon="-121.76584" dir="SB"/>[m
[31m-  <stop lat="38.5643599" title="Sycamore Ln &amp; Antelope " lon="-121.7658499" dir="SB"/>[m
[31m-  <stop lat="38.56253" title="Sycamore Ln &amp; Alvarado " lon="-121.76504" dir="SB"/>[m
[31m-  <stop lat="38.5619399" title="Alvarado Ave &amp; Sycamore " lon="-121.76301" dir="EB"/>[m
[31m-  <stop lat="38.5619999" title="Alvarado Ave &amp; Anderson " lon="-121.75955" dir="EB"/>[m
[31m-  <stop lat="38.5585599" title="Anderson Rd &amp; Hanover Dr " lon="-121.75871" dir="SB"/>[m
[31m-  <stop lat="38.55592" title="Anderson Rd &amp; Villanova Dr " lon="-121.7587399" dir="SB"/>[m
[31m-  <stop lat="38.55229" title="Anderson Rd &amp; Amherst Dr " lon="-121.7588099" dir="SB"/>[m
[31m-  <stop lat="38.5472999" title="Anderson Rd &amp; Russell Blvd " lon="-121.75887" dir="SB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.5469099" lon="-121.75857"/>[m
[31m-   <point lat="38.54792" lon="-121.75874"/>[m
[31m-   <point lat="38.55267" lon="-121.7585"/>[m
[31m-   <point lat="38.55657" lon="-121.75842"/>[m
[31m-   <point lat="38.56825" lon="-121.76699"/>[m
[31m-   <point lat="38.5683099" lon="-121.76707"/>[m
[31m-   <point lat="38.56837" lon="-121.76717"/>[m
[31m-   <point lat="38.56816" lon="-121.7672"/>[m
[31m-   <point lat="38.56804" lon="-121.76718"/>[m
[31m-   <point lat="38.56794" lon="-121.76715"/>[m
[31m-   <point lat="38.56778" lon="-121.76707"/>[m
[31m-   <point lat="38.56767" lon="-121.76698"/>[m
[31m-   <point lat="38.56755" lon="-121.76684"/>[m
[31m-   <point lat="38.5671" lon="-121.7661"/>[m
[31m-   <point lat="38.56694" lon="-121.76593"/>[m
[31m-   <point lat="38.5668" lon="-121.76583"/>[m
[31m-   <point lat="38.56664" lon="-121.76574"/>[m
[31m-   <point lat="38.56655" lon="-121.76572"/>[m
[31m-   <point lat="38.56638" lon="-121.76571"/>[m
[31m-   <point lat="38.56603" lon="-121.76584"/>[m
[31m-   <point lat="38.56436" lon="-121.76585"/>[m
[31m-   <point lat="38.5636" lon="-121.76573"/>[m
[31m-   <point lat="38.5635" lon="-121.76574"/>[m
[31m-   <point lat="38.56332" lon="-121.7657"/>[m
[31m-   <point lat="38.56321" lon="-121.76566"/>[m
[31m-   <point lat="38.56304" lon="-121.76556"/>[m
[31m-   <point lat="38.5629599" lon="-121.76549"/>[m
[31m-   <point lat="38.56283" lon="-121.76534"/>[m
[31m-   <point lat="38.56253" lon="-121.76504"/>[m
[31m-   <point lat="38.5619299" lon="-121.76408"/>[m
[31m-   <point lat="38.5618399" lon="-121.76399"/>[m
[31m-   <point lat="38.56173" lon="-121.76392"/>[m
[31m-   <point lat="38.56177" lon="-121.76381"/>[m
[31m-   <point lat="38.56194" lon="-121.76301"/>[m
[31m-   <point lat="38.56207" lon="-121.7629"/>[m
[31m-   <point lat="38.5621099" lon="-121.76256"/>[m
[31m-   <point lat="38.56212" lon="-121.76198"/>[m
[31m-   <point lat="38.55945" lon="-121.7584"/>[m
[31m-   <point lat="38.5621" lon="-121.75848"/>[m
[31m-   <point lat="38.56221" lon="-121.75937"/>[m
[31m-   <point lat="38.5621099" lon="-121.76256"/>[m
[31m-   <point lat="38.56207" lon="-121.7629"/>[m
[31m-   <point lat="38.5621" lon="-121.76325"/>[m
[31m-   <point lat="38.56173" lon="-121.76392"/>[m
[31m-   <point lat="38.5618399" lon="-121.76399"/>[m
[31m-   <point lat="38.5619299" lon="-121.76408"/>[m
[31m-   <point lat="38.56283" lon="-121.76534"/>[m
[31m-   <point lat="38.5629599" lon="-121.76549"/>[m
[31m-   <point lat="38.56304" lon="-121.76556"/>[m
[31m-   <point lat="38.56314" lon="-121.76542"/>[m
[31m-   <point lat="38.56313" lon="-121.76562"/>[m
[31m-   <point lat="38.56332" lon="-121.7657"/>[m
[31m-   <point lat="38.56342" lon="-121.76572"/>[m
[31m-   <point lat="38.5636" lon="-121.76573"/>[m
[31m-   <point lat="38.56445" lon="-121.76561"/>[m
[31m-   <point lat="38.56631" lon="-121.76556"/>[m
[31m-   <point lat="38.56655" lon="-121.76572"/>[m
[31m-   <point lat="38.56664" lon="-121.76574"/>[m
[31m-   <point lat="38.5668" lon="-121.76583"/>[m
[31m-   <point lat="38.56694" lon="-121.76593"/>[m
[31m-   <point lat="38.5671" lon="-121.7661"/>[m
[31m-   <point lat="38.56751" lon="-121.76679"/>[m
[31m-   <point lat="38.56765" lon="-121.76696"/>[m
[31m-   <point lat="38.56773" lon="-121.76703"/>[m
[31m-   <point lat="38.56786" lon="-121.76711"/>[m
[31m-   <point lat="38.56799" lon="-121.76717"/>[m
[31m-   <point lat="38.56816" lon="-121.7672"/>[m
[31m-   <point lat="38.5682199" lon="-121.76711"/>[m
[31m-   <point lat="38.562" lon="-121.75955"/>[m
[31m-   <point lat="38.5621" lon="-121.75848"/>[m
[31m-   <point lat="38.56084" lon="-121.75846"/>[m
[31m-   <point lat="38.54375" lon="-121.74975"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.55856" lon="-121.75871"/>[m
[31m-   <point lat="38.55592" lon="-121.75874"/>[m
[31m-   <point lat="38.55229" lon="-121.75881"/>[m
[31m-   <point lat="38.5473" lon="-121.75887"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54343" lon="-121.74996"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="J" say="J Line, Anderson, Alverado, North Sycamore, U C Davis Silo" code="100" dest="to/from Silo">[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <stop lat="38.54402" title="La Rue Rd &amp; Orchard " lon="-121.7598299" dir="NB"/>[m
[31m-  <stop lat="38.5469099" title="Anderson Rd &amp; Russell Blvd " lon="-121.75857" dir="NB"/>[m
[31m-  <stop lat="38.55267" title="Anderson Rd &amp; Amherst Dr " lon="-121.7584999" dir="NB"/>[m
[31m-  <stop lat="38.55657" title="Anderson Rd &amp; Villanova Dr " lon="-121.7584199" dir="NB"/>[m
[31m-  <stop lat="38.5594499" title="Anderson Rd &amp; Hanover Dr " lon="-121.7584" dir="NB"/>[m
[31m-  <stop lat="38.5622099" title="Alvarado Ave &amp; Anderson " lon="-121.7593699" dir="WB"/>[m
[31m-  <stop lat="38.5620999" title="Alvarado Ave &amp; Sycamore " lon="-121.76325" dir="WB"/>[m
[31m-  <stop lat="38.5631399" title="Sycamore Ln &amp; Pepperwood Apts " lon="-121.76542" dir="NB"/>[m
[31m-  <stop lat="38.56445" title="Sycamore Ln &amp; Antelope " lon="-121.7656099" dir="NB"/>[m
[31m-  <stop lat="38.56631" title="Sycamore Ln &amp; Chaparral Apts " lon="-121.76556" dir="NB"/>[m
[31m-  <stop lat="38.5682499" title="North Sycamore Loop &amp;  " lon="-121.76699" dir="NB"/>[m
[31m-  <stop lat="38.56603" title="Sycamore Ln &amp; Chaparral Apts " lon="-121.7658399" dir="SB"/>[m
[31m-  <stop lat="38.5643599" title="Sycamore Ln &amp; Antelope " lon="-121.7658499" dir="SB"/>[m
[31m-  <stop lat="38.56253" title="Sycamore Ln &amp; Alvarado " lon="-121.76504" dir="SB"/>[m
[31m-  <stop lat="38.5619399" title="Alvarado Ave &amp; Sycamore " lon="-121.76301" dir="EB"/>[m
[31m-  <stop lat="38.5619999" title="Alvarado Ave &amp; Anderson " lon="-121.75955" dir="EB"/>[m
[31m-  <stop lat="38.5585599" title="Anderson Rd &amp; Hanover Dr " lon="-121.75871" dir="SB"/>[m
[31m-  <stop lat="38.55592" title="Anderson Rd &amp; Villanova Dr " lon="-121.7587399" dir="SB"/>[m
[31m-  <stop lat="38.55229" title="Anderson Rd &amp; Amherst Dr " lon="-121.7588099" dir="SB"/>[m
[31m-  <stop lat="38.5472999" title="Anderson Rd &amp; Russell Blvd " lon="-121.75887" dir="SB"/>[m
[31m-  <stop lat="38.5425099" title="La Rue Rd &amp; Orchard " lon="-121.7608899" dir="SB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.7557699" dir="EB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.562" lon="-121.75955"/>[m
[31m-   <point lat="38.5621" lon="-121.75848"/>[m
[31m-   <point lat="38.56084" lon="-121.75846"/>[m
[31m-   <point lat="38.55945" lon="-121.7584"/>[m
[31m-   <point lat="38.5621" lon="-121.75848"/>[m
[31m-   <point lat="38.56221" lon="-121.75937"/>[m
[31m-   <point lat="38.5621099" lon="-121.76256"/>[m
[31m-   <point lat="38.56207" lon="-121.7629"/>[m
[31m-   <point lat="38.5621" lon="-121.76325"/>[m
[31m-   <point lat="38.56173" lon="-121.76392"/>[m
[31m-   <point lat="38.5618399" lon="-121.76399"/>[m
[31m-   <point lat="38.5619299" lon="-121.76408"/>[m
[31m-   <point lat="38.56283" lon="-121.76534"/>[m
[31m-   <point lat="38.5629599" lon="-121.76549"/>[m
[31m-   <point lat="38.56304" lon="-121.76556"/>[m
[31m-   <point lat="38.56314" lon="-121.76542"/>[m
[31m-   <point lat="38.56313" lon="-121.76562"/>[m
[31m-   <point lat="38.56332" lon="-121.7657"/>[m
[31m-   <point lat="38.56342" lon="-121.76572"/>[m
[31m-   <point lat="38.5636" lon="-121.76573"/>[m
[31m-   <point lat="38.56445" lon="-121.76561"/>[m
[31m-   <point lat="38.56631" lon="-121.76556"/>[m
[31m-   <point lat="38.56655" lon="-121.76572"/>[m
[31m-   <point lat="38.56664" lon="-121.76574"/>[m
[31m-   <point lat="38.5668" lon="-121.76583"/>[m
[31m-   <point lat="38.56694" lon="-121.76593"/>[m
[31m-   <point lat="38.5671" lon="-121.7661"/>[m
[31m-   <point lat="38.56751" lon="-121.76679"/>[m
[31m-   <point lat="38.56765" lon="-121.76696"/>[m
[31m-   <point lat="38.56773" lon="-121.76703"/>[m
[31m-   <point lat="38.56786" lon="-121.76711"/>[m
[31m-   <point lat="38.56799" lon="-121.76717"/>[m
[31m-   <point lat="38.56816" lon="-121.7672"/>[m
[31m-   <point lat="38.5682199" lon="-121.76711"/>[m
[31m-   <point lat="38.56825" lon="-121.76699"/>[m
[31m-   <point lat="38.5683099" lon="-121.76705"/>[m
[31m-   <point lat="38.56836" lon="-121.76717"/>[m
[31m-   <point lat="38.56816" lon="-121.7672"/>[m
[31m-   <point lat="38.56804" lon="-121.76718"/>[m
[31m-   <point lat="38.56794" lon="-121.76715"/>[m
[31m-   <point lat="38.56778" lon="-121.76707"/>[m
[31m-   <point lat="38.56767" lon="-121.76698"/>[m
[31m-   <point lat="38.56755" lon="-121.76684"/>[m
[31m-   <point lat="38.5671" lon="-121.7661"/>[m
[31m-   <point lat="38.56694" lon="-121.76593"/>[m
[31m-   <point lat="38.5668" lon="-121.76583"/>[m
[31m-   <point lat="38.56664" lon="-121.76574"/>[m
[31m-   <point lat="38.56655" lon="-121.76572"/>[m
[31m-   <point lat="38.56638" lon="-121.76571"/>[m
[31m-   <point lat="38.56603" lon="-121.76584"/>[m
[31m-   <point lat="38.56436" lon="-121.76585"/>[m
[31m-   <point lat="38.5636" lon="-121.76573"/>[m
[31m-   <point lat="38.5635" lon="-121.76574"/>[m
[31m-   <point lat="38.56332" lon="-121.7657"/>[m
[31m-   <point lat="38.56321" lon="-121.76566"/>[m
[31m-   <point lat="38.56304" lon="-121.76556"/>[m
[31m-   <point lat="38.5629599" lon="-121.76549"/>[m
[31m-   <point lat="38.56283" lon="-121.76534"/>[m
[31m-   <point lat="38.56253" lon="-121.76504"/>[m
[31m-   <point lat="38.5619299" lon="-121.76408"/>[m
[31m-   <point lat="38.5618399" lon="-121.76399"/>[m
[31m-   <point lat="38.56173" lon="-121.76392"/>[m
[31m-   <point lat="38.56177" lon="-121.76381"/>[m
[31m-   <point lat="38.56194" lon="-121.76301"/>[m
[31m-   <point lat="38.56207" lon="-121.7629"/>[m
[31m-   <point lat="38.5621099" lon="-121.76256"/>[m
[31m-   <point lat="38.56212" lon="-121.76198"/>[m
[31m-   <point lat="38.55856" lon="-121.75871"/>[m
[31m-   <point lat="38.55592" lon="-121.75874"/>[m
[31m-   <point lat="38.55229" lon="-121.75881"/>[m
[31m-   <point lat="38.5473" lon="-121.75887"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54251" lon="-121.76089"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53907" lon="-121.75341"/>[m
[31m-   <point lat="38.53914" lon="-121.75335"/>[m
[31m-   <point lat="38.53923" lon="-121.75317"/>[m
[31m-   <point lat="38.53923" lon="-121.75304"/>[m
[31m-   <point lat="38.53917" lon="-121.75297"/>[m
[31m-   <point lat="38.53906" lon="-121.75293"/>[m
[31m-   <point lat="38.53914" lon="-121.75309"/>[m
[31m-   <point lat="38.53907" lon="-121.75313"/>[m
[31m-   <point lat="38.53907" lon="-121.75341"/>[m
[31m-   <point lat="38.53908" lon="-121.75503"/>[m
[31m-   <point lat="38.53917" lon="-121.75623"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.54284" lon="-121.76069"/>[m
[31m-   <point lat="38.54329" lon="-121.76051"/>[m
[31m-   <point lat="38.54374" lon="-121.7602"/>[m
[31m-   <point lat="38.54402" lon="-121.75983"/>[m
[31m-   <point lat="38.54603" lon="-121.75884"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.5469099" lon="-121.75857"/>[m
[31m-   <point lat="38.55267" lon="-121.7585"/>[m
[31m-   <point lat="38.55657" lon="-121.75842"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="K" say="K Line, Lake Boulevard, Arthur Street, U C Davis Memorial Union" code="110" dest="Night Svc to/from Memorial Union">[m
[31m-  <stop lat="38.5436399" title="Memorial Union (K Line) &amp; Howard Way " lon="-121.7501" dir="SB"/>[m
[31m-  <stop lat="38.5464899" title="Russell Blvd &amp; Sycamore Ln " lon="-121.7635" dir="WB"/>[m
[31m-  <stop lat="38.5465499" title="Russell Blvd &amp; Arthur St " lon="-121.7710199" dir="WB"/>[m
[31m-  <stop lat="38.5467999" title="Russell Blvd &amp; Arlington Farms " lon="-121.78585" dir="WB"/>[m
[31m-  <stop lat="38.54895" title="Lake Blvd &amp; Portage Bay " lon="-121.78849" dir="NB"/>[m
[31m-  <stop lat="38.5504399" title="Lake Blvd &amp; Salem Ave " lon="-121.7873" dir="NB"/>[m
[31m-  <stop lat="38.5528099" title="Lake Blvd &amp; 1050 " lon="-121.7873499" dir="NB"/>[m
[31m-  <stop lat="38.5549699" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78691" dir="SB"/>[m
[31m-  <stop lat="38.55371" title="Arlington Blvd &amp; Cabot St " lon="-121.7848399" dir="SB"/>[m
[31m-  <stop lat="38.5534699" title="Arlington Blvd &amp; Shasta Dr " lon="-121.7813699" dir="SB"/>[m
[31m-  <stop lat="38.55028" title="Arlington Blvd &amp; Westernesse Rd " lon="-121.7792699" dir="SB"/>[m
[31m-  <stop lat="38.54877" title="Arlington Blvd &amp; Bucklebury Rd " lon="-121.7788" dir="SB"/>[m
[31m-  <stop lat="38.5497099" title="Adams St &amp; 720 Adams St " lon="-121.76906" dir="NB"/>[m
[31m-  <stop lat="38.5514199" title="North Adams &amp; Arthur " lon="-121.77013" dir="WB"/>[m
[31m-  <stop lat="38.54802" title="Arthur St &amp; Alameda Ave " lon="-121.7706799" dir="SB"/>[m
[31m-  <stop lat="38.5462399" title="Russell Blvd &amp; Sycamore Ln " lon="-121.762" dir="EB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.5468" lon="-121.78585"/>[m
[31m-   <point lat="38.54671" lon="-121.78935"/>[m
[31m-   <point lat="38.54768" lon="-121.78931"/>[m
[31m-   <point lat="38.54797" lon="-121.78926"/>[m
[31m-   <point lat="38.5482299" lon="-121.78919"/>[m
[31m-   <point lat="38.5486" lon="-121.789"/>[m
[31m-   <point lat="38.54902" lon="-121.78868"/>[m
[31m-   <point lat="38.54895" lon="-121.78849"/>[m
[31m-   <point lat="38.54966" lon="-121.78801"/>[m
[31m-   <point lat="38.54992" lon="-121.78777"/>[m
[31m-   <point lat="38.5504" lon="-121.78746"/>[m
[31m-   <point lat="38.55044" lon="-121.7873"/>[m
[31m-   <point lat="38.55069" lon="-121.78736"/>[m
[31m-   <point lat="38.55102" lon="-121.7873"/>[m
[31m-   <point lat="38.5515" lon="-121.78726"/>[m
[31m-   <point lat="38.55169" lon="-121.78727"/>[m
[31m-   <point lat="38.55183" lon="-121.78731"/>[m
[31m-   <point lat="38.55281" lon="-121.78735"/>[m
[31m-   <point lat="38.55391" lon="-121.78771"/>[m
[31m-   <point lat="38.55489" lon="-121.78771"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.54364" lon="-121.7501"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.54401" lon="-121.74975"/>[m
[31m-   <point lat="38.54394" lon="-121.75012"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54845" lon="-121.76987"/>[m
[31m-   <point lat="38.54845" lon="-121.76954"/>[m
[31m-   <point lat="38.54843" lon="-121.76934"/>[m
[31m-   <point lat="38.54846" lon="-121.76922"/>[m
[31m-   <point lat="38.54854" lon="-121.76915"/>[m
[31m-   <point lat="38.54875" lon="-121.76918"/>[m
[31m-   <point lat="38.54624" lon="-121.762"/>[m
[31m-   <point lat="38.54628" lon="-121.7566"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54394" lon="-121.75012"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55322" lon="-121.77995"/>[m
[31m-   <point lat="38.55332" lon="-121.77979"/>[m
[31m-   <point lat="38.55342" lon="-121.77944"/>[m
[31m-   <point lat="38.55345" lon="-121.77919"/>[m
[31m-   <point lat="38.55332" lon="-121.77895"/>[m
[31m-   <point lat="38.55346" lon="-121.77794"/>[m
[31m-   <point lat="38.55344" lon="-121.77739"/>[m
[31m-   <point lat="38.5534" lon="-121.7772"/>[m
[31m-   <point lat="38.55293" lon="-121.77619"/>[m
[31m-   <point lat="38.55288" lon="-121.77599"/>[m
[31m-   <point lat="38.55276" lon="-121.77601"/>[m
[31m-   <point lat="38.55286" lon="-121.77582"/>[m
[31m-   <point lat="38.5528199" lon="-121.77179"/>[m
[31m-   <point lat="38.55283" lon="-121.77158"/>[m
[31m-   <point lat="38.55287" lon="-121.7713"/>[m
[31m-   <point lat="38.55281" lon="-121.77111"/>[m
[31m-   <point lat="38.55292" lon="-121.77107"/>[m
[31m-   <point lat="38.553" lon="-121.77081"/>[m
[31m-   <point lat="38.55281" lon="-121.77072"/>[m
[31m-   <point lat="38.55205" lon="-121.77043"/>[m
[31m-   <point lat="38.55163" lon="-121.77034"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-   <point lat="38.5516099" lon="-121.77051"/>[m
[31m-   <point lat="38.55133" lon="-121.77032"/>[m
[31m-   <point lat="38.5506" lon="-121.77037"/>[m
[31m-   <point lat="38.5489" lon="-121.77037"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54802" lon="-121.77068"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-   <point lat="38.54971" lon="-121.76906"/>[m
[31m-   <point lat="38.55089" lon="-121.76916"/>[m
[31m-   <point lat="38.5511399" lon="-121.76911"/>[m
[31m-   <point lat="38.55124" lon="-121.76913"/>[m
[31m-   <point lat="38.55134" lon="-121.76933"/>[m
[31m-   <point lat="38.55133" lon="-121.76953"/>[m
[31m-   <point lat="38.55134" lon="-121.76998"/>[m
[31m-   <point lat="38.55142" lon="-121.77013"/>[m
[31m-   <point lat="38.55133" lon="-121.77032"/>[m
[31m-   <point lat="38.5506" lon="-121.77037"/>[m
[31m-   <point lat="38.5489" lon="-121.77037"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54802" lon="-121.77068"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="K" say="K Line, Lake Boulevard, Arthur Street, U C Davis Memorial Union" code="110" dest="Day Service to/from Memorial Union">[m
[31m-  <stop lat="38.5436399" title="Memorial Union (K Line) &amp; Howard Way " lon="-121.7501" dir="SB"/>[m
[31m-  <stop lat="38.5464899" title="Russell Blvd &amp; Sycamore Ln " lon="-121.7635" dir="WB"/>[m
[31m-  <stop lat="38.5465499" title="Russell Blvd &amp; Arthur St " lon="-121.7710199" dir="WB"/>[m
[31m-  <stop lat="38.5467999" title="Russell Blvd &amp; Arlington Farms " lon="-121.78585" dir="WB"/>[m
[31m-  <stop lat="38.54895" title="Lake Blvd &amp; Portage Bay " lon="-121.78849" dir="NB"/>[m
[31m-  <stop lat="38.5504399" title="Lake Blvd &amp; Salem Ave " lon="-121.7873" dir="NB"/>[m
[31m-  <stop lat="38.5528099" title="Lake Blvd &amp; 1050 " lon="-121.7873499" dir="NB"/>[m
[31m-  <stop lat="38.5549699" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78691" dir="SB"/>[m
[31m-  <stop lat="38.55371" title="Arlington Blvd &amp; Cabot St " lon="-121.7848399" dir="SB"/>[m
[31m-  <stop lat="38.5534699" title="Arlington Blvd &amp; Shasta Dr " lon="-121.7813699" dir="SB"/>[m
[31m-  <stop lat="38.55332" title="Humboldt Ave &amp; Arlington Blvd " lon="-121.7789499" dir="EB"/>[m
[31m-  <stop lat="38.55276" title="Humboldt Ave &amp; Imperial  " lon="-121.7760099" dir="EB"/>[m
[31m-  <stop lat="38.55281" title="Humboldt Ave &amp; Arthur St " lon="-121.7711099" dir="EB"/>[m
[31m-  <stop lat="38.5516099" title="Arthur St &amp; North Adams St " lon="-121.77051" dir="SB"/>[m
[31m-  <stop lat="38.54802" title="Arthur St &amp; Alameda Ave " lon="-121.7706799" dir="SB"/>[m
[31m-  <stop lat="38.5462399" title="Russell Blvd &amp; Sycamore Ln " lon="-121.762" dir="EB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.5468" lon="-121.78585"/>[m
[31m-   <point lat="38.54671" lon="-121.78935"/>[m
[31m-   <point lat="38.54768" lon="-121.78931"/>[m
[31m-   <point lat="38.54797" lon="-121.78926"/>[m
[31m-   <point lat="38.5482299" lon="-121.78919"/>[m
[31m-   <point lat="38.5486" lon="-121.789"/>[m
[31m-   <point lat="38.54902" lon="-121.78868"/>[m
[31m-   <point lat="38.54895" lon="-121.78849"/>[m
[31m-   <point lat="38.54966" lon="-121.78801"/>[m
[31m-   <point lat="38.54992" lon="-121.78777"/>[m
[31m-   <point lat="38.5504" lon="-121.78746"/>[m
[31m-   <point lat="38.55044" lon="-121.7873"/>[m
[31m-   <point lat="38.55069" lon="-121.78736"/>[m
[31m-   <point lat="38.55102" lon="-121.7873"/>[m
[31m-   <point lat="38.5515" lon="-121.78726"/>[m
[31m-   <point lat="38.55169" lon="-121.78727"/>[m
[31m-   <point lat="38.55183" lon="-121.78731"/>[m
[31m-   <point lat="38.55281" lon="-121.78735"/>[m
[31m-   <point lat="38.55391" lon="-121.78771"/>[m
[31m-   <point lat="38.55489" lon="-121.78771"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.54364" lon="-121.7501"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.54401" lon="-121.74975"/>[m
[31m-   <point lat="38.54394" lon="-121.75012"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54845" lon="-121.76987"/>[m
[31m-   <point lat="38.54845" lon="-121.76954"/>[m
[31m-   <point lat="38.54843" lon="-121.76934"/>[m
[31m-   <point lat="38.54846" lon="-121.76922"/>[m
[31m-   <point lat="38.54854" lon="-121.76915"/>[m
[31m-   <point lat="38.54875" lon="-121.76918"/>[m
[31m-   <point lat="38.54624" lon="-121.762"/>[m
[31m-   <point lat="38.54628" lon="-121.7566"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54394" lon="-121.75012"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55322" lon="-121.77995"/>[m
[31m-   <point lat="38.55332" lon="-121.77979"/>[m
[31m-   <point lat="38.55342" lon="-121.77944"/>[m
[31m-   <point lat="38.55345" lon="-121.77919"/>[m
[31m-   <point lat="38.55332" lon="-121.77895"/>[m
[31m-   <point lat="38.55346" lon="-121.77794"/>[m
[31m-   <point lat="38.55344" lon="-121.77739"/>[m
[31m-   <point lat="38.5534" lon="-121.7772"/>[m
[31m-   <point lat="38.55293" lon="-121.77619"/>[m
[31m-   <point lat="38.55288" lon="-121.77599"/>[m
[31m-   <point lat="38.55276" lon="-121.77601"/>[m
[31m-   <point lat="38.55286" lon="-121.77582"/>[m
[31m-   <point lat="38.5528199" lon="-121.77179"/>[m
[31m-   <point lat="38.55283" lon="-121.77158"/>[m
[31m-   <point lat="38.55287" lon="-121.7713"/>[m
[31m-   <point lat="38.55281" lon="-121.77111"/>[m
[31m-   <point lat="38.55292" lon="-121.77107"/>[m
[31m-   <point lat="38.553" lon="-121.77081"/>[m
[31m-   <point lat="38.55281" lon="-121.77072"/>[m
[31m-   <point lat="38.55205" lon="-121.77043"/>[m
[31m-   <point lat="38.55163" lon="-121.77034"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54686" lon="-121.77761"/>[m
[31m-   <point lat="38.54662" lon="-121.77794"/>[m
[31m-   <point lat="38.54656" lon="-121.77806"/>[m
[31m-   <point lat="38.54653" lon="-121.77821"/>[m
[31m-   <point lat="38.54654" lon="-121.77955"/>[m
[31m-   <point lat="38.5516099" lon="-121.77051"/>[m
[31m-   <point lat="38.55133" lon="-121.77032"/>[m
[31m-   <point lat="38.5506" lon="-121.77037"/>[m
[31m-   <point lat="38.5489" lon="-121.77037"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54802" lon="-121.77068"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-   <point lat="38.54971" lon="-121.76906"/>[m
[31m-   <point lat="38.55089" lon="-121.76916"/>[m
[31m-   <point lat="38.5511399" lon="-121.76911"/>[m
[31m-   <point lat="38.55124" lon="-121.76913"/>[m
[31m-   <point lat="38.55134" lon="-121.76933"/>[m
[31m-   <point lat="38.55133" lon="-121.76953"/>[m
[31m-   <point lat="38.55134" lon="-121.76998"/>[m
[31m-   <point lat="38.55142" lon="-121.77013"/>[m
[31m-   <point lat="38.55133" lon="-121.77032"/>[m
[31m-   <point lat="38.5506" lon="-121.77037"/>[m
[31m-   <point lat="38.5489" lon="-121.77037"/>[m
[31m-   <point lat="38.54854" lon="-121.77043"/>[m
[31m-   <point lat="38.54818" lon="-121.77054"/>[m
[31m-   <point lat="38.54802" lon="-121.77068"/>[m
[31m-   <point lat="38.54646" lon="-121.77057"/>[m
[31m-   <point lat="38.54641" lon="-121.76956"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="L" say="L Line, East Eighth street, Pole Line, Moore, Loyola, U C Davis Silo" code="120" dest="to/from Silo">[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <stop lat="38.53919" title="Hutchison Dr &amp; Art Building " lon="-121.74837" dir="EB"/>[m
[31m-  <stop lat="38.5400299" title="Hutchison Dr &amp; A St " lon="-121.7460499" dir="EB"/>[m
[31m-  <stop lat="38.54528" title="B St &amp; 4th St " lon="-121.74493" dir="NB"/>[m
[31m-  <stop lat="38.5469999" title="B St &amp; 5th St " lon="-121.74544" dir="NB"/>[m
[31m-  <stop lat="38.54965" title="B St &amp; 7th St " lon="-121.74606" dir="NB"/>[m
[31m-  <stop lat="38.5509299" title="8th St &amp; D St " lon="-121.74401" dir="EB"/>[m
[31m-  <stop lat="38.55142" title="8th St &amp; G St " lon="-121.7412699" dir="EB"/>[m
[31m-  <stop lat="38.5516999" title="8th St &amp; J St " lon="-121.73892" dir="EB"/>[m
[31m-  <stop lat="38.55278" title="8th St &amp; L St " lon="-121.7343599" dir="EB"/>[m
[31m-  <stop lat="38.55329" title="8th St &amp; Chestnut Ln " lon="-121.7303399" dir="EB"/>[m
[31m-  <stop lat="38.55396" title="Pole Line Rd &amp; 8th St " lon="-121.72726" dir="NB"/>[m
[31m-  <stop lat="38.55616" title="Pole Line Rd &amp; Loyola Dr " lon="-121.72732" dir="NB"/>[m
[31m-  <stop lat="38.5614499" title="Pole Line Rd &amp; Claremont Dr " lon="-121.73099" dir="NB"/>[m
[31m-  <stop lat="38.56436" title="Pole Line Rd &amp; Picasso Ave " lon="-121.73086" dir="NB"/>[m
[31m-  <stop lat="38.5666099" title="Pole Line &amp; Donner " lon="-121.73075" dir="NB"/>[m
[31m-  <stop lat="38.5702599" title="Moore Blvd &amp; Pole Line Rd " lon="-121.72919" dir="EB"/>[m
[31m-  <stop lat="38.5686" title="Moore Blvd &amp; Rockwell " lon="-121.72665" dir="EB"/>[m
[31m-  <stop lat="38.56502" title="Moore Blvd &amp; Raphael " lon="-121.7234599" dir="EB"/>[m
[31m-  <stop lat="38.56442" title="Moore Blvd &amp; Wright Blvd " lon="-121.7191699" dir="EB"/>[m
[31m-  <stop lat="38.5626699" title="Monarch Ln &amp; Campbell " lon="-121.7146" dir="SB"/>[m
[31m-  <stop lat="38.56198" title="Temple Dr &amp; Balsam Pl " lon="-121.7171999" dir="WB"/>[m
[31m-  <stop lat="38.55824" title="Tulip Ln &amp; Cascade Pl " lon="-121.71741" dir="SB"/>[m
[31m-  <stop lat="38.5579" title="Loyola Dr &amp; Regis Dr " lon="-121.7203099" dir="WB"/>[m
[31m-  <stop lat="38.5577699" title="Loyola Dr &amp; Nutmeg Ln " lon="-121.723" dir="WB"/>[m
[31m-  <stop lat="38.5575999" title="Loyola Dr &amp; Whittier Dr " lon="-121.72734" dir="WB"/>[m
[31m-  <stop lat="38.5551899" title="Pole Line &amp; Wahl Way " lon="-121.7274799" dir="SB"/>[m
[31m-  <stop lat="38.5534299" title="East 8th Street &amp; Pole Line Road " lon="-121.72763" dir="WB"/>[m
[31m-  <stop lat="38.5535099" title="8th St &amp; Chestnut Ln " lon="-121.7313099" dir="WB"/>[m
[31m-  <stop lat="38.5526699" title="8th St &amp; L St " lon="-121.73544" dir="WB"/>[m
[31m-  <stop lat="38.5519199" title="8th St &amp; J St " lon="-121.739" dir="WB"/>[m
[31m-  <stop lat="38.55159" title="8th St &amp; G St " lon="-121.7412699" dir="WB"/>[m
[31m-  <stop lat="38.5510099" title="8th St &amp; D St " lon="-121.74472" dir="WB"/>[m
[31m-  <stop lat="38.5489299" title="B St &amp; 7th St " lon="-121.74617" dir="SB"/>[m
[31m-  <stop lat="38.54505" title="B St &amp; 4th St  " lon="-121.74513" dir="SB"/>[m
[31m-  <stop lat="38.54049" title="A St &amp; Hutchison " lon="-121.74601" dir="SB"/>[m
[31m-  <stop lat="38.5391799" title="Hutchison &amp; Shields Library " lon="-121.74999" dir="WB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.57026" lon="-121.72919"/>[m
[31m-   <point lat="38.57036" lon="-121.72917"/>[m
[31m-   <point lat="38.5703" lon="-121.72872"/>[m
[31m-   <point lat="38.57026" lon="-121.72855"/>[m
[31m-   <point lat="38.57023" lon="-121.72836"/>[m
[31m-   <point lat="38.57017" lon="-121.72813"/>[m
[31m-   <point lat="38.56985" lon="-121.72751"/>[m
[31m-   <point lat="38.56975" lon="-121.72736"/>[m
[31m-   <point lat="38.5696299" lon="-121.72723"/>[m
[31m-   <point lat="38.56954" lon="-121.72708"/>[m
[31m-   <point lat="38.56928" lon="-121.72689"/>[m
[31m-   <point lat="38.56891" lon="-121.72668"/>[m
[31m-   <point lat="38.5686" lon="-121.72665"/>[m
[31m-   <point lat="38.5685" lon="-121.72648"/>[m
[31m-   <point lat="38.56795" lon="-121.7262"/>[m
[31m-   <point lat="38.56785" lon="-121.72612"/>[m
[31m-   <point lat="38.5676599" lon="-121.72594"/>[m
[31m-   <point lat="38.56738" lon="-121.72563"/>[m
[31m-   <point lat="38.56722" lon="-121.72541"/>[m
[31m-   <point lat="38.56701" lon="-121.72504"/>[m
[31m-   <point lat="38.56674" lon="-121.72465"/>[m
[31m-   <point lat="38.56667" lon="-121.72457"/>[m
[31m-   <point lat="38.56545" lon="-121.72381"/>[m
[31m-   <point lat="38.56519" lon="-121.72352"/>[m
[31m-   <point lat="38.5650199" lon="-121.72346"/>[m
[31m-   <point lat="38.56505" lon="-121.7233"/>[m
[31m-   <point lat="38.56488" lon="-121.72296"/>[m
[31m-   <point lat="38.5644" lon="-121.72189"/>[m
[31m-   <point lat="38.56426" lon="-121.7214"/>[m
[31m-   <point lat="38.56422" lon="-121.7211"/>[m
[31m-   <point lat="38.56419" lon="-121.72071"/>[m
[31m-   <point lat="38.5642" lon="-121.72049"/>[m
[31m-   <point lat="38.56427" lon="-121.71988"/>[m
[31m-   <point lat="38.56435" lon="-121.71957"/>[m
[31m-   <point lat="38.56445" lon="-121.71933"/>[m
[31m-   <point lat="38.56442" lon="-121.71917"/>[m
[31m-   <point lat="38.56452" lon="-121.71908"/>[m
[31m-   <point lat="38.5648" lon="-121.71871"/>[m
[31m-   <point lat="38.5649299" lon="-121.71858"/>[m
[31m-   <point lat="38.56478" lon="-121.71834"/>[m
[31m-   <point lat="38.56456" lon="-121.71809"/>[m
[31m-   <point lat="38.56429" lon="-121.71789"/>[m
[31m-   <point lat="38.56412" lon="-121.71779"/>[m
[31m-   <point lat="38.56391" lon="-121.71771"/>[m
[31m-   <point lat="38.56368" lon="-121.71768"/>[m
[31m-   <point lat="38.56344" lon="-121.71763"/>[m
[31m-   <point lat="38.56372" lon="-121.71462"/>[m
[31m-   <point lat="38.56322" lon="-121.71454"/>[m
[31m-   <point lat="38.56267" lon="-121.7146"/>[m
[31m-   <point lat="38.56235" lon="-121.7144"/>[m
[31m-   <point lat="38.56219" lon="-121.71435"/>[m
[31m-   <point lat="38.56207" lon="-121.71485"/>[m
[31m-   <point lat="38.56203" lon="-121.71534"/>[m
[31m-   <point lat="38.56198" lon="-121.7172"/>[m
[31m-   <point lat="38.5618399" lon="-121.71752"/>[m
[31m-   <point lat="38.56157" lon="-121.71752"/>[m
[31m-   <point lat="38.5613" lon="-121.71756"/>[m
[31m-   <point lat="38.5611" lon="-121.71757"/>[m
[31m-   <point lat="38.55969" lon="-121.71744"/>[m
[31m-   <point lat="38.55959" lon="-121.71746"/>[m
[31m-   <point lat="38.55824" lon="-121.71741"/>[m
[31m-   <point lat="38.55818" lon="-121.71728"/>[m
[31m-   <point lat="38.55786" lon="-121.7173"/>[m
[31m-   <point lat="38.55777" lon="-121.71734"/>[m
[31m-   <point lat="38.55767" lon="-121.71746"/>[m
[31m-   <point lat="38.55777" lon="-121.71765"/>[m
[31m-   <point lat="38.55782" lon="-121.71777"/>[m
[31m-   <point lat="38.55789" lon="-121.71805"/>[m
[31m-   <point lat="38.55791" lon="-121.71818"/>[m
[31m-   <point lat="38.5578999" lon="-121.72031"/>[m
[31m-   <point lat="38.5576999" lon="-121.72271"/>[m
[31m-   <point lat="38.55777" lon="-121.723"/>[m
[31m-   <point lat="38.55771" lon="-121.72458"/>[m
[31m-   <point lat="38.55759" lon="-121.72649"/>[m
[31m-   <point lat="38.55754" lon="-121.7269"/>[m
[31m-   <point lat="38.54893" lon="-121.74617"/>[m
[31m-   <point lat="38.54783" lon="-121.74582"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54505" lon="-121.74513"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54049" lon="-121.74601"/>[m
[31m-   <point lat="38.53999" lon="-121.74575"/>[m
[31m-   <point lat="38.53994" lon="-121.74604"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53918" lon="-121.74999"/>[m
[31m-   <point lat="38.53907" lon="-121.75201"/>[m
[31m-   <point lat="38.53907" lon="-121.75282"/>[m
[31m-   <point lat="38.55192" lon="-121.739"/>[m
[31m-   <point lat="38.55183" lon="-121.73936"/>[m
[31m-   <point lat="38.5518" lon="-121.73971"/>[m
[31m-   <point lat="38.55159" lon="-121.74127"/>[m
[31m-   <point lat="38.55101" lon="-121.74472"/>[m
[31m-   <point lat="38.5506699" lon="-121.74637"/>[m
[31m-   <point lat="38.55001" lon="-121.74622"/>[m
[31m-   <point lat="38.56145" lon="-121.73099"/>[m
[31m-   <point lat="38.56188" lon="-121.73114"/>[m
[31m-   <point lat="38.56216" lon="-121.73114"/>[m
[31m-   <point lat="38.56436" lon="-121.73086"/>[m
[31m-   <point lat="38.56603" lon="-121.73086"/>[m
[31m-   <point lat="38.56661" lon="-121.73075"/>[m
[31m-   <point lat="38.56811" lon="-121.7308"/>[m
[31m-   <point lat="38.5703699" lon="-121.7307"/>[m
[31m-   <point lat="38.57038" lon="-121.73028"/>[m
[31m-   <point lat="38.53933" lon="-121.75368"/>[m
[31m-   <point lat="38.53943" lon="-121.75359"/>[m
[31m-   <point lat="38.53945" lon="-121.75321"/>[m
[31m-   <point lat="38.53939" lon="-121.75299"/>[m
[31m-   <point lat="38.53907" lon="-121.75282"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53919" lon="-121.74837"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.53994" lon="-121.74604"/>[m
[31m-   <point lat="38.54003" lon="-121.74605"/>[m
[31m-   <point lat="38.53999" lon="-121.74575"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54528" lon="-121.74493"/>[m
[31m-   <point lat="38.5576" lon="-121.72734"/>[m
[31m-   <point lat="38.5575199" lon="-121.72742"/>[m
[31m-   <point lat="38.55749" lon="-121.7277"/>[m
[31m-   <point lat="38.5572" lon="-121.72757"/>[m
[31m-   <point lat="38.55687" lon="-121.72749"/>[m
[31m-   <point lat="38.5565799" lon="-121.72745"/>[m
[31m-   <point lat="38.55519" lon="-121.72748"/>[m
[31m-   <point lat="38.55488" lon="-121.72734"/>[m
[31m-   <point lat="38.55427" lon="-121.72739"/>[m
[31m-   <point lat="38.55362" lon="-121.72736"/>[m
[31m-   <point lat="38.55336" lon="-121.72732"/>[m
[31m-   <point lat="38.55343" lon="-121.72763"/>[m
[31m-   <point lat="38.55336" lon="-121.72953"/>[m
[31m-   <point lat="38.55338" lon="-121.72993"/>[m
[31m-   <point lat="38.55351" lon="-121.73131"/>[m
[31m-   <point lat="38.55339" lon="-121.73178"/>[m
[31m-   <point lat="38.55321" lon="-121.73334"/>[m
[31m-   <point lat="38.5531099" lon="-121.73377"/>[m
[31m-   <point lat="38.55267" lon="-121.73544"/>[m
[31m-   <point lat="38.55181" lon="-121.73791"/>[m
[31m-   <point lat="38.55176" lon="-121.73826"/>[m
[31m-   <point lat="38.55177" lon="-121.73858"/>[m
[31m-   <point lat="38.5518" lon="-121.73871"/>[m
[31m-   <point lat="38.547" lon="-121.74544"/>[m
[31m-   <point lat="38.54783" lon="-121.74582"/>[m
[31m-   <point lat="38.54937" lon="-121.74611"/>[m
[31m-   <point lat="38.54965" lon="-121.74606"/>[m
[31m-   <point lat="38.5506699" lon="-121.74637"/>[m
[31m-   <point lat="38.55083" lon="-121.74528"/>[m
[31m-   <point lat="38.55093" lon="-121.74401"/>[m
[31m-   <point lat="38.55142" lon="-121.74127"/>[m
[31m-   <point lat="38.5518" lon="-121.73971"/>[m
[31m-   <point lat="38.55183" lon="-121.73936"/>[m
[31m-   <point lat="38.5516999" lon="-121.73892"/>[m
[31m-   <point lat="38.5518" lon="-121.73871"/>[m
[31m-   <point lat="38.55177" lon="-121.73858"/>[m
[31m-   <point lat="38.55176" lon="-121.73826"/>[m
[31m-   <point lat="38.55177" lon="-121.73813"/>[m
[31m-   <point lat="38.55181" lon="-121.73791"/>[m
[31m-   <point lat="38.55278" lon="-121.73436"/>[m
[31m-   <point lat="38.55321" lon="-121.73334"/>[m
[31m-   <point lat="38.55335" lon="-121.73221"/>[m
[31m-   <point lat="38.55342" lon="-121.73109"/>[m
[31m-   <point lat="38.55342" lon="-121.73086"/>[m
[31m-   <point lat="38.5532899" lon="-121.73034"/>[m
[31m-   <point lat="38.55336" lon="-121.72732"/>[m
[31m-   <point lat="38.55362" lon="-121.72736"/>[m
[31m-   <point lat="38.5539599" lon="-121.72726"/>[m
[31m-   <point lat="38.55427" lon="-121.72739"/>[m
[31m-   <point lat="38.55488" lon="-121.72734"/>[m
[31m-   <point lat="38.55616" lon="-121.72732"/>[m
[31m-   <point lat="38.55687" lon="-121.72749"/>[m
[31m-   <point lat="38.5572" lon="-121.72757"/>[m
[31m-   <point lat="38.5576" lon="-121.72774"/>[m
[31m-   <point lat="38.55786" lon="-121.72794"/>[m
[31m-   <point lat="38.55803" lon="-121.72811"/>[m
[31m-   <point lat="38.55814" lon="-121.7282"/>[m
[31m-   <point lat="38.55851" lon="-121.72867"/>[m
[31m-   <point lat="38.55859" lon="-121.72879"/>[m
[31m-   <point lat="38.5594899" lon="-121.73015"/>[m
[31m-   <point lat="38.55954" lon="-121.73025"/>[m
[31m-   <point lat="38.55971" lon="-121.73046"/>[m
[31m-   <point lat="38.55999" lon="-121.7307"/>[m
[31m-   <point lat="38.56009" lon="-121.73077"/>[m
[31m-   <point lat="38.56023" lon="-121.73085"/>[m
[31m-   <point lat="38.56085" lon="-121.73107"/>[m
[31m-   <point lat="38.5613699" lon="-121.73116"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="M" say="M Line, B street, Cowell Boulevard, Drew Avenue, U C Davis Memorial Union" code="130" dest="to/from Memorial Union">[m
[31m-  <stop lat="38.5434399" title="Memorial Union (M Line) &amp; Howard Way " lon="-121.75006" dir="SB"/>[m
[31m-  <stop lat="38.5450499" title="B St &amp; 4th St  " lon="-121.7451299" dir="SB"/>[m
[31m-  <stop lat="38.5415199" title="1st St &amp; C St " lon="-121.74254" dir="EB"/>[m
[31m-  <stop lat="38.54064" title="Richards Blvd &amp; Olive Dr " lon="-121.73854" dir="SB"/>[m
[31m-  <stop lat="38.5398399" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73081" dir="EB"/>[m
[31m-  <stop lat="38.54019" title="Drew Ave &amp; Cowell Blvd " lon="-121.72697" dir="NB"/>[m
[31m-  <stop lat="38.5436" title="Drew &amp; Research Park Drive " lon="-121.72735" dir="NB"/>[m
[31m-  <stop lat="38.5432399" title="Cowell Blvd &amp; Halsey Cir " lon="-121.72253" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Valdora St " lon="-121.72509" dir="WB"/>[m
[31m-  <stop lat="38.5400399" title="Cowell Blvd &amp; Drew Ave " lon="-121.7275399" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.7302099" dir="WB"/>[m
[31m-  <stop lat="38.5407999" title="Richards Blvd &amp; Olive Dr " lon="-121.7383199" dir="NB"/>[m
[31m-  <stop lat="38.5418199" title="1st St &amp; D St " lon="-121.74205" dir="WB"/>[m
[31m-  <stop lat="38.54528" title="B St &amp; 4th St " lon="-121.74493" dir="NB"/>[m
[31m-  <stop lat="38.5463799" title="Russell Blvd &amp; A St " lon="-121.7468699" dir="WB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54182" lon="-121.74205"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54201" lon="-121.74416"/>[m
[31m-   <point lat="38.54528" lon="-121.74493"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54623" lon="-121.74593"/>[m
[31m-   <point lat="38.54638" lon="-121.74687"/>[m
[31m-   <point lat="38.54623" lon="-121.74893"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54019" lon="-121.72697"/>[m
[31m-   <point lat="38.54032" lon="-121.72709"/>[m
[31m-   <point lat="38.5436" lon="-121.72735"/>[m
[31m-   <point lat="38.54406" lon="-121.72752"/>[m
[31m-   <point lat="38.54444" lon="-121.7276"/>[m
[31m-   <point lat="38.54474" lon="-121.72779"/>[m
[31m-   <point lat="38.54514" lon="-121.72675"/>[m
[31m-   <point lat="38.54548" lon="-121.72548"/>[m
[31m-   <point lat="38.54552" lon="-121.72495"/>[m
[31m-   <point lat="38.54547" lon="-121.72466"/>[m
[31m-   <point lat="38.5447599" lon="-121.72203"/>[m
[31m-   <point lat="38.54366" lon="-121.72222"/>[m
[31m-   <point lat="38.54324" lon="-121.72253"/>[m
[31m-   <point lat="38.54196" lon="-121.7226"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.54012" lon="-121.73021"/>[m
[31m-   <point lat="38.53991" lon="-121.73137"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.54051" lon="-121.73772"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.54152" lon="-121.74254"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.54064" lon="-121.73854"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53987" lon="-121.73208"/>[m
[31m-   <point lat="38.5434399" lon="-121.75006"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.5435" lon="-121.74958"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54505" lon="-121.74513"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="O" say="O Line, Shopper's Shuttle, Downtown, Target, West Village,  U C Davis Silo" code="150" dest="Weekends to/from Silo">[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <stop lat="38.53919" title="Hutchison Dr &amp; Art Building " lon="-121.74837" dir="EB"/>[m
[31m-  <stop lat="38.54003" title="Hutchison Dr &amp; A St " lon="-121.7460499" dir="EB"/>[m
[31m-  <stop lat="38.54266" title="2nd St &amp; B St " lon="-121.7439099" dir="EB"/>[m
[31m-  <stop lat="38.54314" title="2nd St &amp; E St " lon="-121.7411799" dir="EB"/>[m
[31m-  <stop lat="38.5439899" title="H St &amp; Amtrak Station " lon="-121.73802" dir="NB"/>[m
[31m-  <stop lat="38.54564" title="3rd St &amp; K St " lon="-121.7344999" dir="EB"/>[m
[31m-  <stop lat="38.5478399" title="L St &amp; 4th St " lon="-121.7341199" dir="NB"/>[m
[31m-  <stop lat="38.54856" title="5th St &amp; Pole Line Rd " lon="-121.72763" dir="EB"/>[m
[31m-  <stop lat="38.54874" title="5th St &amp; Pole Line Rd " lon="-121.72565" dir="EB"/>[m
[31m-  <stop lat="38.5517799" title="5th St &amp; Cantrill  " lon="-121.71904" dir="EB"/>[m
[31m-  <stop lat="38.5526799" title="5th St &amp; Pena Dr " lon="-121.71538" dir="EB"/>[m
[31m-  <stop lat="38.55342" title="5th St &amp; Spafford St " lon="-121.71244" dir="EB"/>[m
[31m-  <stop lat="38.55466" title="5th St &amp; Arroyo Ave " lon="-121.7090799" dir="EB"/>[m
[31m-  <stop lat="38.55781" title="Alhambra Dr &amp; 5th St " lon="-121.7043" dir="EB"/>[m
[31m-  <stop lat="38.55786" title="Alhambra Dr &amp; Arroyo Ave " lon="-121.69946" dir="EB"/>[m
[31m-  <stop lat="38.5585499" title="Alhambra Dr &amp; Mace Blvd " lon="-121.69697" dir="EB"/>[m
[31m-  <stop lat="38.5577499" title="Mace Blvd &amp; 2nd St " lon="-121.6942999" dir="SB"/>[m
[31m-  <stop lat="38.5537199" title="2nd St. &amp; Target Drive " lon="-121.69776" dir="WB"/>[m
[31m-  <stop lat="38.5502299" title="Pena  &amp; 2nd St. " lon="-121.7157" dir="NB"/>[m
[31m-  <stop lat="38.5526299" title="5th St &amp; San Rafael St " lon="-121.7165099" dir="WB"/>[m
[31m-  <stop lat="38.5515299" title="5th St &amp; Cantrill " lon="-121.72136" dir="WB"/>[m
[31m-  <stop lat="38.5490399" title="5th St &amp; Pole Line Rd " lon="-121.7255299" dir="WB"/>[m
[31m-  <stop lat="38.5488299" title="5th St &amp; Pole Line Rd " lon="-121.7277699" dir="WB"/>[m
[31m-  <stop lat="38.5488999" title="5th St &amp; Davis PW Corp Yard " lon="-121.7308" dir="WB"/>[m
[31m-  <stop lat="38.54774" title="L St &amp; 425 " lon="-121.73434" dir="SB"/>[m
[31m-  <stop lat="38.5457499" title="3rd St &amp; K St " lon="-121.7350899" dir="WB"/>[m
[31m-  <stop lat="38.5445499" title="3rd St &amp; E St " lon="-121.74169" dir="WB"/>[m
[31m-  <stop lat="38.5442099" title="3rd St &amp; C St " lon="-121.74391" dir="WB"/>[m
[31m-  <stop lat="38.5452799" title="B St &amp; 4th St " lon="-121.7449299" dir="NB"/>[m
[31m-  <stop lat="38.5463799" title="Russell Blvd &amp; A St " lon="-121.74687" dir="WB"/>[m
[31m-  <stop lat="38.5469099" title="Anderson Rd &amp; Russell Blvd " lon="-121.75857" dir="NB"/>[m
[31m-  <stop lat="38.55061" title="Sycamore &amp; 8th " lon="-121.76422" dir="SB"/>[m
[31m-  <stop lat="38.5473799" title="Sycamore Ln &amp; Wake Forest Dr " lon="-121.76198" dir="SB"/>[m
[31m-  <stop lat="38.5464899" title="Russell Blvd &amp; Sycamore Ln " lon="-121.7635" dir="WB"/>[m
[31m-  <stop lat="38.5389999" title="Hutchison &amp; Sage " lon="-121.77134" dir="NB"/>[m
[31m-  <stop lat="38.54136" title="West Village Sq &amp; Town Square " lon="-121.77133" dir="NB"/>[m
[31m-  <stop lat="38.5408199" title="West Village Sq &amp; Community College " lon="-121.77171" dir="SB"/>[m
[31m-  <stop lat="38.5387999" title="Hutchison &amp; Sage " lon="-121.7717699" dir="SB"/>[m
[31m-  <stop lat="38.53737" title="Hutchison Dr &amp; Health Sci Drive " lon="-121.7642299" dir="EB"/>[m
[31m-  <stop lat="38.5370399" title="La Rue Rd &amp; Hutchison " lon="-121.7610699" dir="SB"/>[m
[31m-  <stop lat="38.53422" title="La Rue Rd &amp; Garrod Dr " lon="-121.7592999" dir="EB"/>[m
[31m-  <stop lat="38.53584" title="Dairy Road &amp; Tercero " lon="-121.7588" dir="NB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.75577" dir="EB"/>[m
[31m-  <stop lat="38.5393299" title="Silo Terminal &amp; North Boarding Area " lon="-121.75368" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.5473799" lon="-121.76198"/>[m
[31m-   <point lat="38.54701" lon="-121.76179"/>[m
[31m-   <point lat="38.54636" lon="-121.7618"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.5463499" lon="-121.76403"/>[m
[31m-   <point lat="38.54641" lon="-121.76853"/>[m
[31m-   <point lat="38.54653" lon="-121.76898"/>[m
[31m-   <point lat="38.5466399" lon="-121.76918"/>[m
[31m-   <point lat="38.54676" lon="-121.76927"/>[m
[31m-   <point lat="38.54687" lon="-121.76931"/>[m
[31m-   <point lat="38.54701" lon="-121.7693"/>[m
[31m-   <point lat="38.54712" lon="-121.76924"/>[m
[31m-   <point lat="38.5471999" lon="-121.76917"/>[m
[31m-   <point lat="38.54727" lon="-121.76901"/>[m
[31m-   <point lat="38.5473" lon="-121.76883"/>[m
[31m-   <point lat="38.54727" lon="-121.76864"/>[m
[31m-   <point lat="38.5471999" lon="-121.76849"/>[m
[31m-   <point lat="38.54711" lon="-121.76838"/>[m
[31m-   <point lat="38.54697" lon="-121.76833"/>[m
[31m-   <point lat="38.54537" lon="-121.76825"/>[m
[31m-   <point lat="38.54087" lon="-121.76843"/>[m
[31m-   <point lat="38.53934" lon="-121.76872"/>[m
[31m-   <point lat="38.539" lon="-121.76885"/>[m
[31m-   <point lat="38.53851" lon="-121.76924"/>[m
[31m-   <point lat="38.53737" lon="-121.76995"/>[m
[31m-   <point lat="38.5368" lon="-121.76997"/>[m
[31m-   <point lat="38.53677" lon="-121.77033"/>[m
[31m-   <point lat="38.53686" lon="-121.77101"/>[m
[31m-   <point lat="38.537" lon="-121.7715"/>[m
[31m-   <point lat="38.539" lon="-121.77134"/>[m
[31m-   <point lat="38.54136" lon="-121.77133"/>[m
[31m-   <point lat="38.54159" lon="-121.77146"/>[m
[31m-   <point lat="38.5415599" lon="-121.77161"/>[m
[31m-   <point lat="38.54399" lon="-121.73802"/>[m
[31m-   <point lat="38.54454" lon="-121.73825"/>[m
[31m-   <point lat="38.54464" lon="-121.73825"/>[m
[31m-   <point lat="38.5451" lon="-121.7383"/>[m
[31m-   <point lat="38.54522" lon="-121.73755"/>[m
[31m-   <point lat="38.54564" lon="-121.7345"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54784" lon="-121.73412"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54868" lon="-121.72808"/>[m
[31m-   <point lat="38.54856" lon="-121.72763"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54874" lon="-121.72565"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.55142" lon="-121.72128"/>[m
[31m-   <point lat="38.5408199" lon="-121.77171"/>[m
[31m-   <point lat="38.5388" lon="-121.77177"/>[m
[31m-   <point lat="38.53734" lon="-121.77165"/>[m
[31m-   <point lat="38.5370599" lon="-121.77163"/>[m
[31m-   <point lat="38.537" lon="-121.7715"/>[m
[31m-   <point lat="38.53686" lon="-121.77101"/>[m
[31m-   <point lat="38.53677" lon="-121.77033"/>[m
[31m-   <point lat="38.5368" lon="-121.76997"/>[m
[31m-   <point lat="38.53682" lon="-121.76545"/>[m
[31m-   <point lat="38.5370599" lon="-121.76474"/>[m
[31m-   <point lat="38.53726" lon="-121.76448"/>[m
[31m-   <point lat="38.53737" lon="-121.76423"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53704" lon="-121.76107"/>[m
[31m-   <point lat="38.53622" lon="-121.76098"/>[m
[31m-   <point lat="38.53525" lon="-121.76099"/>[m
[31m-   <point lat="38.5349999" lon="-121.76089"/>[m
[31m-   <point lat="38.53466" lon="-121.76063"/>[m
[31m-   <point lat="38.5345" lon="-121.76043"/>[m
[31m-   <point lat="38.53437" lon="-121.76007"/>[m
[31m-   <point lat="38.53422" lon="-121.7593"/>[m
[31m-   <point lat="38.53432" lon="-121.75893"/>[m
[31m-   <point lat="38.53584" lon="-121.7588"/>[m
[31m-   <point lat="38.53919" lon="-121.75883"/>[m
[31m-   <point lat="38.53919" lon="-121.7574"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.5391" lon="-121.75505"/>[m
[31m-   <point lat="38.5391" lon="-121.75396"/>[m
[31m-   <point lat="38.53907" lon="-121.75339"/>[m
[31m-   <point lat="38.53922" lon="-121.75353"/>[m
[31m-   <point lat="38.5585499" lon="-121.69697"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55654" lon="-121.69453"/>[m
[31m-   <point lat="38.55652" lon="-121.69486"/>[m
[31m-   <point lat="38.55647" lon="-121.69514"/>[m
[31m-   <point lat="38.55632" lon="-121.69564"/>[m
[31m-   <point lat="38.55606" lon="-121.69612"/>[m
[31m-   <point lat="38.5559" lon="-121.69633"/>[m
[31m-   <point lat="38.55566" lon="-121.6966"/>[m
[31m-   <point lat="38.55554" lon="-121.69669"/>[m
[31m-   <point lat="38.55469" lon="-121.69705"/>[m
[31m-   <point lat="38.55422" lon="-121.69727"/>[m
[31m-   <point lat="38.55368" lon="-121.69765"/>[m
[31m-   <point lat="38.55372" lon="-121.69776"/>[m
[31m-   <point lat="38.55335" lon="-121.69797"/>[m
[31m-   <point lat="38.55286" lon="-121.69869"/>[m
[31m-   <point lat="38.55268" lon="-121.69916"/>[m
[31m-   <point lat="38.54893" lon="-121.71567"/>[m
[31m-   <point lat="38.5491" lon="-121.71567"/>[m
[31m-   <point lat="38.54922" lon="-121.71573"/>[m
[31m-   <point lat="38.54951" lon="-121.71581"/>[m
[31m-   <point lat="38.5497299" lon="-121.71584"/>[m
[31m-   <point lat="38.55023" lon="-121.7157"/>[m
[31m-   <point lat="38.55173" lon="-121.71577"/>[m
[31m-   <point lat="38.552" lon="-121.71577"/>[m
[31m-   <point lat="38.55231" lon="-121.71584"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55263" lon="-121.71651"/>[m
[31m-   <point lat="38.55228" lon="-121.71752"/>[m
[31m-   <point lat="38.55178" lon="-121.71904"/>[m
[31m-   <point lat="38.55262" lon="-121.716"/>[m
[31m-   <point lat="38.55268" lon="-121.71538"/>[m
[31m-   <point lat="38.5533" lon="-121.7132"/>[m
[31m-   <point lat="38.55334" lon="-121.71307"/>[m
[31m-   <point lat="38.55337" lon="-121.71294"/>[m
[31m-   <point lat="38.55345" lon="-121.7127"/>[m
[31m-   <point lat="38.55342" lon="-121.71244"/>[m
[31m-   <point lat="38.55355" lon="-121.71247"/>[m
[31m-   <point lat="38.55369" lon="-121.7121"/>[m
[31m-   <point lat="38.55378" lon="-121.71191"/>[m
[31m-   <point lat="38.55437" lon="-121.71087"/>[m
[31m-   <point lat="38.55446" lon="-121.71067"/>[m
[31m-   <point lat="38.55455" lon="-121.71037"/>[m
[31m-   <point lat="38.55463" lon="-121.71004"/>[m
[31m-   <point lat="38.55465" lon="-121.70991"/>[m
[31m-   <point lat="38.55466" lon="-121.70908"/>[m
[31m-   <point lat="38.55483" lon="-121.70839"/>[m
[31m-   <point lat="38.55494" lon="-121.70763"/>[m
[31m-   <point lat="38.5551" lon="-121.70708"/>[m
[31m-   <point lat="38.5552" lon="-121.70684"/>[m
[31m-   <point lat="38.55537" lon="-121.70651"/>[m
[31m-   <point lat="38.55548" lon="-121.70633"/>[m
[31m-   <point lat="38.5556" lon="-121.70616"/>[m
[31m-   <point lat="38.55571" lon="-121.70603"/>[m
[31m-   <point lat="38.55629" lon="-121.70553"/>[m
[31m-   <point lat="38.55655" lon="-121.70537"/>[m
[31m-   <point lat="38.55684" lon="-121.70525"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55781" lon="-121.7043"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55797" lon="-121.70311"/>[m
[31m-   <point lat="38.55786" lon="-121.69946"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.54455" lon="-121.74169"/>[m
[31m-   <point lat="38.54421" lon="-121.74391"/>[m
[31m-   <point lat="38.54395" lon="-121.74471"/>[m
[31m-   <point lat="38.54528" lon="-121.74493"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54623" lon="-121.74593"/>[m
[31m-   <point lat="38.54638" lon="-121.74687"/>[m
[31m-   <point lat="38.54623" lon="-121.74893"/>[m
[31m-   <point lat="38.54627" lon="-121.75877"/>[m
[31m-   <point lat="38.53933" lon="-121.75368"/>[m
[31m-   <point lat="38.53922" lon="-121.75378"/>[m
[31m-   <point lat="38.5391" lon="-121.75396"/>[m
[31m-   <point lat="38.53907" lon="-121.75339"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53919" lon="-121.74837"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.53944" lon="-121.7477"/>[m
[31m-   <point lat="38.53978" lon="-121.74654"/>[m
[31m-   <point lat="38.54008" lon="-121.74619"/>[m
[31m-   <point lat="38.54003" lon="-121.74605"/>[m
[31m-   <point lat="38.54015" lon="-121.74577"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54267" lon="-121.74435"/>[m
[31m-   <point lat="38.54266" lon="-121.74391"/>[m
[31m-   <point lat="38.54314" lon="-121.74118"/>[m
[31m-   <point lat="38.5437" lon="-121.73835"/>[m
[31m-   <point lat="38.5469099" lon="-121.75857"/>[m
[31m-   <point lat="38.54792" lon="-121.75874"/>[m
[31m-   <point lat="38.55077" lon="-121.75867"/>[m
[31m-   <point lat="38.55084" lon="-121.75942"/>[m
[31m-   <point lat="38.55093" lon="-121.76006"/>[m
[31m-   <point lat="38.55111" lon="-121.76074"/>[m
[31m-   <point lat="38.55121" lon="-121.76141"/>[m
[31m-   <point lat="38.55122" lon="-121.76174"/>[m
[31m-   <point lat="38.55125" lon="-121.76208"/>[m
[31m-   <point lat="38.5512299" lon="-121.76251"/>[m
[31m-   <point lat="38.55119" lon="-121.76272"/>[m
[31m-   <point lat="38.55111" lon="-121.7634"/>[m
[31m-   <point lat="38.55101" lon="-121.7639"/>[m
[31m-   <point lat="38.55095" lon="-121.76407"/>[m
[31m-   <point lat="38.55087" lon="-121.76421"/>[m
[31m-   <point lat="38.55075" lon="-121.76433"/>[m
[31m-   <point lat="38.55061" lon="-121.76422"/>[m
[31m-   <point lat="38.5503799" lon="-121.76385"/>[m
[31m-   <point lat="38.55006" lon="-121.76352"/>[m
[31m-   <point lat="38.54831" lon="-121.7622"/>[m
[31m-   <point lat="38.54805" lon="-121.76203"/>[m
[31m-   <point lat="38.54769" lon="-121.76186"/>[m
[31m-   <point lat="38.54759" lon="-121.76183"/>[m
[31m-   <point lat="38.5474" lon="-121.76179"/>[m
[31m-   <point lat="38.55153" lon="-121.72136"/>[m
[31m-   <point lat="38.5513" lon="-121.72186"/>[m
[31m-   <point lat="38.551" lon="-121.72255"/>[m
[31m-   <point lat="38.54929" lon="-121.72452"/>[m
[31m-   <point lat="38.54913" lon="-121.72476"/>[m
[31m-   <point lat="38.54901" lon="-121.72501"/>[m
[31m-   <point lat="38.54904" lon="-121.72553"/>[m
[31m-   <point lat="38.54883" lon="-121.72583"/>[m
[31m-   <point lat="38.54878" lon="-121.72632"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.54883" lon="-121.72777"/>[m
[31m-   <point lat="38.54868" lon="-121.72906"/>[m
[31m-   <point lat="38.5486999" lon="-121.72981"/>[m
[31m-   <point lat="38.5489" lon="-121.7308"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.54846" lon="-121.73446"/>[m
[31m-   <point lat="38.54774" lon="-121.73434"/>[m
[31m-   <point lat="38.54714" lon="-121.73407"/>[m
[31m-   <point lat="38.5458799" lon="-121.73372"/>[m
[31m-   <point lat="38.54569" lon="-121.7348"/>[m
[31m-   <point lat="38.54575" lon="-121.73509"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="P" say="P Line, Davis Perimeter, Counter-Clockwise,  U C Davis Memorial Union" code="160" dest="Cntrclkwise to/from Memorial Union">[m
[31m-  <stop lat="38.5439299" title="Memorial Union (P Line) &amp; Howard Way " lon="-121.74983" dir="NB"/>[m
[31m-  <stop lat="38.54689" title="5th St &amp; D St " lon="-121.7429799" dir="EB"/>[m
[31m-  <stop lat="38.5473999" title="5th St &amp; G St " lon="-121.73961" dir="EB"/>[m
[31m-  <stop lat="38.5485599" title="5th St &amp; Pole Line Rd " lon="-121.72763" dir="EB"/>[m
[31m-  <stop lat="38.5425899" title="Pole Line Rd &amp; Cowell Blvd " lon="-121.7251899" dir="SB"/>[m
[31m-  <stop lat="38.54116" title="Lillard Dr &amp; Cowell Blvd " lon="-121.7221899" dir="EB"/>[m
[31m-  <stop lat="38.5416599" title="Lillard Dr &amp; Evans Ct " lon="-121.71735" dir="EB"/>[m
[31m-  <stop lat="38.5473499" title="Cowell Blvd &amp; Drummond Ave " lon="-121.71263" dir="EB"/>[m
[31m-  <stop lat="38.5474" title="Cowell Blvd &amp; Ohlone St " lon="-121.70609" dir="EB"/>[m
[31m-  <stop lat="38.54807" title="Cowell Blvd &amp; La Vida " lon="-121.7027299" dir="EB"/>[m
[31m-  <stop lat="38.54776" title="Cowell Blvd &amp; Ensenada Dr " lon="-121.69978" dir="EB"/>[m
[31m-  <stop lat="38.54792" title="Cowell Blvd &amp; Sunrise Ct " lon="-121.6967199" dir="EB"/>[m
[31m-  <stop lat="38.5492799" title="Mace Blvd &amp; Cowell Blvd " lon="-121.69425" dir="NB"/>[m
[31m-  <stop lat="38.55625" title="Mace Blvd &amp; 2nd St " lon="-121.69395" dir="NB"/>[m
[31m-  <stop lat="38.5635199" title="Covell Blvd &amp; Wright Blvd " lon="-121.71829" dir="WB"/>[m
[31m-  <stop lat="38.5626499" title="Covell Blvd &amp; Pole Line Rd " lon="-121.73024" dir="WB"/>[m
[31m-  <stop lat="38.5607399" title="Covell Blvd &amp; J St " lon="-121.7380799" dir="WB"/>[m
[31m-  <stop lat="38.5601099" title="F St &amp; Covell Blvd " lon="-121.74496" dir="SB"/>[m
[31m-  <stop lat="38.55694" title="14th St &amp; F St " lon="-121.7438099" dir="WB"/>[m
[31m-  <stop lat="38.5560899" title="14th St &amp; B St " lon="-121.74815" dir="WB"/>[m
[31m-  <stop lat="38.5559599" title="14th St &amp; Davis HS " lon="-121.75058" dir="WB"/>[m
[31m-  <stop lat="38.5559499" title="14th St &amp; Oak St " lon="-121.75252" dir="WB"/>[m
[31m-  <stop lat="38.5564099" title="Villanova Dr &amp; Reed Dr " lon="-121.7565599" dir="WB"/>[m
[31m-  <stop lat="38.55657" title="Anderson Rd &amp; Villanova Dr " lon="-121.7584199" dir="NB"/>[m
[31m-  <stop lat="38.5594499" title="Anderson Rd &amp; Hanover Dr " lon="-121.7584" dir="NB"/>[m
[31m-  <stop lat="38.5610099" title="Covell Blvd &amp; Sycamore Ln " lon="-121.7646399" dir="WB"/>[m
[31m-  <stop lat="38.5610799" title="Covell Blvd &amp; John Jones Rd " lon="-121.77076" dir="WB"/>[m
[31m-  <stop lat="38.56107" title="Covell Blvd &amp; Shasta Dr " lon="-121.7729699" dir="WB"/>[m
[31m-  <stop lat="38.5604599" title="Lake Blvd &amp; Covell Blvd " lon="-121.78632" dir="SB"/>[m
[31m-  <stop lat="38.55757" title="Lake Blvd &amp; Oyster Bay " lon="-121.7866499" dir="SB"/>[m
[31m-  <stop lat="38.5549699" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78691" dir="SB"/>[m
[31m-  <stop lat="38.55371" title="Arlington Blvd &amp; Cabot St " lon="-121.7848399" dir="SB"/>[m
[31m-  <stop lat="38.5534699" title="Arlington Blvd &amp; Shasta Dr " lon="-121.7813699" dir="SB"/>[m
[31m-  <stop lat="38.5502799" title="Arlington Blvd &amp; Westernesse Rd " lon="-121.77927" dir="SB"/>[m
[31m-  <stop lat="38.5487699" title="Arlington Blvd &amp; Bucklebury Rd " lon="-121.7787999" dir="SB"/>[m
[31m-  <stop lat="38.5462399" title="Russell Blvd &amp; Sycamore Ln " lon="-121.762" dir="EB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54856" lon="-121.72763"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-   <point lat="38.54874" lon="-121.7273"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.54401" lon="-121.72582"/>[m
[31m-   <point lat="38.54368" lon="-121.72573"/>[m
[31m-   <point lat="38.54348" lon="-121.72566"/>[m
[31m-   <point lat="38.5429699" lon="-121.72539"/>[m
[31m-   <point lat="38.54277" lon="-121.72525"/>[m
[31m-   <point lat="38.5425899" lon="-121.72519"/>[m
[31m-   <point lat="38.54237" lon="-121.72481"/>[m
[31m-   <point lat="38.54215" lon="-121.72452"/>[m
[31m-   <point lat="38.54175" lon="-121.72392"/>[m
[31m-   <point lat="38.54161" lon="-121.72364"/>[m
[31m-   <point lat="38.54154" lon="-121.7234"/>[m
[31m-   <point lat="38.54142" lon="-121.72306"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.5429699" lon="-121.71579"/>[m
[31m-   <point lat="38.54303" lon="-121.71567"/>[m
[31m-   <point lat="38.54317" lon="-121.71534"/>[m
[31m-   <point lat="38.54322" lon="-121.71516"/>[m
[31m-   <point lat="38.54341" lon="-121.71411"/>[m
[31m-   <point lat="38.54345" lon="-121.71345"/>[m
[31m-   <point lat="38.54671" lon="-121.71336"/>[m
[31m-   <point lat="38.5469099" lon="-121.71332"/>[m
[31m-   <point lat="38.54715" lon="-121.71324"/>[m
[31m-   <point lat="38.54754" lon="-121.71304"/>[m
[31m-   <point lat="38.54755" lon="-121.71282"/>[m
[31m-   <point lat="38.5635199" lon="-121.71829"/>[m
[31m-   <point lat="38.56265" lon="-121.73024"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5608999" lon="-121.7357"/>[m
[31m-   <point lat="38.56079" lon="-121.73603"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.56074" lon="-121.73808"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56075" lon="-121.74479"/>[m
[31m-   <point lat="38.56011" lon="-121.74496"/>[m
[31m-   <point lat="38.5601" lon="-121.74482"/>[m
[31m-   <point lat="38.55981" lon="-121.74479"/>[m
[31m-   <point lat="38.55964" lon="-121.74479"/>[m
[31m-   <point lat="38.55939" lon="-121.74472"/>[m
[31m-   <point lat="38.55909" lon="-121.7446"/>[m
[31m-   <point lat="38.55866" lon="-121.74432"/>[m
[31m-   <point lat="38.55798" lon="-121.74379"/>[m
[31m-   <point lat="38.55708" lon="-121.74338"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.55694" lon="-121.74381"/>[m
[31m-   <point lat="38.55671" lon="-121.74441"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55609" lon="-121.74815"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55583" lon="-121.74981"/>[m
[31m-   <point lat="38.54624" lon="-121.762"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54395" lon="-121.75012"/>[m
[31m-   <point lat="38.5438199" lon="-121.75009"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54348" lon="-121.74959"/>[m
[31m-   <point lat="38.5635199" lon="-121.71829"/>[m
[31m-   <point lat="38.56265" lon="-121.73024"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5608999" lon="-121.7357"/>[m
[31m-   <point lat="38.56079" lon="-121.73603"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.56046" lon="-121.78632"/>[m
[31m-   <point lat="38.55861" lon="-121.78618"/>[m
[31m-   <point lat="38.5585" lon="-121.78619"/>[m
[31m-   <point lat="38.55829" lon="-121.78624"/>[m
[31m-   <point lat="38.55811" lon="-121.78628"/>[m
[31m-   <point lat="38.558" lon="-121.78633"/>[m
[31m-   <point lat="38.55757" lon="-121.78665"/>[m
[31m-   <point lat="38.55672" lon="-121.78698"/>[m
[31m-   <point lat="38.55614" lon="-121.78729"/>[m
[31m-   <point lat="38.5559" lon="-121.78741"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.55497" lon="-121.78691"/>[m
[31m-   <point lat="38.55485" lon="-121.78615"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.55389" lon="-121.78511"/>[m
[31m-   <point lat="38.55383" lon="-121.78497"/>[m
[31m-   <point lat="38.55371" lon="-121.78484"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55375" lon="-121.78461"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55347" lon="-121.78137"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55299" lon="-121.78034"/>[m
[31m-   <point lat="38.55269" lon="-121.78004"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.54393" lon="-121.74983"/>[m
[31m-   <point lat="38.54402" lon="-121.74977"/>[m
[31m-   <point lat="38.54395" lon="-121.75012"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54658" lon="-121.74495"/>[m
[31m-   <point lat="38.54667" lon="-121.7447"/>[m
[31m-   <point lat="38.5467299" lon="-121.74436"/>[m
[31m-   <point lat="38.54689" lon="-121.74298"/>[m
[31m-   <point lat="38.55028" lon="-121.77927"/>[m
[31m-   <point lat="38.54877" lon="-121.7788"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.5474699" lon="-121.77814"/>[m
[31m-   <point lat="38.54722" lon="-121.77791"/>[m
[31m-   <point lat="38.54694" lon="-121.77757"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54655" lon="-121.77652"/>[m
[31m-   <point lat="38.54652" lon="-121.77546"/>[m
[31m-   <point lat="38.54735" lon="-121.71263"/>[m
[31m-   <point lat="38.54744" lon="-121.7124"/>[m
[31m-   <point lat="38.54736" lon="-121.71195"/>[m
[31m-   <point lat="38.54734" lon="-121.7114"/>[m
[31m-   <point lat="38.54744" lon="-121.71071"/>[m
[31m-   <point lat="38.5475" lon="-121.71056"/>[m
[31m-   <point lat="38.5478" lon="-121.70929"/>[m
[31m-   <point lat="38.54783" lon="-121.70899"/>[m
[31m-   <point lat="38.5478499" lon="-121.70836"/>[m
[31m-   <point lat="38.54782" lon="-121.708"/>[m
[31m-   <point lat="38.54762" lon="-121.70668"/>[m
[31m-   <point lat="38.54751" lon="-121.70622"/>[m
[31m-   <point lat="38.5474" lon="-121.70609"/>[m
[31m-   <point lat="38.54745" lon="-121.70569"/>[m
[31m-   <point lat="38.54743" lon="-121.70527"/>[m
[31m-   <point lat="38.54745" lon="-121.70486"/>[m
[31m-   <point lat="38.5475" lon="-121.70449"/>[m
[31m-   <point lat="38.5476" lon="-121.70419"/>[m
[31m-   <point lat="38.54764" lon="-121.70403"/>[m
[31m-   <point lat="38.54806" lon="-121.70321"/>[m
[31m-   <point lat="38.54813" lon="-121.70301"/>[m
[31m-   <point lat="38.54807" lon="-121.70273"/>[m
[31m-   <point lat="38.5482299" lon="-121.70252"/>[m
[31m-   <point lat="38.54824" lon="-121.70234"/>[m
[31m-   <point lat="38.5482299" lon="-121.70115"/>[m
[31m-   <point lat="38.54815" lon="-121.70073"/>[m
[31m-   <point lat="38.5479" lon="-121.7"/>[m
[31m-   <point lat="38.5477599" lon="-121.69978"/>[m
[31m-   <point lat="38.54786" lon="-121.69955"/>[m
[31m-   <point lat="38.54786" lon="-121.69772"/>[m
[31m-   <point lat="38.54789" lon="-121.69736"/>[m
[31m-   <point lat="38.54793" lon="-121.69711"/>[m
[31m-   <point lat="38.54792" lon="-121.69672"/>[m
[31m-   <point lat="38.5481" lon="-121.69657"/>[m
[31m-   <point lat="38.5486099" lon="-121.6956"/>[m
[31m-   <point lat="38.54873" lon="-121.6952"/>[m
[31m-   <point lat="38.54876" lon="-121.69504"/>[m
[31m-   <point lat="38.5487899" lon="-121.69452"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.55945" lon="-121.7584"/>[m
[31m-   <point lat="38.56084" lon="-121.75846"/>[m
[31m-   <point lat="38.56101" lon="-121.76464"/>[m
[31m-   <point lat="38.56089" lon="-121.76706"/>[m
[31m-   <point lat="38.56094" lon="-121.76798"/>[m
[31m-   <point lat="38.5610799" lon="-121.77076"/>[m
[31m-   <point lat="38.56107" lon="-121.77297"/>[m
[31m-   <point lat="38.56111" lon="-121.78614"/>[m
[31m-   <point lat="38.56094" lon="-121.78617"/>[m
[31m-   <point lat="38.5474" lon="-121.73961"/>[m
[31m-   <point lat="38.5479" lon="-121.73772"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54868" lon="-121.72808"/>[m
[31m-   <point lat="38.54928" lon="-121.69425"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55387" lon="-121.6944"/>[m
[31m-   <point lat="38.55625" lon="-121.69395"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.56039" lon="-121.69402"/>[m
[31m-   <point lat="38.56123" lon="-121.69408"/>[m
[31m-   <point lat="38.56154" lon="-121.69415"/>[m
[31m-   <point lat="38.5625" lon="-121.69453"/>[m
[31m-   <point lat="38.56271" lon="-121.69462"/>[m
[31m-   <point lat="38.56293" lon="-121.69474"/>[m
[31m-   <point lat="38.56342" lon="-121.69518"/>[m
[31m-   <point lat="38.56383" lon="-121.69563"/>[m
[31m-   <point lat="38.5642" lon="-121.69614"/>[m
[31m-   <point lat="38.56454" lon="-121.69678"/>[m
[31m-   <point lat="38.56474" lon="-121.6973"/>[m
[31m-   <point lat="38.56487" lon="-121.69778"/>[m
[31m-   <point lat="38.56499" lon="-121.69844"/>[m
[31m-   <point lat="38.56504" lon="-121.69897"/>[m
[31m-   <point lat="38.56504" lon="-121.69953"/>[m
[31m-   <point lat="38.5650199" lon="-121.69984"/>[m
[31m-   <point lat="38.55596" lon="-121.75058"/>[m
[31m-   <point lat="38.55595" lon="-121.75252"/>[m
[31m-   <point lat="38.55584" lon="-121.75328"/>[m
[31m-   <point lat="38.55575" lon="-121.75399"/>[m
[31m-   <point lat="38.55576" lon="-121.75416"/>[m
[31m-   <point lat="38.55582" lon="-121.75442"/>[m
[31m-   <point lat="38.55598" lon="-121.75461"/>[m
[31m-   <point lat="38.55623" lon="-121.75516"/>[m
[31m-   <point lat="38.55627" lon="-121.75536"/>[m
[31m-   <point lat="38.55629" lon="-121.75557"/>[m
[31m-   <point lat="38.55641" lon="-121.75656"/>[m
[31m-   <point lat="38.55628" lon="-121.75771"/>[m
[31m-   <point lat="38.55619" lon="-121.75819"/>[m
[31m-   <point lat="38.55619" lon="-121.7586"/>[m
[31m-   <point lat="38.55657" lon="-121.75842"/>[m
[31m-   <point lat="38.54393" lon="-121.74983"/>[m
[31m-   <point lat="38.54377" lon="-121.75008"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54658" lon="-121.74495"/>[m
[31m-   <point lat="38.54667" lon="-121.7447"/>[m
[31m-   <point lat="38.5467299" lon="-121.74436"/>[m
[31m-   <point lat="38.54689" lon="-121.74298"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="Q" say="Q Line, Davis Perimeter, Clockwise,  U C Davis Memorial Union" code="170" dest="Clockwise to/from Memorial Union">[m
[31m-  <stop lat="38.5439599" title="Memorial Union (Q Line) &amp; Howard Way " lon="-121.74968" dir="NB"/>[m
[31m-  <stop lat="38.5464899" title="Russell Blvd &amp; Sycamore Ln " lon="-121.7635" dir="WB"/>[m
[31m-  <stop lat="38.5465499" title="Russell Blvd &amp; Arthur St " lon="-121.7710199" dir="WB"/>[m
[31m-  <stop lat="38.54888" title="Arlington Blvd &amp; Bucklebury Rd " lon="-121.77851" dir="NB"/>[m
[31m-  <stop lat="38.5507099" title="Arlington Blvd &amp; Calaveras Ave " lon="-121.77896" dir="NB"/>[m
[31m-  <stop lat="38.5538499" title="Arlington Blvd &amp; Shasta Dr " lon="-121.78208" dir="NB"/>[m
[31m-  <stop lat="38.5539399" title="Arlington Blvd &amp; Cabot St " lon="-121.78497" dir="NB"/>[m
[31m-  <stop lat="38.5552299" title="Arlington Blvd &amp; Lake Blvd " lon="-121.78701" dir="NB"/>[m
[31m-  <stop lat="38.5581499" title="Lake Blvd &amp; Wood Circle " lon="-121.78614" dir="NB"/>[m
[31m-  <stop lat="38.5604199" title="Lake Blvd &amp; Covell Blvd " lon="-121.78604" dir="NB"/>[m
[31m-  <stop lat="38.56095" title="Covell Blvd &amp; West Area Bike Path " lon="-121.78199" dir="EB"/>[m
[31m-  <stop lat="38.56085" title="Covell Blvd &amp; Denali Dr " lon="-121.77824" dir="EB"/>[m
[31m-  <stop lat="38.56072" title="Covell Blvd &amp; Shasta Dr " lon="-121.77172" dir="EB"/>[m
[31m-  <stop lat="38.5607" title="Covell Blvd &amp; Sycamore Ln " lon="-121.7645399" dir="EB"/>[m
[31m-  <stop lat="38.5585599" title="Anderson Rd &amp; Hanover Dr " lon="-121.75871" dir="SB"/>[m
[31m-  <stop lat="38.55615" title="Villanova Dr &amp; Anderson Rd " lon="-121.75788" dir="EB"/>[m
[31m-  <stop lat="38.55572" title="14th St &amp; Oak St " lon="-121.7518099" dir="EB"/>[m
[31m-  <stop lat="38.5558999" title="14th St &amp; B St " lon="-121.74788" dir="EB"/>[m
[31m-  <stop lat="38.5571899" title="F St &amp; 14th St " lon="-121.7433" dir="NB"/>[m
[31m-  <stop lat="38.5602299" title="F St &amp; Covell Blvd " lon="-121.74466" dir="NB"/>[m
[31m-  <stop lat="38.56046" title="Covell Blvd &amp; J St " lon="-121.73793" dir="EB"/>[m
[31m-  <stop lat="38.56216" title="Covell Blvd &amp; Pole Line Rd " lon="-121.7319899" dir="EB"/>[m
[31m-  <stop lat="38.5632999" title="Covell Blvd &amp; Wright Blvd " lon="-121.71784" dir="EB"/>[m
[31m-  <stop lat="38.5640699" title="Covell Blvd &amp; Alhambra Dr " lon="-121.70887" dir="EB"/>[m
[31m-  <stop lat="38.5648" title="Covell Blvd &amp; Mace Blvd " lon="-121.7000299" dir="EB"/>[m
[31m-  <stop lat="38.55775" title="Mace Blvd &amp; 2nd St " lon="-121.6942999" dir="SB"/>[m
[31m-  <stop lat="38.5497399" title="Mace Blvd &amp; Chiles Rd " lon="-121.69457" dir="SB"/>[m
[31m-  <stop lat="38.54842" title="Cowell Blvd &amp; Sunrise " lon="-121.6962399" dir="WB"/>[m
[31m-  <stop lat="38.5480299" title="Cowell Blvd &amp; Ensenada Dr " lon="-121.69994" dir="WB"/>[m
[31m-  <stop lat="38.5482299" title="Cowell Blvd &amp; La Vida Way " lon="-121.70305" dir="WB"/>[m
[31m-  <stop lat="38.5476899" title="Cowell Blvd &amp; Ohlone St " lon="-121.70656" dir="WB"/>[m
[31m-  <stop lat="38.5476399" title="Cowell Blvd &amp; Drummond Ave (Chiles) " lon="-121.71264" dir="WB"/>[m
[31m-  <stop lat="38.5471299" title="Drummond Ave &amp; Cowell " lon="-121.7133699" dir="SB"/>[m
[31m-  <stop lat="38.5437099" title="Drummond Ave &amp; Lillard Dr " lon="-121.71357" dir="SB"/>[m
[31m-  <stop lat="38.5417799" title="Lillard Dr &amp; Evans Ct " lon="-121.7175799" dir="WB"/>[m
[31m-  <stop lat="38.54136" title="Lillard Dr &amp; Farragut Cir " lon="-121.7207199" dir="WB"/>[m
[31m-  <stop lat="38.5422099" title="Pole Line Rd &amp; Cowell Blvd " lon="-121.7243699" dir="NB"/>[m
[31m-  <stop lat="38.5488299" title="5th St &amp; Pole Line Rd " lon="-121.72777" dir="WB"/>[m
[31m-  <stop lat="38.5488999" title="5th St &amp; Davis PW Corp Yard " lon="-121.7307999" dir="WB"/>[m
[31m-  <stop lat="38.5479299" title="5th St &amp; I St " lon="-121.73789" dir="WB"/>[m
[31m-  <stop lat="38.5469499" title="5th St &amp; D St " lon="-121.74358" dir="WB"/>[m
[31m-  <stop lat="38.5463799" title="Russell Blvd &amp; A St " lon="-121.7468699" dir="WB"/>[m
[31m-  <stop lat="38.5437499" title="Memorial Union Terminal Arrival &amp; Howard Way " lon="-121.74982" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54396" lon="-121.74968"/>[m
[31m-   <point lat="38.5439999" lon="-121.74974"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54401" lon="-121.75015"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54974" lon="-121.69457"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.5487899" lon="-121.69446"/>[m
[31m-   <point lat="38.54878" lon="-121.69481"/>[m
[31m-   <point lat="38.54876" lon="-121.69504"/>[m
[31m-   <point lat="38.54873" lon="-121.6952"/>[m
[31m-   <point lat="38.5486099" lon="-121.6956"/>[m
[31m-   <point lat="38.54842" lon="-121.69624"/>[m
[31m-   <point lat="38.5481" lon="-121.69657"/>[m
[31m-   <point lat="38.54793" lon="-121.69711"/>[m
[31m-   <point lat="38.54789" lon="-121.69736"/>[m
[31m-   <point lat="38.54786" lon="-121.69772"/>[m
[31m-   <point lat="38.54786" lon="-121.69955"/>[m
[31m-   <point lat="38.54803" lon="-121.69994"/>[m
[31m-   <point lat="38.5479" lon="-121.7"/>[m
[31m-   <point lat="38.54815" lon="-121.70073"/>[m
[31m-   <point lat="38.5482299" lon="-121.70115"/>[m
[31m-   <point lat="38.54824" lon="-121.70234"/>[m
[31m-   <point lat="38.5482299" lon="-121.70248"/>[m
[31m-   <point lat="38.5481399" lon="-121.70294"/>[m
[31m-   <point lat="38.5482299" lon="-121.70305"/>[m
[31m-   <point lat="38.54806" lon="-121.70321"/>[m
[31m-   <point lat="38.54764" lon="-121.70403"/>[m
[31m-   <point lat="38.5476" lon="-121.70419"/>[m
[31m-   <point lat="38.54752" lon="-121.70443"/>[m
[31m-   <point lat="38.54748" lon="-121.70463"/>[m
[31m-   <point lat="38.54745" lon="-121.70486"/>[m
[31m-   <point lat="38.54743" lon="-121.70527"/>[m
[31m-   <point lat="38.54745" lon="-121.70569"/>[m
[31m-   <point lat="38.54751" lon="-121.70622"/>[m
[31m-   <point lat="38.54769" lon="-121.70656"/>[m
[31m-   <point lat="38.54762" lon="-121.70668"/>[m
[31m-   <point lat="38.54782" lon="-121.708"/>[m
[31m-   <point lat="38.5478499" lon="-121.70836"/>[m
[31m-   <point lat="38.54783" lon="-121.70899"/>[m
[31m-   <point lat="38.5478" lon="-121.70929"/>[m
[31m-   <point lat="38.54758" lon="-121.71024"/>[m
[31m-   <point lat="38.5475" lon="-121.71056"/>[m
[31m-   <point lat="38.54744" lon="-121.71071"/>[m
[31m-   <point lat="38.54734" lon="-121.7114"/>[m
[31m-   <point lat="38.54736" lon="-121.71195"/>[m
[31m-   <point lat="38.54741" lon="-121.71222"/>[m
[31m-   <point lat="38.54744" lon="-121.7124"/>[m
[31m-   <point lat="38.54764" lon="-121.71264"/>[m
[31m-   <point lat="38.5476" lon="-121.71298"/>[m
[31m-   <point lat="38.54715" lon="-121.71324"/>[m
[31m-   <point lat="38.54713" lon="-121.71337"/>[m
[31m-   <point lat="38.5469099" lon="-121.71332"/>[m
[31m-   <point lat="38.54671" lon="-121.71336"/>[m
[31m-   <point lat="38.55856" lon="-121.75871"/>[m
[31m-   <point lat="38.55619" lon="-121.7586"/>[m
[31m-   <point lat="38.55619" lon="-121.75819"/>[m
[31m-   <point lat="38.55615" lon="-121.75788"/>[m
[31m-   <point lat="38.55628" lon="-121.75771"/>[m
[31m-   <point lat="38.55629" lon="-121.75557"/>[m
[31m-   <point lat="38.55628" lon="-121.75545"/>[m
[31m-   <point lat="38.55625" lon="-121.75525"/>[m
[31m-   <point lat="38.55598" lon="-121.75461"/>[m
[31m-   <point lat="38.55582" lon="-121.75442"/>[m
[31m-   <point lat="38.55577" lon="-121.75425"/>[m
[31m-   <point lat="38.55575" lon="-121.75405"/>[m
[31m-   <point lat="38.55575" lon="-121.7539"/>[m
[31m-   <point lat="38.55584" lon="-121.75337"/>[m
[31m-   <point lat="38.55584" lon="-121.75289"/>[m
[31m-   <point lat="38.55572" lon="-121.75181"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55523" lon="-121.78701"/>[m
[31m-   <point lat="38.55527" lon="-121.78763"/>[m
[31m-   <point lat="38.55584" lon="-121.78743"/>[m
[31m-   <point lat="38.55672" lon="-121.78698"/>[m
[31m-   <point lat="38.558" lon="-121.78633"/>[m
[31m-   <point lat="38.55811" lon="-121.78628"/>[m
[31m-   <point lat="38.55815" lon="-121.78614"/>[m
[31m-   <point lat="38.5585" lon="-121.78619"/>[m
[31m-   <point lat="38.56042" lon="-121.78604"/>[m
[31m-   <point lat="38.56094" lon="-121.78617"/>[m
[31m-   <point lat="38.56111" lon="-121.78614"/>[m
[31m-   <point lat="38.56095" lon="-121.78199"/>[m
[31m-   <point lat="38.56095" lon="-121.77938"/>[m
[31m-   <point lat="38.56085" lon="-121.77824"/>[m
[31m-   <point lat="38.56072" lon="-121.77172"/>[m
[31m-   <point lat="38.56089" lon="-121.76706"/>[m
[31m-   <point lat="38.5607" lon="-121.76454"/>[m
[31m-   <point lat="38.56086" lon="-121.76382"/>[m
[31m-   <point lat="38.56084" lon="-121.75846"/>[m
[31m-   <point lat="38.55912" lon="-121.75852"/>[m
[31m-   <point lat="38.56023" lon="-121.74466"/>[m
[31m-   <point lat="38.56075" lon="-121.74479"/>[m
[31m-   <point lat="38.56068" lon="-121.74299"/>[m
[31m-   <point lat="38.56046" lon="-121.73793"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.56216" lon="-121.73199"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56253" lon="-121.72973"/>[m
[31m-   <point lat="38.5627799" lon="-121.72517"/>[m
[31m-   <point lat="38.54883" lon="-121.72777"/>[m
[31m-   <point lat="38.54868" lon="-121.72906"/>[m
[31m-   <point lat="38.5486999" lon="-121.72981"/>[m
[31m-   <point lat="38.5489" lon="-121.7308"/>[m
[31m-   <point lat="38.54876" lon="-121.73165"/>[m
[31m-   <point lat="38.54874" lon="-121.7325"/>[m
[31m-   <point lat="38.5486999" lon="-121.73288"/>[m
[31m-   <point lat="38.5486999" lon="-121.733"/>[m
[31m-   <point lat="38.5479" lon="-121.73772"/>[m
[31m-   <point lat="38.55071" lon="-121.77896"/>[m
[31m-   <point lat="38.5517899" lon="-121.77946"/>[m
[31m-   <point lat="38.55234" lon="-121.77975"/>[m
[31m-   <point lat="38.55293" lon="-121.78026"/>[m
[31m-   <point lat="38.55304" lon="-121.78044"/>[m
[31m-   <point lat="38.55314" lon="-121.78063"/>[m
[31m-   <point lat="38.55321" lon="-121.78074"/>[m
[31m-   <point lat="38.55346" lon="-121.78126"/>[m
[31m-   <point lat="38.55354" lon="-121.78151"/>[m
[31m-   <point lat="38.55363" lon="-121.78177"/>[m
[31m-   <point lat="38.55385" lon="-121.78208"/>[m
[31m-   <point lat="38.55372" lon="-121.78235"/>[m
[31m-   <point lat="38.55374" lon="-121.78262"/>[m
[31m-   <point lat="38.55374" lon="-121.78452"/>[m
[31m-   <point lat="38.55378" lon="-121.78479"/>[m
[31m-   <point lat="38.55394" lon="-121.78497"/>[m
[31m-   <point lat="38.55386" lon="-121.78505"/>[m
[31m-   <point lat="38.55401" lon="-121.78524"/>[m
[31m-   <point lat="38.5548" lon="-121.78607"/>[m
[31m-   <point lat="38.5633" lon="-121.71784"/>[m
[31m-   <point lat="38.56407" lon="-121.70887"/>[m
[31m-   <point lat="38.5648" lon="-121.70003"/>[m
[31m-   <point lat="38.56504" lon="-121.69953"/>[m
[31m-   <point lat="38.56504" lon="-121.69897"/>[m
[31m-   <point lat="38.56499" lon="-121.69844"/>[m
[31m-   <point lat="38.56487" lon="-121.69778"/>[m
[31m-   <point lat="38.56474" lon="-121.6973"/>[m
[31m-   <point lat="38.56454" lon="-121.69678"/>[m
[31m-   <point lat="38.5642" lon="-121.69614"/>[m
[31m-   <point lat="38.56383" lon="-121.69563"/>[m
[31m-   <point lat="38.56342" lon="-121.69518"/>[m
[31m-   <point lat="38.56293" lon="-121.69474"/>[m
[31m-   <point lat="38.56281" lon="-121.69467"/>[m
[31m-   <point lat="38.5625" lon="-121.69453"/>[m
[31m-   <point lat="38.56154" lon="-121.69415"/>[m
[31m-   <point lat="38.56123" lon="-121.69408"/>[m
[31m-   <point lat="38.56039" lon="-121.69402"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.54793" lon="-121.73789"/>[m
[31m-   <point lat="38.54749" lon="-121.73997"/>[m
[31m-   <point lat="38.5474" lon="-121.74052"/>[m
[31m-   <point lat="38.54695" lon="-121.74358"/>[m
[31m-   <point lat="38.54667" lon="-121.7447"/>[m
[31m-   <point lat="38.54658" lon="-121.74495"/>[m
[31m-   <point lat="38.54634" lon="-121.74538"/>[m
[31m-   <point lat="38.54629" lon="-121.74551"/>[m
[31m-   <point lat="38.54624" lon="-121.74568"/>[m
[31m-   <point lat="38.54623" lon="-121.74593"/>[m
[31m-   <point lat="38.54638" lon="-121.74687"/>[m
[31m-   <point lat="38.54623" lon="-121.74893"/>[m
[31m-   <point lat="38.54623" lon="-121.75083"/>[m
[31m-   <point lat="38.54401" lon="-121.75015"/>[m
[31m-   <point lat="38.54395" lon="-121.75014"/>[m
[31m-   <point lat="38.54342" lon="-121.74997"/>[m
[31m-   <point lat="38.54349" lon="-121.74958"/>[m
[31m-   <point lat="38.54649" lon="-121.7635"/>[m
[31m-   <point lat="38.54655" lon="-121.77102"/>[m
[31m-   <point lat="38.54657" lon="-121.77665"/>[m
[31m-   <point lat="38.54662" lon="-121.77682"/>[m
[31m-   <point lat="38.54685" lon="-121.7774"/>[m
[31m-   <point lat="38.5469099" lon="-121.7775"/>[m
[31m-   <point lat="38.54716" lon="-121.77785"/>[m
[31m-   <point lat="38.5474" lon="-121.7781"/>[m
[31m-   <point lat="38.54761" lon="-121.77825"/>[m
[31m-   <point lat="38.54782" lon="-121.77834"/>[m
[31m-   <point lat="38.54803" lon="-121.77839"/>[m
[31m-   <point lat="38.5488799" lon="-121.77851"/>[m
[31m-   <point lat="38.55053" lon="-121.77907"/>[m
[31m-   <point lat="38.5559" lon="-121.74788"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.55708" lon="-121.74338"/>[m
[31m-   <point lat="38.55719" lon="-121.7433"/>[m
[31m-   <point lat="38.55798" lon="-121.74379"/>[m
[31m-   <point lat="38.55866" lon="-121.74432"/>[m
[31m-   <point lat="38.55909" lon="-121.7446"/>[m
[31m-   <point lat="38.55939" lon="-121.74472"/>[m
[31m-   <point lat="38.55964" lon="-121.74479"/>[m
[31m-   <point lat="38.55981" lon="-121.74479"/>[m
[31m-   <point lat="38.5601" lon="-121.74482"/>[m
[31m-   <point lat="38.54371" lon="-121.71357"/>[m
[31m-   <point lat="38.54345" lon="-121.71345"/>[m
[31m-   <point lat="38.54341" lon="-121.71411"/>[m
[31m-   <point lat="38.54322" lon="-121.71516"/>[m
[31m-   <point lat="38.54317" lon="-121.71534"/>[m
[31m-   <point lat="38.5429699" lon="-121.71579"/>[m
[31m-   <point lat="38.54282" lon="-121.71601"/>[m
[31m-   <point lat="38.5424099" lon="-121.71655"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54178" lon="-121.71758"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54141" lon="-121.71905"/>[m
[31m-   <point lat="38.54136" lon="-121.72072"/>[m
[31m-   <point lat="38.54125" lon="-121.72113"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54142" lon="-121.72306"/>[m
[31m-   <point lat="38.54154" lon="-121.7234"/>[m
[31m-   <point lat="38.54161" lon="-121.72364"/>[m
[31m-   <point lat="38.54175" lon="-121.72392"/>[m
[31m-   <point lat="38.54198" lon="-121.72426"/>[m
[31m-   <point lat="38.54221" lon="-121.72437"/>[m
[31m-   <point lat="38.54215" lon="-121.72452"/>[m
[31m-   <point lat="38.54265" lon="-121.72513"/>[m
[31m-   <point lat="38.54277" lon="-121.72525"/>[m
[31m-   <point lat="38.5429" lon="-121.72535"/>[m
[31m-   <point lat="38.54348" lon="-121.72566"/>[m
[31m-   <point lat="38.54401" lon="-121.72582"/>[m
[31m-   <point lat="38.5487899" lon="-121.72657"/>[m
[31m-   <point lat="38.54877" lon="-121.72697"/>[m
[31m-   <point lat="38.5486999" lon="-121.7276"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="S" say="S Line, Holmes and Harper" code="190" dest="AM to Holmes/Harper via DHS">[m
[31m-  <stop lat="38.5507699" title="Chiles Rd &amp; Mace Blvd " lon="-121.69348" dir="EB"/>[m
[31m-  <stop lat="38.5511999" title="Glide Dr &amp; El Cemonte Ave " lon="-121.69071" dir="EB"/>[m
[31m-  <stop lat="38.55221" title="Glide Dr &amp; Schmeiser Ave " lon="-121.6841999" dir="EB"/>[m
[31m-  <stop lat="38.5498299" title="Cowell Blvd &amp; Schmeiser Ave " lon="-121.68376" dir="WB"/>[m
[31m-  <stop lat="38.5489599" title="Cowell Blvd &amp; El Cemonte Ave " lon="-121.6900899" dir="WB"/>[m
[31m-  <stop lat="38.5488399" title="Cowell Blvd &amp; Mace Blvd " lon="-121.6925799" dir="WB"/>[m
[31m-  <stop lat="38.54687" title="Mace Blvd &amp; El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5410499" title="Mace Blvd &amp; S El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5387999" title="Rosario St &amp; Montgomery Ave " lon="-121.699" dir="NB"/>[m
[31m-  <stop lat="38.54149" title="Rosario St &amp; Almond Ln " lon="-121.69939" dir="NB"/>[m
[31m-  <stop lat="38.5420299" title="Almond Ln &amp; Deodara St " lon="-121.7012999" dir="WB"/>[m
[31m-  <stop lat="38.5415699" title="Almond Ln &amp; Meadowbrook Dr " lon="-121.70395" dir="WB"/>[m
[31m-  <stop lat="38.5415599" title="Almond Ln &amp; Willowbank Rd " lon="-121.7063699" dir="WB"/>[m
[31m-  <stop lat="38.53883" title="Willowbank Rd &amp; Montgomery Ave " lon="-121.7067099" dir="SB"/>[m
[31m-  <stop lat="38.5388999" title="Montgomery Ave &amp; Oakside  Dr " lon="-121.7085399" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Danbury St &amp; Drummond Ave " lon="-121.7136799" dir="NB"/>[m
[31m-  <stop lat="38.5424999" title="Danbury St &amp; Lillard Dr " lon="-121.71609" dir="NB"/>[m
[31m-  <stop lat="38.5417799" title="Lillard Dr &amp; Evans Ct " lon="-121.71758" dir="WB"/>[m
[31m-  <stop lat="38.54136" title="Lillard Dr &amp; Farragut Cir " lon="-121.7207199" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Valdora St " lon="-121.7250899" dir="WB"/>[m
[31m-  <stop lat="38.5400399" title="Cowell Blvd &amp; Drew Ave " lon="-121.72754" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73021" dir="WB"/>[m
[31m-  <stop lat="38.5407999" title="Richards Blvd &amp; Olive Dr " lon="-121.73832" dir="NB"/>[m
[31m-  <stop lat="38.5559599" title="14th St &amp; Davis HS " lon="-121.75058" dir="WB"/>[m
[31m-  <stop lat="38.5572499" title="Drexel Dr &amp; Hemlock Ln " lon="-121.73629" dir="EB"/>[m
[31m-  <stop lat="38.5647999" title="Covell Blvd &amp; Mace Blvd " lon="-121.70003" dir="EB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54983" lon="-121.68376"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54799" lon="-121.69437"/>[m
[31m-   <point lat="38.54687" lon="-121.69464"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54459" lon="-121.69447"/>[m
[31m-   <point lat="38.54105" lon="-121.69464"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5388" lon="-121.699"/>[m
[31m-   <point lat="38.5393" lon="-121.69914"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54101" lon="-121.69927"/>[m
[31m-   <point lat="38.54149" lon="-121.69939"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.5420299" lon="-121.7013"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.54157" lon="-121.70395"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.5415599" lon="-121.70637"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.53883" lon="-121.70671"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.53881" lon="-121.70812"/>[m
[31m-   <point lat="38.5389" lon="-121.70854"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53963" lon="-121.71351"/>[m
[31m-   <point lat="38.53972" lon="-121.71354"/>[m
[31m-   <point lat="38.54012" lon="-121.71368"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.55596" lon="-121.75058"/>[m
[31m-   <point lat="38.55584" lon="-121.7523"/>[m
[31m-   <point lat="38.55821" lon="-121.75226"/>[m
[31m-   <point lat="38.55831" lon="-121.75225"/>[m
[31m-   <point lat="38.56079" lon="-121.75225"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56022" lon="-121.7386"/>[m
[31m-   <point lat="38.5598" lon="-121.73863"/>[m
[31m-   <point lat="38.5595799" lon="-121.7387"/>[m
[31m-   <point lat="38.55918" lon="-121.73896"/>[m
[31m-   <point lat="38.5589299" lon="-121.73923"/>[m
[31m-   <point lat="38.55834" lon="-121.74015"/>[m
[31m-   <point lat="38.55821" lon="-121.7403"/>[m
[31m-   <point lat="38.55794" lon="-121.74046"/>[m
[31m-   <point lat="38.55785" lon="-121.74052"/>[m
[31m-   <point lat="38.5576" lon="-121.74061"/>[m
[31m-   <point lat="38.55736" lon="-121.74065"/>[m
[31m-   <point lat="38.5572" lon="-121.74065"/>[m
[31m-   <point lat="38.55721" lon="-121.73972"/>[m
[31m-   <point lat="38.55725" lon="-121.73629"/>[m
[31m-   <point lat="38.55737" lon="-121.73531"/>[m
[31m-   <point lat="38.55736" lon="-121.73518"/>[m
[31m-   <point lat="38.55971" lon="-121.73517"/>[m
[31m-   <point lat="38.56077" lon="-121.73515"/>[m
[31m-   <point lat="38.56104" lon="-121.73533"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56253" lon="-121.72973"/>[m
[31m-   <point lat="38.5627799" lon="-121.72517"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.5512" lon="-121.69071"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.5522599" lon="-121.68879"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55233" lon="-121.68417"/>[m
[31m-   <point lat="38.55221" lon="-121.6842"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55078" lon="-121.68364"/>[m
[31m-   <point lat="38.55064" lon="-121.68361"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.54214" lon="-121.73959"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.55139" lon="-121.74208"/>[m
[31m-   <point lat="38.5518" lon="-121.73971"/>[m
[31m-   <point lat="38.55183" lon="-121.73936"/>[m
[31m-   <point lat="38.5518" lon="-121.73871"/>[m
[31m-   <point lat="38.5522599" lon="-121.7388"/>[m
[31m-   <point lat="38.5524" lon="-121.73888"/>[m
[31m-   <point lat="38.5525499" lon="-121.73902"/>[m
[31m-   <point lat="38.55276" lon="-121.73928"/>[m
[31m-   <point lat="38.55287" lon="-121.73939"/>[m
[31m-   <point lat="38.553" lon="-121.73947"/>[m
[31m-   <point lat="38.55317" lon="-121.73954"/>[m
[31m-   <point lat="38.55703" lon="-121.74064"/>[m
[31m-   <point lat="38.5572" lon="-121.74065"/>[m
[31m-   <point lat="38.5424999" lon="-121.71609"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54178" lon="-121.71758"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54141" lon="-121.71905"/>[m
[31m-   <point lat="38.54136" lon="-121.72072"/>[m
[31m-   <point lat="38.54125" lon="-121.72113"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54057" lon="-121.72374"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.54012" lon="-121.73021"/>[m
[31m-   <point lat="38.53991" lon="-121.73137"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.54051" lon="-121.73772"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.54214" lon="-121.73959"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.5550799" lon="-121.74271"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55583" lon="-121.74981"/>[m
[31m-   <point lat="38.5648" lon="-121.70003"/>[m
[31m-   <point lat="38.56504" lon="-121.69953"/>[m
[31m-   <point lat="38.56504" lon="-121.69897"/>[m
[31m-   <point lat="38.56499" lon="-121.69844"/>[m
[31m-   <point lat="38.56487" lon="-121.69778"/>[m
[31m-   <point lat="38.56474" lon="-121.6973"/>[m
[31m-   <point lat="38.56454" lon="-121.69678"/>[m
[31m-   <point lat="38.5642" lon="-121.69614"/>[m
[31m-   <point lat="38.56383" lon="-121.69563"/>[m
[31m-   <point lat="38.56342" lon="-121.69518"/>[m
[31m-   <point lat="38.56293" lon="-121.69474"/>[m
[31m-   <point lat="38.56281" lon="-121.69467"/>[m
[31m-   <point lat="38.5625" lon="-121.69453"/>[m
[31m-   <point lat="38.56154" lon="-121.69415"/>[m
[31m-   <point lat="38.56123" lon="-121.69408"/>[m
[31m-   <point lat="38.56039" lon="-121.69402"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="S" say="S line, South Davis" code="190" dest="PM to South Davis">[m
[31m-  <stop lat="38.5572499" title="Drexel Dr &amp; Hemlock Ln " lon="-121.73629" dir="EB"/>[m
[31m-  <stop lat="38.5647999" title="Covell Blvd &amp; Mace Blvd " lon="-121.70003" dir="EB"/>[m
[31m-  <stop lat="38.55775" title="Mace Blvd &amp; 2nd St " lon="-121.6942999" dir="SB"/>[m
[31m-  <stop lat="38.5507699" title="Chiles Rd &amp; Mace Blvd " lon="-121.69348" dir="EB"/>[m
[31m-  <stop lat="38.5511999" title="Glide Dr &amp; El Cemonte Ave " lon="-121.69071" dir="EB"/>[m
[31m-  <stop lat="38.55221" title="Glide Dr &amp; Schmeiser Ave " lon="-121.6841999" dir="EB"/>[m
[31m-  <stop lat="38.5498299" title="Cowell Blvd &amp; Schmeiser Ave " lon="-121.68376" dir="WB"/>[m
[31m-  <stop lat="38.5489599" title="Cowell Blvd &amp; El Cemonte Ave " lon="-121.6900899" dir="WB"/>[m
[31m-  <stop lat="38.5488399" title="Cowell Blvd &amp; Mace Blvd " lon="-121.6925799" dir="WB"/>[m
[31m-  <stop lat="38.54687" title="Mace Blvd &amp; El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5410499" title="Mace Blvd &amp; S El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5387999" title="Rosario St &amp; Montgomery Ave " lon="-121.699" dir="NB"/>[m
[31m-  <stop lat="38.54149" title="Rosario St &amp; Almond Ln " lon="-121.69939" dir="NB"/>[m
[31m-  <stop lat="38.5420299" title="Almond Ln &amp; Deodara St " lon="-121.7012999" dir="WB"/>[m
[31m-  <stop lat="38.5415699" title="Almond Ln &amp; Meadowbrook Dr " lon="-121.70395" dir="WB"/>[m
[31m-  <stop lat="38.5415599" title="Almond Ln &amp; Willowbank Rd " lon="-121.7063699" dir="WB"/>[m
[31m-  <stop lat="38.53883" title="Willowbank Rd &amp; Montgomery Ave " lon="-121.7067099" dir="SB"/>[m
[31m-  <stop lat="38.5388999" title="Montgomery Ave &amp; Oakside  Dr " lon="-121.7085399" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Danbury St &amp; Drummond Ave " lon="-121.7136799" dir="NB"/>[m
[31m-  <stop lat="38.5424999" title="Danbury St &amp; Lillard Dr " lon="-121.71609" dir="NB"/>[m
[31m-  <stop lat="38.5417799" title="Lillard Dr &amp; Evans Ct " lon="-121.71758" dir="WB"/>[m
[31m-  <stop lat="38.54136" title="Lillard Dr &amp; Farragut Cir " lon="-121.7207199" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Valdora St " lon="-121.7250899" dir="WB"/>[m
[31m-  <stop lat="38.5400399" title="Cowell Blvd &amp; Drew Ave " lon="-121.72754" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73021" dir="WB"/>[m
[31m-  <stop lat="38.5407999" title="Richards Blvd &amp; Olive Dr " lon="-121.73832" dir="NB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.54983" lon="-121.68376"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54799" lon="-121.69437"/>[m
[31m-   <point lat="38.54687" lon="-121.69464"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54459" lon="-121.69447"/>[m
[31m-   <point lat="38.54105" lon="-121.69464"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5388" lon="-121.699"/>[m
[31m-   <point lat="38.5393" lon="-121.69914"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54101" lon="-121.69927"/>[m
[31m-   <point lat="38.54149" lon="-121.69939"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.5420299" lon="-121.7013"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.54157" lon="-121.70395"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.5415599" lon="-121.70637"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.53883" lon="-121.70671"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.53881" lon="-121.70812"/>[m
[31m-   <point lat="38.5389" lon="-121.70854"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53963" lon="-121.71351"/>[m
[31m-   <point lat="38.53972" lon="-121.71354"/>[m
[31m-   <point lat="38.54012" lon="-121.71368"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.55596" lon="-121.75058"/>[m
[31m-   <point lat="38.55584" lon="-121.7523"/>[m
[31m-   <point lat="38.55821" lon="-121.75226"/>[m
[31m-   <point lat="38.55831" lon="-121.75225"/>[m
[31m-   <point lat="38.56079" lon="-121.75225"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56022" lon="-121.7386"/>[m
[31m-   <point lat="38.5598" lon="-121.73863"/>[m
[31m-   <point lat="38.5595799" lon="-121.7387"/>[m
[31m-   <point lat="38.55918" lon="-121.73896"/>[m
[31m-   <point lat="38.5589299" lon="-121.73923"/>[m
[31m-   <point lat="38.55834" lon="-121.74015"/>[m
[31m-   <point lat="38.55821" lon="-121.7403"/>[m
[31m-   <point lat="38.55794" lon="-121.74046"/>[m
[31m-   <point lat="38.55785" lon="-121.74052"/>[m
[31m-   <point lat="38.5576" lon="-121.74061"/>[m
[31m-   <point lat="38.55736" lon="-121.74065"/>[m
[31m-   <point lat="38.5572" lon="-121.74065"/>[m
[31m-   <point lat="38.55721" lon="-121.73972"/>[m
[31m-   <point lat="38.55725" lon="-121.73629"/>[m
[31m-   <point lat="38.55737" lon="-121.73531"/>[m
[31m-   <point lat="38.55736" lon="-121.73518"/>[m
[31m-   <point lat="38.55971" lon="-121.73517"/>[m
[31m-   <point lat="38.56077" lon="-121.73515"/>[m
[31m-   <point lat="38.56104" lon="-121.73533"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56253" lon="-121.72973"/>[m
[31m-   <point lat="38.5627799" lon="-121.72517"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.5512" lon="-121.69071"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.5522599" lon="-121.68879"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55233" lon="-121.68417"/>[m
[31m-   <point lat="38.55221" lon="-121.6842"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55078" lon="-121.68364"/>[m
[31m-   <point lat="38.55064" lon="-121.68361"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.54214" lon="-121.73959"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.55139" lon="-121.74208"/>[m
[31m-   <point lat="38.5518" lon="-121.73971"/>[m
[31m-   <point lat="38.55183" lon="-121.73936"/>[m
[31m-   <point lat="38.5518" lon="-121.73871"/>[m
[31m-   <point lat="38.5522599" lon="-121.7388"/>[m
[31m-   <point lat="38.5524" lon="-121.73888"/>[m
[31m-   <point lat="38.5525499" lon="-121.73902"/>[m
[31m-   <point lat="38.55276" lon="-121.73928"/>[m
[31m-   <point lat="38.55287" lon="-121.73939"/>[m
[31m-   <point lat="38.553" lon="-121.73947"/>[m
[31m-   <point lat="38.55317" lon="-121.73954"/>[m
[31m-   <point lat="38.55703" lon="-121.74064"/>[m
[31m-   <point lat="38.5572" lon="-121.74065"/>[m
[31m-   <point lat="38.5424999" lon="-121.71609"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54178" lon="-121.71758"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54141" lon="-121.71905"/>[m
[31m-   <point lat="38.54136" lon="-121.72072"/>[m
[31m-   <point lat="38.54125" lon="-121.72113"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54057" lon="-121.72374"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.54012" lon="-121.73021"/>[m
[31m-   <point lat="38.53991" lon="-121.73137"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.54051" lon="-121.73772"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.54214" lon="-121.73959"/>[m
[31m-   <point lat="38.55013" lon="-121.74188"/>[m
[31m-   <point lat="38.5550799" lon="-121.74271"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55583" lon="-121.74981"/>[m
[31m-   <point lat="38.5648" lon="-121.70003"/>[m
[31m-   <point lat="38.56504" lon="-121.69953"/>[m
[31m-   <point lat="38.56504" lon="-121.69897"/>[m
[31m-   <point lat="38.56499" lon="-121.69844"/>[m
[31m-   <point lat="38.56487" lon="-121.69778"/>[m
[31m-   <point lat="38.56474" lon="-121.6973"/>[m
[31m-   <point lat="38.56454" lon="-121.69678"/>[m
[31m-   <point lat="38.5642" lon="-121.69614"/>[m
[31m-   <point lat="38.56383" lon="-121.69563"/>[m
[31m-   <point lat="38.56342" lon="-121.69518"/>[m
[31m-   <point lat="38.56293" lon="-121.69474"/>[m
[31m-   <point lat="38.56281" lon="-121.69467"/>[m
[31m-   <point lat="38.5625" lon="-121.69453"/>[m
[31m-   <point lat="38.56154" lon="-121.69415"/>[m
[31m-   <point lat="38.56123" lon="-121.69408"/>[m
[31m-   <point lat="38.56039" lon="-121.69402"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="T" say="T Line, South Davis" code="200" dest="PM to South Davis">[m
[31m-  <stop lat="38.5559599" title="14th St &amp; Davis HS " lon="-121.75058" dir="WB"/>[m
[31m-  <stop lat="38.5604599" title="Covell Blvd &amp; J St " lon="-121.73793" dir="EB"/>[m
[31m-  <stop lat="38.56216" title="Covell Blvd &amp; Pole Line Rd " lon="-121.7319899" dir="EB"/>[m
[31m-  <stop lat="38.5608299" title="Pole Line Rd &amp; Claremont Dr " lon="-121.73121" dir="SB"/>[m
[31m-  <stop lat="38.55749" title="Loyola Dr &amp; West Regis " lon="-121.7263" dir="EB"/>[m
[31m-  <stop lat="38.55758" title="Loyola Dr &amp; Nutmeg Ln " lon="-121.7225299" dir="EB"/>[m
[31m-  <stop lat="38.55772" title="Loyola Dr &amp; East Regis Dr " lon="-121.72" dir="EB"/>[m
[31m-  <stop lat="38.5580699" title="Tulip Ln &amp; Cascade Pl " lon="-121.71719" dir="NB"/>[m
[31m-  <stop lat="38.5618" title="Temple Dr &amp; Balsam Pl " lon="-121.71705" dir="EB"/>[m
[31m-  <stop lat="38.5634299" title="Monarch Ln &amp; Covell Blvd " lon="-121.71444" dir="NB"/>[m
[31m-  <stop lat="38.5600799" title="Alhambra Dr &amp; Loyola Dr " lon="-121.7090099" dir="EB"/>[m
[31m-  <stop lat="38.55817" title="Alhambra &amp; 5th/Verona " lon="-121.70626" dir="SB"/>[m
[31m-  <stop lat="38.5578099" title="Alhambra Dr &amp; 5th St " lon="-121.7043" dir="EB"/>[m
[31m-  <stop lat="38.55786" title="Alhambra Dr &amp; Arroyo Ave " lon="-121.6994599" dir="EB"/>[m
[31m-  <stop lat="38.55855" title="Alhambra Dr &amp; Mace Blvd " lon="-121.6969699" dir="EB"/>[m
[31m-  <stop lat="38.5577499" title="Mace Blvd &amp; 2nd St " lon="-121.6942999" dir="SB"/>[m
[31m-  <stop lat="38.5507699" title="Chiles Rd &amp; Mace Blvd " lon="-121.69348" dir="EB"/>[m
[31m-  <stop lat="38.5511999" title="Glide Dr &amp; El Cemonte Ave " lon="-121.69071" dir="EB"/>[m
[31m-  <stop lat="38.55221" title="Glide Dr &amp; Schmeiser Ave " lon="-121.6841999" dir="EB"/>[m
[31m-  <stop lat="38.5498299" title="Cowell Blvd &amp; Schmeiser Ave " lon="-121.68376" dir="WB"/>[m
[31m-  <stop lat="38.5489599" title="Cowell Blvd &amp; El Cemonte Ave " lon="-121.6900899" dir="WB"/>[m
[31m-  <stop lat="38.5488399" title="Cowell Blvd &amp; Mace Blvd " lon="-121.6925799" dir="WB"/>[m
[31m-  <stop lat="38.54687" title="Mace Blvd &amp; El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5410499" title="Mace Blvd &amp; S El Macero Dr " lon="-121.6946399" dir="SB"/>[m
[31m-  <stop lat="38.5387999" title="Rosario St &amp; Montgomery Ave " lon="-121.699" dir="NB"/>[m
[31m-  <stop lat="38.54149" title="Rosario St &amp; Almond Ln " lon="-121.69939" dir="NB"/>[m
[31m-  <stop lat="38.5420299" title="Almond Ln &amp; Deodara St " lon="-121.7012999" dir="WB"/>[m
[31m-  <stop lat="38.5415699" title="Almond Ln &amp; Meadowbrook Dr " lon="-121.70395" dir="WB"/>[m
[31m-  <stop lat="38.5415599" title="Almond Ln &amp; Willowbank Rd " lon="-121.7063699" dir="WB"/>[m
[31m-  <stop lat="38.53883" title="Willowbank Rd &amp; Montgomery Ave " lon="-121.7067099" dir="SB"/>[m
[31m-  <stop lat="38.5388999" title="Montgomery Ave &amp; Oakside  Dr " lon="-121.7085399" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Danbury St &amp; Drummond Ave " lon="-121.7136799" dir="NB"/>[m
[31m-  <stop lat="38.5424999" title="Danbury St &amp; Lillard Dr " lon="-121.71609" dir="NB"/>[m
[31m-  <stop lat="38.5417799" title="Lillard Dr &amp; Evans Ct " lon="-121.71758" dir="WB"/>[m
[31m-  <stop lat="38.54136" title="Lillard Dr &amp; Farragut Cir " lon="-121.7207199" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Valdora St " lon="-121.7250899" dir="WB"/>[m
[31m-  <stop lat="38.5400399" title="Cowell Blvd &amp; Drew Ave " lon="-121.72754" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73021" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.56145" lon="-121.73099"/>[m
[31m-   <point lat="38.56188" lon="-121.73114"/>[m
[31m-   <point lat="38.56216" lon="-121.73114"/>[m
[31m-   <point lat="38.56246" lon="-121.73109"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5608999" lon="-121.7357"/>[m
[31m-   <point lat="38.56079" lon="-121.73603"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.5499099" lon="-121.68349"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.55061" lon="-121.68361"/>[m
[31m-   <point lat="38.55073" lon="-121.68362"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.55231" lon="-121.68408"/>[m
[31m-   <point lat="38.55243" lon="-121.68438"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55228" lon="-121.68872"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55136" lon="-121.69096"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55596" lon="-121.75058"/>[m
[31m-   <point lat="38.55584" lon="-121.7523"/>[m
[31m-   <point lat="38.55821" lon="-121.75226"/>[m
[31m-   <point lat="38.55831" lon="-121.75225"/>[m
[31m-   <point lat="38.56079" lon="-121.75225"/>[m
[31m-   <point lat="38.56078" lon="-121.75042"/>[m
[31m-   <point lat="38.5414699" lon="-121.7037"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54198" lon="-121.70091"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54233" lon="-121.69984"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54165" lon="-121.6996"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.5394999" lon="-121.69911"/>[m
[31m-   <point lat="38.53937" lon="-121.69914"/>[m
[31m-   <point lat="38.53924" lon="-121.69923"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.5404" lon="-121.69435"/>[m
[31m-   <point lat="38.54394" lon="-121.69433"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54655" lon="-121.69423"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54864" lon="-121.6936"/>[m
[31m-   <point lat="38.54874" lon="-121.69317"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.54873" lon="-121.69094"/>[m
[31m-   <point lat="38.54875" lon="-121.69062"/>[m
[31m-   <point lat="38.54881" lon="-121.69033"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54881" lon="-121.68997"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54023" lon="-121.71411"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.53974" lon="-121.71355"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.5387" lon="-121.70844"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.5389" lon="-121.70658"/>[m
[31m-   <point lat="38.54134" lon="-121.70641"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.55781" lon="-121.7043"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55797" lon="-121.70311"/>[m
[31m-   <point lat="38.55786" lon="-121.69946"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.5585499" lon="-121.69697"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-   <point lat="38.55101" lon="-121.69352"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55251" lon="-121.69444"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55387" lon="-121.6944"/>[m
[31m-   <point lat="38.55625" lon="-121.69395"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.55873" lon="-121.69722"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55801" lon="-121.69939"/>[m
[31m-   <point lat="38.5580799" lon="-121.70126"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55803" lon="-121.70535"/>[m
[31m-   <point lat="38.54157" lon="-121.70395"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.5415599" lon="-121.70637"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.53883" lon="-121.70671"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.53881" lon="-121.70812"/>[m
[31m-   <point lat="38.5389" lon="-121.70854"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53963" lon="-121.71351"/>[m
[31m-   <point lat="38.53972" lon="-121.71354"/>[m
[31m-   <point lat="38.54012" lon="-121.71368"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.56074" lon="-121.73808"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56075" lon="-121.74479"/>[m
[31m-   <point lat="38.56011" lon="-121.74496"/>[m
[31m-   <point lat="38.5601" lon="-121.74482"/>[m
[31m-   <point lat="38.55981" lon="-121.74479"/>[m
[31m-   <point lat="38.55964" lon="-121.74479"/>[m
[31m-   <point lat="38.55939" lon="-121.74472"/>[m
[31m-   <point lat="38.55909" lon="-121.7446"/>[m
[31m-   <point lat="38.55866" lon="-121.74432"/>[m
[31m-   <point lat="38.55798" lon="-121.74379"/>[m
[31m-   <point lat="38.55708" lon="-121.74338"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.55694" lon="-121.74381"/>[m
[31m-   <point lat="38.55671" lon="-121.74441"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55609" lon="-121.74815"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55583" lon="-121.74981"/>[m
[31m-   <point lat="38.56267" lon="-121.7146"/>[m
[31m-   <point lat="38.56235" lon="-121.7144"/>[m
[31m-   <point lat="38.56219" lon="-121.71435"/>[m
[31m-   <point lat="38.56207" lon="-121.71485"/>[m
[31m-   <point lat="38.56203" lon="-121.71534"/>[m
[31m-   <point lat="38.56198" lon="-121.7172"/>[m
[31m-   <point lat="38.5618399" lon="-121.71752"/>[m
[31m-   <point lat="38.56157" lon="-121.71752"/>[m
[31m-   <point lat="38.5613" lon="-121.71756"/>[m
[31m-   <point lat="38.5611" lon="-121.71757"/>[m
[31m-   <point lat="38.55969" lon="-121.71744"/>[m
[31m-   <point lat="38.55959" lon="-121.71746"/>[m
[31m-   <point lat="38.55824" lon="-121.71741"/>[m
[31m-   <point lat="38.55818" lon="-121.71728"/>[m
[31m-   <point lat="38.55786" lon="-121.7173"/>[m
[31m-   <point lat="38.55777" lon="-121.71734"/>[m
[31m-   <point lat="38.55767" lon="-121.71746"/>[m
[31m-   <point lat="38.55777" lon="-121.71765"/>[m
[31m-   <point lat="38.55782" lon="-121.71777"/>[m
[31m-   <point lat="38.55789" lon="-121.71805"/>[m
[31m-   <point lat="38.55791" lon="-121.71818"/>[m
[31m-   <point lat="38.5578999" lon="-121.72031"/>[m
[31m-   <point lat="38.5576999" lon="-121.72271"/>[m
[31m-   <point lat="38.55777" lon="-121.723"/>[m
[31m-   <point lat="38.55771" lon="-121.72458"/>[m
[31m-   <point lat="38.55759" lon="-121.72649"/>[m
[31m-   <point lat="38.55754" lon="-121.7269"/>[m
[31m-   <point lat="38.5576" lon="-121.72734"/>[m
[31m-   <point lat="38.5575199" lon="-121.72742"/>[m
[31m-   <point lat="38.55749" lon="-121.7277"/>[m
[31m-   <point lat="38.5576" lon="-121.72774"/>[m
[31m-   <point lat="38.55786" lon="-121.72794"/>[m
[31m-   <point lat="38.55803" lon="-121.72811"/>[m
[31m-   <point lat="38.55814" lon="-121.7282"/>[m
[31m-   <point lat="38.55851" lon="-121.72867"/>[m
[31m-   <point lat="38.5594899" lon="-121.73015"/>[m
[31m-   <point lat="38.55954" lon="-121.73025"/>[m
[31m-   <point lat="38.55971" lon="-121.73046"/>[m
[31m-   <point lat="38.55999" lon="-121.7307"/>[m
[31m-   <point lat="38.56009" lon="-121.73077"/>[m
[31m-   <point lat="38.56023" lon="-121.73085"/>[m
[31m-   <point lat="38.56085" lon="-121.73107"/>[m
[31m-   <point lat="38.5613699" lon="-121.73116"/>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53974" lon="-121.72685"/>[m
[31m-   <point lat="38.53986" lon="-121.72565"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54023" lon="-121.72398"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54124" lon="-121.72172"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.5421" lon="-121.71601"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53974" lon="-121.72685"/>[m
[31m-   <point lat="38.53986" lon="-121.72565"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54023" lon="-121.72398"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54124" lon="-121.72172"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.5424999" lon="-121.71609"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54178" lon="-121.71758"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54141" lon="-121.71905"/>[m
[31m-   <point lat="38.54136" lon="-121.72072"/>[m
[31m-   <point lat="38.54125" lon="-121.72113"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54057" lon="-121.72374"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.56083" lon="-121.73121"/>[m
[31m-   <point lat="38.56023" lon="-121.73085"/>[m
[31m-   <point lat="38.56009" lon="-121.73077"/>[m
[31m-   <point lat="38.55999" lon="-121.7307"/>[m
[31m-   <point lat="38.55971" lon="-121.73046"/>[m
[31m-   <point lat="38.55957" lon="-121.7303"/>[m
[31m-   <point lat="38.5594899" lon="-121.73015"/>[m
[31m-   <point lat="38.55851" lon="-121.72867"/>[m
[31m-   <point lat="38.55814" lon="-121.7282"/>[m
[31m-   <point lat="38.55803" lon="-121.72811"/>[m
[31m-   <point lat="38.55786" lon="-121.72794"/>[m
[31m-   <point lat="38.5576" lon="-121.72774"/>[m
[31m-   <point lat="38.55749" lon="-121.7277"/>[m
[31m-   <point lat="38.5575199" lon="-121.72742"/>[m
[31m-   <point lat="38.55754" lon="-121.7269"/>[m
[31m-   <point lat="38.55759" lon="-121.72649"/>[m
[31m-   <point lat="38.55749" lon="-121.7263"/>[m
[31m-   <point lat="38.55771" lon="-121.72468"/>[m
[31m-   <point lat="38.5576999" lon="-121.72369"/>[m
[31m-   <point lat="38.55758" lon="-121.72253"/>[m
[31m-   <point lat="38.55778" lon="-121.72058"/>[m
[31m-   <point lat="38.55779" lon="-121.72035"/>[m
[31m-   <point lat="38.55772" lon="-121.72"/>[m
[31m-   <point lat="38.5578999" lon="-121.71825"/>[m
[31m-   <point lat="38.55789" lon="-121.71805"/>[m
[31m-   <point lat="38.55783" lon="-121.7178"/>[m
[31m-   <point lat="38.55779" lon="-121.71769"/>[m
[31m-   <point lat="38.55767" lon="-121.71746"/>[m
[31m-   <point lat="38.55777" lon="-121.71734"/>[m
[31m-   <point lat="38.55786" lon="-121.7173"/>[m
[31m-   <point lat="38.55807" lon="-121.71719"/>[m
[31m-   <point lat="38.55818" lon="-121.71728"/>[m
[31m-   <point lat="38.55959" lon="-121.71746"/>[m
[31m-   <point lat="38.55969" lon="-121.71744"/>[m
[31m-   <point lat="38.5611" lon="-121.71757"/>[m
[31m-   <point lat="38.5613" lon="-121.71756"/>[m
[31m-   <point lat="38.56157" lon="-121.71752"/>[m
[31m-   <point lat="38.5618399" lon="-121.71752"/>[m
[31m-   <point lat="38.5618" lon="-121.71705"/>[m
[31m-   <point lat="38.56207" lon="-121.71485"/>[m
[31m-   <point lat="38.56219" lon="-121.71435"/>[m
[31m-   <point lat="38.56235" lon="-121.7144"/>[m
[31m-   <point lat="38.56255" lon="-121.71444"/>[m
[31m-   <point lat="38.54983" lon="-121.68376"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54799" lon="-121.69437"/>[m
[31m-   <point lat="38.54687" lon="-121.69464"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54459" lon="-121.69447"/>[m
[31m-   <point lat="38.54105" lon="-121.69464"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5388" lon="-121.699"/>[m
[31m-   <point lat="38.5393" lon="-121.69914"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54101" lon="-121.69927"/>[m
[31m-   <point lat="38.54149" lon="-121.69939"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.5420299" lon="-121.7013"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.5634299" lon="-121.71444"/>[m
[31m-   <point lat="38.56372" lon="-121.71462"/>[m
[31m-   <point lat="38.56415" lon="-121.70949"/>[m
[31m-   <point lat="38.5615499" lon="-121.70948"/>[m
[31m-   <point lat="38.56093" lon="-121.70931"/>[m
[31m-   <point lat="38.56047" lon="-121.70913"/>[m
[31m-   <point lat="38.56008" lon="-121.70901"/>[m
[31m-   <point lat="38.55989" lon="-121.70872"/>[m
[31m-   <point lat="38.5598" lon="-121.70868"/>[m
[31m-   <point lat="38.55938" lon="-121.70826"/>[m
[31m-   <point lat="38.5590199" lon="-121.70783"/>[m
[31m-   <point lat="38.55876" lon="-121.70746"/>[m
[31m-   <point lat="38.55845" lon="-121.70678"/>[m
[31m-   <point lat="38.55833" lon="-121.70649"/>[m
[31m-   <point lat="38.5581699" lon="-121.70626"/>[m
[31m-   <point lat="38.5581" lon="-121.70569"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.5512" lon="-121.69071"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.5522599" lon="-121.68879"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55233" lon="-121.68417"/>[m
[31m-   <point lat="38.55221" lon="-121.6842"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55078" lon="-121.68364"/>[m
[31m-   <point lat="38.55064" lon="-121.68361"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.55826" lon="-121.7057"/>[m
[31m-   <point lat="38.55824" lon="-121.70621"/>[m
[31m-   <point lat="38.55833" lon="-121.70649"/>[m
[31m-   <point lat="38.55876" lon="-121.70746"/>[m
[31m-   <point lat="38.55925" lon="-121.70812"/>[m
[31m-   <point lat="38.5598" lon="-121.70868"/>[m
[31m-   <point lat="38.55989" lon="-121.70872"/>[m
[31m-   <point lat="38.56016" lon="-121.70877"/>[m
[31m-   <point lat="38.56047" lon="-121.70913"/>[m
[31m-   <point lat="38.56093" lon="-121.70931"/>[m
[31m-   <point lat="38.5615499" lon="-121.70948"/>[m
[31m-   <point lat="38.56415" lon="-121.70949"/>[m
[31m-   <point lat="38.56372" lon="-121.71462"/>[m
[31m-   <point lat="38.56322" lon="-121.71454"/>[m
[31m-   <point lat="38.56046" lon="-121.73793"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.56216" lon="-121.73199"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56246" lon="-121.73109"/>[m
[31m-   <point lat="38.56216" lon="-121.73114"/>[m
[31m-   <point lat="38.5613699" lon="-121.73116"/>[m
[31m-   <point lat="38.56085" lon="-121.73107"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="T" say="T line, Davis High School" code="200" dest="AM to 14th @ Davis High School">[m
[31m-  <stop lat="38.5398399" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73081" dir="EB"/>[m
[31m-  <stop lat="38.53974" title="Cowell Blvd &amp; Drew Ave " lon="-121.7268499" dir="EB"/>[m
[31m-  <stop lat="38.54023" title="Cowell Blvd &amp; Valdora St " lon="-121.7239799" dir="EB"/>[m
[31m-  <stop lat="38.54116" title="Lillard Dr &amp; Cowell Blvd " lon="-121.72219" dir="EB"/>[m
[31m-  <stop lat="38.5416599" title="Lillard Dr &amp; Evans Ct " lon="-121.71735" dir="EB"/>[m
[31m-  <stop lat="38.5421" title="Danbury St &amp; Lillard Ave " lon="-121.71601" dir="SB"/>[m
[31m-  <stop lat="38.5402299" title="Danbury St &amp; Drummond Ave " lon="-121.71411" dir="SB"/>[m
[31m-  <stop lat="38.5387" title="Montgomery Ave &amp; Oakside Dr " lon="-121.70844" dir="EB"/>[m
[31m-  <stop lat="38.5388999" title="Willowbank Rd &amp; Montgomery Ave " lon="-121.70658" dir="NB"/>[m
[31m-  <stop lat="38.54134" title="Willowbank Rd &amp; Almond Ln " lon="-121.70641" dir="EB"/>[m
[31m-  <stop lat="38.5414699" title="Almond Ln &amp; Meadowbrook Dr " lon="-121.7037" dir="EB"/>[m
[31m-  <stop lat="38.54198" title="Almond Ln &amp; Deodara St " lon="-121.7009099" dir="EB"/>[m
[31m-  <stop lat="38.5423299" title="Rosario St &amp; Almond Ln " lon="-121.6998399" dir="SB"/>[m
[31m-  <stop lat="38.5392399" title="Rosario St &amp; Torrey St " lon="-121.6992299" dir="SB"/>[m
[31m-  <stop lat="38.5403999" title="Mace Blvd &amp; S El Macero Dr " lon="-121.69435" dir="NB"/>[m
[31m-  <stop lat="38.54394" title="Mace Blvd &amp; San Marino Dr " lon="-121.69433" dir="NB"/>[m
[31m-  <stop lat="38.5465499" title="Mace Blvd &amp; El Macero Dr " lon="-121.69423" dir="NB"/>[m
[31m-  <stop lat="38.54864" title="Cowell Blvd &amp; Mace Blvd " lon="-121.6936" dir="EB"/>[m
[31m-  <stop lat="38.54881" title="Cowell Blvd &amp; El Cemonte Ave " lon="-121.6899699" dir="EB"/>[m
[31m-  <stop lat="38.5499099" title="Cowell Blvd &amp; Schmeiser Ave " lon="-121.68349" dir="EB"/>[m
[31m-  <stop lat="38.5524299" title="Glide Dr &amp; Schmeiser Ave " lon="-121.6843799" dir="WB"/>[m
[31m-  <stop lat="38.55136" title="Glide Dr &amp; El Cemonte Ave " lon="-121.6909599" dir="WB"/>[m
[31m-  <stop lat="38.5510099" title="Chiles Rd &amp; Mace Blvd " lon="-121.69352" dir="WB"/>[m
[31m-  <stop lat="38.55625" title="Mace Blvd &amp; 2nd St " lon="-121.69395" dir="NB"/>[m
[31m-  <stop lat="38.55873" title="Alhambra Dr &amp; Mace Blvd " lon="-121.6972199" dir="WB"/>[m
[31m-  <stop lat="38.5580799" title="Alhambra Dr &amp; Caceres Ct " lon="-121.70126" dir="WB"/>[m
[31m-  <stop lat="38.5582599" title="Alhambra Dr &amp; 5th St " lon="-121.7057" dir="WB"/>[m
[31m-  <stop lat="38.56016" title="Alhambra Dr &amp; Loyola Dr " lon="-121.70877" dir="WB"/>[m
[31m-  <stop lat="38.5626699" title="Monarch Ln &amp; Campbell " lon="-121.7146" dir="SB"/>[m
[31m-  <stop lat="38.56198" title="Temple Dr &amp; Balsam Pl " lon="-121.7171999" dir="WB"/>[m
[31m-  <stop lat="38.55824" title="Tulip Ln &amp; Cascade Pl " lon="-121.71741" dir="SB"/>[m
[31m-  <stop lat="38.5579" title="Loyola Dr &amp; Regis Dr " lon="-121.7203099" dir="WB"/>[m
[31m-  <stop lat="38.5577699" title="Loyola Dr &amp; Nutmeg Ln " lon="-121.723" dir="WB"/>[m
[31m-  <stop lat="38.5575999" title="Loyola Dr &amp; Whittier Dr " lon="-121.7273399" dir="WB"/>[m
[31m-  <stop lat="38.5614499" title="Pole Line Rd &amp; Claremont Dr " lon="-121.73099" dir="NB"/>[m
[31m-  <stop lat="38.5607399" title="Covell Blvd &amp; J St " lon="-121.73808" dir="WB"/>[m
[31m-  <stop lat="38.56011" title="F St &amp; Covell Blvd " lon="-121.7449599" dir="SB"/>[m
[31m-  <stop lat="38.55694" title="14th St &amp; F St " lon="-121.7438099" dir="WB"/>[m
[31m-  <stop lat="38.5560899" title="14th St &amp; B St " lon="-121.74815" dir="WB"/>[m
[31m-  <stop lat="38.5559599" title="14th St &amp; Davis HS " lon="-121.75058" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.56145" lon="-121.73099"/>[m
[31m-   <point lat="38.56188" lon="-121.73114"/>[m
[31m-   <point lat="38.56216" lon="-121.73114"/>[m
[31m-   <point lat="38.56246" lon="-121.73109"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5608999" lon="-121.7357"/>[m
[31m-   <point lat="38.56079" lon="-121.73603"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.5499099" lon="-121.68349"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.55061" lon="-121.68361"/>[m
[31m-   <point lat="38.55073" lon="-121.68362"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.55231" lon="-121.68408"/>[m
[31m-   <point lat="38.55243" lon="-121.68438"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55228" lon="-121.68872"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55136" lon="-121.69096"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55596" lon="-121.75058"/>[m
[31m-   <point lat="38.55584" lon="-121.7523"/>[m
[31m-   <point lat="38.55821" lon="-121.75226"/>[m
[31m-   <point lat="38.55831" lon="-121.75225"/>[m
[31m-   <point lat="38.56079" lon="-121.75225"/>[m
[31m-   <point lat="38.56078" lon="-121.75042"/>[m
[31m-   <point lat="38.5414699" lon="-121.7037"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54198" lon="-121.70091"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54233" lon="-121.69984"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54165" lon="-121.6996"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.5394999" lon="-121.69911"/>[m
[31m-   <point lat="38.53937" lon="-121.69914"/>[m
[31m-   <point lat="38.53924" lon="-121.69923"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.5404" lon="-121.69435"/>[m
[31m-   <point lat="38.54394" lon="-121.69433"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54655" lon="-121.69423"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54864" lon="-121.6936"/>[m
[31m-   <point lat="38.54874" lon="-121.69317"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.54873" lon="-121.69094"/>[m
[31m-   <point lat="38.54875" lon="-121.69062"/>[m
[31m-   <point lat="38.54881" lon="-121.69033"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54881" lon="-121.68997"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54023" lon="-121.71411"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.53974" lon="-121.71355"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.5387" lon="-121.70844"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.5389" lon="-121.70658"/>[m
[31m-   <point lat="38.54134" lon="-121.70641"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.55781" lon="-121.7043"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55797" lon="-121.70311"/>[m
[31m-   <point lat="38.55786" lon="-121.69946"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.5585499" lon="-121.69697"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55775" lon="-121.6943"/>[m
[31m-   <point lat="38.55651" lon="-121.69421"/>[m
[31m-   <point lat="38.55477" lon="-121.69432"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55079" lon="-121.69367"/>[m
[31m-   <point lat="38.55101" lon="-121.69352"/>[m
[31m-   <point lat="38.55054" lon="-121.69413"/>[m
[31m-   <point lat="38.55048" lon="-121.69426"/>[m
[31m-   <point lat="38.55046" lon="-121.69442"/>[m
[31m-   <point lat="38.55251" lon="-121.69444"/>[m
[31m-   <point lat="38.55317" lon="-121.69445"/>[m
[31m-   <point lat="38.55387" lon="-121.6944"/>[m
[31m-   <point lat="38.55625" lon="-121.69395"/>[m
[31m-   <point lat="38.55883" lon="-121.69419"/>[m
[31m-   <point lat="38.55891" lon="-121.69476"/>[m
[31m-   <point lat="38.55891" lon="-121.69545"/>[m
[31m-   <point lat="38.5589299" lon="-121.69562"/>[m
[31m-   <point lat="38.55892" lon="-121.69587"/>[m
[31m-   <point lat="38.55889" lon="-121.69615"/>[m
[31m-   <point lat="38.5588" lon="-121.69663"/>[m
[31m-   <point lat="38.55873" lon="-121.69687"/>[m
[31m-   <point lat="38.55873" lon="-121.69722"/>[m
[31m-   <point lat="38.5586" lon="-121.69723"/>[m
[31m-   <point lat="38.55827" lon="-121.69792"/>[m
[31m-   <point lat="38.55821" lon="-121.6981"/>[m
[31m-   <point lat="38.55806" lon="-121.69875"/>[m
[31m-   <point lat="38.55801" lon="-121.69924"/>[m
[31m-   <point lat="38.55801" lon="-121.69939"/>[m
[31m-   <point lat="38.5580799" lon="-121.70126"/>[m
[31m-   <point lat="38.55792" lon="-121.70402"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55803" lon="-121.70535"/>[m
[31m-   <point lat="38.54157" lon="-121.70395"/>[m
[31m-   <point lat="38.5414699" lon="-121.704"/>[m
[31m-   <point lat="38.54134" lon="-121.70424"/>[m
[31m-   <point lat="38.54131" lon="-121.70445"/>[m
[31m-   <point lat="38.54132" lon="-121.70463"/>[m
[31m-   <point lat="38.5414" lon="-121.70503"/>[m
[31m-   <point lat="38.5415599" lon="-121.70637"/>[m
[31m-   <point lat="38.54149" lon="-121.70655"/>[m
[31m-   <point lat="38.53883" lon="-121.70671"/>[m
[31m-   <point lat="38.53875" lon="-121.70664"/>[m
[31m-   <point lat="38.53881" lon="-121.70812"/>[m
[31m-   <point lat="38.5389" lon="-121.70854"/>[m
[31m-   <point lat="38.53907" lon="-121.71347"/>[m
[31m-   <point lat="38.53937" lon="-121.71345"/>[m
[31m-   <point lat="38.53952" lon="-121.71346"/>[m
[31m-   <point lat="38.53963" lon="-121.71351"/>[m
[31m-   <point lat="38.53972" lon="-121.71354"/>[m
[31m-   <point lat="38.54012" lon="-121.71368"/>[m
[31m-   <point lat="38.54015" lon="-121.71381"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.56074" lon="-121.73808"/>[m
[31m-   <point lat="38.5606099" lon="-121.7386"/>[m
[31m-   <point lat="38.56075" lon="-121.74479"/>[m
[31m-   <point lat="38.56011" lon="-121.74496"/>[m
[31m-   <point lat="38.5601" lon="-121.74482"/>[m
[31m-   <point lat="38.55981" lon="-121.74479"/>[m
[31m-   <point lat="38.55964" lon="-121.74479"/>[m
[31m-   <point lat="38.55939" lon="-121.74472"/>[m
[31m-   <point lat="38.55909" lon="-121.7446"/>[m
[31m-   <point lat="38.55866" lon="-121.74432"/>[m
[31m-   <point lat="38.55798" lon="-121.74379"/>[m
[31m-   <point lat="38.55708" lon="-121.74338"/>[m
[31m-   <point lat="38.55694" lon="-121.74334"/>[m
[31m-   <point lat="38.55694" lon="-121.74381"/>[m
[31m-   <point lat="38.55671" lon="-121.74441"/>[m
[31m-   <point lat="38.5561099" lon="-121.74753"/>[m
[31m-   <point lat="38.55609" lon="-121.74815"/>[m
[31m-   <point lat="38.55589" lon="-121.74846"/>[m
[31m-   <point lat="38.55584" lon="-121.74882"/>[m
[31m-   <point lat="38.55582" lon="-121.7493"/>[m
[31m-   <point lat="38.55583" lon="-121.74981"/>[m
[31m-   <point lat="38.56267" lon="-121.7146"/>[m
[31m-   <point lat="38.56235" lon="-121.7144"/>[m
[31m-   <point lat="38.56219" lon="-121.71435"/>[m
[31m-   <point lat="38.56207" lon="-121.71485"/>[m
[31m-   <point lat="38.56203" lon="-121.71534"/>[m
[31m-   <point lat="38.56198" lon="-121.7172"/>[m
[31m-   <point lat="38.5618399" lon="-121.71752"/>[m
[31m-   <point lat="38.56157" lon="-121.71752"/>[m
[31m-   <point lat="38.5613" lon="-121.71756"/>[m
[31m-   <point lat="38.5611" lon="-121.71757"/>[m
[31m-   <point lat="38.55969" lon="-121.71744"/>[m
[31m-   <point lat="38.55959" lon="-121.71746"/>[m
[31m-   <point lat="38.55824" lon="-121.71741"/>[m
[31m-   <point lat="38.55818" lon="-121.71728"/>[m
[31m-   <point lat="38.55786" lon="-121.7173"/>[m
[31m-   <point lat="38.55777" lon="-121.71734"/>[m
[31m-   <point lat="38.55767" lon="-121.71746"/>[m
[31m-   <point lat="38.55777" lon="-121.71765"/>[m
[31m-   <point lat="38.55782" lon="-121.71777"/>[m
[31m-   <point lat="38.55789" lon="-121.71805"/>[m
[31m-   <point lat="38.55791" lon="-121.71818"/>[m
[31m-   <point lat="38.5578999" lon="-121.72031"/>[m
[31m-   <point lat="38.5576999" lon="-121.72271"/>[m
[31m-   <point lat="38.55777" lon="-121.723"/>[m
[31m-   <point lat="38.55771" lon="-121.72458"/>[m
[31m-   <point lat="38.55759" lon="-121.72649"/>[m
[31m-   <point lat="38.55754" lon="-121.7269"/>[m
[31m-   <point lat="38.5576" lon="-121.72734"/>[m
[31m-   <point lat="38.5575199" lon="-121.72742"/>[m
[31m-   <point lat="38.55749" lon="-121.7277"/>[m
[31m-   <point lat="38.5576" lon="-121.72774"/>[m
[31m-   <point lat="38.55786" lon="-121.72794"/>[m
[31m-   <point lat="38.55803" lon="-121.72811"/>[m
[31m-   <point lat="38.55814" lon="-121.7282"/>[m
[31m-   <point lat="38.55851" lon="-121.72867"/>[m
[31m-   <point lat="38.5594899" lon="-121.73015"/>[m
[31m-   <point lat="38.55954" lon="-121.73025"/>[m
[31m-   <point lat="38.55971" lon="-121.73046"/>[m
[31m-   <point lat="38.55999" lon="-121.7307"/>[m
[31m-   <point lat="38.56009" lon="-121.73077"/>[m
[31m-   <point lat="38.56023" lon="-121.73085"/>[m
[31m-   <point lat="38.56085" lon="-121.73107"/>[m
[31m-   <point lat="38.5613699" lon="-121.73116"/>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53974" lon="-121.72685"/>[m
[31m-   <point lat="38.53986" lon="-121.72565"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54023" lon="-121.72398"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54124" lon="-121.72172"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.5421" lon="-121.71601"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53974" lon="-121.72685"/>[m
[31m-   <point lat="38.53986" lon="-121.72565"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54023" lon="-121.72398"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54124" lon="-121.72172"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54177" lon="-121.71537"/>[m
[31m-   <point lat="38.5415599" lon="-121.71518"/>[m
[31m-   <point lat="38.54087" lon="-121.7147"/>[m
[31m-   <point lat="38.54076" lon="-121.7146"/>[m
[31m-   <point lat="38.5424999" lon="-121.71609"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54178" lon="-121.71758"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54141" lon="-121.71905"/>[m
[31m-   <point lat="38.54136" lon="-121.72072"/>[m
[31m-   <point lat="38.54125" lon="-121.72113"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54057" lon="-121.72374"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.56083" lon="-121.73121"/>[m
[31m-   <point lat="38.56023" lon="-121.73085"/>[m
[31m-   <point lat="38.56009" lon="-121.73077"/>[m
[31m-   <point lat="38.55999" lon="-121.7307"/>[m
[31m-   <point lat="38.55971" lon="-121.73046"/>[m
[31m-   <point lat="38.55957" lon="-121.7303"/>[m
[31m-   <point lat="38.5594899" lon="-121.73015"/>[m
[31m-   <point lat="38.55851" lon="-121.72867"/>[m
[31m-   <point lat="38.55814" lon="-121.7282"/>[m
[31m-   <point lat="38.55803" lon="-121.72811"/>[m
[31m-   <point lat="38.55786" lon="-121.72794"/>[m
[31m-   <point lat="38.5576" lon="-121.72774"/>[m
[31m-   <point lat="38.55749" lon="-121.7277"/>[m
[31m-   <point lat="38.5575199" lon="-121.72742"/>[m
[31m-   <point lat="38.55754" lon="-121.7269"/>[m
[31m-   <point lat="38.55759" lon="-121.72649"/>[m
[31m-   <point lat="38.55749" lon="-121.7263"/>[m
[31m-   <point lat="38.55771" lon="-121.72468"/>[m
[31m-   <point lat="38.5576999" lon="-121.72369"/>[m
[31m-   <point lat="38.55758" lon="-121.72253"/>[m
[31m-   <point lat="38.55778" lon="-121.72058"/>[m
[31m-   <point lat="38.55779" lon="-121.72035"/>[m
[31m-   <point lat="38.55772" lon="-121.72"/>[m
[31m-   <point lat="38.5578999" lon="-121.71825"/>[m
[31m-   <point lat="38.55789" lon="-121.71805"/>[m
[31m-   <point lat="38.55783" lon="-121.7178"/>[m
[31m-   <point lat="38.55779" lon="-121.71769"/>[m
[31m-   <point lat="38.55767" lon="-121.71746"/>[m
[31m-   <point lat="38.55777" lon="-121.71734"/>[m
[31m-   <point lat="38.55786" lon="-121.7173"/>[m
[31m-   <point lat="38.55807" lon="-121.71719"/>[m
[31m-   <point lat="38.55818" lon="-121.71728"/>[m
[31m-   <point lat="38.55959" lon="-121.71746"/>[m
[31m-   <point lat="38.55969" lon="-121.71744"/>[m
[31m-   <point lat="38.5611" lon="-121.71757"/>[m
[31m-   <point lat="38.5613" lon="-121.71756"/>[m
[31m-   <point lat="38.56157" lon="-121.71752"/>[m
[31m-   <point lat="38.5618399" lon="-121.71752"/>[m
[31m-   <point lat="38.5618" lon="-121.71705"/>[m
[31m-   <point lat="38.56207" lon="-121.71485"/>[m
[31m-   <point lat="38.56219" lon="-121.71435"/>[m
[31m-   <point lat="38.56235" lon="-121.7144"/>[m
[31m-   <point lat="38.56255" lon="-121.71444"/>[m
[31m-   <point lat="38.54983" lon="-121.68376"/>[m
[31m-   <point lat="38.5496" lon="-121.68363"/>[m
[31m-   <point lat="38.54957" lon="-121.68795"/>[m
[31m-   <point lat="38.54956" lon="-121.68807"/>[m
[31m-   <point lat="38.54952" lon="-121.68835"/>[m
[31m-   <point lat="38.54942" lon="-121.68874"/>[m
[31m-   <point lat="38.54914" lon="-121.68944"/>[m
[31m-   <point lat="38.54892" lon="-121.69005"/>[m
[31m-   <point lat="38.54896" lon="-121.69009"/>[m
[31m-   <point lat="38.54886" lon="-121.69018"/>[m
[31m-   <point lat="38.54882" lon="-121.69029"/>[m
[31m-   <point lat="38.54876" lon="-121.69055"/>[m
[31m-   <point lat="38.54873" lon="-121.69083"/>[m
[31m-   <point lat="38.54873" lon="-121.69162"/>[m
[31m-   <point lat="38.5486999" lon="-121.69215"/>[m
[31m-   <point lat="38.54884" lon="-121.69258"/>[m
[31m-   <point lat="38.54878" lon="-121.69433"/>[m
[31m-   <point lat="38.54799" lon="-121.69437"/>[m
[31m-   <point lat="38.54687" lon="-121.69464"/>[m
[31m-   <point lat="38.54669" lon="-121.69446"/>[m
[31m-   <point lat="38.54601" lon="-121.69442"/>[m
[31m-   <point lat="38.54459" lon="-121.69447"/>[m
[31m-   <point lat="38.54105" lon="-121.69464"/>[m
[31m-   <point lat="38.5386" lon="-121.69455"/>[m
[31m-   <point lat="38.53867" lon="-121.69918"/>[m
[31m-   <point lat="38.5388" lon="-121.699"/>[m
[31m-   <point lat="38.5393" lon="-121.69914"/>[m
[31m-   <point lat="38.54017" lon="-121.69903"/>[m
[31m-   <point lat="38.54037" lon="-121.69904"/>[m
[31m-   <point lat="38.54071" lon="-121.69914"/>[m
[31m-   <point lat="38.54101" lon="-121.69927"/>[m
[31m-   <point lat="38.54149" lon="-121.69939"/>[m
[31m-   <point lat="38.5418" lon="-121.69966"/>[m
[31m-   <point lat="38.54206" lon="-121.69972"/>[m
[31m-   <point lat="38.54251" lon="-121.69972"/>[m
[31m-   <point lat="38.54249" lon="-121.69999"/>[m
[31m-   <point lat="38.54244" lon="-121.70025"/>[m
[31m-   <point lat="38.54233" lon="-121.70059"/>[m
[31m-   <point lat="38.54218" lon="-121.70088"/>[m
[31m-   <point lat="38.54208" lon="-121.70104"/>[m
[31m-   <point lat="38.54201" lon="-121.70112"/>[m
[31m-   <point lat="38.5420299" lon="-121.7013"/>[m
[31m-   <point lat="38.5419" lon="-121.70127"/>[m
[31m-   <point lat="38.5418499" lon="-121.70138"/>[m
[31m-   <point lat="38.5417599" lon="-121.70153"/>[m
[31m-   <point lat="38.54163" lon="-121.70183"/>[m
[31m-   <point lat="38.5416" lon="-121.70202"/>[m
[31m-   <point lat="38.5415599" lon="-121.70219"/>[m
[31m-   <point lat="38.54157" lon="-121.70343"/>[m
[31m-   <point lat="38.5415599" lon="-121.70366"/>[m
[31m-   <point lat="38.54154" lon="-121.70384"/>[m
[31m-   <point lat="38.5634299" lon="-121.71444"/>[m
[31m-   <point lat="38.56372" lon="-121.71462"/>[m
[31m-   <point lat="38.56415" lon="-121.70949"/>[m
[31m-   <point lat="38.5615499" lon="-121.70948"/>[m
[31m-   <point lat="38.56093" lon="-121.70931"/>[m
[31m-   <point lat="38.56047" lon="-121.70913"/>[m
[31m-   <point lat="38.56008" lon="-121.70901"/>[m
[31m-   <point lat="38.55989" lon="-121.70872"/>[m
[31m-   <point lat="38.5598" lon="-121.70868"/>[m
[31m-   <point lat="38.55938" lon="-121.70826"/>[m
[31m-   <point lat="38.5590199" lon="-121.70783"/>[m
[31m-   <point lat="38.55876" lon="-121.70746"/>[m
[31m-   <point lat="38.55845" lon="-121.70678"/>[m
[31m-   <point lat="38.55833" lon="-121.70649"/>[m
[31m-   <point lat="38.5581699" lon="-121.70626"/>[m
[31m-   <point lat="38.5581" lon="-121.70569"/>[m
[31m-   <point lat="38.55796" lon="-121.70503"/>[m
[31m-   <point lat="38.55793" lon="-121.70466"/>[m
[31m-   <point lat="38.55077" lon="-121.69348"/>[m
[31m-   <point lat="38.55188" lon="-121.69188"/>[m
[31m-   <point lat="38.55111" lon="-121.69111"/>[m
[31m-   <point lat="38.5512" lon="-121.69071"/>[m
[31m-   <point lat="38.55137" lon="-121.69064"/>[m
[31m-   <point lat="38.55181" lon="-121.68997"/>[m
[31m-   <point lat="38.55213" lon="-121.68922"/>[m
[31m-   <point lat="38.5522599" lon="-121.68879"/>[m
[31m-   <point lat="38.55236" lon="-121.68805"/>[m
[31m-   <point lat="38.55237" lon="-121.68727"/>[m
[31m-   <point lat="38.5523499" lon="-121.68695"/>[m
[31m-   <point lat="38.55233" lon="-121.68417"/>[m
[31m-   <point lat="38.55221" lon="-121.6842"/>[m
[31m-   <point lat="38.55224" lon="-121.68399"/>[m
[31m-   <point lat="38.5521" lon="-121.68393"/>[m
[31m-   <point lat="38.55146" lon="-121.68392"/>[m
[31m-   <point lat="38.55124" lon="-121.68386"/>[m
[31m-   <point lat="38.55078" lon="-121.68364"/>[m
[31m-   <point lat="38.55064" lon="-121.68361"/>[m
[31m-   <point lat="38.55036" lon="-121.68363"/>[m
[31m-   <point lat="38.55826" lon="-121.7057"/>[m
[31m-   <point lat="38.55824" lon="-121.70621"/>[m
[31m-   <point lat="38.55833" lon="-121.70649"/>[m
[31m-   <point lat="38.55876" lon="-121.70746"/>[m
[31m-   <point lat="38.55925" lon="-121.70812"/>[m
[31m-   <point lat="38.5598" lon="-121.70868"/>[m
[31m-   <point lat="38.55989" lon="-121.70872"/>[m
[31m-   <point lat="38.56016" lon="-121.70877"/>[m
[31m-   <point lat="38.56047" lon="-121.70913"/>[m
[31m-   <point lat="38.56093" lon="-121.70931"/>[m
[31m-   <point lat="38.5615499" lon="-121.70948"/>[m
[31m-   <point lat="38.56415" lon="-121.70949"/>[m
[31m-   <point lat="38.56372" lon="-121.71462"/>[m
[31m-   <point lat="38.56322" lon="-121.71454"/>[m
[31m-   <point lat="38.56046" lon="-121.73793"/>[m
[31m-   <point lat="38.56062" lon="-121.73692"/>[m
[31m-   <point lat="38.56063" lon="-121.73678"/>[m
[31m-   <point lat="38.56065" lon="-121.73663"/>[m
[31m-   <point lat="38.56075" lon="-121.73615"/>[m
[31m-   <point lat="38.56095" lon="-121.73558"/>[m
[31m-   <point lat="38.5609899" lon="-121.73545"/>[m
[31m-   <point lat="38.56221" lon="-121.73244"/>[m
[31m-   <point lat="38.56216" lon="-121.73199"/>[m
[31m-   <point lat="38.56238" lon="-121.73181"/>[m
[31m-   <point lat="38.56246" lon="-121.73109"/>[m
[31m-   <point lat="38.56216" lon="-121.73114"/>[m
[31m-   <point lat="38.5613699" lon="-121.73116"/>[m
[31m-   <point lat="38.56085" lon="-121.73107"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="V" say="V Line, West Village, Health Sciences, U C Davis Silo" code="220" dest="to/from Silo">[m
[31m-  <stop lat="38.5393499" title="Silo Terminal &amp; Center Island " lon="-121.75308" dir="EB"/>[m
[31m-  <stop lat="38.5388399" title="Hutchison Dr &amp; Ext Center " lon="-121.7622799" dir="WB"/>[m
[31m-  <stop lat="38.5371399" title="Hutchison Dr &amp; Health Sci Dr " lon="-121.76506" dir="WB"/>[m
[31m-  <stop lat="38.539" title="Hutchison &amp; Sage " lon="-121.7713399" dir="NB"/>[m
[31m-  <stop lat="38.5413599" title="West Village Sq &amp; Town Square " lon="-121.77133" dir="NB"/>[m
[31m-  <stop lat="38.5408199" title="West Village Sq &amp; Community College " lon="-121.77171" dir="SB"/>[m
[31m-  <stop lat="38.5387999" title="Hutchison &amp; Sage " lon="-121.7717699" dir="SB"/>[m
[31m-  <stop lat="38.5351899" title="Health Sciences Dist Lot 56 &amp;  " lon="-121.76448" dir="SB"/>[m
[31m-  <stop lat="38.5373699" title="Hutchison Dr &amp; Health Sci Drive " lon="-121.76423" dir="EB"/>[m
[31m-  <stop lat="38.53903" title="Hutchison Dr &amp; Bioletti Way " lon="-121.75577" dir="EB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.53935" lon="-121.75308"/>[m
[31m-   <point lat="38.53925" lon="-121.75317"/>[m
[31m-   <point lat="38.5392" lon="-121.75336"/>[m
[31m-   <point lat="38.53911" lon="-121.75349"/>[m
[31m-   <point lat="38.53908" lon="-121.75502"/>[m
[31m-   <point lat="38.53919" lon="-121.75883"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53884" lon="-121.76228"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.53711" lon="-121.76472"/>[m
[31m-   <point lat="38.5408199" lon="-121.77171"/>[m
[31m-   <point lat="38.5388" lon="-121.77177"/>[m
[31m-   <point lat="38.53699" lon="-121.77151"/>[m
[31m-   <point lat="38.5368799" lon="-121.77108"/>[m
[31m-   <point lat="38.5368" lon="-121.77035"/>[m
[31m-   <point lat="38.53682" lon="-121.76998"/>[m
[31m-   <point lat="38.53678" lon="-121.76599"/>[m
[31m-   <point lat="38.53685" lon="-121.76538"/>[m
[31m-   <point lat="38.53711" lon="-121.76472"/>[m
[31m-   <point lat="38.53692" lon="-121.76449"/>[m
[31m-   <point lat="38.53657" lon="-121.76436"/>[m
[31m-   <point lat="38.53537" lon="-121.76426"/>[m
[31m-   <point lat="38.53534" lon="-121.76437"/>[m
[31m-   <point lat="38.53714" lon="-121.76506"/>[m
[31m-   <point lat="38.53685" lon="-121.76538"/>[m
[31m-   <point lat="38.53678" lon="-121.76599"/>[m
[31m-   <point lat="38.53682" lon="-121.76998"/>[m
[31m-   <point lat="38.5368" lon="-121.77035"/>[m
[31m-   <point lat="38.5368799" lon="-121.77108"/>[m
[31m-   <point lat="38.53699" lon="-121.77151"/>[m
[31m-   <point lat="38.539" lon="-121.77134"/>[m
[31m-   <point lat="38.53519" lon="-121.76448"/>[m
[31m-   <point lat="38.5350899" lon="-121.76438"/>[m
[31m-   <point lat="38.53508" lon="-121.76425"/>[m
[31m-   <point lat="38.53511" lon="-121.76411"/>[m
[31m-   <point lat="38.53533" lon="-121.76413"/>[m
[31m-   <point lat="38.53537" lon="-121.76426"/>[m
[31m-   <point lat="38.53657" lon="-121.76436"/>[m
[31m-   <point lat="38.53692" lon="-121.76449"/>[m
[31m-   <point lat="38.53711" lon="-121.76472"/>[m
[31m-   <point lat="38.53737" lon="-121.76423"/>[m
[31m-   <point lat="38.53799" lon="-121.76338"/>[m
[31m-   <point lat="38.53836" lon="-121.76276"/>[m
[31m-   <point lat="38.53878" lon="-121.76223"/>[m
[31m-   <point lat="38.53908" lon="-121.76177"/>[m
[31m-   <point lat="38.53917" lon="-121.76083"/>[m
[31m-   <point lat="38.53919" lon="-121.75883"/>[m
[31m-   <point lat="38.5390299" lon="-121.75577"/>[m
[31m-   <point lat="38.53908" lon="-121.75502"/>[m
[31m-   <point lat="38.53911" lon="-121.75349"/>[m
[31m-   <point lat="38.5392" lon="-121.75336"/>[m
[31m-   <point lat="38.53925" lon="-121.75317"/>[m
[31m-   <point lat="38.5392" lon="-121.75296"/>[m
[31m-   <point lat="38.53908" lon="-121.75289"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m- <route name="W" say="W Line, Cowell, Lillard, Drummond, U C Davis Silo" code="230" dest="to/from Silo">[m
[31m-  <stop lat="38.5393499" title="Silo Terminal &amp; Center Island " lon="-121.75308" dir="EB"/>[m
[31m-  <stop lat="38.53919" title="Hutchison Dr &amp; Art Building " lon="-121.74837" dir="EB"/>[m
[31m-  <stop lat="38.54003" title="Hutchison Dr &amp; A St " lon="-121.74605" dir="EB"/>[m
[31m-  <stop lat="38.5415199" title="1st St &amp; C St " lon="-121.74254" dir="EB"/>[m
[31m-  <stop lat="38.54064" title="Richards Blvd &amp; Olive Dr " lon="-121.73854" dir="SB"/>[m
[31m-  <stop lat="38.5398399" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.73081" dir="EB"/>[m
[31m-  <stop lat="38.53974" title="Cowell Blvd &amp; Drew Ave " lon="-121.7268499" dir="EB"/>[m
[31m-  <stop lat="38.5402299" title="Cowell Blvd &amp; Valdora St " lon="-121.72398" dir="EB"/>[m
[31m-  <stop lat="38.54116" title="Lillard Dr &amp; Cowell Blvd " lon="-121.72219" dir="EB"/>[m
[31m-  <stop lat="38.54166" title="Lillard Dr &amp; Evans Ct " lon="-121.7173499" dir="EB"/>[m
[31m-  <stop lat="38.5431999" title="Lillard &amp; Drummond " lon="-121.71486" dir="EB"/>[m
[31m-  <stop lat="38.54635" title="Drummond &amp; Albany " lon="-121.71323" dir="NB"/>[m
[31m-  <stop lat="38.54324" title="Cowell Blvd &amp; Halsey Cir " lon="-121.7225299" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Valdora St " lon="-121.72509" dir="WB"/>[m
[31m-  <stop lat="38.5400399" title="Cowell Blvd &amp; Drew Ave " lon="-121.7275399" dir="WB"/>[m
[31m-  <stop lat="38.5401199" title="Cowell Blvd &amp; Research Park S Dr " lon="-121.7302099" dir="WB"/>[m
[31m-  <stop lat="38.5407999" title="Richards Blvd &amp; Olive Dr " lon="-121.7383199" dir="NB"/>[m
[31m-  <stop lat="38.5418199" title="1st St &amp; D St " lon="-121.74205" dir="WB"/>[m
[31m-  <stop lat="38.54049" title="A St &amp; Hutchison " lon="-121.74601" dir="SB"/>[m
[31m-  <stop lat="38.5391799" title="Hutchison &amp; Shields Library " lon="-121.7499899" dir="WB"/>[m
[31m-  <stop lat="38.5391399" title="Hutchison &amp; California " lon="-121.75309" dir="WB"/>[m
[31m-  <path>[m
[31m-   <point lat="38.53984" lon="-121.73081"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.53974" lon="-121.72685"/>[m
[31m-   <point lat="38.53986" lon="-121.72565"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54182" lon="-121.74205"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54049" lon="-121.74601"/>[m
[31m-   <point lat="38.54016" lon="-121.74579"/>[m
[31m-   <point lat="38.54009" lon="-121.74618"/>[m
[31m-   <point lat="38.53979" lon="-121.74651"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53918" lon="-121.74999"/>[m
[31m-   <point lat="38.53907" lon="-121.75201"/>[m
[31m-   <point lat="38.53907" lon="-121.75297"/>[m
[31m-   <point lat="38.54152" lon="-121.74254"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.54064" lon="-121.73854"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53987" lon="-121.73208"/>[m
[31m-   <point lat="38.53935" lon="-121.75308"/>[m
[31m-   <point lat="38.5393" lon="-121.7532"/>[m
[31m-   <point lat="38.5393" lon="-121.75341"/>[m
[31m-   <point lat="38.53924" lon="-121.75373"/>[m
[31m-   <point lat="38.53916" lon="-121.75381"/>[m
[31m-   <point lat="38.53907" lon="-121.75385"/>[m
[31m-   <point lat="38.53907" lon="-121.75297"/>[m
[31m-   <point lat="38.53906" lon="-121.74963"/>[m
[31m-   <point lat="38.53909" lon="-121.7495"/>[m
[31m-   <point lat="38.53926" lon="-121.74849"/>[m
[31m-   <point lat="38.53919" lon="-121.74837"/>[m
[31m-   <point lat="38.5393" lon="-121.74834"/>[m
[31m-   <point lat="38.5393199" lon="-121.74821"/>[m
[31m-   <point lat="38.53979" lon="-121.74651"/>[m
[31m-   <point lat="38.54009" lon="-121.74618"/>[m
[31m-   <point lat="38.54003" lon="-121.74605"/>[m
[31m-   <point lat="38.54016" lon="-121.74579"/>[m
[31m-   <point lat="38.54096" lon="-121.74603"/>[m
[31m-   <point lat="38.54131" lon="-121.74409"/>[m
[31m-   <point lat="38.54137" lon="-121.74398"/>[m
[31m-   <point lat="38.5415599" lon="-121.74289"/>[m
[31m-   <point lat="38.54012" lon="-121.72509"/>[m
[31m-   <point lat="38.53994" lon="-121.72503"/>[m
[31m-   <point lat="38.5398799" lon="-121.72532"/>[m
[31m-   <point lat="38.53985" lon="-121.72626"/>[m
[31m-   <point lat="38.53987" lon="-121.72713"/>[m
[31m-   <point lat="38.54004" lon="-121.72754"/>[m
[31m-   <point lat="38.54002" lon="-121.72995"/>[m
[31m-   <point lat="38.54012" lon="-121.73021"/>[m
[31m-   <point lat="38.53991" lon="-121.73137"/>[m
[31m-   <point lat="38.53981" lon="-121.73374"/>[m
[31m-   <point lat="38.53983" lon="-121.73417"/>[m
[31m-   <point lat="38.53989" lon="-121.73466"/>[m
[31m-   <point lat="38.54021" lon="-121.73649"/>[m
[31m-   <point lat="38.54051" lon="-121.73772"/>[m
[31m-   <point lat="38.54057" lon="-121.73795"/>[m
[31m-   <point lat="38.5408" lon="-121.73832"/>[m
[31m-   <point lat="38.54081" lon="-121.73858"/>[m
[31m-   <point lat="38.5418499" lon="-121.74057"/>[m
[31m-   <point lat="38.54195" lon="-121.7407"/>[m
[31m-   <point lat="38.5432" lon="-121.71486"/>[m
[31m-   <point lat="38.54341" lon="-121.71411"/>[m
[31m-   <point lat="38.54345" lon="-121.71345"/>[m
[31m-   <point lat="38.54415" lon="-121.71339"/>[m
[31m-   <point lat="38.5463499" lon="-121.71323"/>[m
[31m-   <point lat="38.54671" lon="-121.71336"/>[m
[31m-   <point lat="38.5469099" lon="-121.71332"/>[m
[31m-   <point lat="38.54715" lon="-121.71324"/>[m
[31m-   <point lat="38.54754" lon="-121.71304"/>[m
[31m-   <point lat="38.54769" lon="-121.71317"/>[m
[31m-   <point lat="38.5477599" lon="-121.71341"/>[m
[31m-   <point lat="38.54786" lon="-121.71403"/>[m
[31m-   <point lat="38.54789" lon="-121.71462"/>[m
[31m-   <point lat="38.54788" lon="-121.71482"/>[m
[31m-   <point lat="38.54784" lon="-121.71527"/>[m
[31m-   <point lat="38.54684" lon="-121.71957"/>[m
[31m-   <point lat="38.54676" lon="-121.71982"/>[m
[31m-   <point lat="38.54657" lon="-121.72032"/>[m
[31m-   <point lat="38.54645" lon="-121.72057"/>[m
[31m-   <point lat="38.54602" lon="-121.72119"/>[m
[31m-   <point lat="38.54574" lon="-121.72148"/>[m
[31m-   <point lat="38.54561" lon="-121.72158"/>[m
[31m-   <point lat="38.54516" lon="-121.72188"/>[m
[31m-   <point lat="38.5447599" lon="-121.72203"/>[m
[31m-   <point lat="38.54366" lon="-121.72222"/>[m
[31m-   <point lat="38.54324" lon="-121.72253"/>[m
[31m-   <point lat="38.54196" lon="-121.7226"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54003" lon="-121.72453"/>[m
[31m-   <point lat="38.54001" lon="-121.72477"/>[m
[31m-   <point lat="38.54023" lon="-121.72398"/>[m
[31m-   <point lat="38.54073" lon="-121.72351"/>[m
[31m-   <point lat="38.54115" lon="-121.72302"/>[m
[31m-   <point lat="38.54137" lon="-121.72287"/>[m
[31m-   <point lat="38.5412899" lon="-121.72233"/>[m
[31m-   <point lat="38.54116" lon="-121.72219"/>[m
[31m-   <point lat="38.54124" lon="-121.72172"/>[m
[31m-   <point lat="38.54122" lon="-121.72156"/>[m
[31m-   <point lat="38.54122" lon="-121.72137"/>[m
[31m-   <point lat="38.54143" lon="-121.71869"/>[m
[31m-   <point lat="38.54155" lon="-121.71788"/>[m
[31m-   <point lat="38.54166" lon="-121.71735"/>[m
[31m-   <point lat="38.54177" lon="-121.71734"/>[m
[31m-   <point lat="38.54192" lon="-121.71712"/>[m
[31m-   <point lat="38.54215" lon="-121.71683"/>[m
[31m-   <point lat="38.54249" lon="-121.71645"/>[m
[31m-   <point lat="38.5429699" lon="-121.71579"/>[m
[31m-   <point lat="38.54317" lon="-121.71534"/>[m
[31m-   <point lat="38.54322" lon="-121.71516"/>[m
[31m-  </path>[m
[31m- </route>[m
[31m-</body>[m
[1mdiff --git a/res/values/strings.xml b/res/values/strings.xml[m
[1mindex 4fd4d92..4826de7 100644[m
[1m--- a/res/values/strings.xml[m
[1m+++ b/res/values/strings.xml[m
[36m@@ -1,23 +1,24 @@[m
[32m+[m[32m<?xml version="1.0" encoding="utf-8"?>[m
 <resources>[m
 [m
[31m-    <string name="app_name">transitTalker</string>[m
[31m-    <string name="hello_world">Hello world!</string>[m
[31m-    <string name="menu_settings">Settings</string>[m
[31m-    <string name="title_activity_main">TransitTalker</string>[m
[31m-    <string name="zero">0</string>[m
[31m-    <string name="one">1</string>[m
[31m-    <string name="two">2</string>[m
[31m-    <string name="three">3</string>[m
[31m-    <string name="four">4</string>[m
[31m-    <string name="five">5</string>[m
[31m-    <string name="six">6</string>[m
[31m-    <string name="seven">7</string>[m
[31m-    <string name="eight">8</string>[m
[31m-    <string name="nine">9</string>[m
[31m-    <string name="BKSP">P/R</string>[m
[31m-    <string name="SET">SET</string>[m
[31m-    <string name="tRaNsIt">tRaNsIt</string>[m
[31m-    <string name="TaLkEr">TaLkEr</string>[m
[31m-    <string name="image">image</string>[m
[32m+[m[32m    <string name="app_name">TransitTalker</string>[m[41m[m
[32m+[m[32m    <string name="action_settings">Settings</string>[m[41m[m
[32m+[m[32m    <string name="hello_world">Hello world!</string>[m
[32m+[m[32m    <string name="zero">0</string>[m
[32m+[m[32m    <string name="one">1</string>[m
[32m+[m[32m    <string name="two">2</string>[m
[32m+[m[32m    <string name="three">3</string>[m
[32m+[m[32m    <string name="four">4</string>[m
[32m+[m[32m    <string name="five">5</string>[m
[32m+[m[32m    <string name="six">6</string>[m
[32m+[m[32m    <string name="seven">7</string>[m
[32m+[m[32m    <string name="eight">8</string>[m
[32m+[m[32m    <string name="nine">9</string>[m
[32m+[m[32m    <string name="BKSP">P/R</string>[m
[32m+[m[32m    <string name="SET">SET</string>[m
[32m+[m[32m    <string name="tRaNsIt">tRaNsIt</string>[m
[32m+[m[32m    <string name="TaLkEr">TaLkEr</string>[m
[32m+[m[32m    <string name="image">image</string>[m
 	<string name="prmsgs">hi</string>[m
[32m+[m[41m[m
 </resources>[m
\ No newline at end of file[m
[1mdiff --git a/res/values/styles.xml b/res/values/styles.xml[m
[1mindex e20c827..79a39af 100644[m
[1m--- a/res/values/styles.xml[m
[1m+++ b/res/values/styles.xml[m
[36m@@ -1,5 +1,20 @@[m
 <resources>[m
 [m
[31m-    <style name="AppTheme" parent="android:Theme.Light" />[m
[32m+[m[32m    <!--[m[41m[m
[32m+[m[32m        Base application theme, dependent on API level. This theme is replaced[m
[32m+[m[32m        by AppBaseTheme from res/values-vXX/styles.xml on newer devices.[m[41m[m
[32m+[m[32m    -->[m[41m[m
[32m+[m[32m    <style name="AppBaseTheme" parent="android:Theme.Light">[m[41m[m
[32m+[m[32m        <!--[m[41m[m
[32m+[m[32m            Theme customizations available in newer API levels can go in[m
[32m+[m[32m            res/values-vXX/styles.xml, while customizations related to[m
[32m+[m[32m            backward-compatibility can go here.[m[41m[m
[32m+[m[32m        -->[m[41m[m
[32m+[m[32m    </style>[m[41m[m
[32m+[m[41m[m
[32m+[m[32m    <!-- Application theme. -->[m[41m[m
[32m+[m[32m    <style name="AppTheme" parent="AppBaseTheme">[m[41m[m
[32m+[m[32m        <!-- All customizations that are NOT specific to a particular API-level can go here. -->[m[41m[m
[32m+[m[32m    </style>[m[41m[m
 [m
 </resources>[m
\ No newline at end of file[m
[1mdiff --git a/settings/org.eclipse.jdt.core.prefs b/settings/org.eclipse.jdt.core.prefs[m
[1mdeleted file mode 100644[m
[1mindex da5d060..0000000[m
[1m--- a/settings/org.eclipse.jdt.core.prefs[m
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-eclipse.preferences.version=1[m
[31m-org.eclipse.jdt.core.compiler.codegen.targetPlatform=1.5[m
[31m-org.eclipse.jdt.core.compiler.compliance=1.5[m
[31m-org.eclipse.jdt.core.compiler.source=1.5[m
[1mdiff --git a/src/com/example/transittalker/Client.java b/src/com/example/transittalker/Client.java[m
[1mindex eb4ecb7..1bc9eb4 100644[m
[1m--- a/src/com/example/transittalker/Client.java[m
[1m+++ b/src/com/example/transittalker/Client.java[m
[36m@@ -1,7 +1,6 @@[m
 package com.example.transittalker;[m
 [m
 import java.io.ByteArrayOutputStream;[m
[31m-import java.io.FileOutputStream;[m
 import java.io.IOException;[m
 import java.net.InetSocketAddress;[m
 import java.nio.ByteBuffer;[m
[36m@@ -14,8 +13,6 @@[m [mimport java.util.HashMap;[m
 import java.util.Iterator;[m
 import java.util.Set;[m
 [m
[31m-import android.util.Log;[m
[31m-[m
 [m
 public class Client {[m
 	[m
[36m@@ -39,15 +36,6 @@[m [mpublic class Client {[m
 	    commandMap.put("!size", 2);[m
 [m
 	}[m
[31m-[m
[31m-	@SuppressWarnings("unused")[m
[31m-	private void output(String ohaider) throws IOException{[m
[31m-		[m
[31m-		FileOutputStream fos = new FileOutputStream("C:/Users/Paul/Desktop/notreal.xml");[m
[31m-		fos.write(ohaider.getBytes());[m
[31m-		fos.close();[m
[31m-		[m
[31m-	}[m
 	[m
 	public static String bytesToHex(byte[] bytes) {[m
 	    final char[] hexArray = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};[m
[1mdiff --git a/src/com/example/transittalker/FileIO.java b/src/com/example/transittalker/FileIO.java[m
[1mindex 269b4bc..339eb89 100644[m
[1m--- a/src/com/example/transittalker/FileIO.java[m
[1m+++ b/src/com/example/transittalker/FileIO.java[m
[36m@@ -9,9 +9,9 @@[m [mimport java.nio.ByteBuffer;[m
 import android.content.Context;[m
 [m
 public class FileIO {[m
[31m-	private main instance;[m
[32m+[m	[32mprivate Mainspace instance;[m
 	[m
[31m-	public FileIO(main activity){[m
[32m+[m	[32mpublic FileIO(Mainspace activity){[m
 		instance = activity;[m
 	}[m
 	[m
[1mdiff --git a/src/com/example/transittalker/TransitMain.java b/src/com/example/transittalker/TransitMain.java[m
[1mdeleted file mode 100644[m
[1mindex 27d5b3b..0000000[m
[1m--- a/src/com/example/transittalker/TransitMain.java[m
[1m+++ /dev/null[m
[36m@@ -1,189 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-import java.io.IOException;[m
[31m-import java.io.InputStream;[m
[31m-import java.util.LinkedList;[m
[31m-import java.util.List;[m
[31m-import java.util.Locale;[m
[31m-[m
[31m-import javax.xml.parsers.ParserConfigurationException;[m
[31m-import javax.xml.parsers.SAXParser;[m
[31m-import javax.xml.parsers.SAXParserFactory;[m
[31m-[m
[31m-import org.xml.sax.InputSource;[m
[31m-import org.xml.sax.SAXException;[m
[31m-import org.xml.sax.XMLReader;[m
[31m-[m
[31m-import android.app.ProgressDialog;[m
[31m-import android.os.AsyncTask;[m
[31m-[m
[31m-[m
[31m-public class TransitMain{[m
[31m-[m
[31m-	private struct routeFocus;[m
[31m-	private prCode prFocus;[m
[31m-	private List<struct> route;[m
[31m-	private List<prCode> pRCode;[m
[31m-	private boolean setCode;[m
[31m-	private boolean apeshit;[m
[31m-	private int UIfocus;[m
[31m-	private boolean PRStart;[m
[31m-	private List<struct> select;[m
[31m-	private int multiple;[m
[31m-	[m
[31m-	public TransitMain(double min){[m
[31m-		routeFocus = null;[m
[31m-		prFocus = null;[m
[31m-		route = new LinkedList<struct>();[m
[31m-		pRCode = new LinkedList<prCode>();[m
[31m-		setCode = true;[m
[31m-		apeshit = false;[m
[31m-		UIfocus = 0;[m
[31m-		PRStart = true;[m
[31m-		select = new LinkedList<struct>();[m
[31m-		multiple = 0;[m
[31m-	}[m
[31m-	[m
[31m-	//universal function[m
[31m-	private boolean isEqual(String marco, String polo){[m
[31m-		if(marco.length() > 0 && polo.length() > 0 && marco.length() < 4 && polo.length()<4){[m
[31m-			return marco.contains(polo);[m
[31m-		}[m
[31m-		else return false;[m
[31m-		}[m
[31m-	[m
[31m-	//booleans for keypad[m
[31m-	public void setPRStart(boolean val) {PRStart=val;}[m
[31m-	public void setApeshit(boolean val){apeshit=val;}[m
[31m-	public void setCode(boolean val){setCode=val;}[m
[31m-	public void setMulti(int val){multiple = val;}[m
[31m-	boolean isSetCode(){return setCode;}[m
[31m-	boolean isApeshit(){return apeshit;}[m
[31m-	boolean PRStart(){return PRStart;}[m
[31m-	int multiDest(){return multiple;}[m
[31m-	[m
[31m-	//select route[m
[31m-	public void selectRoute(String raw){[m
[31m-		List<struct> list = new LinkedList<struct>();[m
[31m-		for(struct l: route){ [m
[31m-			if(isEqual(raw.toLowerCase(Locale.getDefault()),l.routeName().toLowerCase(Locale.getDefault())) || isEqual(raw.toLowerCase(Locale.getDefault()), l.routeCode().toLowerCase(Locale.getDefault()))){[m
[31m-				list.add(l);[m
[31m-			}[m
[31m-		}[m
[31m-		if(list.size()>0)select = list;[m
[31m-		else select = null;[m
[31m-		list = null;[m
[31m-	}[m
[31m-	[m
[31m-	public void setFocus(struct l){[m
[31m-		routeFocus = l;[m
[31m-	}[m
[31m-[m
[31m-	public void removeUnusedFocus(int keep){[m
[31m-		for(int k = 0; k<select.size(); k++){[m
[31m-			if(k!=keep)select.remove(k);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	//return selections[m
[31m-	public prCode prFocus(){return prFocus;}[m
[31m-	public struct routeFocus(){return routeFocus;}[m
[31m-	public List<struct> selectFocus(){return select;}[m
[31m-	[m
[31m-	public String terminal(){return routeFocus.terminal();}[m
[31m-	public String routeCode(){return routeFocus.routeCode();}[m
[31m-	public String routeName(){return routeFocus.routeName();}[m
[31m-	public String headSign(){return routeFocus.headSign();}[m
[31m-	public String prCode(){return routeFocus.prCode();}[m
[31m-	public String nextStop(){return routeFocus.nextStop();}[m
[31m-	public String currentStop(){return routeFocus.currentStop();}[m
[31m-	public boolean atStop(){return routeFocus.atStop();}[m
[31m-	public boolean stopOffPath(){return routeFocus.stopOffPath();}[m
[31m-	public boolean onTrack(){return routeFocus.onTrack();}[m
[31m-	public void resetApproach(){routeFocus.resetApproach();}[m
[31m-	public void setBusPos(double lat, double lon, double bear){routeFocus.setBusPos(lat, lon, bear);}[m
[31m-	public void setRouteInfo(String rC,String rN, String hS, String pR, String T){routeFocus.setRouteInfo(rC, rN, hS, pR, T);}[m
[31m-	[m
[31m-	public void setupRoutes(main activity, InputStream is){[m
[31m-		new loadData(activity,is).execute();[m
[31m-	}[m
[31m-	[m
[31m-    public class loadData extends AsyncTask<Void,Void,Void>{[m
[31m-    	private ProgressDialog dialog;[m
[31m-    	private main activity;[m
[31m-    	private InputStream is;[m
[31m-    	[m
[31m-    	public loadData(){}[m
[31m-    	[m
[31m-		public loadData(main main, InputStream in) {[m
[31m-			activity = main;[m
[31m-			is = in;[m
[31m-		}[m
[31m-[m
[31m-		@Override[m
[31m-		protected void onPreExecute() {[m
[31m-			dialog = new ProgressDialog(activity);[m
[31m-			dialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);[m
[31m-			dialog.setMax(4);[m
[31m-			dialog.setMessage("Uploading information from XML...");[m
[31m-			dialog.show();[m
[31m-		}[m
[31m-		[m
[31m-		@Override[m
[31m-		protected void onPostExecute(Void result) {dialog.dismiss();}[m
[31m-	 [m
[31m-		@Override[m
[31m-		protected Void doInBackground(Void... params) {[m
[31m-			SAXParserFactory spf = SAXParserFactory.newInstance();[m
[31m-			SAXParser sp = null;[m
[31m-			XMLReader xr = null;[m
[31m-			publishProgress();[m
[31m-			try {[m
[31m-				sp = spf.newSAXParser();[m
[31m-			} catch (ParserConfigurationException e) {[m
[31m-				e.printStackTrace();[m
[31m-			} catch (SAXException e) {[m
[31m-				e.printStackTrace();[m
[31m-			}[m
[31m-				publishProgress();[m
[31m-			try {[m
[31m-				xr = sp.getXMLReader();[m
[31m-			} catch (SAXException e) {[m
[31m-				e.printStackTrace();[m
[31m-			}[m
[31m-			publishProgress();[m
[31m-			parseXML parser = new parseXML(100);[m
[31m-			xr.setContentHandler(parser);[m
[31m-			try {[m
[31m-				xr.parse(new InputSource(is));[m
[31m-				route = parser.getXMLrouteList();[m
[31m-				pRCode = parser.getXMLprCode();[m
[31m-			} catch (IOException e) {[m
[31m-				e.printStackTrace();[m
[31m-			} catch (SAXException e) {[m
[31m-				e.printStackTrace();[m
[31m-			} catch(Exception e){[m
[31m-				e.printStackTrace();[m
[31m-			}[m
[31m-			publishProgress();[m
[31m-			return null;[m
[31m-		}[m
[31m-[m
[31m-		@Override[m
[31m-		protected void onProgressUpdate(Void... values) {dialog.incrementProgressBy(1);}[m
[31m-    }[m
[31m-	[m
[31m-    public void selectPR(String pR){[m
[31m-		prFocus = null;[m
[31m-		for(prCode p : pRCode){[m
[31m-			if(isEqual(p.iD(), pR)){[m
[31m-				prFocus = p;[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-[m
[31m- [m
[31m-	//UI[m
[31m-	public int getUIFocus(){return UIfocus;}[m
[31m-	public void setUIFocus(int id){UIfocus=id;}[m
[31m-}[m
[1mdiff --git a/src/com/example/transittalker/busStop.java b/src/com/example/transittalker/busStop.java[m
[1mdeleted file mode 100644[m
[1mindex 097689a..0000000[m
[1m--- a/src/com/example/transittalker/busStop.java[m
[1m+++ /dev/null[m
[36m@@ -1,43 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-public class busStop {[m
[31m-[m
[31m-	private double latitude;[m
[31m-	private double longitude;[m
[31m-	private String stopName;[m
[31m-	private String direction;[m
[31m-	private boolean silence;[m
[31m-	private busStop next;[m
[31m-	private busStop prev;[m
[31m-[m
[31m-	public busStop(){[m
[31m-		latitude = 0;[m
[31m-		longitude = 0;[m
[31m-		stopName = "";[m
[31m-		direction="";[m
[31m-		silence = false;[m
[31m-		next = null;[m
[31m-		prev = null;[m
[31m-	}[m
[31m-	[m
[31m-	public busStop(double lat,double lon, String sN, String dir, boolean sil, busStop n,busStop p){[m
[31m-		latitude = lat;[m
[31m-		longitude = lon;[m
[31m-		stopName = sN;[m
[31m-		direction= dir;[m
[31m-		silence = sil;[m
[31m-		next = n;[m
[31m-		prev = p;[m
[31m-	}[m
[31m-	[m
[31m-	public double getLat(){return latitude;}[m
[31m-	public double getLon(){return longitude;}[m
[31m-	public String getStopName(){return stopName;}[m
[31m-	public String getDir(){return direction;}[m
[31m-	public boolean isSilenced(){return silence;}[m
[31m-	public void setSilence(boolean sil){silence = sil;}[m
[31m-	busStop getNext(){return next;}[m
[31m-	busStop getPrev(){return prev;}[m
[31m-	void setNext(busStop n){next = n;}[m
[31m-	void setPrev(busStop p){prev = p;}[m
[31m-}[m
[1mdiff --git a/src/com/example/transittalker/main.java b/src/com/example/transittalker/main.java[m
[1mdeleted file mode 100644[m
[1mindex 5db5331..0000000[m
[1m--- a/src/com/example/transittalker/main.java[m
[1m+++ /dev/null[m
[36m@@ -1,484 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-import java.util.ArrayList;[m
[31m-import java.util.HashMap;[m
[31m-import java.util.Iterator;[m
[31m-import java.util.Locale;[m
[31m-import java.util.Map.Entry;[m
[31m-[m
[31m-import android.app.Activity;[m
[31m-import android.content.Context;[m
[31m-import android.content.SharedPreferences;[m
[31m-import android.gesture.Gesture;[m
[31m-import android.gesture.GestureLibraries;[m
[31m-import android.gesture.GestureLibrary;[m
[31m-import android.gesture.GestureOverlayView;[m
[31m-import android.gesture.GestureOverlayView.OnGesturePerformedListener;[m
[31m-import android.gesture.GestureStore;[m
[31m-import android.gesture.Prediction;[m
[31m-import android.graphics.Color;[m
[31m-import android.location.Location;[m
[31m-import android.location.LocationListener;[m
[31m-import android.location.LocationManager;[m
[31m-import android.media.AudioManager;[m
[31m-import android.os.Bundle;[m
[31m-import android.provider.Settings;[m
[31m-import android.speech.tts.TextToSpeech;[m
[31m-import android.util.Log;[m
[31m-import android.view.Menu;[m
[31m-import android.view.View;[m
[31m-import android.view.View.OnClickListener;[m
[31m-import android.view.View.OnLongClickListener;[m
[31m-import android.view.WindowManager;[m
[31m-import android.widget.ImageButton;[m
[31m-import android.widget.ImageView;[m
[31m-import android.widget.TextView;[m
[31m-[m
[31m-public class main extends Activity implements OnClickListener, OnLongClickListener, OnGesturePerformedListener{[m
[31m-[m
[31m-	LocationListener listener;[m
[31m-	LocationManager manager;[m
[31m-	TextToSpeech tts;[m
[31m-	TransitMain transit = new TransitMain(100);[m
[31m-	GestureLibrary gls;[m
[31m-	GestureOverlayView golw;[m
[31m-	TextView textTOP;[m
[31m-	TextView textBOT;[m
[31m-	TextView textMID;[m
[31m-	HashMap<String,String> pronounce = new HashMap<String,String>();[m
[31m-	FileIO fio = new FileIO(this);[m
[31m-	SharedPreferences spf;[m
[31m-	Client myClient;[m
[31m-	[m
[31m-	[m
[31m-	String speak(String obj){[m
[31m-		[m
[31m-		obj = obj.toLowerCase(Locale.US);[m
[31m-		[m
[31m-		int index = -1;[m
[31m-		[m
[31m-		Iterator<Entry<String, String>> it = pronounce.entrySet().iterator();[m
[31m-		while(it.hasNext()){[m
[31m-			[m
[31m-			String key = it.next().getKey();[m
[31m-			[m
[31m-			index = obj.indexOf(key);[m
[31m-			if(index>-1){[m
[31m-				obj = obj.replace(key,pronounce.get(key));[m
[31m-			}[m
[31m-		}[m
[31m-		[m
[31m-		return obj;[m
[31m-	}[m
[31m-	[m
[31m-	private void pronounce_toLower(String a, String b){[m
[31m-		pronounce.put(a.toLowerCase(Locale.getDefault()),b.toLowerCase(Locale.getDefault()));[m
[31m-	}[m
[31m-	[m
[31m-	//TextToSpeech[m
[31m-	void speakToMe(final String speakStopName) {[m
[31m-		[m
[31m-		[m
[31m-		tts = new TextToSpeech(main.this, new TextToSpeech.OnInitListener() {[m
[31m-[m
[31m-			public void onInit(int status) {[m
[31m-				if (status != TextToSpeech.ERROR) {[m
[31m-					//HashMap<String, String> params = new HashMap<String, String>();[m
[31m-					//params.put(TextToSpeech.Engine.KEY_FEATURE_NETWORK_SYNTHESIS,"true");[m
[31m-					[m
[31m-					tts.setLanguage(Locale.US);[m
[31m-					tts.speak(speak(speakStopName), TextToSpeech.QUEUE_ADD, null);[m
[31m-				}[m
[31m-			}[m
[31m-		});[m
[31m-	}[m
[31m-	[m
[31m-	//ImageView[m
[31m-	void changeVisibility(int imageID, int status){[m
[31m-		ImageView image = (ImageView) findViewById(imageID);[m
[31m-		image.setVisibility(status);[m
[31m-	}[m
[31m-		[m
[31m-	//default[m
[31m-    @Override[m
[31m-    public void onCreate(Bundle savedInstanceState) {[m
[31m-       [m
[31m-    	super.onCreate(savedInstanceState);[m
[31m-    	setContentView(R.layout.main);[m
[31m-        Log.i("LETS GO!","OnCreate");[m
[31m-    	[m
[31m-        //Settings[m
[31m-		//setRequestedOrientation(0); //stupid method crashes the app!!!!!!AAARGGGHH RRAAAGEE[m
[31m-		getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);[m
[31m-		AudioManager aM = (AudioManager) getSystemService(Context.AUDIO_SERVICE);[m
[31m-		aM.setStreamVolume(AudioManager.STREAM_MUSIC, aM.getStreamMaxVolume(AudioManager.STREAM_MUSIC), 0);[m
[31m-		[m
[31m-		//TextView[m
[31m-		textTOP = (TextView) findViewById(R.id.displayTOP);[m
[31m-		textBOT = (TextView) findViewById(R.id.displayBOTTOM);[m
[31m-		textMID = (TextView) findViewById(R.id.displayMID);[m
[31m-		[m
[31m-		//Gesture[m
[31m-		golw = (GestureOverlayView) findViewById(R.id.gesturearea);[m
[31m-		[m
[31m-		golw.setGestureColor(Color.BLUE);[m
[31m-		golw.setGestureVisible(true);[m
[31m-		golw.setUncertainGestureColor(Color.RED);[m
[31m-		golw.setGestureStrokeType(GestureOverlayView.GESTURE_STROKE_TYPE_MULTIPLE);[m
[31m-		[m
[31m-		golw.addOnGesturePerformedListener(this);[m
[31m-		[m
[31m-		gls = GestureLibraries.fromRawResource(this,R.raw.gestures);[m
[31m-		gls.setOrientationStyle(GestureStore.ORIENTATION_INVARIANT);[m
[31m-		gls.setSequenceType(GestureStore.SEQUENCE_INVARIANT);[m
[31m-		[m
[31m-		[m
[31m-		if(!gls.load()){[m
[31m-			Log.i("GESTURELIB","Gesture Library failed to load");[m
[31m-		}[m
[31m-		[m
[31m-		[m
[31m-		pronounce_toLower("Ave", "Avenue");[m
[31m-		pronounce_toLower("HS", "High School");[m
[31m-		pronounce_toLower("Blvd", "Boulevard");[m
[31m-		pronounce_toLower("Ln","Lane");[m
[31m-		pronounce_toLower("Rd", "Road");[m
[31m-		[m
[31m-		[m
[31m-		//Buttons[m
[31m-		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);[m
[31m-		ImageButton keySet = (ImageButton) findViewById(R.id.buttonSet);[m
[31m-		[m
[31m-		keySet.setOnClickListener(this);[m
[31m-		keyClear.setOnClickListener(this);[m
[31m-		[m
[31m-		//Images[m
[31m-		changeVisibility(R.id.search,View.INVISIBLE);[m
[31m-		changeVisibility(R.id.fence, View.INVISIBLE);[m
[31m-		changeVisibility(R.id.pr, View.INVISIBLE);[m
[31m-		changeVisibility(R.id.leftArrow, View.INVISIBLE);[m
[31m-		changeVisibility(R.id.rightArrow, View.INVISIBLE);[m
[31m-	[m
[31m-		spf = getSharedPreferences("sharedPreferences", 0);[m
[31m-		[m
[31m-		//Connect to client[m
[31m-		//get the hash (checksum) from preferences[m
[31m-		myClient = new Client(Settings.Secure.getString(getContentResolver(),Settings.Secure.ANDROID_ID), spf.getString("hash", "NO_CHECKSUM"));[m
[31m-		myClient.connectToServer("horc.net", 65499);[m
[31m-		[m
[31m-		if(myClient.getXmlData()!=null){[m
[31m-			Log.i("INFO","Saving file");[m
[31m-			fio.saveFile("route_manifest.xml", myClient.getXmlData());[m
[31m-			SharedPreferences.Editor editMe = spf.edit();[m
[31m-			editMe.putString("hash", myClient.getHash());[m
[31m-			editMe.commit();[m
[31m-		}else{[m
[31m-			Log.i("INFO","Not saving file");[m
[31m-		}[m
[31m-		[m
[31m-		[m
[31m-		[m
[31m-		//check to see if the file exists[m
[31m-		if(fio.getFileStream("route_manifest.xml")!=null){[m
[31m-			Log.i("INFO","file exists");[m
[31m-			transit.setupRoutes(this,fio.getFileStream("route_manifest.xml"));[m
[31m-			[m
[31m-		}	[m
[31m-		else{[m
[31m-			//use system default[m
[31m-			Log.i("INFO","using default");[m
[31m-			transit.setupRoutes(this,getResources().openRawResource(R.raw.route_manifest));[m
[31m-		}[m
[31m-		Log.i("INFO","Whats up I am done");[m
[31m-		manager = (LocationManager) this.getSystemService(Context.LOCATION_SERVICE);[m
[31m-		listener = new LocationListener() {[m
[31m-			[m
[31m-			public void onStatusChanged(String arg0, int arg1, Bundle arg2) {}[m
[31m-			public void onProviderEnabled(String arg0) {}[m
[31m-			public void onProviderDisabled(String arg0) {}[m
[31m-			public void onLocationChanged(Location currentLocation) {[m
[31m-				[m
[31m-				transit.setBusPos(currentLocation.getLatitude(), currentLocation.getLongitude(), currentLocation.getBearing());[m
[31m-				TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);[m
[31m-[m
[31m-				if(transit.onTrack())changeVisibility(R.id.fence, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.fence, View.VISIBLE);[m
[31m-				if(transit.isApeshit()) changeVisibility(R.id.search, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.search, View.VISIBLE);[m
[31m-				[m
[31m-				if(transit.onTrack() && transit.isApeshit()){[m
[31m-			[m
[31m-					//on the fixed route path[m
[31m-					if(transit.atStop()){[m
[31m-						speakToMe("Approaching "+ transit.currentStop());[m
[31m-						textBOT.setText(transit.nextStop());[m
[31m-					}[m
[31m-					else textBOT.setText(transit.currentStop());[m
[31m-					[m
[31m-				}else{[m
[31m-					[m
[31m-					//bus has gone off the fixed route path (apeshit)[m
[31m-					if(transit.stopOffPath()){[m
[31m-						speakToMe("Approaching " + transit.currentStop());[m
[31m-						textBOT.setText(transit.nextStop());[m
[31m-						transit.setApeshit(true);[m
[31m-					}[m
[31m-					else textBOT.setText(transit.currentStop());[m
[31m-				}[m
[31m-			}[m
[31m-		};[m
[31m-	[m
[31m-		transit.selectRoute("0");[m
[31m-		setRoute();[m
[31m-    }[m
[31m-[m
[31m-	@Override[m
[31m-    public boolean onCreateOptionsMenu(Menu menu) {[m
[31m-        getMenuInflater().inflate(R.menu.main, menu);[m
[31m-        return true;[m
[31m-    }[m
[31m-	[m
[31m-	public void setRoute(){[m
[31m-		[m
[31m-		//route = null && pr = null[m
[31m-		if(transit.selectFocus() == null && transit.prFocus() == null){[m
[31m-			textTOP.setText("No Route Pattern Set");[m
[31m-			textMID.setText("No P/R Code set");[m
[31m-			textBOT.setText("");[m
[31m-			changeVisibility(R.id.pr, View.INVISIBLE);[m
[31m-		}[m
[31m-		[m
[31m-		//route = null && pr != null[m
[31m-		else if(transit.selectFocus() == null && transit.prFocus() != null){[m
[31m-		[m
[31m-				textTOP.setText("No Route Pattern Set");[m
[31m-				textMID.setText(transit.prFocus().prMsg());[m
[31m-				textBOT.setText("");[m
[31m-[m
[31m-				if(!transit.prFocus().iD().equals("0")) changeVisibility(R.id.pr, View.VISIBLE);[m
[31m-			[m
[31m-		}[m
[31m-		[m
[31m-		//route != null && pr = null[m
[31m-		//route != null && pr != null[m
[31m-		else if(transit.selectFocus() != null){[m
[31m-			[m
[31m-			if(transit.selectFocus().size()>1){ //more than one route with the same code![m
[31m-				transit.setUIFocus(10);[m
[31m-				transit.setFocus(transit.selectFocus().get(0));[m
[31m-				changeVisibility(R.id.rightArrow, View.VISIBLE);[m
[31m-				[m
[31m-				textTOP.setText(transit.routeName() + " " + transit.headSign());[m
[31m-				textMID.setText("");[m
[31m-				textBOT.setText("Select Destination");[m
[31m-				[m
[31m-			}else{[m
[31m-				[m
[31m-				transit.setFocus(transit.selectFocus().get(0));[m
[31m-			[m
[31m-				textTOP.setText(transit.routeName() + " " + transit.headSign());[m
[31m-				textBOT.setText(transit.routeFocus().headStop());[m
[31m-[m
[31m-				if(transit.prFocus()!=null){[m
[31m-					if(!transit.prFocus().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);[m
[31m-					textMID.setText(transit.prFocus().prMsg());[m
[31m-				}else{[m
[31m-					textMID.setText("");[m
[31m-				}[m
[31m-				[m
[31m-				transit.setApeshit(false);[m
[31m-				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, listener);[m
[31m-			}[m
[31m-		}	[m
[31m-	}[m
[31m-	[m
[31m-	private void UI_multiSelect(int iD){[m
[31m-		[m
[31m-		[m
[31m-		switch(iD){[m
[31m-			case R.id.buttonSet: //accepted[m
[31m-				[m
[31m-				changeVisibility(R.id.leftArrow, View.INVISIBLE);[m
[31m-				changeVisibility(R.id.rightArrow, View.INVISIBLE);[m
[31m-				[m
[31m-				transit.setFocus(transit.selectFocus().get(transit.multiDest()));[m
[31m-				transit.removeUnusedFocus(transit.multiDest());[m
[31m-				textTOP.setText(transit.routeName() + " " + transit.headSign());[m
[31m-				textBOT.setText(transit.routeFocus().headStop());[m
[31m-				[m
[31m-				if(transit.prFocus()!=null){[m
[31m-					if(!transit.prFocus().iD().equals("0"))changeVisibility(R.id.pr, View.VISIBLE);[m
[31m-					textMID.setText(transit.prFocus().prMsg());[m
[31m-				}else{[m
[31m-					textMID.setText("");[m
[31m-				}[m
[31m-[m
[31m-				transit.setApeshit(false);[m
[31m-				manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 0, 0, listener);[m
[31m-				[m
[31m-				transit.setMulti(0);[m
[31m-				transit.setUIFocus(0);[m
[31m-				break;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	private void UI_PR(int iD){[m
[31m-		[m
[31m-		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);[m
[31m-		keyClear.setOnLongClickListener(this);[m
[31m-		keyClear.setImageResource(R.drawable.bkspbutton);[m
[31m-		[m
[31m-		switch(iD){[m
[31m-			case R.id.buttonClear:[m
[31m-				if(transit.PRStart()){[m
[31m-[m
[31m-					changeVisibility(R.id.pr, View.INVISIBLE);[m
[31m-[m
[31m-					manager.removeUpdates(listener);[m
[31m-					keyClear.setOnLongClickListener(this);[m
[31m-					if(transit.routeFocus()!=null) transit.resetApproach();[m
[31m-[m
[31m-					textTOP.setText("Enter P/R Code");[m
[31m-					textMID.setText("");[m
[31m-					textBOT.setText("");[m
[31m-					transit.setPRStart(false);[m
[31m-[m
[31m-				}else if(textBOT.getText().toString().length()>0) [m
[31m-					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));[m
[31m-				break;[m
[31m-			case R.id.buttonSet:[m
[31m-				transit.selectPR(textBOT.getText().toString());[m
[31m-				setRoute();[m
[31m-				keyClear.setOnLongClickListener(null);[m
[31m-				transit.setPRStart(true);[m
[31m-				transit.setUIFocus(0);[m
[31m-				keyClear.setImageResource(R.drawable.prbutton);[m
[31m-				break;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	private void UI_Destination(int iD){[m
[31m-		ImageButton keyClear = (ImageButton) findViewById(R.id.buttonClear);[m
[31m-		keyClear.setOnLongClickListener(this);[m
[31m-		keyClear.setImageResource(R.drawable.bkspbutton);[m
[31m-		[m
[31m-		switch(iD){[m
[31m-			case R.id.buttonClear:[m
[31m-				if(textBOT.getText().toString().length()>0) [m
[31m-					textBOT.setText(textBOT.getText().toString().substring(0,textBOT.getText().toString().length()-1));[m
[31m-				break;[m
[31m-			case R.id.buttonSet:[m
[31m-				[m
[31m-				if(transit.isSetCode()){[m
[31m-[m
[31m-					manager.removeUpdates(listener);[m
[31m-					keyClear.setOnLongClickListener(this);[m
[31m-					if(transit.routeFocus()!=null) transit.resetApproach();[m
[31m-[m
[31m-					changeVisibility(R.id.search, View.INVISIBLE);[m
[31m-[m
[31m-					textTOP.setText("Destination Number");[m
[31m-					textMID.setText("");[m
[31m-					textBOT.setText("");[m
[31m-[m
[31m-					transit.setCode(false);[m
[31m-				}[m
[31m-				else{[m
[31m-[m
[31m-					transit.selectRoute(textBOT.getText().toString());[m
[31m-					transit.setUIFocus(0);[m
[31m-					setRoute();[m
[31m-					keyClear.setOnLongClickListener(null);[m
[31m-					keyClear.setImageResource(R.drawable.prbutton);[m
[31m-					transit.setCode(true);[m
[31m-				}[m
[31m-				break;[m
[31m-		}[m
[31m-		[m
[31m-	}[m
[31m-	[m
[31m-	private void classifyGesture(final String name){[m
[31m-		boolean addInput = true;[m
[31m-		[m
[31m-		if(textBOT.getText().toString().length()>12){addInput = false;}[m
[31m-[m
[31m-		if(name.equals("leftSwipe") && transit.getUIFocus()==10){[m
[31m-			[m
[31m-			if(transit.multiDest()>0){[m
[31m-[m
[31m-				transit.setMulti(transit.multiDest()-1);[m
[31m-				if(transit.multiDest()==0) changeVisibility(R.id.leftArrow, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.leftArrow, View.VISIBLE);[m
[31m-				if(transit.multiDest()==transit.selectFocus().size()-1) changeVisibility(R.id.rightArrow, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.rightArrow, View.VISIBLE);[m
[31m-[m
[31m-				transit.setFocus(transit.selectFocus().get(transit.multiDest()));[m
[31m-				textTOP.setText(transit.routeName() + " " + transit.headSign());[m
[31m-				textMID.setText("");[m
[31m-				textBOT.setText("Select Destination");[m
[31m-			}[m
[31m-			[m
[31m-		}[m
[31m-		else if(name.equals("rightSwipe") && transit.getUIFocus()==10){[m
[31m-			[m
[31m-			if(transit.multiDest()<transit.selectFocus().size()-1){[m
[31m-				transit.setMulti(transit.multiDest()+1);[m
[31m-[m
[31m-				if(transit.multiDest()==0) changeVisibility(R.id.leftArrow, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.leftArrow, View.VISIBLE);[m
[31m-				if(transit.multiDest()==transit.selectFocus().size()-1) changeVisibility(R.id.rightArrow, View.INVISIBLE);[m
[31m-				else changeVisibility(R.id.rightArrow, View.VISIBLE);[m
[31m-[m
[31m-				transit.setFocus(transit.selectFocus().get(transit.multiDest()));[m
[31m-				textTOP.setText(transit.routeName() + " " + transit.headSign());[m
[31m-				textMID.setText("");[m
[31m-				textBOT.setText("Select Destination");	[m
[31m-			}[m
[31m-			[m
[31m-		}[m
[31m-		else{[m
[31m-			[m
[31m-			if(addInput && !name.equals("rightSwipe") && !name.equals("leftSwipe")) textBOT.setText(textBOT.getText().toString() + name);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	public void onClick(View cue){[m
[31m-  [m
[31m-  			if(transit.getUIFocus()==0) transit.setUIFocus(cue.getId());[m
[31m-  			[m
[31m-  			switch(transit.getUIFocus()){[m
[31m-	  			case R.id.buttonClear:[m
[31m-	  				UI_PR(cue.getId());[m
[31m-	  				break;[m
[31m-	  			case R.id.buttonSet:[m
[31m-	  				UI_Destination(cue.getId());[m
[31m-	  				break;[m
[31m-	  			case 10:[m
[31m-	  				UI_multiSelect(cue.getId());[m
[31m-	  				break;[m
[31m-	  			default:[m
[31m-	  				transit.setUIFocus(0);[m
[31m-  			}[m
[31m-	}[m
[31m-	  	[m
[31m-	public boolean onLongClick(View arg0) {[m
[31m-[m
[31m-		TextView textBOT = (TextView) findViewById(R.id.displayBOTTOM);[m
[31m-		textBOT.setText("");[m
[31m-		return false;}[m
[31m-[m
[31m-	public void onGesturePerformed(GestureOverlayView arg0, Gesture g) {[m
[31m-		[m
[31m-		ArrayList<Prediction> predictions = gls.recognize(g);[m
[31m-		if(predictions.size()>0){[m
[31m-			[m
[31m-			Prediction prediction = predictions.get(0);[m
[31m-		[m
[31m-			if(prediction.score>0) classifyGesture(prediction.name.trim());[m
[31m-		}[m
[31m-	[m
[31m-	}[m
[31m-[m
[31m-[m
[31m-}[m
[31m-[m
[1mdiff --git a/src/com/example/transittalker/parseXML.java b/src/com/example/transittalker/parseXML.java[m
[1mdeleted file mode 100644[m
[1mindex fdd304f..0000000[m
[1m--- a/src/com/example/transittalker/parseXML.java[m
[1m+++ /dev/null[m
[36m@@ -1,53 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-import java.util.LinkedList;[m
[31m-import java.util.List;[m
[31m-[m
[31m-import org.xml.sax.Attributes;[m
[31m-import org.xml.sax.SAXException;[m
[31m-import org.xml.sax.helpers.DefaultHandler;[m
[31m-[m
[31m-public class parseXML extends DefaultHandler{[m
[31m-[m
[31m-	private List<struct> route;[m
[31m-	private List<prCode> code;[m
[31m-	private double minDistance;[m
[31m-	private struct list;[m
[31m-	[m
[31m-	public parseXML(double min){[m
[31m-		route = new LinkedList<struct>();[m
[31m-		code = new LinkedList<prCode>();[m
[31m-		minDistance = min;[m
[31m-	}[m
[31m-	[m
[31m-	List<struct> getXMLrouteList(){return route;}[m
[31m-	List<prCode> getXMLprCode(){return code;}[m
[31m-	[m
[31m-	@Override[m
[31m-	public void startElement(String uri, String localName, String qName,[m
[31m-			Attributes attributes) throws SAXException {[m
[31m-	[m
[31m-		if(localName.equals("route")){				[m
[31m-				list = new struct(minDistance);[m
[31m-				list.setRouteInfo(attributes.getValue("code"), attributes.getValue("name"), attributes.getValue("dest"),"", attributes.getValue("say"));[m
[31m-		}	//pr code , terminal[m
[31m-		else if(localName.equals("stop")){[m
[31m-			list.addStop(Double.valueOf(attributes.getValue("lat")), Double.valueOf(attributes.getValue("lon")), attributes.getValue("title"), attributes.getValue("dir"));[m
[31m-		}[m
[31m-		else if(localName.equals("point")){[m
[31m-			list.addTopath(Double.valueOf(attributes.getValue("lat")), Double.valueOf(attributes.getValue("lon")));[m
[31m-		}[m
[31m-		else if(localName.equals("prcode")){[m
[31m-			code.add(new prCode(attributes.getValue("code"),attributes.getValue("msg")));[m
[31m-		}[m
[31m-	}[m
[31m-[m
[31m-	@Override[m
[31m-	public void endElement(String uri, String localName, String qName)[m
[31m-			throws SAXException {[m
[31m-		if(qName.equals("path")){[m
[31m-			route.add(list);[m
[31m-			list=null;[m
[31m-		} [m
[31m-	}	[m
[31m-}[m
[1mdiff --git a/src/com/example/transittalker/path.java b/src/com/example/transittalker/path.java[m
[1mdeleted file mode 100644[m
[1mindex bdd473e..0000000[m
[1m--- a/src/com/example/transittalker/path.java[m
[1m+++ /dev/null[m
[36m@@ -1,21 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-public class path {[m
[31m-[m
[31m-	private double latitude;[m
[31m-	private double longitude;[m
[31m-	[m
[31m-	path(){[m
[31m-		latitude=0;[m
[31m-		longitude=0;[m
[31m-	}[m
[31m-	[m
[31m-	path(double lat, double lon){[m
[31m-		latitude = lat;[m
[31m-		longitude = lon;[m
[31m-	}[m
[31m-	[m
[31m-	double pathLat(){return latitude;}[m
[31m-	double pathLon(){return longitude;}[m
[31m-	[m
[31m-}[m
[1mdiff --git a/src/com/example/transittalker/prCode.java b/src/com/example/transittalker/prCode.java[m
[1mdeleted file mode 100644[m
[1mindex 1d36c0a..0000000[m
[1m--- a/src/com/example/transittalker/prCode.java[m
[1m+++ /dev/null[m
[36m@@ -1,14 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-public class prCode {[m
[31m-	private String iD;[m
[31m-	private String prMsg;[m
[31m-	[m
[31m-	public prCode(){iD = prMsg = "";}[m
[31m-	public prCode(String id,String pr){[m
[31m-		iD=id;[m
[31m-		prMsg=pr;[m
[31m-	}[m
[31m-	public String iD(){return iD;}[m
[31m-	public String prMsg(){return prMsg;}[m
[31m-}[m
[1mdiff --git a/src/com/example/transittalker/struct.java b/src/com/example/transittalker/struct.java[m
[1mdeleted file mode 100644[m
[1mindex 3c95ded..0000000[m
[1m--- a/src/com/example/transittalker/struct.java[m
[1m+++ /dev/null[m
[36m@@ -1,150 +0,0 @@[m
[31m-package com.example.transittalker;[m
[31m-[m
[31m-import java.util.LinkedList;[m
[31m-import java.util.List;[m
[31m-[m
[31m-import android.location.Location;[m
[31m-[m
[31m-public class struct{[m
[31m-	private double minDistance;[m
[31m-	private double busLat;[m
[31m-	private double busLon;[m
[31m-	private double busBearing;[m
[31m-	private busStop head;[m
[31m-	private busStop tail;[m
[31m-	private busStop pos;[m
[31m-	private String routeCode;[m
[31m-	private String headSign;[m
[31m-	private String routeName;[m
[31m-	private String atStop;[m
[31m-	private String nextStop;[m
[31m-	private String prCode;[m
[31m-	private String terminal;[m
[31m-	private List<path> pathWay;[m
[31m-[m
[31m-	[m
[31m-	public struct(double min){[m
[31m-		minDistance = min;[m
[31m-		busLat = 0;[m
[31m-		busLon = 0;[m
[31m-		busBearing = 0;[m
[31m-		head = null;[m
[31m-		tail = null;[m
[31m-		pos = null;[m
[31m-		routeCode = "";[m
[31m-		headSign = "";[m
[31m-		routeName = "";[m
[31m-		atStop = "";[m
[31m-		nextStop = "";[m
[31m-		prCode = "";[m
[31m-		terminal = "";[m
[31m-		pathWay = new LinkedList<path>();[m
[31m-	}[m
[31m-	//universal functions[m
[31m-	private boolean distanceTo(double lat, double lon){[m
[31m-		Location bus = new Location("busLocation");[m
[31m-		bus.setLatitude(busLat);[m
[31m-		bus.setLongitude(busLon);[m
[31m-		Location stop = new Location("busStop");[m
[31m-		stop.setLatitude(lat);[m
[31m-		stop.setLongitude(lon);[m
[31m-		double finalResult = bus.distanceTo(stop);[m
[31m-		bus = stop = null;	[m
[31m-		if(finalResult < minDistance) return true;[m
[31m-		else return false;[m
[31m-	}[m
[31m-	private boolean inDirection(double bearing, String busdirection){[m
[31m-		if(busdirection.equals("NB")){if((bearing >=270 && bearing <= 360) || (bearing >=0 && bearing <= 90)) return true;}[m
[31m-		else if(busdirection.equals("SB")){if(bearing >=90 && bearing <= 270) return true;}[m
[31m-		else if(busdirection.equals("EB")){if(bearing >=0 && bearing <= 180) return true;}[m
[31m-		else if(busdirection.equals("WB")){if(bearing >=180 && bearing <= 360) return true;}[m
[31m-		return false;	[m
[31m-	}[m
[31m-		[m
[31m-	//Bus Location[m
[31m-	void setBusPos(double lat, double lon, double bear){[m
[31m-		busLat = lat;[m
[31m-		busLon = lon;[m
[31m-		busBearing = bear;[m
[31m-	}[m
[31m-[m
[31m-	//Route info members[m
[31m-	public void setRouteInfo(String rC,String rN, String hS, String pR, String T){[m
[31m-		routeCode = rC;[m
[31m-		routeName = rN;[m
[31m-		headSign = hS;[m
[31m-		prCode = pR;[m
[31m-		terminal = T;[m
[31m-	}	[m
[31m-[m
[31m-	public String headStop(){return (head!=null) ? head.getStopName():"";}[m
[31m-	public String terminal(){return terminal;}[m
[31m-	public String routeCode(){return routeCode;}[m
[31m-	public String routeName(){return routeName;}[m
[31m-	public String headSign(){return headSign;}[m
[31m-	public String prCode(){return prCode;}[m
[31m-	[m
[31m-	//Pathway members[m
[31m-	public void addTopath(double lat, double lon){pathWay.add(new path(lat,lon));}[m
[31m-	boolean onTrack(){[m
[31m-		for(path p: pathWay){[m
[31m-			if(distanceTo(p.pathLat(),p.pathLon()))	return true;[m
[31m-		}[m
[31m-		return false;[m
[31m-	}[m
[31m-	[m
[31m-	//Linked List members[m
[31m-	public void addStop(double lat,double lon, String sN, String dir) {[m
[31m-		busStop create = new busStop(lat,lon,sN,dir,true,null,null);[m
[31m-		if (head == null)[m
[31m-			head = create;[m
[31m-		else {[m
[31m-			tail.setNext(create);[m
[31m-			create.setPrev(tail);[m
[31m-			tail.setSilence(false);[m
[31m-		}[m
[31m-		tail = create;[m
[31m-		create = null;[m
[31m-	}[m
[31m-[m
[31m-	public boolean atStop(){[m
[31m-		if(pos==null) pos = head;[m
[31m-		atStop = pos.getStopName();[m
[31m-		if(!pos.isSilenced() && distanceTo(pos.getLat(),pos.getLon()) && inDirection(busBearing,pos.getDir())){[m
[31m-			pos.setSilence(true);[m
[31m-			if(pos!=tail)tail.setSilence(false);[m
[31m-			if(pos.getNext()!=null){[m
[31m-				pos = pos.getNext();[m
[31m-				nextStop = pos.getStopName();[m
[31m-			}[m
[31m-			return true;[m
[31m-		}[m
[31m-		return false;[m
[31m-	} [m
[31m-[m
[31m-	public boolean stopOffPath(){[m
[31m-		if(pos==null) pos = head;[m
[31m-		for(busStop l = pos; l!=null; l=l.getNext()){[m
[31m-			if(!l.isSilenced() && distanceTo(l.getLat(),l.getLon()) && inDirection(busBearing,l.getDir())){[m
[31m-				l.setSilence(true);[m
[31m-				atStop = l.getStopName();[m
[31m-				if(l!=tail){[m
[31m-					pos = l.getNext();[m
[31m-					nextStop = pos.getStopName();[m
[31m-				}[m
[31m-				return true;[m
[31m-			}[m
[31m-		}[m
[31m-		return false;[m
[31m-	}[m
[31m-	[m
[31m-	public String nextStop(){return nextStop;}[m
[31m-	public String currentStop(){return atStop;}[m
[31m-	[m
[31m-	public void resetApproach(){	[m
[31m-		for(busStop checkStop = head; checkStop!=null; checkStop=checkStop.getNext()){checkStop.setSilence(false);}[m
[31m-		pos = head;[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-}[m
warning: LF will be replaced by CRLF in AndroidManifest.xml.
The file will have its original line endings in your working directory.
warning: LF will be replaced by CRLF in bin/AndroidManifest.xml.
The file will have its original line endings in your working directory.
