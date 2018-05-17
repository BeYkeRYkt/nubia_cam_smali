package com.android.captureCamera;

import android.content.ContentResolver;
import android.content.Context;
import android.location.Location;
import com.android.common.C0701s;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0228a extends Thread {
    private Context aRG = null;
    private ArrayList aRH;
    private boolean aRI;

    public C0228a(Context context) {
        super("CaptureCameraImageSaver");
        this.aRG = context;
        this.aRH = new ArrayList();
        start();
    }

    public void bin(byte[] bArr, long j, String str, Location location, int i, int i2, int i3, int i4, int i5, String str2) {
        Location location2 = null;
        C0229b c0229b = new C0229b();
        c0229b.data = bArr;
        c0229b.aRJ = j;
        c0229b.aRN = str;
        if (location != null) {
            location2 = new Location(location);
        }
        c0229b.aRK = location2;
        c0229b.width = i;
        c0229b.height = i2;
        c0229b.aRM = i3;
        c0229b.orientation = i4;
        c0229b.aRO = i5;
        c0229b.aRL = str2;
        synchronized (this) {
            while (this.aRH.size() >= 3) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
            this.aRH.add(c0229b);
            notifyAll();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r12 = this;
    L_0x0000:
        monitor-enter(r12);
        r0 = r12.aRH;	 Catch:{ all -> 0x0049 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0049 }
        if (r0 == 0) goto L_0x0019;
    L_0x0009:
        r12.notifyAll();	 Catch:{ all -> 0x0049 }
        r0 = r12.aRI;	 Catch:{ all -> 0x0049 }
        if (r0 == 0) goto L_0x0012;
    L_0x0010:
        monitor-exit(r12);
        return;
    L_0x0012:
        r12.wait();	 Catch:{ InterruptedException -> 0x0017 }
    L_0x0015:
        monitor-exit(r12);
        goto L_0x0000;
    L_0x0017:
        r0 = move-exception;
        goto L_0x0015;
    L_0x0019:
        r0 = r12.aRH;	 Catch:{ all -> 0x0049 }
        r1 = 0;
        r0 = r0.get(r1);	 Catch:{ all -> 0x0049 }
        r0 = (com.android.captureCamera.C0229b) r0;	 Catch:{ all -> 0x0049 }
        monitor-exit(r12);
        r1 = r0.data;
        r2 = r0.aRJ;
        r4 = r0.aRN;
        r5 = r0.aRK;
        r6 = r0.width;
        r7 = r0.height;
        r8 = r0.aRM;
        r9 = r0.orientation;
        r10 = r0.aRO;
        r11 = r0.aRL;
        r0 = r12;
        r0.biq(r1, r2, r4, r5, r6, r7, r8, r9, r10, r11);
        monitor-enter(r12);
        r0 = r12.aRH;	 Catch:{ all -> 0x0046 }
        r1 = 0;
        r0.remove(r1);	 Catch:{ all -> 0x0046 }
        r12.notifyAll();	 Catch:{ all -> 0x0046 }
        goto L_0x0015;
    L_0x0046:
        r0 = move-exception;
        monitor-exit(r12);
        throw r0;
    L_0x0049:
        r0 = move-exception;
        monitor-exit(r12);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.captureCamera.a.run():void");
    }

    public void bir() {
        synchronized (this) {
            while (!this.aRH.isEmpty()) {
                try {
                    wait();
                } catch (InterruptedException e) {
                }
            }
        }
    }

    public void bio() {
        bir();
        synchronized (this) {
            this.aRI = true;
            notifyAll();
        }
        try {
            join();
        } catch (InterruptedException e) {
        }
    }

    private void biq(byte[] bArr, long j, String str, Location location, int i, int i2, int i3, int i4, int i5, String str2) {
        if (bArr == null) {
            C0090a.bvo("ImageSaver", "image data null");
        } else {
            C0701s.arb(bip(), j, str, location, i4, bArr, i, i2, i5, str2, null, null);
        }
    }

    private ContentResolver bip() {
        return this.aRG.getContentResolver();
    }
}
