package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;

public class C1310e {
    private static String[] f587a = new String[2];

    public static void m654a(Context context, String str, String str2) {
        f587a[0] = str;
        f587a[1] = str2;
        if (context != null) {
            C1315h.m670a(context).m676a(str, str2);
        }
    }

    public static String[] m655a(Context context) {
        if (!TextUtils.isEmpty(f587a[0]) && !TextUtils.isEmpty(f587a[1])) {
            return f587a;
        }
        if (context != null) {
            String[] a = C1315h.m670a(context).m678a();
            if (a != null) {
                f587a[0] = a[0];
                f587a[1] = a[1];
                return f587a;
            }
        }
        return null;
    }

    public static void m656b(Context context) {
        f587a[0] = null;
        f587a[1] = null;
        if (context != null) {
            C1315h.m670a(context).m679b();
        }
    }
}
