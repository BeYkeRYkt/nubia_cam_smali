package p043u.aly;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.Reader;
import java.lang.reflect.Field;
import java.util.Calendar;
import java.util.Locale;
import javax.microedition.khronos.opengles.GL10;

public class C1394e {
    protected static final String f994a = C1394e.class.getName();

    public static String m1246c(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (NameNotFoundException e) {
            return "";
        }
    }

    public static String m1247d(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (NameNotFoundException e) {
            return "";
        }
    }

    public static boolean m1245a(Context context, String str) {
        if (context.getPackageManager().checkPermission(str, context.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public static String[] bQm(GL10 gl10) {
        try {
            String[] strArr = new String[2];
            String glGetString = gl10.glGetString(7936);
            String glGetString2 = gl10.glGetString(7937);
            strArr[0] = glGetString;
            strArr[1] = glGetString2;
            return strArr;
        } catch (Exception e) {
            C1350O.m788b(f994a, "Could not read gpu infor:", e);
            return new String[0];
        }
    }

    public static String m1244a() {
        String str = null;
        try {
            Reader fileReader = new FileReader("/proc/cpuinfo");
            if (fileReader != null) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(fileReader, 1024);
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                    fileReader.close();
                } catch (Exception e) {
                    C1350O.m788b(f994a, "Could not read from file /proc/cpuinfo", e);
                }
            }
        } catch (Exception e2) {
            C1350O.m788b(f994a, "Could not open file /proc/cpuinfo", e2);
        }
        if (str == null) {
            return "";
        }
        return str.substring(str.indexOf(58) + 1).trim();
    }

    public static String m1248f(Context context) {
        String deviceId;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            C1350O.m790e(f994a, "No IMEI.");
        }
        String str = "";
        try {
            if (C1394e.m1245a(context, "android.permission.READ_PHONE_STATE")) {
                deviceId = telephonyManager.getDeviceId();
            } else {
                deviceId = str;
            }
        } catch (Exception e) {
            C1350O.m791e(f994a, "No IMEI.", e);
            deviceId = str;
        }
        if (TextUtils.isEmpty(deviceId)) {
            C1350O.m790e(f994a, "No IMEI.");
            deviceId = C1394e.bQu(context);
            if (TextUtils.isEmpty(deviceId)) {
                C1350O.m790e(f994a, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
                deviceId = Secure.getString(context.getContentResolver(), "android_id");
                C1350O.m785a(f994a, "getDeviceId: Secure.ANDROID_ID: " + deviceId);
                return deviceId;
            }
        }
        return deviceId;
    }

    public static String m1249g(Context context) {
        return bu.m1125b(C1394e.m1248f(context));
    }

    public static String[] bQn(Context context) {
        String[] strArr = new String[]{"", ""};
        try {
            if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                if (connectivityManager == null) {
                    strArr[0] = "";
                    return strArr;
                } else if (connectivityManager.getNetworkInfo(1).getState() != State.CONNECTED) {
                    NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
                    if (networkInfo.getState() == State.CONNECTED) {
                        strArr[0] = "2G/3G";
                        strArr[1] = networkInfo.getSubtypeName();
                        return strArr;
                    }
                    return strArr;
                } else {
                    strArr[0] = "Wi-Fi";
                    return strArr;
                }
            }
            strArr[0] = "";
            return strArr;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean bQo(Context context) {
        return "Wi-Fi".equals(C1394e.bQn(context)[0]);
    }

    public static boolean bQp(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnectedOrConnecting();
        } catch (Exception e) {
            return true;
        }
    }

    public static int bQq(Context context) {
        try {
            Calendar instance = Calendar.getInstance(C1394e.bQs(context));
            if (instance != null) {
                return instance.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Exception e) {
            C1350O.m786a(f994a, "error in getTimeZone", e);
        }
        return 8;
    }

    public static String[] bQr(Context context) {
        String[] strArr = new String[2];
        try {
            Locale bQs = C1394e.bQs(context);
            if (bQs != null) {
                strArr[0] = bQs.getCountry();
                strArr[1] = bQs.getLanguage();
            }
            if (TextUtils.isEmpty(strArr[0])) {
                strArr[0] = "Unknown";
            }
            if (TextUtils.isEmpty(strArr[1])) {
                strArr[1] = "Unknown";
            }
            return strArr;
        } catch (Exception e) {
            C1350O.m788b(f994a, "error in getLocaleInfo", e);
            return strArr;
        }
    }

    private static Locale bQs(Context context) {
        Locale locale = null;
        try {
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            System.getConfiguration(context.getContentResolver(), configuration);
            if (configuration != null) {
                locale = configuration.locale;
            }
        } catch (Exception e) {
            C1350O.m787b(f994a, "fail to read user config locale");
        }
        if (locale != null) {
            return locale;
        }
        return Locale.getDefault();
    }

    public static String bQt(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null) {
                String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                if (string != null) {
                    return string.trim();
                }
                C1350O.m787b(f994a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
            }
        } catch (Exception e) {
            C1350O.m788b(f994a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
        }
        return null;
    }

    public static String bQu(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (C1394e.m1245a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            C1350O.m790e(f994a, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Exception e) {
            C1350O.m790e(f994a, "Could not get mac address." + e.toString());
        }
    }

    public static int[] bQv(Context context) {
        try {
            int i;
            int i2;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            if ((context.getApplicationInfo().flags & 8192) != 0) {
                i = -1;
                i2 = -1;
            } else {
                i2 = C1394e.bQw(displayMetrics, "noncompatWidthPixels");
                i = C1394e.bQw(displayMetrics, "noncompatHeightPixels");
            }
            if (i2 == -1 || r0 == -1) {
                i2 = displayMetrics.widthPixels;
                i = displayMetrics.heightPixels;
            }
            int[] iArr = new int[2];
            if (i2 <= i) {
                iArr[0] = i2;
                iArr[1] = i;
            } else {
                iArr[0] = i;
                iArr[1] = i2;
            }
            return iArr;
        } catch (Exception e) {
            C1350O.m788b(f994a, "read resolution fail", e);
            return null;
        }
    }

    private static int bQw(Object obj, String str) {
        try {
            Field declaredField = DisplayMetrics.class.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.getInt(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static String bQx(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName();
        } catch (Exception e) {
            C1350O.m786a(f994a, "read carrier fail", e);
            return "Unknown";
        }
    }

    public static String bQy(Context context) {
        String str = "Unknown";
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return str;
            }
            Object obj = applicationInfo.metaData.get("UMENG_CHANNEL");
            if (obj == null) {
                return str;
            }
            String obj2 = obj.toString();
            if (obj2 != null) {
                return obj2;
            }
            C1350O.m785a(f994a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            return str;
        } catch (Exception e) {
            C1350O.m785a(f994a, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml.");
            e.printStackTrace();
            return str;
        }
    }

    public static String bQz(Context context) {
        return context.getPackageName();
    }

    public static String bQA(Context context) {
        return context.getPackageManager().getApplicationLabel(context.getApplicationInfo()).toString();
    }
}
