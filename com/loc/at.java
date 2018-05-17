package com.loc;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.location.GpsStatus.NmeaListener;
import android.location.LocationManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.os.HandlerThread;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.TreeMap;

public class at {
    static String f233a = "";
    static String f234b = "log.txt";
    private static int bfG = 10000;
    protected static boolean bfH = false;
    protected static final String[] bfM = new String[]{"android.permission.READ_PHONE_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_NETWORK_STATE"};
    private static LocationManager bfp = null;
    private static at bfy = null;
    static String f235c = "";
    protected static boolean f236d = true;
    private cE bfA = null;
    private CellLocation bfB = null;
    private long bfC = 0;
    private List bfD = new ArrayList();
    private Timer bfE = null;
    private HandlerThread bfF = null;
    Object bfI = new Object();
    boolean bfJ = false;
    C1272r bfK;
    aJ bfL;
    private Context bfn = null;
    private TelephonyManager bfo = null;
    private SensorManager bfq = null;
    private boolean bfr = false;
    private int bfs = 0;
    private long bft = -1;
    private int bfu = 0;
    private int bfv = 0;
    private String bfw = "";
    private long bfx = 0;
    private cp bfz = null;
    private String f237o = "";
    private String f238s = "";
    private String f239t = "";
    private int f240u = 0;

    private at(Context context, C1272r c1272r, aJ aJVar) {
        if (context != null) {
            try {
                this.bfK = c1272r;
                this.bfL = aJVar;
                this.bfn = context;
                this.bfo = (TelephonyManager) context.getSystemService("phone");
                if (bfp == null) {
                    bfp = (LocationManager) context.getSystemService("location");
                }
                this.bfq = (SensorManager) context.getSystemService("sensor");
                if (this.bfo != null && c1272r != null) {
                    this.f237o = this.bfo.getSubscriberId();
                    WifiInfo b = c1272r.m574b();
                    if (b != null) {
                        this.f239t = b.getMacAddress();
                        if (this.f239t != null && this.f239t.length() > 0) {
                            this.f239t = this.f239t.replace(":", "");
                        }
                    }
                    String[] bwW = C1253X.bwW(this.bfo);
                    this.f240u = Integer.parseInt(bwW[0]);
                    this.bfu = Integer.parseInt(bwW[1]);
                    this.bfv = this.bfo.getNetworkType();
                    this.bfw = context.getPackageName();
                    this.bfr = this.bfo.getPhoneType() == 2;
                }
            } catch (Throwable th) {
                bx.bBw(th, "ClientInfoUtil", "ClientInfoUtil");
            }
        }
    }

    private void m261a(List list) {
        if (list != null) {
            try {
                if (list.size() >= 1) {
                    Object hashMap = new HashMap();
                    for (int i = 0; i < list.size(); i++) {
                        ScanResult scanResult = (ScanResult) list.get(i);
                        if (scanResult.SSID == null) {
                            scanResult.SSID = "null";
                        }
                        hashMap.put(Integer.valueOf(scanResult.level), scanResult);
                    }
                    TreeMap treeMap = new TreeMap(Collections.reverseOrder());
                    treeMap.putAll(hashMap);
                    list.clear();
                    for (Object obj : treeMap.keySet()) {
                        list.add(treeMap.get(obj));
                    }
                    hashMap.clear();
                    treeMap.clear();
                }
            } catch (Throwable th) {
                bx.bBw(th, "ClientInfoUtil", "setWifiOrder");
            }
        }
    }

