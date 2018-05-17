package com.loc;

import android.location.GpsStatus.Listener;
import android.location.GpsStatus.NmeaListener;

class C1247S implements Listener, NmeaListener {
    long f142a = 0;
    final /* synthetic */ af bek;

    protected C1247S(af afVar) {
        this.bek = afVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onGpsStatusChanged(int r8) {
        /*
        r7 = this;
        r6 = 4;
        r0 = 0;
        r1 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r1 = r1.beO;	 Catch:{ Throwable -> 0x0075 }
        if (r1 == 0) goto L_0x000e;
    L_0x000a:
        switch(r8) {
            case 2: goto L_0x000d;
            case 3: goto L_0x000d;
            case 4: goto L_0x000f;
            default: goto L_0x000d;
        };	 Catch:{ Throwable -> 0x0075 }
    L_0x000d:
        return;
    L_0x000e:
        return;
    L_0x000f:
        r1 = com.loc.af.f195a;	 Catch:{ Throwable -> 0x0075 }
        if (r1 == 0) goto L_0x0080;
    L_0x0013:
        r1 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r1 = r1.bfd;	 Catch:{ Throwable -> 0x0075 }
        if (r1 == 0) goto L_0x0093;
    L_0x001b:
        r1 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r1 = r1.beO;	 Catch:{ Throwable -> 0x0075 }
        r2 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r2 = r2.bfd;	 Catch:{ Throwable -> 0x0075 }
        r1.getGpsStatus(r2);	 Catch:{ Throwable -> 0x0075 }
    L_0x002a:
        r1 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r1 = r1.bfd;	 Catch:{ Throwable -> 0x0075 }
        r1 = r1.getSatellites();	 Catch:{ Throwable -> 0x0075 }
        r3 = r1.iterator();	 Catch:{ Throwable -> 0x0075 }
        r2 = r0;
        r1 = r0;
    L_0x003a:
        r0 = r3.hasNext();	 Catch:{ Throwable -> 0x0075 }
        if (r0 != 0) goto L_0x00a4;
    L_0x0040:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beK;	 Catch:{ Throwable -> 0x0075 }
        r3 = -1;
        if (r0 != r3) goto L_0x00b8;
    L_0x0049:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0.beK = r1;	 Catch:{ Throwable -> 0x0075 }
        if (r1 < r6) goto L_0x00cf;
    L_0x0050:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beP;	 Catch:{ Throwable -> 0x0075 }
        if (r0 != 0) goto L_0x00e2;
    L_0x0058:
        r0 = com.loc.af.f195a;	 Catch:{ Throwable -> 0x0075 }
        if (r0 != 0) goto L_0x00ed;
    L_0x005c:
        r0 = 3;
        if (r1 <= r0) goto L_0x00ee;
    L_0x005f:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beO;	 Catch:{ Throwable -> 0x0075 }
        r1 = "gps";
        r0 = r0.getLastKnownLocation(r1);	 Catch:{ Throwable -> 0x0075 }
        if (r0 == 0) goto L_0x000d;
    L_0x006e:
        r0 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0075 }
        r7.f142a = r0;	 Catch:{ Throwable -> 0x0075 }
        goto L_0x000d;
    L_0x0075:
        r0 = move-exception;
        r1 = "CollectorManager";
        r2 = "onGpsStatusChanged";
        com.loc.bx.bBw(r0, r1, r2);
        goto L_0x000d;
    L_0x0080:
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0075 }
        r4 = r7.f142a;	 Catch:{ Throwable -> 0x0075 }
        r2 = r2 - r4;
        r4 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
        r1 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
        if (r1 < 0) goto L_0x0091;
    L_0x008d:
        r1 = 1;
    L_0x008e:
        if (r1 != 0) goto L_0x0013;
    L_0x0090:
        return;
    L_0x0091:
        r1 = r0;
        goto L_0x008e;
    L_0x0093:
        r1 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r2 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r2 = r2.beO;	 Catch:{ Throwable -> 0x0075 }
        r3 = 0;
        r2 = r2.getGpsStatus(r3);	 Catch:{ Throwable -> 0x0075 }
        r1.bfd = r2;	 Catch:{ Throwable -> 0x0075 }
        goto L_0x002a;
    L_0x00a4:
        r0 = r3.next();	 Catch:{ Throwable -> 0x0075 }
        r0 = (android.location.GpsSatellite) r0;	 Catch:{ Throwable -> 0x0075 }
        r2 = r2 + 1;
        r0 = r0.usedInFix();	 Catch:{ Throwable -> 0x0075 }
        if (r0 != 0) goto L_0x00b5;
    L_0x00b2:
        r0 = r1;
    L_0x00b3:
        r1 = r0;
        goto L_0x003a;
    L_0x00b5:
        r0 = r1 + 1;
        goto L_0x00b3;
    L_0x00b8:
        if (r1 >= r6) goto L_0x00c5;
    L_0x00ba:
        if (r1 >= r6) goto L_0x0058;
    L_0x00bc:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beK;	 Catch:{ Throwable -> 0x0075 }
        if (r0 >= r6) goto L_0x0049;
    L_0x00c4:
        goto L_0x0058;
    L_0x00c5:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beK;	 Catch:{ Throwable -> 0x0075 }
        if (r0 >= r6) goto L_0x00ba;
    L_0x00cd:
        goto L_0x0049;
    L_0x00cf:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beP;	 Catch:{ Throwable -> 0x0075 }
        if (r0 == 0) goto L_0x0058;
    L_0x00d7:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beP;	 Catch:{ Throwable -> 0x0075 }
        r0.byq();	 Catch:{ Throwable -> 0x0075 }
        goto L_0x0058;
    L_0x00e2:
        r0 = r7.bek;	 Catch:{ Throwable -> 0x0075 }
        r0 = r0.beP;	 Catch:{ Throwable -> 0x0075 }
        r0.byp();	 Catch:{ Throwable -> 0x0075 }
        goto L_0x0058;
    L_0x00ed:
        return;
    L_0x00ee:
        r0 = 15;
        if (r2 > r0) goto L_0x005f;
    L_0x00f2:
        goto L_0x000d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.S.onGpsStatusChanged(int):void");
    }

    public void onNmeaReceived(long j, String str) {
    }
}
