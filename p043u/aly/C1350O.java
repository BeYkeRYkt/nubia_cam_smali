package p043u.aly;

import android.util.Log;

public class C1350O {
    public static boolean f661a = false;

    public static void m785a(String str, String str2) {
        if (f661a) {
            Log.i(str, str2);
        }
    }

    public static void m786a(String str, String str2, Exception exception) {
        if (f661a) {
            Log.i(str, exception.toString() + ":  [" + str2 + "]");
        }
    }

    public static void m787b(String str, String str2) {
        if (f661a) {
            Log.e(str, str2);
        }
    }

    public static void m788b(String str, String str2, Exception exception) {
        if (f661a) {
            Log.e(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.e(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }

    public static void m789c(String str, String str2) {
        if (f661a) {
            Log.d(str, str2);
        }
    }

    public static void m790e(String str, String str2) {
        if (f661a) {
            Log.w(str, str2);
        }
    }

    public static void m791e(String str, String str2, Exception exception) {
        if (f661a) {
            Log.w(str, exception.toString() + ":  [" + str2 + "]");
            for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
                Log.w(str, "        at\t " + stackTraceElement.toString());
            }
        }
    }
}
