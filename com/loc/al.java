package com.loc;

import android.content.Context;

class al implements Runnable {
    final /* synthetic */ Context f219a;

    al(Context context) {
        this.f219a = context;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r7 = this;
        r0 = 0;
        r1 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x0031, Throwable -> 0x003b, all -> 0x0054 }
        r2 = 0;
        r2 = com.loc.C1231D.bwo(r1, r2);	 Catch:{ RejectedExecutionException -> 0x0031, Throwable -> 0x003b, all -> 0x0054 }
        r1 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00b9, Throwable -> 0x00a4, all -> 0x008d }
        r3 = 1;
        r1 = com.loc.C1231D.bwo(r1, r3);	 Catch:{ RejectedExecutionException -> 0x00b9, Throwable -> 0x00a4, all -> 0x008d }
        r3 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00ab, all -> 0x0094 }
        r4 = 2;
        r0 = com.loc.C1231D.bwo(r3, r4);	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00ab, all -> 0x0094 }
        r3 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r2.m214c(r3);	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r3 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r1.m214c(r3);	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r3 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r0.m214c(r3);	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        r3 = r7.f219a;	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        com.loc.aQ.m193a(r3);	 Catch:{ RejectedExecutionException -> 0x00bd, Throwable -> 0x00b2, all -> 0x009b }
        if (r2 != 0) goto L_0x0061;
    L_0x002c:
        if (r1 != 0) goto L_0x0065;
    L_0x002e:
        if (r0 != 0) goto L_0x0069;
    L_0x0030:
        return;
    L_0x0031:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
    L_0x0034:
        if (r2 != 0) goto L_0x006d;
    L_0x0036:
        if (r1 != 0) goto L_0x0071;
    L_0x0038:
        if (r0 != 0) goto L_0x0075;
    L_0x003a:
        return;
    L_0x003b:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0041:
        r4 = "Log";
        r5 = "processLog";
        com.loc.C1259s.bwd(r0, r4, r5);	 Catch:{ all -> 0x00a2 }
        if (r3 != 0) goto L_0x0079;
    L_0x004c:
        if (r2 != 0) goto L_0x007d;
    L_0x004e:
        if (r1 == 0) goto L_0x0030;
    L_0x0050:
        r1.m213c();
        goto L_0x0030;
    L_0x0054:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x005a:
        if (r3 != 0) goto L_0x0081;
    L_0x005c:
        if (r2 != 0) goto L_0x0085;
    L_0x005e:
        if (r1 != 0) goto L_0x0089;
    L_0x0060:
        throw r0;
    L_0x0061:
        r2.m213c();
        goto L_0x002c;
    L_0x0065:
        r1.m213c();
        goto L_0x002e;
    L_0x0069:
        r0.m213c();
        goto L_0x0030;
    L_0x006d:
        r2.m213c();
        goto L_0x0036;
    L_0x0071:
        r1.m213c();
        goto L_0x0038;
    L_0x0075:
        r0.m213c();
        goto L_0x003a;
    L_0x0079:
        r3.m213c();
        goto L_0x004c;
    L_0x007d:
        r2.m213c();
        goto L_0x004e;
    L_0x0081:
        r3.m213c();
        goto L_0x005c;
    L_0x0085:
        r2.m213c();
        goto L_0x005e;
    L_0x0089:
        r1.m213c();
        goto L_0x0060;
    L_0x008d:
        r1 = move-exception;
        r3 = r2;
        r2 = r0;
        r6 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x005a;
    L_0x0094:
        r3 = move-exception;
        r6 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x005a;
    L_0x009b:
        r3 = move-exception;
        r6 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x005a;
    L_0x00a2:
        r0 = move-exception;
        goto L_0x005a;
    L_0x00a4:
        r1 = move-exception;
        r3 = r2;
        r2 = r0;
        r6 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x0041;
    L_0x00ab:
        r3 = move-exception;
        r6 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0041;
    L_0x00b2:
        r3 = move-exception;
        r6 = r3;
        r3 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0041;
    L_0x00b9:
        r1 = move-exception;
        r1 = r0;
        goto L_0x0034;
    L_0x00bd:
        r3 = move-exception;
        goto L_0x0034;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.al.run():void");
    }
}
