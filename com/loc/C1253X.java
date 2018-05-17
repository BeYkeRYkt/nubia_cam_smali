package com.loc;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.SystemClock;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Base64;
import com.amap.api.location.AMapLocation;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Random;
import org.json.JSONObject;

public class C1253X {
    private static int f152a = 0;
    private static String[] bet = null;
    private static Hashtable beu = new Hashtable();
    private static DecimalFormat bev = null;
    private static SimpleDateFormat bew = null;

    public static int m124a(int i) {
        return (i * 2) - 113;
    }

    public static long m125a() {
        return System.currentTimeMillis();
    }

    public static Object m126a(Context context, String str) {
        if (context == null) {
            return null;
        }
        Object systemService;
        try {
            systemService = context.getApplicationContext().getSystemService(str);
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "getServ");
            systemService = null;
        }
        return systemService;
    }

    public static boolean m127a(Context context) {
        if (context == null) {
            return false;
        }
        if (C1253X.m136c() >= 17) {
            try {
                return C1253X.bwY(context, "android.provider.Settings$Global");
            } catch (Throwable th) {
                return false;
            }
        }
        try {
            return C1253X.bwY(context, "android.provider.Settings$System");
        } catch (Throwable th2) {
            return false;
        }
    }

    public static boolean m128a(String str) {
        return (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) ? false : ",111,123,134,199,202,204,206,208,212,213,214,216,218,219,220,222,225,226,228,230,231,232,234,235,238,240,242,244,246,247,248,250,255,257,259,260,262,266,268,270,272,274,276,278,280,282,283,284,286,288,289,290,292,293,294,295,297,302,308,310,311,312,313,314,315,316,310,330,332,334,338,340,342,344,346,348,350,352,354,356,358,360,362,363,364,365,366,368,370,372,374,376,400,401,402,404,405,406,410,412,413,414,415,416,417,418,419,420,421,422,424,425,426,427,428,429,430,431,432,434,436,437,438,440,441,450,452,454,455,456,457,466,467,470,472,502,505,510,514,515,520,525,528,530,534,535,536,537,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,555,560,598,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,645,646,647,648,649,650,651,652,653,654,655,657,659,665,702,704,706,708,710,712,714,716,722,724,730,732,734,736,738,740,742,744,746,748,750,850,901,".contains("," + str + ",");
    }

    public static byte[] m129a(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((byte) ((int) ((j >> (i * 8)) & 255)));
        }
        return bArr;
    }

    public static final byte[] m130a(File file) {
        if (file != null && file.exists()) {
            byte[] bArr = new byte[2048];
            FileInputStream fileInputStream = new FileInputStream(file);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int read = fileInputStream.read(bArr);
                if (read == -1) {
                    fileInputStream.close();
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } else {
            throw new IOException("can't operate on null");
        }
    }

    public static byte[] m131a(byte[] bArr) {
        byte[] bArr2 = null;
        try {
            bArr2 = bv.m433b(bArr);
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "gz");
        }
        return bArr2;
    }

    public static long m132b() {
        return SystemClock.elapsedRealtime();
    }

    public static final long m133b(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            j = (j << 8) | ((long) (bArr[i] & 255));
        }
        return j;
    }

    public static String m134b(Context context) {
        if (!TextUtils.isEmpty(bx.f341j)) {
            return bx.f341j;
        }
        if (context == null) {
            return null;
        }
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 64);
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "getAppName part");
            packageInfo = null;
        }
        try {
            if (TextUtils.isEmpty(bx.f342k)) {
                bx.f342k = null;
            }
        } catch (Throwable th2) {
            bx.bBw(th2, "Utils", "getAppName");
        }
        StringBuilder stringBuilder = new StringBuilder();
        if (packageInfo != null) {
            CharSequence loadLabel = packageInfo.applicationInfo == null ? null : packageInfo.applicationInfo.loadLabel(context.getPackageManager());
            if (loadLabel != null) {
                stringBuilder.append(loadLabel.toString());
            }
            if (!TextUtils.isEmpty(packageInfo.versionName)) {
                stringBuilder.append(packageInfo.versionName);
            }
        }
        if (!TextUtils.isEmpty(bx.f339g)) {
            stringBuilder.append(",").append(bx.f339g);
        }
        if (!TextUtils.isEmpty(bx.f342k)) {
            stringBuilder.append(",").append(bx.f342k);
        }
        String stringBuilder2 = stringBuilder.toString();
        bx.f341j = stringBuilder2;
        return stringBuilder2;
    }

    public static byte[] m135b(String str) {
        byte[] bArr = new byte[6];
        String[] split = str.split(":");
        for (int i = 0; i < split.length; i++) {
            bArr[i] = (byte) ((byte) Integer.parseInt(split[i], 16));
        }
        return bArr;
    }

    public static boolean bwS(double d) {
        return d <= 180.0d && d >= -180.0d;
    }

    public static boolean bwT(double d) {
        return d <= 90.0d && d >= -90.0d;
    }

    public static boolean bwU(AMapLocation aMapLocation) {
        if (aMapLocation == null || aMapLocation.bup() != 0) {
            return false;
        }
        double longitude = aMapLocation.getLongitude();
        double latitude = aMapLocation.getLatitude();
        float accuracy = aMapLocation.getAccuracy();
        if (longitude == 0.0d && latitude == 0.0d && ((double) accuracy) == 0.0d) {
            return false;
        }
        if ((longitude > 180.0d) || latitude > 90.0d) {
            return false;
        }
        return !((longitude > -180.0d ? 1 : (longitude == -180.0d ? 0 : -1)) < 0) && latitude >= -90.0d;
    }

    public static boolean bwV(AmapLoc amapLoc) {
        if (amapLoc == null || amapLoc.bHP().equals("8") || amapLoc.bHP().equals("5") || amapLoc.bHP().equals("6")) {
            return false;
        }
        double bHB = amapLoc.bHB();
        double bHE = amapLoc.bHE();
        float accuracy = amapLoc.getAccuracy();
        if (bHB == 0.0d && bHE == 0.0d && ((double) accuracy) == 0.0d) {
            return false;
        }
        if ((bHB > 180.0d) || bHE > 90.0d) {
            return false;
        }
        return !((bHB > -180.0d ? 1 : (bHB == -180.0d ? 0 : -1)) < 0) && bHE >= -90.0d;
    }

    public static String[] bwW(TelephonyManager telephonyManager) {
        int parseInt;
        String str = null;
        if (telephonyManager != null) {
            str = telephonyManager.getNetworkOperator();
        }
        String[] strArr = new String[]{"0", "0"};
        int i = (TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str) || str.length() <= 4) ? 0 : 1;
        if (i != 0) {
            strArr[0] = str.substring(0, 3);
            char[] toCharArray = str.substring(3).toCharArray();
            i = 0;
            while (i < toCharArray.length && Character.isDigit(toCharArray[i])) {
                i++;
            }
            strArr[1] = str.substring(3, i + 3);
        }
        try {
            parseInt = Integer.parseInt(strArr[0]);
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "getMccMnc");
            parseInt = 0;
        }
        if (parseInt == 0) {
            strArr[0] = "0";
        }
        if (!strArr[0].equals("0") && !strArr[1].equals("0")) {
            bet = strArr;
        } else if (strArr[0].equals("0") && strArr[1].equals("0") && bet != null) {
            return bet;
        }
        return strArr;
    }

    public static int bwX(boolean z, CellLocation cellLocation, Context context) {
        if (!(z || cellLocation == null)) {
            if (cellLocation instanceof GsmCellLocation) {
                return 1;
            }
            try {
                Class.forName("android.telephony.cdma.CdmaCellLocation");
                return 2;
            } catch (Throwable th) {
                bx.bBw(th, "Utils", "getCellLocT");
            }
        }
        return 9;
    }

    private static boolean bwY(Context context, String str) {
        ContentResolver contentResolver = context.getContentResolver();
        String str2 = ((String) br.m424a(str, "AIRPLANE_MODE_ON")).toString();
        return ((Integer) br.bBc(str, "getInt", new Object[]{contentResolver, str2}, new Class[]{ContentResolver.class, String.class})).intValue() == 1;
    }

    public static float bwZ(double[] dArr) {
        if (dArr.length != 4) {
            return 0.0f;
        }
        float[] fArr = new float[1];
        Location.distanceBetween(dArr[0], dArr[1], dArr[2], dArr[3], fArr);
        return fArr[0];
    }

    public static float bxa(AmapLoc amapLoc, AmapLoc amapLoc2) {
        return C1253X.bwZ(new double[]{amapLoc.bHE(), amapLoc.bHB(), amapLoc2.bHE(), amapLoc2.bHB()});
    }

    public static int bxb(int i, int i2) {
        return new Random().nextInt((i2 - i) + 1) + i;
    }

    public static boolean bxc(JSONObject jSONObject, String str) {
        return bv.bBl(jSONObject, str);
    }

    public static boolean bxd(ScanResult scanResult) {
        return (scanResult == null || TextUtils.isEmpty(scanResult.BSSID) || scanResult.BSSID.equals("00:00:00:00:00:00") || scanResult.BSSID.contains(" :")) ? false : true;
    }

    public static int bxe(NetworkInfo networkInfo) {
        return (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) ? networkInfo.getType() : -1;
    }

    public static String bxf(TelephonyManager telephonyManager) {
        int i = 0;
        if (telephonyManager != null) {
            i = telephonyManager.getNetworkType();
        }
        return (String) bx.bhy.get(i, "UNKWN");
    }

    public static final int bxg(byte[] bArr) {
        return ((bArr[0] & 255) << 8) | (bArr[1] & 255);
    }

    public static final int bxh(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (i < 4) {
            i2 = (i2 << 8) | (bArr[i] & 255);
            i++;
        }
        return i2;
    }

    public static String bxi(String str) {
        return C1253X.bxj(str, 0);
    }

    public static String bxj(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "str2Base64");
            bytes = null;
        }
        return Base64.encodeToString(bytes, i);
    }

    public static String bxk(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        String str2;
        try {
            str2 = new String(Base64.decode(str, 0), "UTF-8");
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "base642Str");
            str2 = null;
        }
        return str2;
    }

    public static byte[] bxl(String str) {
        return C1253X.bxm(Integer.parseInt(str));
    }

    public static byte[] bxm(int i) {
        byte[] bArr = new byte[2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((byte) ((i >> (i2 * 8)) & 255));
        }
        return bArr;
    }

    public static synchronized String bxn(long j, String str) {
        String format;
        synchronized (C1253X.class) {
            if (TextUtils.isEmpty(str)) {
                str = "yyyy-MM-dd HH:mm:ss";
            }
            if (bew != null) {
                bew.applyPattern(str);
            } else {
                try {
                    bew = new SimpleDateFormat(str, Locale.CHINA);
                } catch (Throwable th) {
                    bx.bBw(th, "Utils", "formatUTC");
                }
            }
            if ((j > 0 ? 1 : null) == null) {
                j = C1253X.m125a();
            }
            format = bew != null ? bew.format(Long.valueOf(j)) : "NULL";
        }
        return format;
    }

    public static synchronized boolean bxo(long j, long j2) {
        boolean equals;
        synchronized (C1253X.class) {
            String str = "yyyyMMdd";
            if (bew != null) {
                bew.applyPattern(str);
            } else {
                try {
                    bew = new SimpleDateFormat(str, Locale.CHINA);
                } catch (Throwable th) {
                    bx.bBw(th, "Utils", "isSameDay part1");
                }
            }
            try {
                if (bew != null) {
                    equals = bew.format(Long.valueOf(j)).equals(bew.format(Long.valueOf(j2)));
                }
            } catch (Throwable th2) {
                bx.bBw(th2, "Utils", "isSameDay");
            }
            equals = false;
        }
        return equals;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized boolean bxp(long r8, long r10) {
        /*
        r1 = 1;
        r6 = 12;
        r0 = 0;
        r2 = com.loc.C1253X.class;
        monitor-enter(r2);
        r3 = com.loc.C1253X.bxo(r8, r10);	 Catch:{ all -> 0x0031 }
        if (r3 == 0) goto L_0x002b;
    L_0x000d:
        r3 = java.util.Locale.CHINA;	 Catch:{ all -> 0x0031 }
        r3 = java.util.Calendar.getInstance(r3);	 Catch:{ all -> 0x0031 }
        r3.setTimeInMillis(r8);	 Catch:{ all -> 0x0031 }
        r4 = 11;
        r4 = r3.get(r4);	 Catch:{ all -> 0x0031 }
        r3.setTimeInMillis(r10);	 Catch:{ all -> 0x0031 }
        r5 = 11;
        r3 = r3.get(r5);	 Catch:{ all -> 0x0031 }
        if (r4 > r6) goto L_0x002d;
    L_0x0027:
        if (r3 <= r6) goto L_0x002f;
    L_0x0029:
        monitor-exit(r2);
        return r0;
    L_0x002b:
        monitor-exit(r2);
        return r0;
    L_0x002d:
        if (r3 <= r6) goto L_0x0029;
    L_0x002f:
        r0 = r1;
        goto L_0x0029;
    L_0x0031:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.X.bxp(long, long):boolean");
    }

    public static byte[] bxq(String str) {
        return C1253X.bxr(Integer.parseInt(str));
    }

    public static byte[] bxr(int i) {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((byte) ((i >> (i2 * 8)) & 255));
        }
        return bArr;
    }

    public static double bxs(double d) {
        return ((double) ((long) (d * 1000000.0d))) / 1000000.0d;
    }

    public static int m136c() {
        int i = 0;
        if (f152a > 0) {
            return f152a;
        }
        String str = "android.os.Build$VERSION";
        try {
            i = br.m425b(str, "SDK_INT");
        } catch (Throwable th) {
        }
        return i;
    }

    public static NetworkInfo m137c(Context context) {
        NetworkInfo networkInfo = null;
        try {
            networkInfo = cn.bFQ(context);
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "getNetWorkInfo");
        }
        return networkInfo;
    }

    public static String m138d() {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static boolean m139d(Context context) {
        try {
            for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.processName.equals(context.getPackageName())) {
                    return runningAppProcessInfo.importance != 100;
                }
            }
            return false;
        } catch (Throwable th) {
            bx.bBw(th, "Utils", "isApplicationBroughtToBackground");
            return true;
        }
    }

    public static String m140e() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(C1253X.m138d()).append(File.separator);
        stringBuilder.append("amaplocationapi").append(File.separator);
        return stringBuilder.toString();
    }

    public static String m141f() {
        return Build.MODEL;
    }

    public static String m142g() {
        return VERSION.RELEASE;
    }

    public static boolean m143h() {
        return C1253X.bxb(0, 1) == 1;
    }

    public static void m144i() {
        beu.clear();
    }

    public static String m145j() {
        String str = "";
        try {
            return cz.m549a(bx.f337e.getBytes("UTF-8")).substring(20);
        } catch (Throwable th) {
            return "";
        }
    }

    public static boolean m146k() {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
