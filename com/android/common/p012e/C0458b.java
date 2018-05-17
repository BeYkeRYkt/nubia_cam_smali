package com.android.common.p012e;

import com.p010a.C0090a;

public class C0458b {
    private static String TAG = "CommandManager";
    private static C0458b VF = null;
    private boolean VA;
    private C0101g VB;
    private boolean VC;
    private C0101g VD;
    private C0459c VE;

    public static C0458b adi() {
        if (VF == null) {
            VF = new C0458b();
        }
        return VF;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void adj(com.android.common.p012e.C0101g r3) {
        /*
        r2 = this;
        monitor-enter(r2);
        r0 = r2.VA;	 Catch:{ all -> 0x002c }
        if (r0 != 0) goto L_0x0019;
    L_0x0005:
        r0 = TAG;	 Catch:{ all -> 0x002c }
        r1 = "addCommand false";
        com.p010a.C0090a.bvo(r0, r1);	 Catch:{ all -> 0x002c }
        r0 = r3 instanceof com.android.common.p012e.C0461e;	 Catch:{ all -> 0x002c }
        if (r0 == 0) goto L_0x0017;
    L_0x0011:
        r0 = r2.VC;	 Catch:{ all -> 0x002c }
        if (r0 == 0) goto L_0x0017;
    L_0x0015:
        r2.VD = r3;	 Catch:{ all -> 0x002c }
    L_0x0017:
        monitor-exit(r2);
        return;
    L_0x0019:
        r0 = 0;
        r2.VD = r0;	 Catch:{ all -> 0x002c }
        r2.VB = r3;	 Catch:{ all -> 0x002c }
        r0 = r2.VB;	 Catch:{ all -> 0x002c }
        r0 = r0 instanceof com.android.common.p012e.C0461e;	 Catch:{ all -> 0x002c }
        r2.VC = r0;	 Catch:{ all -> 0x002c }
        r2.adq();	 Catch:{ all -> 0x002c }
        r2.ado();	 Catch:{ all -> 0x002c }
        monitor-exit(r2);
        return;
    L_0x002c:
        r0 = move-exception;
        monitor-exit(r2);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.e.b.adj(com.android.common.e.g):void");
    }

    public synchronized boolean adm() {
        return this.VA;
    }

    public synchronized void quit() {
        adq();
        ads(false);
        VF = null;
    }

    public synchronized void adk() {
        C0090a.bvo(TAG, "Enable command manager");
        adr();
        ads(true);
        this.VD = null;
        adq();
        this.VB = null;
    }

    public synchronized void adl() {
        C0090a.bvo(TAG, "Disable command manager");
        this.VA = false;
        this.VB = null;
        this.VD = null;
        adq();
    }

    private C0458b() {
        this.VE = null;
        this.VB = null;
        this.VA = true;
        this.VD = null;
        this.VC = false;
        this.VE = new C0459c(this);
    }

    private void ads(boolean z) {
        this.VA = z;
    }

    private void adr() {
        this.VE.removeMessages(28);
    }

    private boolean adn() {
        return this.VB != null;
    }

    private void adp() {
        C0101g c0101g = this.VB;
        this.VB = null;
        c0101g.mE();
    }

    private void ado() {
        if (adn()) {
            adq();
            if (this.VB.mF() != -1) {
                this.VE.sendEmptyMessageDelayed(28, (long) this.VB.mF());
                ads(false);
            }
            adp();
        }
    }

    private void adq() {
        this.VE.removeMessages(28);
    }
}
