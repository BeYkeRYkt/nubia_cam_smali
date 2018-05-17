package com.loc;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.security.MessageDigest;
import java.util.Locale;

public class C1241M {
    private static String f126a = "";
    private static String f127b = "";
    private static String f128c = "";
    private static String f129d = "";
    private static String f130e = null;

    public static String m94a(Context context) {
        try {
            return C1241M.m102g(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return f129d;
        }
    }

    public static void m95a(String str) {
        f127b = str;
    }

    public static String m96b(Context context) {
        try {
            if (!"".equals(f126a)) {
                return f126a;
            }
            PackageManager packageManager = context.getPackageManager();
            f126a = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
            return f126a;
        } catch (Throwable th) {
            C1259s.bwd(th, "AppInfo", "getApplicationName");
        }
    }

    public static void m97b(String str) {
        f130e = str;
    }

    static void bws(String str) {
        f129d = str;
    }

    public static String m98c(Context context) {
        try {
            if (f127b != null) {
                if (!"".equals(f127b)) {
                    return f127b;
                }
            }
            f127b = context.getApplicationContext().getPackageName();
        } catch (Throwable th) {
            C1259s.bwd(th, "AppInfo", "getPackageName");
        }
        return f127b;
    }

    public static String m99d(Context context) {
        try {
            if (!"".equals(f128c)) {
                return f128c;
            }
            f128c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            return f128c;
        } catch (Throwable th) {
            C1259s.bwd(th, "AppInfo", "getApplicationVersion");
        }
    }

    public static String m100e(Context context) {
        try {
            if (f130e != null && !"".equals(f130e)) {
                return f130e;
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            byte[] digest = MessageDigest.getInstance("SHA1").digest(packageInfo.signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : digest) {
                String toUpperCase = Integer.toHexString(b & 255).toUpperCase(Locale.US);
                if (toUpperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(toUpperCase);
                stringBuffer.append(":");
            }
            stringBuffer.append(packageInfo.packageName);
            f130e = stringBuffer.toString();
            return f130e;
        } catch (Throwable th) {
            C1259s.bwd(th, "AppInfo", "getSHA1AndPackage");
            return f130e;
        }
    }

    public static String m101f(Context context) {
        try {
            return C1241M.m102g(context);
        } catch (Throwable th) {
            C1259s.bwd(th, "AppInfo", "getKey");
            return f129d;
        }
    }

    private static String m102g(Context context) {
        if (f129d == null || f129d.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null) {
                return f129d;
            }
            f129d = applicationInfo.metaData.getString("com.amap.api.v2.apikey");
        }
        return f129d;
    }
}
