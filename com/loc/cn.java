package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import java.io.File;
import java.util.List;
import javax.xml.parsers.SAXParserFactory;

public class cn {
    private static String f396a = "";
    private static boolean f397b = false;
    private static String f398c = "";
    private static String f399d = "";
    private static String f400e = "";
    private static String f401f = "";

    static String m515a(Context context) {
        try {
            return bFX(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static List m517a(List list) {
        int size = list.size();
        for (int i = 0; i < size - 1; i++) {
            for (int i2 = 1; i2 < size - i; i2++) {
                if (((ScanResult) list.get(i2 - 1)).level > ((ScanResult) list.get(i2)).level) {
                    ScanResult scanResult = (ScanResult) list.get(i2 - 1);
                    list.set(i2 - 1, list.get(i2));
                    list.set(i2, scanResult);
                }
            }
        }
        return list;
    }

    public static void m518a() {
        try {
            if (VERSION.SDK_INT > 14) {
                TrafficStats.class.getDeclaredMethod("setThreadStatsTag", new Class[]{Integer.TYPE}).invoke(null, new Object[]{Integer.valueOf(40964)});
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "setTraficTag");
        }
    }

    private static boolean m519a(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }

    static String m521b(Context context) {
        String str = "";
        try {
            return bGa(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    static String bFK(Context context) {
        StringBuilder stringBuilder = new StringBuilder();
        if (context != null && m519a(context, "android.permission.ACCESS_WIFI_STATE")) {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager.isWifiEnabled()) {
                List scanResults = wifiManager.getScanResults();
                if (scanResults == null || scanResults.size() == 0) {
                    return stringBuilder.toString();
                }
                List a = m517a(scanResults);
                Object obj = 1;
                int i = 0;
                while (i < a.size() && i < 7) {
                    ScanResult scanResult = (ScanResult) a.get(i);
                    if (obj == null) {
                        stringBuilder.append(";");
                    } else {
                        obj = null;
                    }
                    stringBuilder.append(scanResult.BSSID);
                    i++;
                }
            }
        } else {
            try {
                return stringBuilder.toString();
            } catch (Throwable th) {
                C1259s.bwd(th, "DeviceInfo", "getWifiMacs");
            }
        }
        return stringBuilder.toString();
    }

    public static String bFL(Context context) {
        try {
            if (f398c != null) {
                if (!"".equals(f398c)) {
                    return f398c;
                }
            }
            if (!m519a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return f398c;
            }
            f398c = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            return f398c;
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getDeviceMac");
        }
    }

    static String[] bFM(Context context) {
        try {
            if (m519a(context, "android.permission.READ_PHONE_STATE") && m519a(context, "android.permission.ACCESS_COARSE_LOCATION")) {
                CellLocation cellLocation = ((TelephonyManager) context.getSystemService("phone")).getCellLocation();
                int cid;
                int lac;
                if (cellLocation instanceof GsmCellLocation) {
                    GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                    cid = gsmCellLocation.getCid();
                    lac = gsmCellLocation.getLac();
                    return new String[]{lac + "||" + cid, "gsm"};
                }
                if (cellLocation instanceof CdmaCellLocation) {
                    CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                    cid = cdmaCellLocation.getSystemId();
                    int networkId = cdmaCellLocation.getNetworkId();
                    lac = cdmaCellLocation.getBaseStationId();
                    if (cid >= 0 && networkId >= 0 && lac >= 0) {
                    }
                    return new String[]{cid + "||" + networkId + "||" + lac, "cdma"};
                }
                return new String[]{"", ""};
            }
            return new String[]{"", ""};
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "cellInfo");
        }
    }

    static String bFN(Context context) {
        String str = "";
        String networkOperator;
        try {
            if (!m519a(context, "android.permission.READ_PHONE_STATE")) {
                return str;
            }
            networkOperator = bGc(context).getNetworkOperator();
            if (TextUtils.isEmpty(networkOperator) && networkOperator.length() < 3) {
                return str;
            }
            networkOperator = networkOperator.substring(3);
            return networkOperator;
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getMNC");
            networkOperator = str;
        }
    }

    public static int bFO(Context context) {
        try {
            return bGb(context);
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getNetWorkType");
            return -1;
        }
    }

    public static int bFP(Context context) {
        try {
            return bFY(context);
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getActiveNetWorkType");
            return -1;
        }
    }

    public static NetworkInfo bFQ(Context context) {
        if (!m519a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return null;
        }
        ConnectivityManager bFZ = bFZ(context);
        return bFZ != null ? bFZ.getActiveNetworkInfo() : null;
    }

    static String bFR(Context context) {
        String extraInfo;
        try {
            NetworkInfo bFQ = bFQ(context);
            if (bFQ == null) {
                return null;
            }
            extraInfo = bFQ.getExtraInfo();
            return extraInfo;
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getNetworkExtraInfo");
            extraInfo = null;
        }
    }

    static String bFS(Context context) {
        try {
            if (f399d != null) {
                if (!"".equals(f399d)) {
                    return f399d;
                }
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            f399d = i2 <= i ? i2 + "*" + i : i + "*" + i2;
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getReslution");
        }
        return f399d;
    }

    public static String bFT(Context context) {
        try {
            if (f400e != null) {
                if (!"".equals(f400e)) {
                    return f400e;
                }
            }
            if (!m519a(context, "android.permission.READ_PHONE_STATE")) {
                return f400e;
            }
            f400e = bGc(context).getDeviceId();
            if (f400e == null) {
                f400e = "";
            }
            return f400e;
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getDeviceID");
        }
    }

    public static String bFU(Context context) {
        String str = "";
        try {
            return bFW(context);
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getSubscriberId");
            return str;
        }
    }

    static String bFV(Context context) {
        try {
            return bFX(context);
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getNetworkOperatorName");
            return "";
        }
    }

    private static String bFW(Context context) {
        if (f401f != null && !"".equals(f401f)) {
            return f401f;
        }
        if (!m519a(context, "android.permission.READ_PHONE_STATE")) {
            return f401f;
        }
        f401f = bGc(context).getSubscriberId();
        if (f401f == null) {
            f401f = "";
        }
        return f401f;
    }

    private static String bFX(Context context) {
        if (!m519a(context, "android.permission.READ_PHONE_STATE")) {
            return null;
        }
        String simOperatorName = bGc(context).getSimOperatorName();
        if (TextUtils.isEmpty(simOperatorName)) {
            simOperatorName = bGc(context).getNetworkOperatorName();
        }
        return simOperatorName;
    }

    private static int bFY(Context context) {
        if (context == null || !m519a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return -1;
        }
        ConnectivityManager bFZ = bFZ(context);
        if (bFZ == null) {
            return -1;
        }
        NetworkInfo activeNetworkInfo = bFZ.getActiveNetworkInfo();
        return activeNetworkInfo != null ? activeNetworkInfo.getType() : -1;
    }

    private static ConnectivityManager bFZ(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    private static String bGa(Context context) {
        String str = "";
        String bFU = bFU(context);
        return (bFU != null && bFU.length() >= 5) ? bFU.substring(3, 5) : str;
    }

    private static int bGb(Context context) {
        return m519a(context, "android.permission.READ_PHONE_STATE") ? bGc(context).getNetworkType() : -1;
    }

    private static TelephonyManager bGc(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    static int m523c(Context context) {
        try {
            return bGb(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    static int m524d(Context context) {
        try {
            return bFY(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    static String m525e(Context context) {
        try {
            return bFW(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String m526f(Context context) {
        try {
            if (f396a != null) {
                if (!"".equals(f396a)) {
                    return f396a;
                }
            }
            if (m519a(context, "android.permission.WRITE_SETTINGS")) {
                f396a = System.getString(context.getContentResolver(), "mqBRboGZkQPcAkyk");
            }
            if (f396a != null) {
                if (!"".equals(f396a)) {
                    return f396a;
                }
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "DeviceInfo", "getUTDID");
        }
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/.UTSystemConfig/Global/Alvin2.xml");
                if (file.exists()) {
                    SAXParserFactory.newInstance().newSAXParser().parse(file, new bT());
                }
            }
        } catch (Throwable th2) {
            C1259s.bwd(th2, "DeviceInfo", "getUTDID");
        }
        return f396a;
    }

    static String m527g(Context context) {
        if (context != null) {
            try {
                if (m519a(context, "android.permission.ACCESS_WIFI_STATE")) {
                    String bssid;
                    WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                    if (wifiManager.isWifiEnabled()) {
                        bssid = wifiManager.getConnectionInfo().getBSSID();
                        return bssid;
                    }
                    bssid = null;
                    return bssid;
                }
            } catch (Throwable th) {
                C1259s.bwd(th, "DeviceInfo", "getWifiMacs");
            }
        }
        return null;
    }
}
