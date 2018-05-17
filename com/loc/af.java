package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.HandlerThread;
import java.util.List;

public class af {
    protected static boolean f195a = false;
    protected static boolean f196b = true;
    private static int beF = 50;
    private static int beG = 200;
    private static Object beH = new Object();
    private static af beI;
    private static int f197d = 10;
    private static int f198e = 2;
    private static int f199f = 10;
    private static int f200g = 10;
    private static long f201j = 0;
    private boolean beJ = false;
    private int beK = -1;
    private int beL = 0;
    private int beM = 0;
    private Context beN;
    private LocationManager beO;
    private at beP;
    private cm beQ;
    private aT beR;
    private C1242N beS;
    private bP beT;
    private bW beU;
    private cf beV;
    private HandlerThread beW = null;
    private C1247S beX = null;
    Object beY = new Object();
    private C1257e beZ = new aS(this);
    private LocationListener bfa = new bg(this);
    private BroadcastReceiver bfb = new ar(this);
    private BroadcastReceiver bfc = new ad(this);
    private GpsStatus bfd = null;
    private int bfe = 0;

    private af(Context context, C1272r c1272r, aJ aJVar) {
        try {
            this.beN = context;
            this.beP = at.byi(context, c1272r, aJVar);
            this.beV = new cf();
            this.beQ = new cm(this.beP);
            this.beS = new C1242N(context);
            this.beR = new aT(this.beS);
            this.beT = new bP(this.beS);
            this.beO = (LocationManager) this.beN.getSystemService("location");
            this.beU = bW.m374a(this.beN);
            this.beU.bDM(this.beZ);
            bxD();
            this.beJ = bxF();
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "CollectorManager");
        }
    }

    public static String m220a(String str) {
        return !"version".equals(str) ? !"date".equals(str) ? null : "COL.15.0929r" : "V1.0.0r";
    }

    public static af bxA(Context context, C1272r c1272r, aJ aJVar) {
        if (beI == null) {
            try {
                synchronized (beH) {
                    if (beI == null) {
                        beI = new af(context, c1272r, aJVar);
                    }
                }
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "getInstance");
            }
        }
        return beI;
    }

    private void bxD() {
        try {
            this.beL = this.beU.m381b() * 1000;
            this.beM = this.beU.m382c();
            this.beQ.bFF(this.beL, this.beM);
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "updateStrategy");
        }
    }

    private void bxE() {
        String str = "";
        try {
            this.beO.removeGpsStatusListener(this.beX);
            this.beX = null;
            this.beO.removeUpdates(this.bfa);
            if (this.beW != null) {
                this.beW.quit();
                this.beW = null;
            }
            this.beW = new C1269n(this, str);
            this.beW.start();
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "requestLocationUpdates");
        }
    }

    private boolean bxF() {
        boolean z = false;
        try {
            List allProviders = this.beO.getAllProviders();
            if (allProviders != null && allProviders.contains("gps") && allProviders.contains("passive")) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "canCollect");
            return false;
        }
    }

    private void bxG(Location location, int i, long j) {
        List k;
        Long valueOf;
        int i2 = 0;
        f201j = System.currentTimeMillis();
        boolean bFG = this.beQ.bFG(location);
        if (bFG) {
            this.beQ.bkJ.bgt = new Location(location);
        }
        boolean bFI = this.beQ.bFI(location);
        if (bFI) {
            this.beQ.bkI.bei = new Location(location);
        }
        if (i == 1) {
            bFI = true;
            bFG = true;
        } else if (i == 2) {
            bFI = true;
            bFG = false;
        }
        if (bFG) {
            i2 = !bFI ? 1 : 3;
        } else if (bFI) {
            i2 = 2;
        }
        try {
            de bFu = this.beV.bFu(location, this.beP, i2, (byte) this.bfe, j, false);
        } catch (Exception e) {
            bFu = null;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "collect");
        }
        if (!(bFu == null || this.beP == null)) {
            k = this.beP.m277k();
            valueOf = Long.valueOf(0);
            if (k != null && k.size() > 0) {
                valueOf = (Long) k.get(0);
            }
            this.beR.bAj(valueOf.longValue(), bFu.m557a());
        }
        if (this.beN != null && this.beV != null) {
            SharedPreferences sharedPreferences = this.beN.getSharedPreferences("app_pref", 0);
            if (!sharedPreferences.getString("get_sensor", "").equals("true")) {
                try {
                    bFu = this.beV.bFu(null, this.beP, i2, (byte) this.bfe, j, true);
                } catch (Throwable th2) {
                    bx.bBw(th2, "CollectorManager", "collect inner");
                    bFu = null;
                }
                if (bFu != null) {
                    if (this.beP != null) {
                        k = this.beP.m277k();
                        valueOf = Long.valueOf(0);
                        if (k != null && k.size() > 0) {
                            valueOf = (Long) k.get(0);
                        }
                        this.beR.bAj(valueOf.longValue(), bFu.m557a());
                        sharedPreferences.edit().putString("get_sensor", "true").commit();
                    }
                }
            }
        }
    }

    private void bxH() {
        try {
            IntentFilter intentFilter = new IntentFilter("android.location.GPS_ENABLED_CHANGE");
            intentFilter.addAction("android.location.GPS_FIX_CHANGE");
            f196b = true;
            this.beN.registerReceiver(this.bfc, intentFilter);
            intentFilter = new IntentFilter();
            intentFilter.setPriority(1000);
            intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
            intentFilter.addAction("android.intent.action.MEDIA_EJECT");
            intentFilter.addDataScheme("file");
            this.beN.registerReceiver(this.bfb, intentFilter);
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "registerReceiver");
        }
    }

    private void bxI() {
        if (this.bfc != null) {
            try {
                this.beN.unregisterReceiver(this.bfc);
                this.bfc = null;
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "registerReceiver");
            }
        }
        if (this.bfb != null) {
            try {
                this.beN.unregisterReceiver(this.bfb);
                this.bfb = null;
            } catch (Throwable th2) {
                bx.bBw(th2, "CollectorManager", "registerReceiver");
            }
        }
    }

    public void m227a() {
        if (this.beP != null) {
            this.beP.byF();
        }
    }

    public void m228a(int i) {
        if (i == 256 || i == 8736 || i == 768) {
            try {
                this.beS.m108a(i);
                return;
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "setCollectorSize");
                return;
            }
        }
        throw new RuntimeException("invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE or COLLECTOR_MEDIUM_SIZE");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m229b() {
        /*
        r3 = this;
        r0 = 1;
        com.loc.at.f236d = r0;	 Catch:{ Throwable -> 0x0020 }
        r0 = r3.beJ;	 Catch:{ Throwable -> 0x0020 }
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return;
    L_0x0008:
        r0 = r3.beP;	 Catch:{ Throwable -> 0x0020 }
        if (r0 == 0) goto L_0x0007;
    L_0x000c:
        r0 = f195a;	 Catch:{ Throwable -> 0x0020 }
        if (r0 != 0) goto L_0x001f;
    L_0x0010:
        r0 = 1;
        f195a = r0;	 Catch:{ Throwable -> 0x0020 }
        r3.bxH();	 Catch:{ Throwable -> 0x0020 }
        r3.bxE();	 Catch:{ Throwable -> 0x0020 }
        r0 = r3.beP;	 Catch:{ Throwable -> 0x0020 }
        r0.m266a();	 Catch:{ Throwable -> 0x0020 }
    L_0x001e:
        return;
    L_0x001f:
        return;
    L_0x0020:
        r0 = move-exception;
        r1 = "CollectorManager";
        r2 = "start";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x001e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.af.b():void");
    }

    public void bxB(bK bKVar, String str) {
        if (!at.bfH) {
            try {
                boolean a = this.beU.m380a(str);
                if (bKVar != null) {
                    byte[] a2 = bKVar.m313a();
                    if (a && a2 != null) {
                        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.beN.getSystemService("connectivity")).getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            if (activeNetworkInfo.getType() != 1) {
                                this.beU.bDL(a2.length + this.beU.m385f());
                            } else {
                                this.beU.m378a(a2.length + this.beU.m384e());
                            }
                        }
                    }
                    bKVar.m312a(a);
                    this.beT.bCu(bKVar);
                }
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "callBackWrapData");
            }
        }
    }

    public void bxC(int i) {
        if (this.beP != null) {
            try {
                this.beP.m267a(i);
            } catch (Throwable th) {
                bx.bBw(th, "CollectorManager", "setWifiScanFreq");
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m230c() {
        /*
        r3 = this;
        r0 = 0;
        com.loc.at.f236d = r0;	 Catch:{ Throwable -> 0x004a }
        r0 = 0;
        com.loc.at.bfH = r0;	 Catch:{ Throwable -> 0x004a }
        r0 = r3.beJ;	 Catch:{ Throwable -> 0x004a }
        if (r0 != 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r0 = r3.beP;	 Catch:{ Throwable -> 0x004a }
        if (r0 == 0) goto L_0x000a;
    L_0x000f:
        r0 = f195a;	 Catch:{ Throwable -> 0x004a }
        if (r0 == 0) goto L_0x0043;
    L_0x0013:
        r3.bxI();	 Catch:{ Throwable -> 0x004a }
        r0 = r3.beP;	 Catch:{ Throwable -> 0x004a }
        if (r0 != 0) goto L_0x0044;
    L_0x001a:
        r1 = r3.beY;	 Catch:{ Throwable -> 0x004a }
        monitor-enter(r1);	 Catch:{ Throwable -> 0x004a }
        r0 = 0;
        f195a = r0;	 Catch:{ all -> 0x005e }
        r0 = r3.beO;	 Catch:{ all -> 0x005e }
        r2 = r3.beX;	 Catch:{ all -> 0x005e }
        r0.removeGpsStatusListener(r2);	 Catch:{ all -> 0x005e }
        r0 = r3.beO;	 Catch:{ all -> 0x005e }
        r2 = r3.beX;	 Catch:{ all -> 0x005e }
        r0.removeNmeaListener(r2);	 Catch:{ all -> 0x005e }
        r0 = 0;
        r3.beX = r0;	 Catch:{ all -> 0x005e }
        r0 = r3.beO;	 Catch:{ all -> 0x005e }
        r2 = r3.bfa;	 Catch:{ all -> 0x005e }
        r0.removeUpdates(r2);	 Catch:{ all -> 0x005e }
        r0 = r3.beW;	 Catch:{ all -> 0x005e }
        if (r0 != 0) goto L_0x0055;
    L_0x003c:
        monitor-exit(r1);	 Catch:{ all -> 0x005e }
        r0 = r3.beP;	 Catch:{ Throwable -> 0x004a }
        r0.m268b();	 Catch:{ Throwable -> 0x004a }
    L_0x0042:
        return;
    L_0x0043:
        return;
    L_0x0044:
        r0 = r3.beP;	 Catch:{ Throwable -> 0x004a }
        r0.byq();	 Catch:{ Throwable -> 0x004a }
        goto L_0x001a;
    L_0x004a:
        r0 = move-exception;
        r1 = "CollectorManager";
        r2 = "stop";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x0042;
    L_0x0055:
        r0 = r3.beW;	 Catch:{ all -> 0x005e }
        r0.quit();	 Catch:{ all -> 0x005e }
        r0 = 0;
        r3.beW = r0;	 Catch:{ all -> 0x005e }
        goto L_0x003c;
    L_0x005e:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x005e }
        throw r0;	 Catch:{ Throwable -> 0x004a }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.af.c():void");
    }

    public void m231d() {
        try {
            if (this.beJ) {
                m230c();
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "destroy");
        }
    }

    public boolean m232e() {
        return f195a;
    }

    public bK m233f() {
        if (this.beT == null) {
            return null;
        }
        try {
            m234g();
            return (!this.beU.m379a() || at.bfH) ? null : this.beT.m327a(this.beU.m383d());
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "getWrapData");
            return null;
        }
    }

    public boolean m234g() {
        try {
            if (this.beP != null) {
                List k = this.beP.m277k();
                if (k != null && k.size() > 0) {
                    return this.beS.bwu(((Long) k.get(0)).longValue());
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "setUploadEnabled");
        }
        return false;
    }

    public int m235h() {
        try {
            if (this.beT != null) {
                return this.beT.m326a();
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorManager", "getLeftUploadNum");
        }
        return 0;
    }
}
