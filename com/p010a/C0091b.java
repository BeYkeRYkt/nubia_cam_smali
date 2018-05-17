package com.p010a;

import android.util.Log;

public class C0091b {
    private static boolean bda = false;

    public static void bvq(String str, String str2) {
        if (!bda) {
            Log.i("com.android.camera", "[" + str + "]" + str2);
        }
    }

    public static void bvr(String str, String str2) {
        if (!bda) {
            Log.v("com.android.camera", "[" + str + "]" + str2);
        }
    }
}
