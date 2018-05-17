package com.loc;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import org.json.JSONObject;

public class C1271p {
    private static C1271p bdp = null;
    private Hashtable bdq = new Hashtable();
    private boolean bdr = false;

    private C1271p() {
    }

    public static synchronized C1271p m567a() {
        C1271p c1271p;
        synchronized (C1271p.class) {
            if (bdp == null) {
                bdp = new C1271p();
            }
            c1271p = bdp;
        }
        return c1271p;
    }

    private void m568d() {
        if (!this.bdq.isEmpty()) {
            this.bdq.clear();
        }
    }

    public void m569a(Context context) {
        if (cu.f412a && !this.bdr) {
            C1253X.m132b();
            try {
                bI.m309a().m311b(context);
            } catch (Throwable th) {
                bx.bBw(th, "HeatMap", "loadDB");
            }
            this.bdr = true;
        }
    }

    public synchronized ArrayList m570b() {
        ArrayList arrayList = new ArrayList();
        if (this.bdq.isEmpty()) {
            return arrayList;
        }
        Hashtable hashtable = this.bdq;
        ArrayList arrayList2 = new ArrayList(hashtable.keySet());
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            try {
                JSONObject jSONObject = (JSONObject) hashtable.get(str);
                int i = jSONObject.getInt("num");
                String string = jSONObject.getString("x");
                long j = jSONObject.getLong("time");
                if (i >= 120) {
                    arrayList.add(new au(str, j, i, string));
                }
            } catch (Throwable th) {
                bx.bBw(th, "HeatMap", "hot");
            }
        }
        Collections.sort(arrayList, new C1249U(this));
        arrayList2.clear();
        return arrayList;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void bvW(android.content.Context r8, java.lang.String r9, java.lang.String r10, int r11, long r12, boolean r14) {
        /*
        r7 = this;
        monitor-enter(r7);
        if (r8 != 0) goto L_0x0005;
    L_0x0003:
        monitor-exit(r7);
        return;
    L_0x0005:
        r0 = android.text.TextUtils.isEmpty(r9);	 Catch:{ all -> 0x0048 }
        if (r0 != 0) goto L_0x0003;
    L_0x000b:
        r0 = com.loc.cu.f412a;	 Catch:{ all -> 0x0048 }
        if (r0 == 0) goto L_0x0040;
    L_0x000f:
        r0 = r7.bdq;	 Catch:{ all -> 0x0048 }
        r0 = r0.get(r9);	 Catch:{ all -> 0x0048 }
        r0 = (org.json.JSONObject) r0;	 Catch:{ all -> 0x0048 }
        if (r0 == 0) goto L_0x0042;
    L_0x0019:
        r1 = "x";
        r0.put(r1, r10);	 Catch:{ Throwable -> 0x005a }
        r1 = "time";
        r0.put(r1, r12);	 Catch:{ Throwable -> 0x005a }
        r1 = r7.bdq;	 Catch:{ Throwable -> 0x005a }
        r1 = r1.containsKey(r9);	 Catch:{ Throwable -> 0x005a }
        if (r1 != 0) goto L_0x004b;
    L_0x002d:
        r1 = "num";
        r0.put(r1, r11);	 Catch:{ Throwable -> 0x005a }
    L_0x0033:
        r1 = r7.bdq;	 Catch:{ all -> 0x0048 }
        r1.put(r9, r0);	 Catch:{ all -> 0x0048 }
        r0 = 120; // 0x78 float:1.68E-43 double:5.93E-322;
        if (r11 >= r0) goto L_0x0065;
    L_0x003c:
        if (r14 != 0) goto L_0x0077;
    L_0x003e:
        monitor-exit(r7);
        return;
    L_0x0040:
        monitor-exit(r7);
        return;
    L_0x0042:
        r0 = new org.json.JSONObject;	 Catch:{ all -> 0x0048 }
        r0.<init>();	 Catch:{ all -> 0x0048 }
        goto L_0x0019;
    L_0x0048:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x004b:
        r1 = "num";
        r2 = "num";
        r2 = r0.getInt(r2);	 Catch:{ Throwable -> 0x005a }
        r2 = r2 + r11;
        r0.put(r1, r2);	 Catch:{ Throwable -> 0x005a }
        goto L_0x0033;
    L_0x005a:
        r1 = move-exception;
        r2 = "HeatMap";
        r3 = "update1";
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ all -> 0x0048 }
        goto L_0x0033;
    L_0x0065:
        r0 = com.loc.bx.bhz;	 Catch:{ all -> 0x0048 }
        if (r0 != 0) goto L_0x003c;
    L_0x0069:
        r0 = 1;
        com.loc.bx.bhz = r0;	 Catch:{ all -> 0x0048 }
        r0 = "pref";
        r1 = "ded";
        r2 = 1;
        com.loc.bA.bBV(r8, r0, r1, r2);	 Catch:{ all -> 0x0048 }
        goto L_0x003c;
    L_0x0077:
        r0 = com.loc.bI.m309a();	 Catch:{ Throwable -> 0x0083 }
        r1 = r8;
        r2 = r9;
        r3 = r10;
        r4 = r12;
        r0.bCn(r1, r2, r3, r4);	 Catch:{ Throwable -> 0x0083 }
        goto L_0x003e;
    L_0x0083:
        r0 = move-exception;
        r1 = "HeatMap";
        r2 = "update";
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ all -> 0x0048 }
        goto L_0x003e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.p.bvW(android.content.Context, java.lang.String, java.lang.String, int, long, boolean):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void bvX(android.content.Context r10, java.lang.String r11, com.autonavi.aps.amapapi.model.AmapLoc r12) {
        /*
        r9 = this;
        r3 = 0;
        monitor-enter(r9);
        r0 = com.loc.C1253X.bwV(r12);	 Catch:{ all -> 0x007a }
        if (r0 != 0) goto L_0x000a;
    L_0x0008:
        monitor-exit(r9);
        return;
    L_0x000a:
        if (r10 == 0) goto L_0x0008;
    L_0x000c:
        r0 = com.loc.cu.f412a;	 Catch:{ all -> 0x007a }
        if (r0 == 0) goto L_0x0008;
    L_0x0010:
        r0 = r9.bdq;	 Catch:{ all -> 0x007a }
        r0 = r0.size();	 Catch:{ all -> 0x007a }
        r1 = 500; // 0x1f4 float:7.0E-43 double:2.47E-321;
        if (r0 > r1) goto L_0x004c;
    L_0x001a:
        if (r3 == 0) goto L_0x0062;
    L_0x001c:
        r0 = new org.json.JSONObject;	 Catch:{ all -> 0x007a }
        r0.<init>();	 Catch:{ all -> 0x007a }
        r1 = "key";
        r0.put(r1, r11);	 Catch:{ Throwable -> 0x006f }
        r1 = "lat";
        r4 = r12.bHE();	 Catch:{ Throwable -> 0x006f }
        r0.put(r1, r4);	 Catch:{ Throwable -> 0x006f }
        r1 = "lon";
        r4 = r12.bHB();	 Catch:{ Throwable -> 0x006f }
        r0.put(r1, r4);	 Catch:{ Throwable -> 0x006f }
        r4 = r0.toString();	 Catch:{ Throwable -> 0x006f }
        r5 = 1;
        r6 = com.loc.C1253X.m125a();	 Catch:{ Throwable -> 0x006f }
        r8 = 1;
        r1 = r9;
        r2 = r10;
        r1.bvW(r2, r3, r4, r5, r6, r8);	 Catch:{ Throwable -> 0x006f }
    L_0x004a:
        monitor-exit(r9);
        return;
    L_0x004c:
        r0 = r12.bHE();	 Catch:{ all -> 0x007a }
        r2 = r12.bHB();	 Catch:{ all -> 0x007a }
        r3 = com.loc.bB.bBX(r0, r2);	 Catch:{ all -> 0x007a }
        r0 = r9.bdq;	 Catch:{ all -> 0x007a }
        r0 = r0.containsKey(r3);	 Catch:{ all -> 0x007a }
        if (r0 != 0) goto L_0x001a;
    L_0x0060:
        monitor-exit(r9);
        return;
    L_0x0062:
        r0 = r12.bHE();	 Catch:{ all -> 0x007a }
        r2 = r12.bHB();	 Catch:{ all -> 0x007a }
        r3 = com.loc.bB.bBX(r0, r2);	 Catch:{ all -> 0x007a }
        goto L_0x001c;
    L_0x006f:
        r0 = move-exception;
        r1 = "HeatMap";
        r2 = "update";
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ all -> 0x007a }
        goto L_0x004a;
    L_0x007a:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.p.bvX(android.content.Context, java.lang.String, com.autonavi.aps.amapapi.model.AmapLoc):void");
    }

    public void m571c() {
        C1271p.m567a().m568d();
        this.bdr = false;
    }
}