    protected static boolean m262a(Context context) {
        if (context == null) {
            return true;
        }
        boolean z;
        try {
            if (Secure.getString(context.getContentResolver(), "mock_location").equals("0")) {
                z = false;
            } else {
                PackageManager packageManager = context.getPackageManager();
                List<ApplicationInfo> installedApplications = packageManager.getInstalledApplications(128);
                String str = "android.permission.ACCESS_MOCK_LOCATION";
                String packageName = context.getPackageName();
                z = false;
                for (ApplicationInfo applicationInfo : installedApplications) {
                    try {
                        if (z) {
                            break;
                        }
                        boolean z2;
                        try {
                            String[] strArr = packageManager.getPackageInfo(applicationInfo.packageName, 4096).requestedPermissions;
                            if (strArr != null) {
                                int length = strArr.length;
                                int i = 0;
                                while (i < length) {
                                    if (!strArr[i].equals(str)) {
                                        i++;
                                    } else if (!applicationInfo.packageName.equals(packageName)) {
                                        z2 = true;
                                        z = z2;
                                    }
                                }
                            }
                        } catch (Exception e) {
                        }
                        z2 = z;
                        z = z2;
                    } catch (Throwable th) {
                        Throwable th2 = th;
                    }
                }
            }
        } catch (Throwable th3) {
            th2 = th3;
            z = false;
            bx.bBw(th2, "ClientInfoUtil", "isMockGps");
            return z;
        }
        return z;
    }

