# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/vclub/android/android-sdk-macosx/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-dontwarn retrofit.**
-keep class retrofit.** { *; }
-keepattributes Signature
-keepattributes Exceptions

# Keep our interfaces so they can be used by other ProGuard rules.
# See http://sourceforge.net/p/proguard/bugs/466/
-keep,allowobfuscation @interface com.facebook.common.internal.DoNotStrip

# Do not strip any method/class that is annotated with @DoNotStrip
-keep @com.facebook.common.internal.DoNotStrip class *
-keepclassmembers class * {
    @com.facebook.common.internal.DoNotStrip *;
}

# Keep native methods
-keepclassmembers class * {
    native <methods>;
}

-dontwarn okio.**
-dontwarn javax.annotation.**
-dontwarn com.android.volley.toolbox.**


-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

-keep class com.testerhome.nativeandroid.models.** {*;}
-dontwarn com.testerhome.nativeandroid.models.**

-keep class com.testerhome.nativeandroid.dao.** {*;}
-dontwarn com.testerhome.nativeandroid.dao.**

-keep class im.fir.sdk.** {*;}
-dontwarn im.fir.sdk.**

-dontwarn com.umeng.**
-keep class com.umeng.analytics.** {*;}

-keep class com.tencent.mm.sdk.** {
   *;
}

-assumenosideeffects class android.util.Log {
public static boolean isLoggable(java.lang.String, int);
public static int v(...);
public static int i(...);
public static int w(...);
public static int d(...);
public static int e(...);
}

## Android 6.0
-dontwarn org.apache.http.**
-dontwarn android.net.http.AndroidHttpClient

-dontwarn com.google.android.**
-keep class com.google.android.** {*;}

-keep class android.support.v7.** {*;}