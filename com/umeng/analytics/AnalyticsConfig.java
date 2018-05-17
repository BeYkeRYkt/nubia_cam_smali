package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import p043u.aly.C1394e;

public class AnalyticsConfig {
    public static boolean ACTIVITY_DURATION_OPEN = true;
    public static boolean CATCH_EXCEPTION = true;
    public static boolean COMPRESS_DATA = true;
    public static boolean ENABLE_MEMORY_BUFFER = true;
    public static String GPU_RENDERER = "";
    public static String GPU_VENDER = "";
    private static String f514a = null;
    private static String f515b = null;
    private static double[] f516c = null;
    public static long kContinueSessionMillis = 30000;
    public static int mVerticalType;
    public static String mWrapperType = null;
    public static String mWrapperVersion = null;
    public static boolean sEncrypt = false;
    public static int sLatentWindow;

    public static void enableEncrypt(boolean z) {
        sEncrypt = z;
    }

    public static void setAppkey(Context context, String str) {
        if (context != null) {
            String bQt = C1394e.bQt(context);
            if (TextUtils.isEmpty(bQt)) {
                Object c = C1315h.m670a(context).m682c();
                if (TextUtils.isEmpty(c)) {
                    C1315h.m670a(context).m675a(str);
                } else if (!c.equals(str)) {
                    Log.w(C1296a.f549e, "Appkey和上次配置的不一致 ");
                    C1315h.m670a(context).m675a(str);
                }
                f514a = str;
            } else {
                f514a = bQt;
                if (!bQt.equals(str)) {
                    Log.w(C1296a.f549e, "Appkey和AndroidManifest.xml中配置的不一致 ");
                }
            }
            return;
        }
        f514a = str;
    }

    public static void setChannel(String str) {
        f515b = str;
    }

    public static String getAppkey(Context context) {
        if (TextUtils.isEmpty(f514a)) {
            f514a = C1394e.bQt(context);
            if (TextUtils.isEmpty(f514a)) {
                f514a = C1315h.m670a(context).m682c();
            }
        }
        return f514a;
    }

    public static String getChannel(Context context) {
        if (TextUtils.isEmpty(f515b)) {
            f515b = C1394e.bQy(context);
        }
        return f515b;
    }

    public static String getSDKVersion() {
        if (mVerticalType != 1) {
            return C1296a.f547c;
        }
        return C1296a.f548d;
    }

    public static double[] getLocation() {
        return f516c;
    }

    public static void setLocation(double d, double d2) {
        if (f516c == null) {
            f516c = new double[2];
        }
        f516c[0] = d;
        f516c[1] = d2;
    }

    public static void setLatencyWindow(long j) {
        sLatentWindow = ((int) j) * 1000;
    }
}
