package com.android.common.cameradevice;

import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import com.android.common.C0616j;
import com.p010a.C0090a;

class C0385p {
    private int HL;
    private C0380k HM;
    private boolean HN;
    private C0382m HO;
    private final Handler HP;
    private long HQ;
    private C0086j HR;
    final /* synthetic */ C0384o HS;

    private C0385p(C0384o c0384o, int i, C0380k c0380k) {
        this.HS = c0384o;
        this.HL = -1;
        this.HL = i;
        this.HM = c0380k;
        HandlerThread handlerThread = new HandlerThread(i + "'s CameraHolder");
        handlerThread.start();
        this.HP = new C0386q(this, handlerThread.getLooper());
    }

    public synchronized com.android.common.cameradevice.C0382m JI() {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Exception block dominator not found, method:com.android.common.cameradevice.p.JI():com.android.common.cameradevice.m. bs: [B:12:0x0043, B:23:0x00b5]
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:86)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r3 = this;
        monitor-enter(r3);
        r0 = "CameraHolder";	 Catch:{ all -> 0x003c }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x003c }
        r1.<init>();	 Catch:{ all -> 0x003c }
        r2 = "CameraProxy open. mCameraOpened = ";	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r2 = r3.HN;	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r2 = "; mCameraId: ";	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r2 = r3.HL;	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r1 = r1.toString();	 Catch:{ all -> 0x003c }
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ all -> 0x003c }
        r0 = r3.HN;	 Catch:{ all -> 0x003c }
        if (r0 == 0) goto L_0x003f;	 Catch:{ all -> 0x003c }
    L_0x002e:
        r0 = new com.android.common.cameradevice.CameraHardwareException;	 Catch:{ all -> 0x003c }
        r1 = new java.lang.Throwable;	 Catch:{ all -> 0x003c }
        r2 = "camera has been opened";	 Catch:{ all -> 0x003c }
        r1.<init>(r2);	 Catch:{ all -> 0x003c }
        r0.<init>(r1);	 Catch:{ all -> 0x003c }
        throw r0;	 Catch:{ all -> 0x003c }
    L_0x003c:
        r0 = move-exception;
        monitor-exit(r3);
        throw r0;
    L_0x003f:
        r0 = r3.HO;	 Catch:{ all -> 0x003c }
        if (r0 != 0) goto L_0x00b5;
    L_0x0043:
        r0 = "CameraHolder";	 Catch:{ RuntimeException -> 0x00a5 }
        r1 = new java.lang.StringBuilder;	 Catch:{ RuntimeException -> 0x00a5 }
        r1.<init>();	 Catch:{ RuntimeException -> 0x00a5 }
        r2 = "open camera ";	 Catch:{ RuntimeException -> 0x00a5 }
        r1 = r1.append(r2);	 Catch:{ RuntimeException -> 0x00a5 }
        r2 = r3.HL;	 Catch:{ RuntimeException -> 0x00a5 }
        r1 = r1.append(r2);	 Catch:{ RuntimeException -> 0x00a5 }
        r1 = r1.toString();	 Catch:{ RuntimeException -> 0x00a5 }
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ RuntimeException -> 0x00a5 }
        r0 = r3.HM;	 Catch:{ RuntimeException -> 0x00a5 }
        r1 = r3.HL;	 Catch:{ RuntimeException -> 0x00a5 }
        r0 = r0.Ix(r1);	 Catch:{ RuntimeException -> 0x00a5 }
        r3.HO = r0;	 Catch:{ RuntimeException -> 0x00a5 }
        r0 = r3.HO;	 Catch:{ all -> 0x003c }
        r0 = r0.IP();	 Catch:{ all -> 0x003c }
        r3.HR = r0;	 Catch:{ all -> 0x003c }
    L_0x0071:
        r0 = 1;	 Catch:{ all -> 0x003c }
        r3.HN = r0;	 Catch:{ all -> 0x003c }
        r0 = r3.HP;	 Catch:{ all -> 0x003c }
        r1 = 1;	 Catch:{ all -> 0x003c }
        r0.removeMessages(r1);	 Catch:{ all -> 0x003c }
        r0 = 0;	 Catch:{ all -> 0x003c }
        r3.HQ = r0;	 Catch:{ all -> 0x003c }
        r0 = "CameraHolder";	 Catch:{ all -> 0x003c }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x003c }
        r1.<init>();	 Catch:{ all -> 0x003c }
        r2 = "open camera ";	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r2 = r3.HL;	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r2 = " end";	 Catch:{ all -> 0x003c }
        r1 = r1.append(r2);	 Catch:{ all -> 0x003c }
        r1 = r1.toString();	 Catch:{ all -> 0x003c }
        com.p010a.C0090a.bvm(r0, r1);	 Catch:{ all -> 0x003c }
        r0 = r3.HO;	 Catch:{ all -> 0x003c }
        monitor-exit(r3);
        return r0;
    L_0x00a5:
        r0 = move-exception;
        r1 = "CameraHolder";	 Catch:{ all -> 0x003c }
        r2 = "fail to connect Camera";	 Catch:{ all -> 0x003c }
        com.p010a.C0090a.bvi(r1, r2, r0);	 Catch:{ all -> 0x003c }
        r1 = new com.android.common.cameradevice.CameraHardwareException;	 Catch:{ all -> 0x003c }
        r1.<init>(r0);	 Catch:{ all -> 0x003c }
        throw r1;	 Catch:{ all -> 0x003c }
    L_0x00b5:
        r0 = "CameraHolder";	 Catch:{ IOException -> 0x00d4 }
        r1 = "mCameraDevice.reconnect()";	 Catch:{ IOException -> 0x00d4 }
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ IOException -> 0x00d4 }
        r0 = r3.HO;	 Catch:{ IOException -> 0x00d4 }
        r0.Jq();	 Catch:{ IOException -> 0x00d4 }
        r0 = "CameraHolder";	 Catch:{ all -> 0x003c }
        r1 = "mCameraDevice.setParameters()";	 Catch:{ all -> 0x003c }
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ all -> 0x003c }
        r0 = r3.HO;	 Catch:{ all -> 0x003c }
        r1 = r3.HR;	 Catch:{ all -> 0x003c }
        r0.IQ(r1);	 Catch:{ all -> 0x003c }
        goto L_0x0071;	 Catch:{ all -> 0x003c }
    L_0x00d4:
        r0 = move-exception;	 Catch:{ all -> 0x003c }
        r1 = "CameraHolder";	 Catch:{ all -> 0x003c }
        r2 = "reconnect failed.";	 Catch:{ all -> 0x003c }
        com.p010a.C0090a.m1e(r1, r2);	 Catch:{ all -> 0x003c }
        r1 = new com.android.common.cameradevice.CameraHardwareException;	 Catch:{ all -> 0x003c }
        r1.<init>(r0);	 Catch:{ all -> 0x003c }
        throw r1;	 Catch:{ all -> 0x003c }
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.cameradevice.p.JI():com.android.common.cameradevice.m");
    }

    public synchronized C0382m JJ() {
        C0382m c0382m = null;
        synchronized (this) {
            try {
                if (!this.HN) {
                    c0382m = JI();
                }
            } catch (Throwable e) {
                if (!"eng".equals(Build.TYPE)) {
                    return null;
                }
                throw new RuntimeException(e);
            }
        }
        return c0382m;
    }

    public synchronized void release() {
        boolean z = true;
        synchronized (this) {
            C0090a.m1e("CameraHolder", "CameraHolder release ");
            if (this.HO == null) {
                z = false;
            }
            C0616j.apn(z);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis < this.HQ) {
                if (this.HN) {
                    this.HN = false;
                    this.HO.Jd();
                }
                this.HP.sendEmptyMessageDelayed(1, this.HQ - currentTimeMillis);
                return;
            }
            this.HN = false;
            this.HO.release();
            this.HO = null;
            this.HR = null;
            C0090a.m1e("CameraHolder", "CameraHolder release end");
        }
    }

    public synchronized void JH() {
        this.HQ = System.currentTimeMillis() + 3000;
    }

    public C0086j JF() {
        return this.HR;
    }

    public synchronized C0382m JE() {
        return this.HO;
    }

    public void JG(C0382m c0382m) {
        this.HO = c0382m;
        this.HR = this.HO.IP();
        this.HN = true;
        this.HP.removeMessages(1);
        this.HQ = 0;
    }
}
