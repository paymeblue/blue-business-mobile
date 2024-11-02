# Flutter related rules
-keep class io.flutter.** { *; }
-dontwarn io.flutter.embedding.**
-keep class androidx.lifecycle.DefaultLifecycleObserver

# Prevent obfuscating main entry points
-keep class com.roman_dev.blue_business.MainActivity { *; }
-keep class com.roman_dev.blue_business.MainApplication { *; }

# Parcelize and other Kotlin-related classes
-keep class kotlinx.parcelize.** { *; }
-dontwarn kotlinx.parcelize.**

# Additional classes to keep
-keepclassmembers class **.R$* {
    public static <fields>;
}

# Prevent removing classes used by Firebase and other libraries
-keep class com.google.firebase.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.app.FlutterFragmentActivity { *; }

# Workaround for R8 issues with Lambda expressions
-dontwarn java.lang.invoke.LambdaMetafactory

# Keep Gson for JSON parsing
-keep class com.google.gson.** { *; }
-dontwarn com.google.gson.**

# Rules for third-party libraries
-keep class com.zoho.** { *; }
-keep class com.salesiq.** { *; }

# Prevent warning for Retrofit and OkHttp
-dontwarn okhttp3.**
-dontwarn retrofit2.**

-keep class com.google.android.play.** { *; }
-dontwarn com.google.android.play.**



