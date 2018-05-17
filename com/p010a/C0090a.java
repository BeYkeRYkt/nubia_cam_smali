package com.p010a;

import android.util.Log;

public class C0090a {
    public static void m1e(String str, String str2) {
        Log.e("com.android.camera", "[" + str + "]" + str2);
    }

    public static void bvi(String str, String str2, Throwable th) {
        Log.e("com.android.camera", "[" + str + "]" + str2, th);
    }

    public static void bvj(String str, String str2) {
        Log.w("com.android.camera", "[" + str + "]" + str2);
    }

    public static void bvk(String str, String str2, Throwable th) {
        Log.w("com.android.camera", "[" + str + "]" + str2, th);
    }

    public static void bvl(String str, Throwable th) {
        Log.w("com.android.camera", "[" + str + "]", th);
    }

    public static void bvm(String str, String str2) {
        Log.i("com.android.camera", "[" + str + "]" + str2);
    }

    public static void bvn(String str, String str2, Throwable th) {
        Log.i("com.android.camera", "[" + str + "]" + str2, th);
    }

    public static void bvo(String str, String str2) {
        Log.v("com.android.camera", "[" + str + "]" + str2);
    }

    public static void bvp(String str, String str2, Throwable th) {
        Log.v("com.android.camera", "[" + str + "]" + str2, th);
    }

    public static void m0d(String str, String str2) {
        Log.d("com.android.camera", "[" + str + "]" + str2);
    }
}
