package com.loc;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.util.List;
import org.json.JSONObject;

public class C1272r {
    long f492a = 0;
    private WifiManager bdt;
    private JSONObject bdu;
    private Context bdv;

    public C1272r(Context context, WifiManager wifiManager, JSONObject jSONObject) {
        this.bdt = wifiManager;
        this.bdu = jSONObject;
        this.bdv = context;
    }

    private boolean bwc(WifiInfo wifiInfo) {
        return (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getBSSID()) || wifiInfo.getSSID() == null || wifiInfo.getBSSID().equals("00:00:00:00:00:00") || wifiInfo.getBSSID().contains(" :") || TextUtils.isEmpty(wifiInfo.getSSID())) ? false : true;
    }

    public List m572a() {
        try {
            return this.bdt == null ? null : this.bdt.getScanResults();
        } catch (Throwable th) {
            bx.bBw(th, "WifiManagerWrapper", "getScanResults");
            return null;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m573a(boolean r8) {
        /*
        r7 = this;
        r4 = 2;
        r6 = 1;
        r5 = 0;
        r1 = r7.bdv;
        r0 = r7.bdt;
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return;
    L_0x000a:
        if (r1 == 0) goto L_0x0009;
    L_0x000c:
        if (r8 == 0) goto L_0x0009;
    L_0x000e:
        r0 = com.loc.C1253X.m136c();
        r2 = 17;
        if (r0 <= r2) goto L_0x004b;
    L_0x0016:
        r0 = "autoenablewifialwaysscan";
        r2 = r7.bdu;
        r2 = com.loc.C1253X.bxc(r2, r0);
        if (r2 != 0) goto L_0x004c;
    L_0x0021:
        r1 = r1.getContentResolver();
        r2 = "android.provider.Settings$Global";
        r0 = new java.lang.Object[r4];
        r0[r5] = r1;
        r3 = "wifi_scan_always_enabled";
        r0[r6] = r3;
        r3 = new java.lang.Class[r4];
        r4 = android.content.ContentResolver.class;
        r3[r5] = r4;
        r4 = java.lang.String.class;
        r3[r6] = r4;
        r4 = "getInt";
        r0 = com.loc.br.bBc(r2, r4, r0, r3);	 Catch:{ Throwable -> 0x0094 }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x0094 }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x0094 }
        if (r0 == 0) goto L_0x0067;
    L_0x004a:
        return;
    L_0x004b:
        return;
    L_0x004c:
        r2 = "0";
        r3 = r7.bdu;	 Catch:{ Throwable -> 0x005c }
        r0 = r3.getString(r0);	 Catch:{ Throwable -> 0x005c }
        r0 = r2.equals(r0);	 Catch:{ Throwable -> 0x005c }
        if (r0 == 0) goto L_0x0021;
    L_0x005b:
        return;
    L_0x005c:
        r0 = move-exception;
        r2 = "WifiManagerWrapper";
        r3 = "enableWifiAlwaysScan1";
        com.loc.bx.bBw(r0, r2, r3);
        goto L_0x0021;
    L_0x0067:
        r0 = 3;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x0094 }
        r3 = 0;
        r0[r3] = r1;	 Catch:{ Throwable -> 0x0094 }
        r1 = 1;
        r3 = "wifi_scan_always_enabled";
        r0[r1] = r3;	 Catch:{ Throwable -> 0x0094 }
        r1 = 2;
        r3 = 1;
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ Throwable -> 0x0094 }
        r0[r1] = r3;	 Catch:{ Throwable -> 0x0094 }
        r1 = 3;
        r1 = new java.lang.Class[r1];	 Catch:{ Throwable -> 0x0094 }
        r3 = 0;
        r4 = android.content.ContentResolver.class;
        r1[r3] = r4;	 Catch:{ Throwable -> 0x0094 }
        r3 = 1;
        r4 = java.lang.String.class;
        r1[r3] = r4;	 Catch:{ Throwable -> 0x0094 }
        r3 = 2;
        r4 = java.lang.Integer.TYPE;	 Catch:{ Throwable -> 0x0094 }
        r1[r3] = r4;	 Catch:{ Throwable -> 0x0094 }
        r3 = "putInt";
        com.loc.br.bBc(r2, r3, r0, r1);	 Catch:{ Throwable -> 0x0094 }
        goto L_0x004a;
    L_0x0094:
        r0 = move-exception;
        r1 = "WifiManagerWrapper";
        r2 = "enableWifiAlwaysScan";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x004a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.r.a(boolean):void");
    }

    public WifiInfo m574b() {
        return this.bdt == null ? null : this.bdt.getConnectionInfo();
    }

    public void bwa(JSONObject jSONObject) {
        this.bdu = jSONObject;
    }

    public boolean bwb(ConnectivityManager connectivityManager) {
        boolean z = false;
        WifiManager wifiManager = this.bdt;
        if (wifiManager == null) {
            return false;
        }
        if (m578f()) {
            try {
                if (bu.bBg(connectivityManager.getActiveNetworkInfo()) == 1 && bwc(wifiManager.getConnectionInfo())) {
                    z = true;
                }
            } catch (Throwable th) {
                bx.bBw(th, "WifiManagerWrapper", "wifiAccess");
            }
        }
        return z;
    }

    public int m575c() {
        return this.bdt == null ? 4 : this.bdt.getWifiState();
    }

    public boolean m576d() {
        if (!(C1253X.m132b() - this.f492a >= 3000) || this.bdt == null) {
            return false;
        }
        this.f492a = C1253X.m132b();
        return this.bdt.startScan();
    }

    public boolean m577e() {
        try {
            if (String.valueOf(br.bBa(this.bdt, "startScanActive", new Object[0])).equals("true")) {
                return true;
            }
        } catch (Throwable th) {
            bx.bBw(th, "WifiManagerWrapper", "startScanActive");
        }
        return false;
    }

    public boolean m578f() {
        boolean z = false;
        WifiManager wifiManager = this.bdt;
        if (wifiManager == null) {
            return z;
        }
        boolean equals;
        try {
            z = wifiManager.isWifiEnabled();
        } catch (Throwable th) {
            bx.bBw(th, "WifiManagerWrapper", "wifiEnabled1");
        }
        if (!z && C1253X.m136c() > 17) {
            try {
                equals = String.valueOf(br.bBa(wifiManager, "isScanAlwaysAvailable", new Object[0])).equals("true");
            } catch (Throwable th2) {
                bx.bBw(th2, "WifiManagerWrapper", "wifiEnabled");
            }
            return equals;
        }
        equals = z;
        return equals;
    }
}
