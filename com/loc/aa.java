package com.loc;

class aa extends Thread {
    final /* synthetic */ cv beB;

    aa(cv cvVar) {
        this.beB = cvVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r7 = this;
        r1 = 0;
    L_0x0001:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r0.f419j;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        if (r0 != 0) goto L_0x0010;
    L_0x0007:
        r0 = r7.beB;
        r0 = r0.m531e();
        if (r0 == 0) goto L_0x01aa;
    L_0x000f:
        return;
    L_0x0010:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r0.f420k;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        if (r0 != 0) goto L_0x005f;
    L_0x0016:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r0.bli;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        monitor-enter(r2);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r7.beB;	 Catch:{ all -> 0x01a7 }
        r0 = r0.m531e();	 Catch:{ all -> 0x01a7 }
        if (r0 != 0) goto L_0x019e;
    L_0x0023:
        monitor-exit(r2);	 Catch:{ all -> 0x01a7 }
        r0 = r1;
    L_0x0025:
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r2.bkR;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        if (r2 == 0) goto L_0x0001;
    L_0x002d:
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2.m534h();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2.m533g();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2.bGd(r0);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0.m530d();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0.m538l();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        goto L_0x0001;
    L_0x0047:
        r0 = move-exception;
        r1 = "APSServiceCore";
        r2 = "run part3";
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ all -> 0x0138 }
        r0 = r7.beB;
        r0 = r0.m531e();
        if (r0 != 0) goto L_0x000f;
    L_0x0059:
        r0 = r7.beB;
        r0.m537k();
        goto L_0x000f;
    L_0x005f:
        r0 = r7.beB;	 Catch:{ Throwable -> 0x00b1, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0.m535i();	 Catch:{ Throwable -> 0x00b1, RemoteException -> 0x0047, InterruptedException -> 0x009a }
    L_0x0064:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r0.bll;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        if (r0 != 0) goto L_0x00e4;
    L_0x006c:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = 9;
        r4 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r4 = r4.blm;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r2.m529a(r3, r4);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0.blj = r2;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
    L_0x007e:
        r0 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = r0.bli;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        monitor-enter(r3);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.blj;	 Catch:{ all -> 0x0097 }
        if (r0 != 0) goto L_0x0142;
    L_0x0089:
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r2 = 0;
        r0.f420k = r2;	 Catch:{ all -> 0x0097 }
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.bkV;	 Catch:{ all -> 0x0097 }
        if (r0 != 0) goto L_0x0156;
    L_0x0094:
        r0 = r1;
    L_0x0095:
        monitor-exit(r3);	 Catch:{ all -> 0x0097 }
        goto L_0x0025;
    L_0x0097:
        r0 = move-exception;
        monitor-exit(r3);	 Catch:{ all -> 0x0097 }
        throw r0;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
    L_0x009a:
        r0 = move-exception;
        r0 = java.lang.Thread.currentThread();	 Catch:{ all -> 0x0138 }
        r0.interrupt();	 Catch:{ all -> 0x0138 }
        r0 = r7.beB;
        r0 = r0.m531e();
        if (r0 != 0) goto L_0x000f;
    L_0x00aa:
        r0 = r7.beB;
        r0.m537k();
        goto L_0x000f;
    L_0x00b1:
        r0 = move-exception;
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = r0.getMessage();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2.blm = r3;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = 0;
        r2.bll = r3;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = "APSServiceCore";
        r3 = "run part1";
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        goto L_0x0064;
    L_0x00cb:
        r0 = move-exception;
        r1 = "APSServiceCore";
        r2 = "run part5";
        com.loc.bx.bBw(r0, r1, r2);	 Catch:{ all -> 0x0138 }
        r0 = r7.beB;
        r0 = r0.m531e();
        if (r0 != 0) goto L_0x000f;
    L_0x00dd:
        r0 = r7.beB;
        r0.m537k();
        goto L_0x000f;
    L_0x00e4:
        r0 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r2 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r2 = r2.m532f();	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0.blj = r2;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r0.blh;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        if (r0 == 0) goto L_0x007e;
    L_0x00f6:
        r0 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r0.blj;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r2 = r0.bHL();	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r4 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r4 = r4.blh;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r5 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r5 = r5.blj;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r6 = 0;
        r6 = new java.lang.String[r6];	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r4 = r4.bEn(r5, r6);	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0.blj = r4;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r7.beB;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0 = r0.blj;	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        r0.bHM(r2);	 Catch:{ Throwable -> 0x011c, RemoteException -> 0x0047, InterruptedException -> 0x009a }
        goto L_0x007e;
    L_0x011c:
        r0 = move-exception;
        r2 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = r7.beB;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r4 = 8;
        r5 = r0.getMessage();	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r3 = r3.m529a(r4, r5);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2.blj = r3;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        r2 = "APSServiceCore";
        r3 = "run part2";
        com.loc.bx.bBw(r0, r2, r3);	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
        goto L_0x007e;
    L_0x0138:
        r0 = move-exception;
        r1 = r7.beB;
        r1 = r1.m531e();
        if (r1 == 0) goto L_0x01b1;
    L_0x0141:
        throw r0;
    L_0x0142:
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.blj;	 Catch:{ all -> 0x0097 }
        r0 = r0.bHo();	 Catch:{ all -> 0x0097 }
        if (r0 != 0) goto L_0x0089;
    L_0x014c:
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r4 = com.loc.C1253X.m132b();	 Catch:{ all -> 0x0097 }
        r0.f421n = r4;	 Catch:{ all -> 0x0097 }
        goto L_0x0089;
    L_0x0156:
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.bkV;	 Catch:{ all -> 0x0097 }
        r0 = r0.size();	 Catch:{ all -> 0x0097 }
        if (r0 <= 0) goto L_0x0094;
    L_0x0160:
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.bkV;	 Catch:{ all -> 0x0097 }
        r0 = r0.size();	 Catch:{ all -> 0x0097 }
        r2 = r0;
        r0 = r1;
    L_0x016a:
        if (r2 <= 0) goto L_0x0095;
    L_0x016c:
        r4 = android.os.Message.obtain();	 Catch:{ all -> 0x0097 }
        r0 = new android.os.Bundle;	 Catch:{ all -> 0x0097 }
        r0.<init>();	 Catch:{ all -> 0x0097 }
        r5 = "location";
        r6 = r7.beB;	 Catch:{ all -> 0x0097 }
        r6 = r6.blj;	 Catch:{ all -> 0x0097 }
        r0.putParcelable(r5, r6);	 Catch:{ all -> 0x0097 }
        r4.setData(r0);	 Catch:{ all -> 0x0097 }
        r0 = 1;
        r4.what = r0;	 Catch:{ all -> 0x0097 }
        r0 = r7.beB;	 Catch:{ all -> 0x0097 }
        r0 = r0.bkV;	 Catch:{ all -> 0x0097 }
        r5 = 0;
        r0 = r0.get(r5);	 Catch:{ all -> 0x0097 }
        r0 = (android.os.Messenger) r0;	 Catch:{ all -> 0x0097 }
        r0.send(r4);	 Catch:{ all -> 0x0097 }
        r4 = r7.beB;	 Catch:{ all -> 0x0097 }
        r4 = r4.bkV;	 Catch:{ all -> 0x0097 }
        r5 = 0;
        r4.remove(r5);	 Catch:{ all -> 0x0097 }
        r2 = r2 + -1;
        goto L_0x016a;
    L_0x019e:
        r0 = r7.beB;	 Catch:{ all -> 0x01a7 }
        r0 = r0.bli;	 Catch:{ all -> 0x01a7 }
        r0.wait();	 Catch:{ all -> 0x01a7 }
        goto L_0x0023;
    L_0x01a7:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x01a7 }
        throw r0;	 Catch:{ RemoteException -> 0x0047, InterruptedException -> 0x009a, Throwable -> 0x00cb }
    L_0x01aa:
        r0 = r7.beB;
        r0.m537k();
        goto L_0x000f;
    L_0x01b1:
        r1 = r7.beB;
        r1.m537k();
        goto L_0x0141;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.aa.run():void");
    }
}
