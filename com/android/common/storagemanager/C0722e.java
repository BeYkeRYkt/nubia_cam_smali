package com.android.common.storagemanager;

import android.os.Handler;
import android.os.HandlerThread;
import com.android.common.C0701s;
import com.android.common.p001l.C0040e;
import com.p010a.C0090a;
import java.util.LinkedList;

public class C0722e {
    private HandlerThread aeL;
    private Handler aeM;
    private boolean aeN;
    private boolean aeO;
    private C0330f aeP;
    private long aeQ;
    private LinkedList aeR;
    private Handler aeS;
    private LinkedList aeT;
    private long aeU;
    private C0719b aeV;
    private final Object aeW;
    private C0724i aeX;

    public C0722e() {
        this(4);
    }

    public C0722e(int i) {
        this.aeU = 0;
        this.aeO = false;
        this.aeW = new Object();
        this.aeN = false;
        this.aeQ = 0;
        this.aeR = new LinkedList();
        this.aeX = new C0724i();
        this.aeV = null;
        this.aeT = new LinkedList();
        this.aeS = new C0725j(this);
        this.aeV = new C0719b(this.aeR, this.aeS, i);
        this.aeV.start();
        this.aeL = new HandlerThread("CheckStorageThread");
        this.aeL.start();
        this.aeM = new C0723h(this, this.aeL.getLooper());
    }

    public void amc(C0330f c0330f) {
        this.aeP = c0330f;
    }

    public void amg(boolean z) {
        this.aeX.amw(z);
    }

    public C0724i ame() {
        return this.aeX;
    }

    public synchronized StorageManager$StorageStatusType alW(long j) {
        return ama(j, true);
    }

    public synchronized StorageManager$StorageStatusType ama(long j, boolean z) {
        if (z) {
            amb();
        }
        aml();
        C0090a.bvo("StorageManager", "remaining memory " + ((this.aeQ / 1024) / 1024) + "MB" + " storage size " + ((this.aeU / 1024) / 1024) + "MB" + " queue used size " + this.aeR.size());
        if (this.aeU <= 104857600) {
            C0090a.m1e("StorageManager", "Current storage is not sufficient");
            if (this.aeP != null) {
                this.aeP.Xq(this.aeU);
            }
            return StorageManager$StorageStatusType.STORAGE_INSUFFICIENT;
        } else if (!amj(j)) {
            C0090a.m1e("StorageManager", "Current process remaining memory is not sufficient");
            return StorageManager$StorageStatusType.OUT_OF_MEMORY;
        } else if (amk()) {
            C0090a.m1e("StorageManager", "Request queue is full");
            return StorageManager$StorageStatusType.QUEUE_FULL;
        } else {
            C0090a.bvo("StorageManager", "Able to add request to queue now");
            return StorageManager$StorageStatusType.CAN_ADD_REQUEST;
        }
    }

    public synchronized StorageManager$StorageStatusType alX(C0040e c0040e) {
        if (C0701s.arm()) {
            c0040e.ahm(true);
            return amf(c0040e, false);
        }
        return amf(c0040e, true);
    }

    public synchronized StorageManager$StorageStatusType amf(C0040e c0040e, boolean z) {
        if (this.aeV == null) {
            C0090a.m1e("StorageManager", "ThreadPool has stoped");
            return StorageManager$StorageStatusType.THREAD_POOL_STOPED;
        }
        StorageManager$StorageStatusType ama = ama(0, z);
        if (ama != StorageManager$StorageStatusType.CAN_ADD_REQUEST) {
            return ama;
        }
        if (this.aeR.contains(c0040e)) {
            return StorageManager$StorageStatusType.ADD_REQUEST_FAILURE;
        }
        synchronized (this.aeR) {
            C0090a.bvo("StorageManager", "request queue add request");
            this.aeR.add(c0040e);
            this.aeR.notify();
        }
        return StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS;
    }

    public boolean alZ() {
        return this.aeR.isEmpty();
    }

    public int amh() {
        return this.aeR.size();
    }

    public void alV() {
        if (this.aeV != null) {
            this.aeV.stop();
            this.aeV = null;
        }
        if (this.aeX != null) {
            this.aeX.amu();
        }
        if (this.aeL != null) {
            this.aeL.quitSafely();
            this.aeL = null;
        }
    }

    private boolean amk() {
        if (this.aeR.size() >= 20) {
            return true;
        }
        return false;
    }

    private boolean amj(long j) {
        if (j <= 0) {
            j = 20971520;
        }
        if (ami() - j <= 0) {
            return false;
        }
        return true;
    }

    private long ami() {
        return this.aeQ;
    }

    private long aml() {
        Runtime runtime = Runtime.getRuntime();
        this.aeQ = runtime.freeMemory() + (runtime.maxMemory() - runtime.totalMemory());
        return this.aeQ;
    }

    public long amd() {
        if (!this.aeN) {
            amb();
        }
        return this.aeU;
    }

    public long amb() {
        boolean z = true;
        synchronized (this.aeW) {
            if (this.aeO) {
                try {
                    this.aeW.wait();
                    long j = this.aeU;
                    return j;
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    this.aeU = C0701s.arh();
                    this.aeN = z;
                    synchronized (this.aeW) {
                        this.aeO = false;
                        this.aeW.notifyAll();
                    }
                    return this.aeU;
                }
            }
            this.aeO = true;
        }
    }

    public void alY(C0236g c0236g) {
        synchronized (this.aeT) {
            if (c0236g != null) {
                this.aeT.add(c0236g);
            }
            this.aeM.sendEmptyMessage(2);
        }
    }
}
