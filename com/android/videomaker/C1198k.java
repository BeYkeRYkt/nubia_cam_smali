package com.android.videomaker;

import java.util.ArrayList;
import java.util.LinkedList;

public class C1198k {
    private static String TAG = "LooperShowDataAdapter";
    private static final Object aAf = new Object();
    private boolean aAg = false;
    private ArrayList aAh = null;
    private int aAi = 0;
    private LinkedList aAj = new LinkedList();
    private C1200n aAk = null;
    private boolean aAl = false;
    private C1199m aAm = null;
    private int aAn = 0;
    private C1192l aAo = null;
    private C1204r aAp = null;
    private C1202p aAq;
    private int aAr = 0;

    public C1198k(ArrayList arrayList) {
        this.aAh = arrayList;
        this.aAi = this.aAh.size();
        this.aAk = new C1200n();
    }

    public void aPF(C1192l c1192l) {
        this.aAo = c1192l;
    }

    public void start() {
        if (!this.aAl) {
            this.aAl = true;
            this.aAr = 0;
            this.aAm = new C1199m();
            this.aAm.setName("LoadTask");
            this.aAm.start();
        }
    }

    public void stop() {
        if (this.aAl) {
            this.aAl = false;
            aPG();
        }
    }

    public C1204r aPE() {
        if (!this.aAl) {
            return null;
        }
        if (this.aAp != null) {
            this.aAp.aQl();
        }
        synchronized (aAf) {
            while (this.aAj.isEmpty()) {
                try {
                    this.aAg = true;
                    aAf.wait();
                } catch (InterruptedException e) {
                    throw new AssertionError();
                }
            }
            this.aAg = false;
            this.aAp = (C1204r) this.aAj.removeFirst();
        }
        return this.aAp;
    }

    private C1204r aPH() {
        if (this.aAn >= this.aAi) {
            return null;
        }
        String str = (String) this.aAh.get(this.aAn);
        int i = this.aAn;
        this.aAn = i + 1;
        return new C1204r(i, str, this.aAq);
    }

    private void aPG() {
        synchronized (aAf) {
            if (this.aAp != null) {
                this.aAp.aQl();
                this.aAp = null;
            }
            for (C1204r c1204r : this.aAj) {
                if (c1204r != null) {
                    c1204r.aQl();
                }
            }
            this.aAj.clear();
        }
        System.gc();
    }

    public void aPD(C1202p c1202p) {
        this.aAq = c1202p;
    }
}
