package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONObject;

public class bj {
    private static bj bhg = null;
    private Hashtable bhh = new Hashtable();
    private long f326c = 0;
    private boolean f327d = false;

    private bj() {
    }

    public static synchronized bj m416a() {
        bj bjVar;
        synchronized (bj.class) {
            if (bhg == null) {
                bhg = new bj();
            }
            bjVar = bhg;
        }
        return bjVar;
    }

    private synchronized bb bAK(StringBuilder stringBuilder, String str) {
        if (!this.bhh.isEmpty()) {
            if (!TextUtils.isEmpty(stringBuilder)) {
                if (!this.bhh.containsKey(str)) {
                    return null;
                }
                bb bbVar;
                Hashtable hashtable = new Hashtable();
                Hashtable hashtable2 = new Hashtable();
                Hashtable hashtable3 = new Hashtable();
                ArrayList arrayList = (ArrayList) this.bhh.get(str);
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    bbVar = (bb) arrayList.get(size);
                    if (!TextUtils.isEmpty(bbVar.m399b())) {
                        String str2;
                        Object obj = null;
                        if (bAL(bbVar.m399b(), stringBuilder)) {
                            obj = 1;
                            if (bAO(bbVar.m399b(), stringBuilder)) {
                                break;
                            }
                        }
                        Object obj2 = obj;
                        bAM(bbVar.m399b(), hashtable);
                        bAM(stringBuilder.toString(), hashtable2);
                        hashtable3.clear();
                        for (String str22 : hashtable.keySet()) {
                            hashtable3.put(str22, "");
                        }
                        for (String str222 : hashtable2.keySet()) {
                            hashtable3.put(str222, "");
                        }
                        Set keySet = hashtable3.keySet();
                        double[] dArr = new double[keySet.size()];
                        double[] dArr2 = new double[keySet.size()];
                        Iterator it = keySet.iterator();
                        int i = 0;
                        while (it != null && it.hasNext()) {
                            str222 = (String) it.next();
                            dArr[i] = !hashtable.containsKey(str222) ? 0.0d : 1.0d;
                            dArr2[i] = !hashtable2.containsKey(str222) ? 0.0d : 1.0d;
                            i++;
                        }
                        keySet.clear();
                        double[] bAN = bAN(dArr, dArr2);
                        if (bAN[0] < 0.800000011920929d && bAN[1] < 0.618d) {
                            if (obj2 != null && bAN[0] >= 0.618d) {
                                break;
                            }
                        }
                        break;
                    }
                }
                bbVar = null;
                hashtable.clear();
                hashtable2.clear();
                hashtable3.clear();
                return bbVar;
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean bAL(java.lang.String r5, java.lang.StringBuilder r6) {
        /*
        r4 = this;
        r3 = 0;
        r0 = android.text.TextUtils.isEmpty(r5);
        if (r0 == 0) goto L_0x0008;
    L_0x0007:
        return r3;
    L_0x0008:
        r0 = android.text.TextUtils.isEmpty(r6);
        if (r0 != 0) goto L_0x0007;
    L_0x000e:
        r0 = ",access";
        r0 = r5.contains(r0);
        if (r0 != 0) goto L_0x0018;
    L_0x0017:
        return r3;
    L_0x0018:
        r0 = ",access";
        r0 = r6.indexOf(r0);
        r1 = -1;
        if (r0 == r1) goto L_0x0017;
    L_0x0022:
        r0 = ",access";
        r0 = r5.split(r0);
        r1 = r0[r3];
        r2 = "#";
        r1 = r1.contains(r2);
        if (r1 != 0) goto L_0x0059;
    L_0x0034:
        r0 = r0[r3];
    L_0x0036:
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x006b;
    L_0x003c:
        r1 = r6.toString();
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r0 = r2.append(r0);
        r2 = ",access";
        r0 = r0.append(r2);
        r0 = r0.toString();
        r0 = r1.contains(r0);
        return r0;
    L_0x0059:
        r1 = r0[r3];
        r0 = r0[r3];
        r2 = "#";
        r0 = r0.lastIndexOf(r2);
        r0 = r0 + 1;
        r0 = r1.substring(r0);
        goto L_0x0036;
    L_0x006b:
        return r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bj.bAL(java.lang.String, java.lang.StringBuilder):boolean");
    }

    private void bAM(String str, Hashtable hashtable) {
        if (!TextUtils.isEmpty(str)) {
            hashtable.clear();
            for (Object obj : str.split("#")) {
                if (!(TextUtils.isEmpty(obj) || obj.contains("|"))) {
                    hashtable.put(obj, "");
                }
            }
        }
    }

    private double[] bAN(double[] dArr, double[] dArr2) {
        int i;
        double[] dArr3 = new double[3];
        double d = 0.0d;
        double d2 = 0.0d;
        double d3 = 0.0d;
        int i2 = 0;
        int i3 = 0;
        for (i = 0; i < dArr.length; i++) {
            d2 += dArr[i] * dArr[i];
            d3 += dArr2[i] * dArr2[i];
            d += dArr[i] * dArr2[i];
            if (dArr2[i] == 1.0d) {
                i2++;
                if (dArr[i] == 1.0d) {
                    i3++;
                }
            }
        }
        dArr3[0] = d / (Math.sqrt(d3) * Math.sqrt(d2));
        dArr3[1] = (((double) i3) * 1.0d) / ((double) i2);
        dArr3[2] = (double) i3;
        for (i = 0; i < dArr3.length - 1; i++) {
            if (dArr3[i] > 1.0d) {
                dArr3[i] = 1.0d;
            }
        }
        return dArr3;
    }

    public void m417a(Context context) {
        if (!this.f327d) {
            C1253X.m132b();
            try {
                bI.m309a().m310a(context);
            } catch (Throwable th) {
                bx.bBw(th, "Cache", "loadDB");
            }
            this.f327d = true;
        }
    }

    public boolean m418b() {
        long b = C1253X.m132b() - this.f326c;
        if (this.f326c == 0) {
            return false;
        }
        if (this.bhh.size() <= 360) {
            if (b <= 36000000) {
                return false;
            }
        }
        return true;
    }

    public synchronized void bAH(String str, StringBuilder stringBuilder, AmapLoc amapLoc, Context context, boolean z) {
        int i = 0;
        synchronized (this) {
            if (!bAJ(str, amapLoc)) {
                return;
            } else if (amapLoc.bHN().equals("mem")) {
                return;
            } else if (amapLoc.bHN().equals("file")) {
                return;
            } else if (amapLoc.bHP().equals("-3")) {
                return;
            } else {
                if (m418b()) {
                    m419c();
                }
                JSONObject bIA = amapLoc.bIA();
                if (C1253X.bxc(bIA, "offpct")) {
                    bIA.remove("offpct");
                    amapLoc.bIB(bIA);
                }
                if (str.contains("wifi")) {
                    if (TextUtils.isEmpty(stringBuilder)) {
                        return;
                    }
                    if (amapLoc.getAccuracy() >= 300.0f) {
                        for (String contains : stringBuilder.toString().split("#")) {
                            if (contains.contains(",")) {
                                i++;
                            }
                        }
                        if (i >= 8) {
                            return;
                        }
                    } else if (amapLoc.getAccuracy() <= 10.0f) {
                        return;
                    }
                    if (str.contains("cgiwifi") && !TextUtils.isEmpty(amapLoc.bIx())) {
                        String replace = str.replace("cgiwifi", "cgi");
                        AmapLoc bIy = amapLoc.bIy();
                        if (C1253X.bwV(bIy)) {
                            bAH(replace, new StringBuilder(), bIy, context, true);
                        }
                    }
                } else if (str.contains("cgi")) {
                    if (stringBuilder.indexOf(",") != -1) {
                        return;
                    } else if (amapLoc.bHP().equals("4")) {
                        return;
                    }
                }
                AmapLoc bAI = bAI(str, stringBuilder, true);
                if (C1253X.bwV(bAI)) {
                    if (bAI.bIC().equals(amapLoc.bID(3))) {
                        return;
                    }
                }
                this.f326c = C1253X.m132b();
                bb bbVar = new bb(this);
                bbVar.bAA(amapLoc);
                bbVar.m398a(!TextUtils.isEmpty(stringBuilder) ? stringBuilder.toString() : null);
                if (this.bhh.containsKey(str)) {
                    ((ArrayList) this.bhh.get(str)).add(bbVar);
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(bbVar);
                    this.bhh.put(str, arrayList);
                }
                if (z) {
                    try {
                        bI.m309a().bCk(str, amapLoc, stringBuilder, context);
                    } catch (Throwable th) {
                        bx.bBw(th, "Cache", "add");
                    }
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.autonavi.aps.amapapi.model.AmapLoc bAI(java.lang.String r11, java.lang.StringBuilder r12, boolean r13) {
        /*
        r10 = this;
        r2 = 0;
        r1 = 0;
        monitor-enter(r10);
        r0 = "gps";
        r0 = r11.contains(r0);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r10);
        return r2;
    L_0x000e:
        if (r13 == 0) goto L_0x000c;
    L_0x0010:
        r0 = com.loc.bQ.bCL();	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x000c;
    L_0x0016:
        r0 = r10.m418b();	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x0047;
    L_0x001c:
        r0 = r10.bhh;	 Catch:{ all -> 0x00c4 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x004c;
    L_0x0024:
        r0 = "found#⊗";
        r0 = "cgiwifi";
        r0 = r11.contains(r0);	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x004e;
    L_0x0030:
        r0 = "wifi";
        r0 = r11.contains(r0);	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x0058;
    L_0x0039:
        r0 = "cgi";
        r0 = r11.contains(r0);	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x0062;
    L_0x0042:
        r0 = r2;
    L_0x0043:
        if (r0 != 0) goto L_0x0081;
    L_0x0045:
        monitor-exit(r10);
        return r2;
    L_0x0047:
        r10.m419c();	 Catch:{ all -> 0x00c4 }
        monitor-exit(r10);
        return r2;
    L_0x004c:
        monitor-exit(r10);
        return r2;
    L_0x004e:
        r0 = r10.bAK(r12, r11);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x0043;
    L_0x0054:
        r3 = "found#cgiwifi";
        goto L_0x0043;
    L_0x0058:
        r0 = r10.bAK(r12, r11);	 Catch:{ all -> 0x00c4 }
        if (r0 == 0) goto L_0x0043;
    L_0x005e:
        r3 = "found#wifi";
        goto L_0x0043;
    L_0x0062:
        r0 = r10.bhh;	 Catch:{ all -> 0x00c4 }
        r0 = r0.containsKey(r11);	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x0071;
    L_0x006a:
        r0 = r2;
    L_0x006b:
        if (r0 == 0) goto L_0x0043;
    L_0x006d:
        r3 = "found#cgi";
        goto L_0x0043;
    L_0x0071:
        r0 = r10.bhh;	 Catch:{ all -> 0x00c4 }
        r0 = r0.get(r11);	 Catch:{ all -> 0x00c4 }
        r0 = (java.util.ArrayList) r0;	 Catch:{ all -> 0x00c4 }
        r3 = 0;
        r0 = r0.get(r3);	 Catch:{ all -> 0x00c4 }
        r0 = (com.loc.bb) r0;	 Catch:{ all -> 0x00c4 }
        goto L_0x006b;
    L_0x0081:
        r3 = r0.m397a();	 Catch:{ all -> 0x00c4 }
        r3 = com.loc.C1253X.bwV(r3);	 Catch:{ all -> 0x00c4 }
        if (r3 == 0) goto L_0x0045;
    L_0x008b:
        r3 = r0.m397a();	 Catch:{ all -> 0x00c4 }
        r4 = com.loc.bQ.bCM();	 Catch:{ all -> 0x00c4 }
        r0 = "mem";
        r3.bHO(r0);	 Catch:{ all -> 0x00c4 }
        r0 = com.loc.bx.f338f;	 Catch:{ all -> 0x00c4 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x00c4 }
        if (r0 != 0) goto L_0x00b9;
    L_0x00a1:
        r6 = 0;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 == 0) goto L_0x0045;
    L_0x00a7:
        r6 = com.loc.C1253X.m125a();	 Catch:{ all -> 0x00c4 }
        r8 = r3.bHL();	 Catch:{ all -> 0x00c4 }
        r6 = r6 - r8;
        r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1));
        if (r0 < 0) goto L_0x00c7;
    L_0x00b4:
        r0 = 1;
    L_0x00b5:
        if (r0 != 0) goto L_0x0045;
    L_0x00b7:
        monitor-exit(r10);
        return r3;
    L_0x00b9:
        r0 = r3.bIv();	 Catch:{ all -> 0x00c4 }
        r0 = java.lang.String.valueOf(r0);	 Catch:{ all -> 0x00c4 }
        com.loc.bx.f338f = r0;	 Catch:{ all -> 0x00c4 }
        goto L_0x00a1;
    L_0x00c4:
        r0 = move-exception;
        monitor-exit(r10);
        throw r0;
    L_0x00c7:
        r0 = r1;
        goto L_0x00b5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bj.bAI(java.lang.String, java.lang.StringBuilder, boolean):com.autonavi.aps.amapapi.model.AmapLoc");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean bAJ(java.lang.String r4, com.autonavi.aps.amapapi.model.AmapLoc r5) {
        /*
        r3 = this;
        r1 = 0;
        r0 = android.text.TextUtils.isEmpty(r4);
        if (r0 == 0) goto L_0x0008;
    L_0x0007:
        return r1;
    L_0x0008:
        r0 = com.loc.C1253X.bwV(r5);
        if (r0 == 0) goto L_0x0007;
    L_0x000e:
        r0 = "#";
        r0 = r4.startsWith(r0);
        if (r0 != 0) goto L_0x0022;
    L_0x0017:
        r0 = 1;
        r2 = "network";
        r2 = r4.contains(r2);
        if (r2 == 0) goto L_0x0023;
    L_0x0021:
        return r0;
    L_0x0022:
        return r1;
    L_0x0023:
        r0 = r1;
        goto L_0x0021;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.bj.bAJ(java.lang.String, com.autonavi.aps.amapapi.model.AmapLoc):boolean");
    }

    public boolean bAO(String str, StringBuilder stringBuilder) {
        String[] split = str.split("#");
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < split.length) {
            if (split[i].contains(",nb") || split[i].contains(",access")) {
                arrayList.add(split[i]);
            }
            i++;
        }
        String[] split2 = stringBuilder.toString().split("#");
        i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < split2.length) {
            if (split2[i].contains(",nb") || split2[i].contains(",access")) {
                i2++;
                if (arrayList.contains(split2[i])) {
                    i3++;
                }
            }
            i++;
        }
        return ((double) (i3 * 2)) >= ((double) (arrayList.size() + i2)) * 0.618d;
    }

    public void m419c() {
        this.f326c = 0;
        if (!this.bhh.isEmpty()) {
            this.bhh.clear();
        }
        this.f327d = false;
    }
}
