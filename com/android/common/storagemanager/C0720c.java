package com.android.common.storagemanager;

import android.os.Handler;
import com.p010a.C0090a;
import java.util.LinkedList;

public class C0720c extends Thread {
    private boolean aeG = false;
    private LinkedList aeH = null;
    private Handler aeI = null;

    public C0720c(LinkedList linkedList, Handler handler) {
        super("StorageThread");
        this.aeH = linkedList;
        this.aeI = handler;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r5 = this;
        r4 = 0;
        r0 = "StorageThread";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "thread ";
        r1 = r1.append(r2);
        r2 = r5.getId();
        r1 = r1.append(r2);
        r2 = " start";
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
    L_0x0026:
        r0 = r5.aeG;
        if (r0 == 0) goto L_0x006a;
    L_0x002a:
        r0 = r5.aeH;
        r0 = r0.isEmpty();
    L_0x0030:
        if (r0 != 0) goto L_0x0042;
    L_0x0032:
        r1 = r5.aeH;
        monitor-enter(r1);
        r0 = r5.aeG;	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x006c;
    L_0x0039:
        r0 = r5.aeH;	 Catch:{ all -> 0x0080 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x006c;
    L_0x0041:
        monitor-exit(r1);
    L_0x0042:
        r5.aeI = r4;
        r0 = "StorageThread";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "thread ";
        r1 = r1.append(r2);
        r2 = r5.getId();
        r1 = r1.append(r2);
        r2 = " end";
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
        return;
    L_0x006a:
        r0 = 0;
        goto L_0x0030;
    L_0x006c:
        r0 = r5.aeH;	 Catch:{ all -> 0x0080 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0080 }
        if (r0 == 0) goto L_0x0083;
    L_0x0074:
        r0 = r5.aeH;	 Catch:{ InterruptedException -> 0x007b }
        r0.wait();	 Catch:{ InterruptedException -> 0x007b }
    L_0x0079:
        monitor-exit(r1);
        goto L_0x0026;
    L_0x007b:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x0080 }
        goto L_0x0079;
    L_0x0080:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0083:
        r0 = "StorageThread";
        r2 = "request queue remove first";
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ all -> 0x0080 }
        r0 = r5.aeH;	 Catch:{ all -> 0x0080 }
        r0 = r0.remove();	 Catch:{ all -> 0x0080 }
        r0 = (com.android.common.p001l.C0040e) r0;	 Catch:{ all -> 0x0080 }
        monitor-exit(r1);
        if (r0 == 0) goto L_0x0026;
    L_0x0097:
        r1 = r0.ahi();
        r0.ahj(r1);
        if (r1 == 0) goto L_0x0026;
    L_0x00a0:
        r0 = android.os.Message.obtain();
        r2 = 1;
        r0.what = r2;
        r0.obj = r1;
        r1 = r5.aeI;
        r1.sendMessage(r0);
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.storagemanager.c.run():void");
    }

    public void alT() {
        if (this.aeG) {
            C0090a.bvo("StorageThread", "thread " + getId() + " has stoped");
            return;
        }
        synchronized (this.aeH) {
            this.aeG = true;
            this.aeH.notifyAll();
        }
    }
}
