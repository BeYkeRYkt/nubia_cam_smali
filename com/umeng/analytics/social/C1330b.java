package com.umeng.analytics.social;

import android.util.Log;

public class C1330b {
    public static void m697a(String str, String str2) {
        if (C1333e.f647v) {
            Log.i(str, str2);
        }
    }

    public static void m698a(String str, String str2, Exception exception) {
        if (C1333e.f647v) {
            Log.i(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void m699b(String str, String str2) {
        if (C1333e.f647v) {
            Log.e(str, str2);
        }
    }

    public static void m700b(String str, String str2, Exception exception) {
        if (C1333e.f647v) {
            Log.e(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.e(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    public static void m701c(String str, String str2) {
        if (C1333e.f647v) {
            Log.d(str, str2);
        }
    }

    public static void m702c(String str, String str2, Exception exception) {
        if (C1333e.f647v) {
            Log.d(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void m703d(String str, String str2) {
        if (C1333e.f647v) {
            Log.v(str, str2);
        }
    }

    public static void m704d(String str, String str2, Exception exception) {
        if (C1333e.f647v) {
            Log.v(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void m705e(String str, String str2) {
        if (C1333e.f647v) {
            Log.w(str, str2);
        }
    }

    public static void m706e(String str, String str2, Exception exception) {
        if (C1333e.f647v) {
            Log.w(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.w(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }
}