    private static boolean m263b(Context context) {
        try {
            if (bfp == null) {
                bfp = (LocationManager) context.getSystemService("location");
            }
            if (bfp != null) {
                for (String str : bfp.getAllProviders()) {
                    if (str.equals("passive") || str.equals("gps")) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "isProviderEnabled");
        }
        return false;
    }

    private static int byA(Object obj) {
        try {
            Method declaredMethod = Sensor.class.getDeclaredMethod("getMinDelay", (Class[]) null);
            if (declaredMethod != null) {
                return ((Integer) declaredMethod.invoke(obj, (Object[]) null)).intValue();
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getMinDelay");
        }
        return 0;
    }

    private boolean byB() {
        boolean z = true;
        try {
            if (System.currentTimeMillis() - this.bfC >= 3500) {
                z = false;
            }
            return z;
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "isFresh_wifi");
            return true;
        }
    }

    private void byC() {
        if (this.bfK != null) {
            try {
                if (f236d) {
                    this.bfK.m576d();
                }
            } catch (Throwable th) {
                bx.bBw(th, "ClientInfoUtil", "scanWifi");
            }
        }
    }

    private void byD(NmeaListener nmeaListener) {
        if (bfp != null && nmeaListener != null) {
            bfp.addNmeaListener(nmeaListener);
        }
    }

    private void byE(NmeaListener nmeaListener) {
        if (bfp != null && nmeaListener != null) {
            bfp.removeNmeaListener(nmeaListener);
        }
    }

    protected static boolean byH(String[] strArr, String str) {
        if (!(strArr == null || str == null)) {
            int i = 0;
            while (i < strArr.length) {
                try {
                    if (strArr[i].equals(str)) {
                        return true;
                    }
                    i++;
                } catch (Throwable th) {
                    bx.bBw(th, "ClientInfoUtil", "hasString");
                }
            }
        }
        return false;
    }

    protected static at byi(Context context, C1272r c1272r, aJ aJVar) {
        if (bfy == null) {
            try {
                if (m264c(context) && m263b(context)) {
                    bfy = new at(context, c1272r, aJVar);
                }
            } catch (Throwable th) {
                bx.bBw(th, "ClientInfoUtil", "getInstance");
            }
        }
        return bfy;
    }

    private static boolean m264c(Context context) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            for (String byH : bfM) {
                if (!byH(strArr, byH)) {
                    return false;
                }
            }
        } catch (NameNotFoundException e) {
            return false;
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getPermission");
        }
        return true;
    }

    protected List m265a(boolean z) {
        List arrayList = new ArrayList();
        try {
            if (m269c()) {
                List arrayList2 = new ArrayList();
                synchronized (this) {
                    if (z || byB()) {
                        arrayList2.add(Long.valueOf(this.bfC));
                        for (int i = 0; i < this.bfD.size(); i++) {
                            arrayList.add(this.bfD.get(i));
                        }
                        arrayList2.add(arrayList);
                    }
                }
                return arrayList2;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getWifiScanResults");
        }
        return new ArrayList();
    }

    protected void m266a() {
        try {
            String str = "";
            m268b();
            this.bfJ = true;
            if (this.bfF != null) {
                this.bfF.quit();
            }
            this.bfF = new bM(this, str);
            this.bfF.start();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "startInnerListen");
        }
    }

    protected void m267a(int i) {
        try {
            if (i != bfG) {
                synchronized (this) {
                    this.bfD.clear();
                }
                if (this.bfE != null) {
                    this.bfE.cancel();
                    this.bfE = null;
                }
                if (i >= 5000) {
                    bfG = i;
                    this.bfE = new Timer();
                    byC();
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "setWifiScanFreq");
        }
    }

    protected void m268b() {
        try {
            synchronized (this.bfI) {
                this.bfJ = false;
                if (this.bfL != null) {
                    this.bfL.bzB(null);
                }
                if (this.bfA != null) {
                    byE(this.bfA);
                    this.bfA = null;
                }
                if (this.bfE != null) {
                    this.bfE.cancel();
                    this.bfE = null;
                }
                if (this.bfF != null) {
                    this.bfF.quit();
                    this.bfF = null;
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "stopInnerListen");
        }
    }

    public void byF() {
        try {
            synchronized (this) {
                this.bfD.clear();
                List a = this.bfK.m572a();
                this.bfC = System.currentTimeMillis();
                if (a != null) {
                    if (a.size() > 0) {
                        for (int i = 0; i < a.size(); i++) {
                            this.bfD.add((ScanResult) a.get(i));
                        }
                    }
                }
            }
            TimerTask aoVar = new ao(this);
            synchronized (this) {
                if (this.bfE != null) {
                    this.bfE.cancel();
                    this.bfE = null;
                }
                this.bfE = new Timer();
                this.bfE.schedule(aoVar, (long) bfG);
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "onReceive");
        }
    }

    protected Context byG() {
        return this.bfn;
    }

    protected int byj() {
        return this.bfu;
    }

    protected int byk() {
        return this.bfv;
    }

    protected String byl() {
        try {
            if (this.bfw == null) {
                if (this.bfn != null) {
                    this.bfw = this.bfn.getPackageName();
                }
            }
            if (this.bfw != null) {
                return this.bfw;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSourceName");
        }
        return "";
    }

    protected List bym(float f) {
        List arrayList = new ArrayList();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(f) <= 1.0f) {
                f = 1.0f;
            }
            CellLocation cellLocation = (CellLocation) m274h().get(1);
            if (cellLocation != null && (cellLocation instanceof GsmCellLocation)) {
                arrayList.add(Integer.valueOf(((GsmCellLocation) cellLocation).getLac()));
                arrayList.add(Integer.valueOf(((GsmCellLocation) cellLocation).getCid()));
                if (((double) (currentTimeMillis - ((Long) m274h().get(0)).longValue())) <= 50000.0d / ((double) f)) {
                    arrayList.add(Integer.valueOf(1));
                } else {
                    arrayList.add(Integer.valueOf(0));
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getGsmData");
        }
        return arrayList;
    }

    protected List byn(float f) {
        List arrayList = new ArrayList();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(f) <= 1.0f) {
                f = 1.0f;
            }
            CellLocation cellLocation = (CellLocation) m274h().get(1);
            if (cellLocation != null && (cellLocation instanceof CdmaCellLocation)) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                arrayList.add(Integer.valueOf(cdmaCellLocation.getSystemId()));
                arrayList.add(Integer.valueOf(cdmaCellLocation.getNetworkId()));
                arrayList.add(Integer.valueOf(cdmaCellLocation.getBaseStationId()));
                arrayList.add(Integer.valueOf(cdmaCellLocation.getBaseStationLongitude()));
                arrayList.add(Integer.valueOf(cdmaCellLocation.getBaseStationLatitude()));
                if (((double) (currentTimeMillis - ((Long) m274h().get(0)).longValue())) <= 50000.0d / ((double) f)) {
                    arrayList.add(Integer.valueOf(1));
                } else {
                    arrayList.add(Integer.valueOf(0));
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getCdmaCell");
        }
        return arrayList;
    }

    protected List byo() {
        List arrayList = new ArrayList();
        try {
            if (m269c()) {
                List a = m265a(true);
                List list = (List) a.get(1);
                long longValue = ((Long) a.get(0)).longValue();
                m261a(list);
                arrayList.add(Long.valueOf(longValue));
                if (list != null && list.size() > 0) {
                    for (int i = 0; i < list.size(); i++) {
                        ScanResult scanResult = (ScanResult) list.get(i);
                        if (arrayList.size() - 1 >= 40) {
                            break;
                        }
                        if (scanResult != null) {
                            List arrayList2 = new ArrayList();
                            arrayList2.add(scanResult.BSSID.replace(":", ""));
                            arrayList2.add(Integer.valueOf(scanResult.level));
                            arrayList2.add(scanResult.SSID);
                            arrayList.add(arrayList2);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getWifiData");
        }
        return arrayList;
    }

    protected void byp() {
        try {
            synchronized (this) {
                this.bfD.clear();
            }
            if (this.bfE != null) {
                this.bfE.cancel();
                this.bfE = null;
            }
            this.bfE = new Timer();
            byC();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "openWifiScan");
        }
    }

    protected void byq() {
        try {
            synchronized (this) {
                this.bfD.clear();
            }
            if (this.bfE != null) {
                this.bfE.cancel();
                this.bfE = null;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "closeWifiScan");
        }
    }

    protected byte byr() {
        ArrayList arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return (byte) 0;
            }
            List sensorList = this.bfq.getSensorList(-1);
            if (sensorList == null) {
                return (byte) 0;
            }
            return (byte) sensorList.size();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorNum");
            Object obj = arrayList;
        }
    }

    protected String bys(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return "null";
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null || ((Sensor) arrayList.get(i)).getName() == null || ((Sensor) arrayList.get(i)).getName().length() <= 0) {
                return "null";
            }
            return ((Sensor) arrayList.get(i)).getName();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorName");
        }
    }

    protected double byt(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return 0.0d;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null) {
                return 0.0d;
            }
            return (double) ((Sensor) arrayList.get(i)).getMaximumRange();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorMaxRange");
        }
    }

    protected int byu(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return 0;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null) {
                return 0;
            }
            return byA(arrayList.get(i));
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorMinDelay");
        }
    }

    protected int byv(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return 0;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null) {
                return 0;
            }
            return (int) (((double) ((Sensor) arrayList.get(i)).getPower()) * 100.0d);
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorPower");
        }
    }

    protected double byw(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return 0.0d;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null) {
                return 0.0d;
            }
            return (double) ((Sensor) arrayList.get(i)).getResolution();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorResolution");
        }
    }

    protected byte byx(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return Byte.MAX_VALUE;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null || ((Sensor) arrayList.get(i)).getType() > 127) {
                return Byte.MAX_VALUE;
            }
            return (byte) ((Sensor) arrayList.get(i)).getType();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorType");
        }
    }

    protected String byy(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return "null";
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null || ((Sensor) arrayList.get(i)).getVendor() == null || ((Sensor) arrayList.get(i)).getVendor().length() <= 0) {
                return "null";
            }
            return ((Sensor) arrayList.get(i)).getVendor();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorVendor");
        }
    }

    protected byte byz(int i) {
        List arrayList = new ArrayList();
        try {
            if (this.bfq == null) {
                return Byte.MAX_VALUE;
            }
            arrayList = this.bfq.getSensorList(-1);
            if (arrayList == null || arrayList.get(i) == null || ((Sensor) arrayList.get(i)).getType() > 127) {
                return Byte.MAX_VALUE;
            }
            return (byte) ((Sensor) arrayList.get(i)).getVersion();
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getSensorVersion");
        }
    }

    protected boolean m269c() {
        boolean z = false;
        try {
            if (this.bfK != null && this.bfK.m578f()) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "isWifiEnabled");
            return false;
        }
    }

    protected boolean m270d() {
        try {
            if (bfp != null && bfp.isProviderEnabled("gps")) {
                return true;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "isGPSEnabled");
        }
        return false;
    }

    protected String m271e() {
        try {
            if (this.bfn != null) {
                return cn.bFT(this.bfn);
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "isGPSEnabled");
        }
        return "";
    }

    protected String m272f() {
        try {
            if (this.bfn != null) {
                cn.bFU(this.bfn);
            }
            if (this.f237o != null) {
                return this.f237o;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getImsi");
        }
        return "";
    }

    protected boolean m273g() {
        return this.bfr;
    }

    protected List m274h() {
        if (System.getInt(this.bfn.getContentResolver(), "airplane_mode_on", 0) == 1) {
            return new ArrayList();
        }
        try {
            Object obj;
            List arrayList = new ArrayList();
            if (this.bfB == null) {
                try {
                    this.bfB = this.bfo.getCellLocation();
                } catch (Exception e) {
                }
            }
            if (this.bfL.bzq(this.bfB)) {
                this.bfx = System.currentTimeMillis();
                obj = this.bfB;
            } else {
                obj = this.bfL.bzp(C1253X.m127a(this.bfn), false);
                if (this.bfL.bzq(obj)) {
                    this.bfB = obj;
                    this.bfx = System.currentTimeMillis();
                } else {
                    obj = this.bfB;
                }
            }
            arrayList.add(Long.valueOf(this.bfx));
            arrayList.add(obj);
            return arrayList;
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getMainCellLocation");
            return new ArrayList();
        }
    }

    protected byte m275i() {
        return (byte) this.bfs;
    }

    protected List m276j() {
        try {
            if (this.bfL != null) {
                this.bfB = this.bfL.bzp(C1253X.m127a(this.bfn), false);
                if (this.bfL.bzq(this.bfB)) {
                    this.bfx = System.currentTimeMillis();
                }
                return this.bfL.m180b();
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getNeighboringInfo");
        }
        return null;
    }

    protected List m277k() {
        Object obj = 1;
        List arrayList = new ArrayList();
        long j = -1;
        try {
            Object obj2 = "";
            if (m270d()) {
                j = this.bft;
                obj2 = this.f238s;
            }
            if ((j > 0 ? 1 : null) == null) {
                j = System.currentTimeMillis() / 1000;
            }
            if (j > 2147483647L) {
                obj = null;
            }
            if (obj == null) {
                j /= 1000;
            }
            arrayList.add(Long.valueOf(j));
            arrayList.add(obj2);
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getNmea");
        }
        return arrayList;
    }

    protected long m278l() {
        long j = this.bft;
        if ((j > 0 ? 1 : null) == null) {
            return 0;
        }
        try {
            int length = String.valueOf(j).length();
            while (length != 13) {
                j = length <= 13 ? j * 10 : j / 10;
                length = String.valueOf(j).length();
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getNmeaTime");
        }
        return j;
    }

    protected String m279m() {
        WifiInfo wifiInfo = null;
        try {
            if (this.f239t == null) {
                if (this.bfK != null) {
                    wifiInfo = this.bfK.m574b();
                }
                if (wifiInfo != null) {
                    this.f239t = wifiInfo.getMacAddress();
                    if (this.f239t != null && this.f239t.length() > 0) {
                        this.f239t = this.f239t.replace(":", "");
                    }
                }
            }
            if (this.f239t != null) {
                return this.f239t;
            }
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "getDeviceMac");
        }
        return "";
    }

    protected int m280n() {
        return this.f240u;
    }
}
