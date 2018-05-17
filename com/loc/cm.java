package com.loc;

import android.location.Location;
import android.net.wifi.ScanResult;
import android.telephony.CellLocation;
import java.util.List;

public class cm {
    private static float bkH = 0.5f;
    private static int f394c = 10;
    private static int f395d = 100;
    private at bkG;
    protected C1246R bkI = new C1246R(this);
    protected aW bkJ = new aW(this);

    protected cm(at atVar) {
        this.bkG = atVar;
    }

    protected static void m513a(int i) {
        f394c = i;
    }

    private void m514a(String str) {
    }

    protected static void bFH(int i) {
        f395d = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean bFJ(java.util.List r10, java.util.List r11, float r12) {
        /*
        r9 = 1;
        r3 = 0;
        if (r10 != 0) goto L_0x0005;
    L_0x0004:
        return r3;
    L_0x0005:
        if (r11 == 0) goto L_0x0004;
    L_0x0007:
        if (r10 != 0) goto L_0x000a;
    L_0x0009:
        return r3;
    L_0x000a:
        if (r11 == 0) goto L_0x0009;
    L_0x000c:
        r5 = r10.size();	 Catch:{ Throwable -> 0x0057 }
        r6 = r11.size();	 Catch:{ Throwable -> 0x0057 }
        r0 = r5 + r6;
        r7 = (float) r0;	 Catch:{ Throwable -> 0x0057 }
        if (r5 == 0) goto L_0x001c;
    L_0x0019:
        if (r5 != 0) goto L_0x001f;
    L_0x001b:
        return r3;
    L_0x001c:
        if (r6 != 0) goto L_0x0019;
    L_0x001e:
        return r9;
    L_0x001f:
        if (r6 == 0) goto L_0x001b;
    L_0x0021:
        r4 = r3;
        r1 = r3;
    L_0x0023:
        if (r4 < r5) goto L_0x002f;
    L_0x0025:
        r0 = r1 * 2;
        r0 = (float) r0;	 Catch:{ Throwable -> 0x0057 }
        r1 = r7 * r12;
        r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1));
        if (r0 < 0) goto L_0x0061;
    L_0x002e:
        return r9;
    L_0x002f:
        r0 = r10.get(r4);	 Catch:{ Throwable -> 0x0057 }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ Throwable -> 0x0057 }
        r8 = r0.BSSID;	 Catch:{ Throwable -> 0x0057 }
        if (r8 == 0) goto L_0x003c;
    L_0x0039:
        r2 = r3;
    L_0x003a:
        if (r2 < r6) goto L_0x0042;
    L_0x003c:
        r0 = r1;
    L_0x003d:
        r1 = r4 + 1;
        r4 = r1;
        r1 = r0;
        goto L_0x0023;
    L_0x0042:
        r0 = r11.get(r2);	 Catch:{ Throwable -> 0x0057 }
        r0 = (com.loc.C1277x) r0;	 Catch:{ Throwable -> 0x0057 }
        r0 = r0.f513a;	 Catch:{ Throwable -> 0x0057 }
        r0 = r8.equals(r0);	 Catch:{ Throwable -> 0x0057 }
        if (r0 != 0) goto L_0x0054;
    L_0x0050:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x003a;
    L_0x0054:
        r0 = r1 + 1;
        goto L_0x003d;
    L_0x0057:
        r0 = move-exception;
        r1 = "CollectorStrategy";
        r2 = "isSameRate";
        com.loc.bx.bBw(r0, r1, r2);
    L_0x0061:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cm.bFJ(java.util.List, java.util.List, float):boolean");
    }

    protected void bFF(int i, int i2) {
    }

    protected boolean bFG(Location location) {
        Throwable th;
        aj ajVar = null;
        if (this.bkG == null) {
            return false;
        }
        m514a("compare cell....");
        boolean z;
        try {
            List h = this.bkG.m274h();
            if (h == null || location == null) {
                return false;
            }
            m514a("cell.list.size: " + h.size());
            if (h.size() < 2) {
                z = false;
            } else {
                aj ajVar2 = new aj((CellLocation) h.get(1));
                if (this.bkJ.bgt != null) {
                    z = location.distanceTo(this.bkJ.bgt) > ((float) f395d);
                    if (z) {
                        m514a("distance causes cell collect");
                    }
                    if (!z) {
                        z = !this.bkJ.bgs.bxZ(ajVar2);
                        if (z) {
                            m514a("different cells causes cell collect");
                        }
                    }
                    try {
                        m514a("collect cell?: " + z);
                        ajVar = ajVar2;
                    } catch (Throwable th2) {
                        th = th2;
                        bx.bBw(th, "CollectorStrategy", "collectCell");
                        return z;
                    }
                }
                m514a("first cell causes cell collect");
                ajVar = ajVar2;
                z = true;
            }
            if (z) {
                this.bkJ.bgs = ajVar;
            }
            return z;
        } catch (Throwable th3) {
            th = th3;
            z = false;
            bx.bBw(th, "CollectorStrategy", "collectCell");
            return z;
        }
    }

    protected boolean bFI(Location location) {
        boolean z;
        int i = 0;
        if (this.bkG == null) {
            return false;
        }
        try {
            List list;
            List a = this.bkG.m265a(false);
            if (a.size() < 2) {
                list = null;
                z = false;
            } else {
                List list2 = (List) a.get(1);
                if (this.bkI.bei == null) {
                    m514a("first wifi causes wifi collect");
                    z = true;
                    list = list2;
                } else if (list2 != null && list2.size() > 0) {
                    m514a("current info is valid");
                    z = location.distanceTo(this.bkI.bei) > ((float) f394c);
                    if (z) {
                        try {
                            m514a("distance causes wifi collect");
                        } catch (Throwable th) {
                            Throwable th2 = th;
                            bx.bBw(th2, "CollectorStrategy", "collectWifi");
                            return z;
                        }
                    }
                    if (!z) {
                        z = !bFJ(list2, this.bkI.f141a, bkH);
                        if (z) {
                            m514a("different wifis causes wifi collect");
                        }
                    }
                    list = list2;
                } else {
                    list = list2;
                    z = false;
                }
            }
            if (z) {
                this.bkI.f141a.clear();
                int size = list.size();
                while (i < size) {
                    this.bkI.f141a.add(new C1277x(((ScanResult) list.get(i)).BSSID));
                    i++;
                }
            }
        } catch (Throwable th3) {
            th2 = th3;
            z = false;
            bx.bBw(th2, "CollectorStrategy", "collectWifi");
            return z;
        }
        return z;
    }
}
