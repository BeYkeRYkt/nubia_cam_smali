package com.android.common.image3d;

public class C0582m {
    private int FI = 0;
    private int FJ = 0;
    private int FK = 0;
    private boolean FL = true;
    private byte[] FM = new byte[0];
    private int FN = -1;
    private float FO = 1.0f;
    private float FP = 0.0f;

    public C0582m(int i, int i2, float f) {
        this.FK = i;
        this.FI = i2;
        this.FO = f;
    }

    public void DE(int i) {
        synchronized (this.FM) {
            this.FJ = i;
            this.FL = true;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int DF(float r7, float r8) {
        /*
        r6 = this;
        r5 = -1;
        r4 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r1 = r6.FM;
        monitor-enter(r1);
        r0 = 0;
        r2 = r6.FI;	 Catch:{ all -> 0x0065 }
        switch(r2) {
            case 1: goto L_0x001d;
            case 2: goto L_0x0022;
            case 3: goto L_0x0026;
            case 4: goto L_0x002a;
            default: goto L_0x000c;
        };	 Catch:{ all -> 0x0065 }
    L_0x000c:
        r2 = r6.FL;	 Catch:{ all -> 0x0065 }
        if (r2 == 0) goto L_0x002f;
    L_0x0010:
        r2 = 0;
        r6.FL = r2;	 Catch:{ all -> 0x0065 }
        r2 = r6.FJ;	 Catch:{ all -> 0x0065 }
        r2 = (float) r2;	 Catch:{ all -> 0x0065 }
        r0 = r0 - r2;
        r6.FP = r0;	 Catch:{ all -> 0x0065 }
        r0 = r6.FJ;	 Catch:{ all -> 0x0065 }
        monitor-exit(r1);
        return r0;
    L_0x001d:
        r0 = -r8;
        r2 = r6.FO;	 Catch:{ all -> 0x0065 }
        r0 = r0 * r2;
        goto L_0x000c;
    L_0x0022:
        r0 = r6.FO;	 Catch:{ all -> 0x0065 }
        r0 = r0 * r8;
        goto L_0x000c;
    L_0x0026:
        r0 = r6.FO;	 Catch:{ all -> 0x0065 }
        r0 = r0 * r7;
        goto L_0x000c;
    L_0x002a:
        r0 = -r7;
        r2 = r6.FO;	 Catch:{ all -> 0x0065 }
        r0 = r0 * r2;
        goto L_0x000c;
    L_0x002f:
        r2 = r6.FP;	 Catch:{ all -> 0x0065 }
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x004c;
    L_0x0035:
        r6.FP = r0;	 Catch:{ all -> 0x0065 }
        r0 = 0;
        r6.FJ = r0;	 Catch:{ all -> 0x0065 }
    L_0x003a:
        r0 = r6.FN;	 Catch:{ all -> 0x0065 }
        if (r0 == r5) goto L_0x0044;
    L_0x003e:
        r0 = r6.FN;	 Catch:{ all -> 0x0065 }
        r2 = r6.FJ;	 Catch:{ all -> 0x0065 }
        if (r0 == r2) goto L_0x0073;
    L_0x0044:
        r0 = r6.FJ;	 Catch:{ all -> 0x0065 }
        r6.FN = r0;	 Catch:{ all -> 0x0065 }
        r0 = r6.FJ;	 Catch:{ all -> 0x0065 }
        monitor-exit(r1);
        return r0;
    L_0x004c:
        r2 = r6.FP;	 Catch:{ all -> 0x0065 }
        r3 = r6.FK;	 Catch:{ all -> 0x0065 }
        r3 = (float) r3;	 Catch:{ all -> 0x0065 }
        r2 = r2 + r3;
        r2 = r2 - r4;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 <= 0) goto L_0x0068;
    L_0x0057:
        r2 = r6.FK;	 Catch:{ all -> 0x0065 }
        r2 = (float) r2;	 Catch:{ all -> 0x0065 }
        r0 = r0 - r2;
        r0 = r0 + r4;
        r6.FP = r0;	 Catch:{ all -> 0x0065 }
        r0 = r6.FK;	 Catch:{ all -> 0x0065 }
        r0 = r0 + -1;
        r6.FJ = r0;	 Catch:{ all -> 0x0065 }
        goto L_0x003a;
    L_0x0065:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0068:
        r2 = r6.FP;	 Catch:{ all -> 0x0065 }
        r0 = r0 - r2;
        r0 = java.lang.Math.abs(r0);	 Catch:{ all -> 0x0065 }
        r0 = (int) r0;	 Catch:{ all -> 0x0065 }
        r6.FJ = r0;	 Catch:{ all -> 0x0065 }
        goto L_0x003a;
    L_0x0073:
        monitor-exit(r1);
        return r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.image3d.m.DF(float, float):int");
    }
}
